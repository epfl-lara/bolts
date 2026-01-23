; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!644442 () Bool)

(assert start!644442)

(declare-fun b!6583175 () Bool)

(assert (=> b!6583175 true))

(assert (=> b!6583175 true))

(declare-fun lambda!366700 () Int)

(declare-fun lambda!366699 () Int)

(assert (=> b!6583175 (not (= lambda!366700 lambda!366699))))

(assert (=> b!6583175 true))

(assert (=> b!6583175 true))

(declare-fun b!6583173 () Bool)

(assert (=> b!6583173 true))

(declare-fun b!6583137 () Bool)

(declare-fun e!3984117 () Bool)

(declare-fun e!3984114 () Bool)

(assert (=> b!6583137 (= e!3984117 e!3984114)))

(declare-fun res!2700576 () Bool)

(assert (=> b!6583137 (=> res!2700576 e!3984114)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33180 0))(
  ( (C!33181 (val!26292 Int)) )
))
(declare-datatypes ((Regex!16455 0))(
  ( (ElementMatch!16455 (c!1211172 C!33180)) (Concat!25300 (regOne!33422 Regex!16455) (regTwo!33422 Regex!16455)) (EmptyExpr!16455) (Star!16455 (reg!16784 Regex!16455)) (EmptyLang!16455) (Union!16455 (regOne!33423 Regex!16455) (regTwo!33423 Regex!16455)) )
))
(declare-datatypes ((List!65664 0))(
  ( (Nil!65540) (Cons!65540 (h!71988 Regex!16455) (t!379312 List!65664)) )
))
(declare-datatypes ((Context!11678 0))(
  ( (Context!11679 (exprs!6339 List!65664)) )
))
(declare-fun lt!2410492 () (InoxSet Context!11678))

(declare-fun lt!2410478 () (InoxSet Context!11678))

(assert (=> b!6583137 (= res!2700576 (not (= lt!2410492 lt!2410478)))))

(declare-fun lt!2410472 () Context!11678)

(declare-datatypes ((List!65665 0))(
  ( (Nil!65541) (Cons!65541 (h!71989 C!33180) (t!379313 List!65665)) )
))
(declare-fun s!2326 () List!65665)

(declare-fun lt!2410479 () (InoxSet Context!11678))

(declare-fun lambda!366701 () Int)

(declare-fun flatMap!1960 ((InoxSet Context!11678) Int) (InoxSet Context!11678))

(declare-fun derivationStepZipperUp!1629 (Context!11678 C!33180) (InoxSet Context!11678))

(assert (=> b!6583137 (= (flatMap!1960 lt!2410479 lambda!366701) (derivationStepZipperUp!1629 lt!2410472 (h!71989 s!2326)))))

(declare-datatypes ((Unit!159155 0))(
  ( (Unit!159156) )
))
(declare-fun lt!2410495 () Unit!159155)

(declare-fun lemmaFlatMapOnSingletonSet!1486 ((InoxSet Context!11678) Context!11678 Int) Unit!159155)

(assert (=> b!6583137 (= lt!2410495 (lemmaFlatMapOnSingletonSet!1486 lt!2410479 lt!2410472 lambda!366701))))

(declare-fun lt!2410496 () (InoxSet Context!11678))

(assert (=> b!6583137 (= lt!2410496 (derivationStepZipperUp!1629 lt!2410472 (h!71989 s!2326)))))

(declare-fun derivationStepZipper!2421 ((InoxSet Context!11678) C!33180) (InoxSet Context!11678))

(assert (=> b!6583137 (= lt!2410492 (derivationStepZipper!2421 lt!2410479 (h!71989 s!2326)))))

(assert (=> b!6583137 (= lt!2410479 (store ((as const (Array Context!11678 Bool)) false) lt!2410472 true))))

(declare-fun r!7292 () Regex!16455)

(declare-fun lt!2410459 () List!65664)

(assert (=> b!6583137 (= lt!2410472 (Context!11679 (Cons!65540 (reg!16784 (regOne!33422 r!7292)) lt!2410459)))))

(declare-fun b!6583138 () Bool)

(declare-fun e!3984105 () Bool)

(assert (=> b!6583138 (= e!3984114 e!3984105)))

(declare-fun res!2700579 () Bool)

(assert (=> b!6583138 (=> res!2700579 e!3984105)))

(declare-fun lt!2410463 () Regex!16455)

(assert (=> b!6583138 (= res!2700579 (not (= r!7292 lt!2410463)))))

(declare-fun lt!2410480 () Regex!16455)

(assert (=> b!6583138 (= lt!2410463 (Concat!25300 lt!2410480 (regTwo!33422 r!7292)))))

(declare-fun b!6583139 () Bool)

(declare-fun e!3984110 () Bool)

(declare-fun tp!1816551 () Bool)

(declare-fun tp!1816554 () Bool)

(assert (=> b!6583139 (= e!3984110 (and tp!1816551 tp!1816554))))

(declare-fun b!6583140 () Bool)

(declare-fun res!2700583 () Bool)

(declare-fun e!3984109 () Bool)

(assert (=> b!6583140 (=> res!2700583 e!3984109)))

(declare-fun lt!2410474 () Bool)

(assert (=> b!6583140 (= res!2700583 (not lt!2410474))))

(declare-fun b!6583141 () Bool)

(declare-fun e!3984120 () Bool)

(assert (=> b!6583141 (= e!3984109 e!3984120)))

(declare-fun res!2700557 () Bool)

(assert (=> b!6583141 (=> res!2700557 e!3984120)))

(declare-fun e!3984100 () Bool)

(assert (=> b!6583141 (= res!2700557 e!3984100)))

(declare-fun res!2700563 () Bool)

(assert (=> b!6583141 (=> (not res!2700563) (not e!3984100))))

(declare-fun lt!2410481 () Bool)

(assert (=> b!6583141 (= res!2700563 (not lt!2410481))))

(declare-fun lt!2410460 () (InoxSet Context!11678))

(declare-fun matchZipper!2467 ((InoxSet Context!11678) List!65665) Bool)

(assert (=> b!6583141 (= lt!2410481 (matchZipper!2467 lt!2410460 (t!379313 s!2326)))))

(declare-fun res!2700555 () Bool)

(declare-fun e!3984098 () Bool)

(assert (=> start!644442 (=> (not res!2700555) (not e!3984098))))

(declare-fun validRegex!8191 (Regex!16455) Bool)

(assert (=> start!644442 (= res!2700555 (validRegex!8191 r!7292))))

(assert (=> start!644442 e!3984098))

(assert (=> start!644442 e!3984110))

(declare-fun condSetEmpty!44952 () Bool)

(declare-fun z!1189 () (InoxSet Context!11678))

(assert (=> start!644442 (= condSetEmpty!44952 (= z!1189 ((as const (Array Context!11678 Bool)) false)))))

(declare-fun setRes!44952 () Bool)

(assert (=> start!644442 setRes!44952))

(declare-fun e!3984118 () Bool)

(assert (=> start!644442 e!3984118))

(declare-fun e!3984103 () Bool)

(assert (=> start!644442 e!3984103))

(declare-fun setElem!44952 () Context!11678)

(declare-fun e!3984115 () Bool)

(declare-fun setNonEmpty!44952 () Bool)

(declare-fun tp!1816553 () Bool)

(declare-fun inv!84384 (Context!11678) Bool)

(assert (=> setNonEmpty!44952 (= setRes!44952 (and tp!1816553 (inv!84384 setElem!44952) e!3984115))))

(declare-fun setRest!44952 () (InoxSet Context!11678))

(assert (=> setNonEmpty!44952 (= z!1189 ((_ map or) (store ((as const (Array Context!11678 Bool)) false) setElem!44952 true) setRest!44952))))

(declare-fun b!6583142 () Bool)

(declare-fun e!3984113 () Bool)

(declare-fun e!3984116 () Bool)

(assert (=> b!6583142 (= e!3984113 (not e!3984116))))

(declare-fun res!2700580 () Bool)

(assert (=> b!6583142 (=> res!2700580 e!3984116)))

(declare-datatypes ((List!65666 0))(
  ( (Nil!65542) (Cons!65542 (h!71990 Context!11678) (t!379314 List!65666)) )
))
(declare-fun zl!343 () List!65666)

(get-info :version)

(assert (=> b!6583142 (= res!2700580 (not ((_ is Cons!65542) zl!343)))))

(declare-fun lt!2410470 () Bool)

(declare-fun matchRSpec!3556 (Regex!16455 List!65665) Bool)

(assert (=> b!6583142 (= lt!2410470 (matchRSpec!3556 r!7292 s!2326))))

(declare-fun matchR!8638 (Regex!16455 List!65665) Bool)

(assert (=> b!6583142 (= lt!2410470 (matchR!8638 r!7292 s!2326))))

(declare-fun lt!2410471 () Unit!159155)

(declare-fun mainMatchTheorem!3556 (Regex!16455 List!65665) Unit!159155)

(assert (=> b!6583142 (= lt!2410471 (mainMatchTheorem!3556 r!7292 s!2326))))

(declare-fun b!6583143 () Bool)

(declare-fun e!3984112 () Bool)

(assert (=> b!6583143 (= e!3984112 e!3984117)))

(declare-fun res!2700566 () Bool)

(assert (=> b!6583143 (=> res!2700566 e!3984117)))

(assert (=> b!6583143 (= res!2700566 (not (= lt!2410460 lt!2410478)))))

(declare-fun lt!2410469 () Context!11678)

(declare-fun derivationStepZipperDown!1703 (Regex!16455 Context!11678 C!33180) (InoxSet Context!11678))

(assert (=> b!6583143 (= lt!2410478 (derivationStepZipperDown!1703 (reg!16784 (regOne!33422 r!7292)) lt!2410469 (h!71989 s!2326)))))

(assert (=> b!6583143 (= lt!2410469 (Context!11679 lt!2410459))))

(assert (=> b!6583143 (= lt!2410459 (Cons!65540 lt!2410480 (t!379312 (exprs!6339 (h!71990 zl!343)))))))

(assert (=> b!6583143 (= lt!2410480 (Star!16455 (reg!16784 (regOne!33422 r!7292))))))

(declare-fun b!6583144 () Bool)

(declare-fun tp!1816559 () Bool)

(declare-fun tp!1816552 () Bool)

(assert (=> b!6583144 (= e!3984110 (and tp!1816559 tp!1816552))))

(declare-fun b!6583145 () Bool)

(declare-fun res!2700553 () Bool)

(assert (=> b!6583145 (=> res!2700553 e!3984120)))

(assert (=> b!6583145 (= res!2700553 lt!2410481)))

(declare-fun b!6583146 () Bool)

(declare-fun e!3984107 () Bool)

(assert (=> b!6583146 (= e!3984105 e!3984107)))

(declare-fun res!2700565 () Bool)

(assert (=> b!6583146 (=> res!2700565 e!3984107)))

(declare-fun lt!2410464 () Regex!16455)

(declare-fun unfocusZipper!2197 (List!65666) Regex!16455)

(assert (=> b!6583146 (= res!2700565 (not (= (unfocusZipper!2197 (Cons!65542 lt!2410472 Nil!65542)) lt!2410464)))))

(assert (=> b!6583146 (= lt!2410464 (Concat!25300 (reg!16784 (regOne!33422 r!7292)) lt!2410463))))

(declare-fun b!6583147 () Bool)

(declare-fun e!3984111 () Bool)

(declare-fun e!3984106 () Bool)

(assert (=> b!6583147 (= e!3984111 e!3984106)))

(declare-fun res!2700575 () Bool)

(assert (=> b!6583147 (=> res!2700575 e!3984106)))

(declare-fun lt!2410486 () Regex!16455)

(declare-fun regexDepth!352 (Regex!16455) Int)

(assert (=> b!6583147 (= res!2700575 (< (regexDepth!352 r!7292) (regexDepth!352 lt!2410486)))))

(declare-fun generalisedConcat!2052 (List!65664) Regex!16455)

(assert (=> b!6583147 (= lt!2410486 (generalisedConcat!2052 (t!379312 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun b!6583148 () Bool)

(declare-fun e!3984108 () Bool)

(declare-fun nullable!6448 (Regex!16455) Bool)

(assert (=> b!6583148 (= e!3984108 (nullable!6448 (regOne!33422 (regOne!33422 r!7292))))))

(declare-fun b!6583149 () Bool)

(declare-fun e!3984102 () Bool)

(declare-fun lt!2410483 () List!65666)

(assert (=> b!6583149 (= e!3984102 (= lt!2410486 (unfocusZipper!2197 lt!2410483)))))

(declare-fun b!6583150 () Bool)

(declare-fun tp_is_empty!42163 () Bool)

(declare-fun tp!1816555 () Bool)

(assert (=> b!6583150 (= e!3984103 (and tp_is_empty!42163 tp!1816555))))

(declare-fun b!6583151 () Bool)

(declare-fun e!3984104 () Bool)

(declare-fun tp!1816556 () Bool)

(assert (=> b!6583151 (= e!3984104 tp!1816556)))

(declare-fun b!6583152 () Bool)

(declare-fun e!3984101 () Bool)

(assert (=> b!6583152 (= e!3984107 e!3984101)))

(declare-fun res!2700556 () Bool)

(assert (=> b!6583152 (=> res!2700556 e!3984101)))

(declare-fun lt!2410465 () Context!11678)

(assert (=> b!6583152 (= res!2700556 (not (= (unfocusZipper!2197 (Cons!65542 lt!2410465 Nil!65542)) (reg!16784 (regOne!33422 r!7292)))))))

(declare-fun lt!2410491 () (InoxSet Context!11678))

(assert (=> b!6583152 (= (flatMap!1960 lt!2410491 lambda!366701) (derivationStepZipperUp!1629 lt!2410469 (h!71989 s!2326)))))

(declare-fun lt!2410461 () Unit!159155)

(assert (=> b!6583152 (= lt!2410461 (lemmaFlatMapOnSingletonSet!1486 lt!2410491 lt!2410469 lambda!366701))))

(declare-fun lt!2410489 () (InoxSet Context!11678))

(assert (=> b!6583152 (= (flatMap!1960 lt!2410489 lambda!366701) (derivationStepZipperUp!1629 lt!2410465 (h!71989 s!2326)))))

(declare-fun lt!2410490 () Unit!159155)

(assert (=> b!6583152 (= lt!2410490 (lemmaFlatMapOnSingletonSet!1486 lt!2410489 lt!2410465 lambda!366701))))

(declare-fun lt!2410473 () (InoxSet Context!11678))

(assert (=> b!6583152 (= lt!2410473 (derivationStepZipperUp!1629 lt!2410469 (h!71989 s!2326)))))

(declare-fun lt!2410488 () (InoxSet Context!11678))

(assert (=> b!6583152 (= lt!2410488 (derivationStepZipperUp!1629 lt!2410465 (h!71989 s!2326)))))

(assert (=> b!6583152 (= lt!2410491 (store ((as const (Array Context!11678 Bool)) false) lt!2410469 true))))

(assert (=> b!6583152 (= lt!2410489 (store ((as const (Array Context!11678 Bool)) false) lt!2410465 true))))

(assert (=> b!6583152 (= lt!2410465 (Context!11679 (Cons!65540 (reg!16784 (regOne!33422 r!7292)) Nil!65540)))))

(declare-fun b!6583153 () Bool)

(declare-fun res!2700577 () Bool)

(assert (=> b!6583153 (=> res!2700577 e!3984120)))

(declare-fun lt!2410487 () (InoxSet Context!11678))

(assert (=> b!6583153 (= res!2700577 (not (matchZipper!2467 lt!2410487 (t!379313 s!2326))))))

(declare-fun b!6583154 () Bool)

(declare-fun res!2700560 () Bool)

(declare-fun e!3984097 () Bool)

(assert (=> b!6583154 (=> res!2700560 e!3984097)))

(declare-fun isEmpty!37797 (List!65664) Bool)

(assert (=> b!6583154 (= res!2700560 (isEmpty!37797 (t!379312 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun b!6583155 () Bool)

(declare-fun e!3984099 () Unit!159155)

(declare-fun Unit!159157 () Unit!159155)

(assert (=> b!6583155 (= e!3984099 Unit!159157)))

(declare-fun lt!2410467 () Unit!159155)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1286 ((InoxSet Context!11678) (InoxSet Context!11678) List!65665) Unit!159155)

(assert (=> b!6583155 (= lt!2410467 (lemmaZipperConcatMatchesSameAsBothZippers!1286 lt!2410460 lt!2410487 (t!379313 s!2326)))))

(declare-fun res!2700581 () Bool)

(assert (=> b!6583155 (= res!2700581 (matchZipper!2467 lt!2410460 (t!379313 s!2326)))))

(declare-fun e!3984119 () Bool)

(assert (=> b!6583155 (=> res!2700581 e!3984119)))

(assert (=> b!6583155 (= (matchZipper!2467 ((_ map or) lt!2410460 lt!2410487) (t!379313 s!2326)) e!3984119)))

(declare-fun b!6583156 () Bool)

(assert (=> b!6583156 (= e!3984098 e!3984113)))

(declare-fun res!2700572 () Bool)

(assert (=> b!6583156 (=> (not res!2700572) (not e!3984113))))

(declare-fun lt!2410484 () Regex!16455)

(assert (=> b!6583156 (= res!2700572 (= r!7292 lt!2410484))))

(assert (=> b!6583156 (= lt!2410484 (unfocusZipper!2197 zl!343))))

(declare-fun b!6583157 () Bool)

(assert (=> b!6583157 (= e!3984119 (matchZipper!2467 lt!2410487 (t!379313 s!2326)))))

(declare-fun b!6583158 () Bool)

(declare-fun res!2700584 () Bool)

(assert (=> b!6583158 (=> res!2700584 e!3984102)))

(assert (=> b!6583158 (= res!2700584 (not (validRegex!8191 lt!2410486)))))

(declare-fun b!6583159 () Bool)

(declare-fun res!2700564 () Bool)

(assert (=> b!6583159 (=> res!2700564 e!3984101)))

(assert (=> b!6583159 (= res!2700564 (not (= (unfocusZipper!2197 (Cons!65542 lt!2410469 Nil!65542)) lt!2410463)))))

(declare-fun b!6583160 () Bool)

(declare-fun Unit!159158 () Unit!159155)

(assert (=> b!6583160 (= e!3984099 Unit!159158)))

(declare-fun b!6583161 () Bool)

(declare-fun res!2700552 () Bool)

(assert (=> b!6583161 (=> res!2700552 e!3984102)))

(declare-fun lt!2410482 () (InoxSet Context!11678))

(declare-fun toList!10239 ((InoxSet Context!11678)) List!65666)

(assert (=> b!6583161 (= res!2700552 (not (= (toList!10239 lt!2410482) lt!2410483)))))

(declare-fun b!6583162 () Bool)

(declare-fun res!2700561 () Bool)

(assert (=> b!6583162 (=> res!2700561 e!3984116)))

(assert (=> b!6583162 (= res!2700561 (not ((_ is Cons!65540) (exprs!6339 (h!71990 zl!343)))))))

(declare-fun b!6583163 () Bool)

(declare-fun res!2700570 () Bool)

(assert (=> b!6583163 (=> res!2700570 e!3984114)))

(assert (=> b!6583163 (= res!2700570 (not (= lt!2410484 r!7292)))))

(declare-fun b!6583164 () Bool)

(declare-fun res!2700582 () Bool)

(assert (=> b!6583164 (=> res!2700582 e!3984109)))

(assert (=> b!6583164 (= res!2700582 (not (matchZipper!2467 z!1189 s!2326)))))

(declare-fun b!6583165 () Bool)

(assert (=> b!6583165 (= e!3984110 tp_is_empty!42163)))

(declare-fun b!6583166 () Bool)

(assert (=> b!6583166 (= e!3984100 (not (matchZipper!2467 lt!2410487 (t!379313 s!2326))))))

(declare-fun b!6583167 () Bool)

(declare-fun res!2700558 () Bool)

(assert (=> b!6583167 (=> res!2700558 e!3984112)))

(assert (=> b!6583167 (= res!2700558 (or ((_ is Concat!25300) (regOne!33422 r!7292)) (not ((_ is Star!16455) (regOne!33422 r!7292)))))))

(declare-fun b!6583168 () Bool)

(assert (=> b!6583168 (= e!3984101 e!3984109)))

(declare-fun res!2700571 () Bool)

(assert (=> b!6583168 (=> res!2700571 e!3984109)))

(assert (=> b!6583168 (= res!2700571 lt!2410470)))

(assert (=> b!6583168 (= (matchR!8638 lt!2410464 s!2326) (matchRSpec!3556 lt!2410464 s!2326))))

(declare-fun lt!2410494 () Unit!159155)

(assert (=> b!6583168 (= lt!2410494 (mainMatchTheorem!3556 lt!2410464 s!2326))))

(declare-fun b!6583169 () Bool)

(declare-fun res!2700568 () Bool)

(assert (=> b!6583169 (=> res!2700568 e!3984116)))

(declare-fun isEmpty!37798 (List!65666) Bool)

(assert (=> b!6583169 (= res!2700568 (not (isEmpty!37798 (t!379314 zl!343))))))

(declare-fun tp!1816558 () Bool)

(declare-fun b!6583170 () Bool)

(assert (=> b!6583170 (= e!3984118 (and (inv!84384 (h!71990 zl!343)) e!3984104 tp!1816558))))

(declare-fun b!6583171 () Bool)

(assert (=> b!6583171 (= e!3984120 e!3984111)))

(declare-fun res!2700559 () Bool)

(assert (=> b!6583171 (=> res!2700559 e!3984111)))

(assert (=> b!6583171 (= res!2700559 (not (= lt!2410487 (derivationStepZipper!2421 lt!2410482 (h!71989 s!2326)))))))

(declare-fun lt!2410462 () Context!11678)

(assert (=> b!6583171 (= (flatMap!1960 lt!2410482 lambda!366701) (derivationStepZipperUp!1629 lt!2410462 (h!71989 s!2326)))))

(declare-fun lt!2410493 () Unit!159155)

(assert (=> b!6583171 (= lt!2410493 (lemmaFlatMapOnSingletonSet!1486 lt!2410482 lt!2410462 lambda!366701))))

(assert (=> b!6583171 (= lt!2410482 (store ((as const (Array Context!11678 Bool)) false) lt!2410462 true))))

(declare-fun b!6583172 () Bool)

(declare-fun res!2700567 () Bool)

(assert (=> b!6583172 (=> res!2700567 e!3984112)))

(assert (=> b!6583172 (= res!2700567 e!3984108)))

(declare-fun res!2700554 () Bool)

(assert (=> b!6583172 (=> (not res!2700554) (not e!3984108))))

(assert (=> b!6583172 (= res!2700554 ((_ is Concat!25300) (regOne!33422 r!7292)))))

(assert (=> b!6583173 (= e!3984097 e!3984112)))

(declare-fun res!2700573 () Bool)

(assert (=> b!6583173 (=> res!2700573 e!3984112)))

(assert (=> b!6583173 (= res!2700573 (or (and ((_ is ElementMatch!16455) (regOne!33422 r!7292)) (= (c!1211172 (regOne!33422 r!7292)) (h!71989 s!2326))) ((_ is Union!16455) (regOne!33422 r!7292))))))

(declare-fun lt!2410476 () Unit!159155)

(assert (=> b!6583173 (= lt!2410476 e!3984099)))

(declare-fun c!1211171 () Bool)

(assert (=> b!6583173 (= c!1211171 lt!2410474)))

(assert (=> b!6583173 (= lt!2410474 (nullable!6448 (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(assert (=> b!6583173 (= (flatMap!1960 z!1189 lambda!366701) (derivationStepZipperUp!1629 (h!71990 zl!343) (h!71989 s!2326)))))

(declare-fun lt!2410475 () Unit!159155)

(assert (=> b!6583173 (= lt!2410475 (lemmaFlatMapOnSingletonSet!1486 z!1189 (h!71990 zl!343) lambda!366701))))

(assert (=> b!6583173 (= lt!2410487 (derivationStepZipperUp!1629 lt!2410462 (h!71989 s!2326)))))

(assert (=> b!6583173 (= lt!2410460 (derivationStepZipperDown!1703 (h!71988 (exprs!6339 (h!71990 zl!343))) lt!2410462 (h!71989 s!2326)))))

(assert (=> b!6583173 (= lt!2410462 (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun lt!2410485 () (InoxSet Context!11678))

(assert (=> b!6583173 (= lt!2410485 (derivationStepZipperUp!1629 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343))))) (h!71989 s!2326)))))

(declare-fun b!6583174 () Bool)

(declare-fun res!2700562 () Bool)

(assert (=> b!6583174 (=> res!2700562 e!3984116)))

(assert (=> b!6583174 (= res!2700562 (not (= r!7292 (generalisedConcat!2052 (exprs!6339 (h!71990 zl!343))))))))

(assert (=> b!6583175 (= e!3984116 e!3984097)))

(declare-fun res!2700569 () Bool)

(assert (=> b!6583175 (=> res!2700569 e!3984097)))

(declare-fun lt!2410477 () Bool)

(assert (=> b!6583175 (= res!2700569 (or (not (= lt!2410470 lt!2410477)) ((_ is Nil!65541) s!2326)))))

(declare-fun Exists!3525 (Int) Bool)

(assert (=> b!6583175 (= (Exists!3525 lambda!366699) (Exists!3525 lambda!366700))))

(declare-fun lt!2410468 () Unit!159155)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2062 (Regex!16455 Regex!16455 List!65665) Unit!159155)

(assert (=> b!6583175 (= lt!2410468 (lemmaExistCutMatchRandMatchRSpecEquivalent!2062 (regOne!33422 r!7292) (regTwo!33422 r!7292) s!2326))))

(assert (=> b!6583175 (= lt!2410477 (Exists!3525 lambda!366699))))

(declare-datatypes ((tuple2!66868 0))(
  ( (tuple2!66869 (_1!36737 List!65665) (_2!36737 List!65665)) )
))
(declare-datatypes ((Option!16346 0))(
  ( (None!16345) (Some!16345 (v!52532 tuple2!66868)) )
))
(declare-fun isDefined!13049 (Option!16346) Bool)

(declare-fun findConcatSeparation!2760 (Regex!16455 Regex!16455 List!65665 List!65665 List!65665) Option!16346)

(assert (=> b!6583175 (= lt!2410477 (isDefined!13049 (findConcatSeparation!2760 (regOne!33422 r!7292) (regTwo!33422 r!7292) Nil!65541 s!2326 s!2326)))))

(declare-fun lt!2410466 () Unit!159155)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2524 (Regex!16455 Regex!16455 List!65665) Unit!159155)

(assert (=> b!6583175 (= lt!2410466 (lemmaFindConcatSeparationEquivalentToExists!2524 (regOne!33422 r!7292) (regTwo!33422 r!7292) s!2326))))

(declare-fun b!6583176 () Bool)

(declare-fun res!2700574 () Bool)

(assert (=> b!6583176 (=> res!2700574 e!3984116)))

(assert (=> b!6583176 (= res!2700574 (or ((_ is EmptyExpr!16455) r!7292) ((_ is EmptyLang!16455) r!7292) ((_ is ElementMatch!16455) r!7292) ((_ is Union!16455) r!7292) (not ((_ is Concat!25300) r!7292))))))

(declare-fun setIsEmpty!44952 () Bool)

(assert (=> setIsEmpty!44952 setRes!44952))

(declare-fun b!6583177 () Bool)

(declare-fun res!2700578 () Bool)

(assert (=> b!6583177 (=> (not res!2700578) (not e!3984098))))

(assert (=> b!6583177 (= res!2700578 (= (toList!10239 z!1189) zl!343))))

(declare-fun b!6583178 () Bool)

(declare-fun res!2700585 () Bool)

(assert (=> b!6583178 (=> res!2700585 e!3984114)))

(assert (=> b!6583178 (= res!2700585 (not (= (matchZipper!2467 lt!2410479 s!2326) (matchZipper!2467 lt!2410492 (t!379313 s!2326)))))))

(declare-fun b!6583179 () Bool)

(declare-fun res!2700551 () Bool)

(assert (=> b!6583179 (=> res!2700551 e!3984116)))

(declare-fun generalisedUnion!2299 (List!65664) Regex!16455)

(declare-fun unfocusZipperList!1876 (List!65666) List!65664)

(assert (=> b!6583179 (= res!2700551 (not (= r!7292 (generalisedUnion!2299 (unfocusZipperList!1876 zl!343)))))))

(declare-fun b!6583180 () Bool)

(declare-fun tp!1816557 () Bool)

(assert (=> b!6583180 (= e!3984115 tp!1816557)))

(declare-fun b!6583181 () Bool)

(assert (=> b!6583181 (= e!3984106 e!3984102)))

(declare-fun res!2700586 () Bool)

(assert (=> b!6583181 (=> res!2700586 e!3984102)))

(declare-fun zipperDepth!392 (List!65666) Int)

(assert (=> b!6583181 (= res!2700586 (< (zipperDepth!392 zl!343) (zipperDepth!392 lt!2410483)))))

(assert (=> b!6583181 (= lt!2410483 (Cons!65542 lt!2410462 Nil!65542))))

(declare-fun b!6583182 () Bool)

(declare-fun tp!1816550 () Bool)

(assert (=> b!6583182 (= e!3984110 tp!1816550)))

(assert (= (and start!644442 res!2700555) b!6583177))

(assert (= (and b!6583177 res!2700578) b!6583156))

(assert (= (and b!6583156 res!2700572) b!6583142))

(assert (= (and b!6583142 (not res!2700580)) b!6583169))

(assert (= (and b!6583169 (not res!2700568)) b!6583174))

(assert (= (and b!6583174 (not res!2700562)) b!6583162))

(assert (= (and b!6583162 (not res!2700561)) b!6583179))

(assert (= (and b!6583179 (not res!2700551)) b!6583176))

(assert (= (and b!6583176 (not res!2700574)) b!6583175))

(assert (= (and b!6583175 (not res!2700569)) b!6583154))

(assert (= (and b!6583154 (not res!2700560)) b!6583173))

(assert (= (and b!6583173 c!1211171) b!6583155))

(assert (= (and b!6583173 (not c!1211171)) b!6583160))

(assert (= (and b!6583155 (not res!2700581)) b!6583157))

(assert (= (and b!6583173 (not res!2700573)) b!6583172))

(assert (= (and b!6583172 res!2700554) b!6583148))

(assert (= (and b!6583172 (not res!2700567)) b!6583167))

(assert (= (and b!6583167 (not res!2700558)) b!6583143))

(assert (= (and b!6583143 (not res!2700566)) b!6583137))

(assert (= (and b!6583137 (not res!2700576)) b!6583178))

(assert (= (and b!6583178 (not res!2700585)) b!6583163))

(assert (= (and b!6583163 (not res!2700570)) b!6583138))

(assert (= (and b!6583138 (not res!2700579)) b!6583146))

(assert (= (and b!6583146 (not res!2700565)) b!6583152))

(assert (= (and b!6583152 (not res!2700556)) b!6583159))

(assert (= (and b!6583159 (not res!2700564)) b!6583168))

(assert (= (and b!6583168 (not res!2700571)) b!6583164))

(assert (= (and b!6583164 (not res!2700582)) b!6583140))

(assert (= (and b!6583140 (not res!2700583)) b!6583141))

(assert (= (and b!6583141 res!2700563) b!6583166))

(assert (= (and b!6583141 (not res!2700557)) b!6583145))

(assert (= (and b!6583145 (not res!2700553)) b!6583153))

(assert (= (and b!6583153 (not res!2700577)) b!6583171))

(assert (= (and b!6583171 (not res!2700559)) b!6583147))

(assert (= (and b!6583147 (not res!2700575)) b!6583181))

(assert (= (and b!6583181 (not res!2700586)) b!6583158))

(assert (= (and b!6583158 (not res!2700584)) b!6583161))

(assert (= (and b!6583161 (not res!2700552)) b!6583149))

(assert (= (and start!644442 ((_ is ElementMatch!16455) r!7292)) b!6583165))

(assert (= (and start!644442 ((_ is Concat!25300) r!7292)) b!6583144))

(assert (= (and start!644442 ((_ is Star!16455) r!7292)) b!6583182))

(assert (= (and start!644442 ((_ is Union!16455) r!7292)) b!6583139))

(assert (= (and start!644442 condSetEmpty!44952) setIsEmpty!44952))

(assert (= (and start!644442 (not condSetEmpty!44952)) setNonEmpty!44952))

(assert (= setNonEmpty!44952 b!6583180))

(assert (= b!6583170 b!6583151))

(assert (= (and start!644442 ((_ is Cons!65542) zl!343)) b!6583170))

(assert (= (and start!644442 ((_ is Cons!65541) s!2326)) b!6583150))

(declare-fun m!7362476 () Bool)

(assert (=> b!6583178 m!7362476))

(declare-fun m!7362478 () Bool)

(assert (=> b!6583178 m!7362478))

(declare-fun m!7362480 () Bool)

(assert (=> b!6583161 m!7362480))

(declare-fun m!7362482 () Bool)

(assert (=> b!6583174 m!7362482))

(declare-fun m!7362484 () Bool)

(assert (=> b!6583137 m!7362484))

(declare-fun m!7362486 () Bool)

(assert (=> b!6583137 m!7362486))

(declare-fun m!7362488 () Bool)

(assert (=> b!6583137 m!7362488))

(declare-fun m!7362490 () Bool)

(assert (=> b!6583137 m!7362490))

(declare-fun m!7362492 () Bool)

(assert (=> b!6583137 m!7362492))

(declare-fun m!7362494 () Bool)

(assert (=> b!6583148 m!7362494))

(declare-fun m!7362496 () Bool)

(assert (=> start!644442 m!7362496))

(declare-fun m!7362498 () Bool)

(assert (=> b!6583152 m!7362498))

(declare-fun m!7362500 () Bool)

(assert (=> b!6583152 m!7362500))

(declare-fun m!7362502 () Bool)

(assert (=> b!6583152 m!7362502))

(declare-fun m!7362504 () Bool)

(assert (=> b!6583152 m!7362504))

(declare-fun m!7362506 () Bool)

(assert (=> b!6583152 m!7362506))

(declare-fun m!7362508 () Bool)

(assert (=> b!6583152 m!7362508))

(declare-fun m!7362510 () Bool)

(assert (=> b!6583152 m!7362510))

(declare-fun m!7362512 () Bool)

(assert (=> b!6583152 m!7362512))

(declare-fun m!7362514 () Bool)

(assert (=> b!6583152 m!7362514))

(declare-fun m!7362516 () Bool)

(assert (=> b!6583164 m!7362516))

(declare-fun m!7362518 () Bool)

(assert (=> b!6583147 m!7362518))

(declare-fun m!7362520 () Bool)

(assert (=> b!6583147 m!7362520))

(declare-fun m!7362522 () Bool)

(assert (=> b!6583147 m!7362522))

(declare-fun m!7362524 () Bool)

(assert (=> b!6583146 m!7362524))

(declare-fun m!7362526 () Bool)

(assert (=> b!6583158 m!7362526))

(declare-fun m!7362528 () Bool)

(assert (=> b!6583173 m!7362528))

(declare-fun m!7362530 () Bool)

(assert (=> b!6583173 m!7362530))

(declare-fun m!7362532 () Bool)

(assert (=> b!6583173 m!7362532))

(declare-fun m!7362534 () Bool)

(assert (=> b!6583173 m!7362534))

(declare-fun m!7362536 () Bool)

(assert (=> b!6583173 m!7362536))

(declare-fun m!7362538 () Bool)

(assert (=> b!6583173 m!7362538))

(declare-fun m!7362540 () Bool)

(assert (=> b!6583173 m!7362540))

(declare-fun m!7362542 () Bool)

(assert (=> b!6583142 m!7362542))

(declare-fun m!7362544 () Bool)

(assert (=> b!6583142 m!7362544))

(declare-fun m!7362546 () Bool)

(assert (=> b!6583142 m!7362546))

(declare-fun m!7362548 () Bool)

(assert (=> b!6583159 m!7362548))

(declare-fun m!7362550 () Bool)

(assert (=> b!6583168 m!7362550))

(declare-fun m!7362552 () Bool)

(assert (=> b!6583168 m!7362552))

(declare-fun m!7362554 () Bool)

(assert (=> b!6583168 m!7362554))

(declare-fun m!7362556 () Bool)

(assert (=> b!6583156 m!7362556))

(declare-fun m!7362558 () Bool)

(assert (=> b!6583157 m!7362558))

(declare-fun m!7362560 () Bool)

(assert (=> b!6583179 m!7362560))

(assert (=> b!6583179 m!7362560))

(declare-fun m!7362562 () Bool)

(assert (=> b!6583179 m!7362562))

(assert (=> b!6583153 m!7362558))

(declare-fun m!7362564 () Bool)

(assert (=> b!6583177 m!7362564))

(declare-fun m!7362566 () Bool)

(assert (=> b!6583175 m!7362566))

(declare-fun m!7362568 () Bool)

(assert (=> b!6583175 m!7362568))

(declare-fun m!7362570 () Bool)

(assert (=> b!6583175 m!7362570))

(declare-fun m!7362572 () Bool)

(assert (=> b!6583175 m!7362572))

(declare-fun m!7362574 () Bool)

(assert (=> b!6583175 m!7362574))

(assert (=> b!6583175 m!7362572))

(assert (=> b!6583175 m!7362568))

(declare-fun m!7362576 () Bool)

(assert (=> b!6583175 m!7362576))

(declare-fun m!7362578 () Bool)

(assert (=> b!6583171 m!7362578))

(declare-fun m!7362580 () Bool)

(assert (=> b!6583171 m!7362580))

(declare-fun m!7362582 () Bool)

(assert (=> b!6583171 m!7362582))

(declare-fun m!7362584 () Bool)

(assert (=> b!6583171 m!7362584))

(assert (=> b!6583171 m!7362536))

(declare-fun m!7362586 () Bool)

(assert (=> b!6583181 m!7362586))

(declare-fun m!7362588 () Bool)

(assert (=> b!6583181 m!7362588))

(assert (=> b!6583166 m!7362558))

(declare-fun m!7362590 () Bool)

(assert (=> setNonEmpty!44952 m!7362590))

(declare-fun m!7362592 () Bool)

(assert (=> b!6583154 m!7362592))

(declare-fun m!7362594 () Bool)

(assert (=> b!6583170 m!7362594))

(declare-fun m!7362596 () Bool)

(assert (=> b!6583149 m!7362596))

(declare-fun m!7362598 () Bool)

(assert (=> b!6583169 m!7362598))

(declare-fun m!7362600 () Bool)

(assert (=> b!6583143 m!7362600))

(declare-fun m!7362602 () Bool)

(assert (=> b!6583141 m!7362602))

(declare-fun m!7362604 () Bool)

(assert (=> b!6583155 m!7362604))

(assert (=> b!6583155 m!7362602))

(declare-fun m!7362606 () Bool)

(assert (=> b!6583155 m!7362606))

(check-sat (not b!6583174) (not b!6583178) (not b!6583177) (not b!6583152) (not b!6583166) (not b!6583154) (not b!6583170) (not b!6583150) (not b!6583147) (not b!6583173) (not start!644442) (not b!6583137) tp_is_empty!42163 (not b!6583151) (not b!6583181) (not b!6583146) (not b!6583143) (not b!6583168) (not b!6583169) (not b!6583139) (not b!6583182) (not b!6583156) (not b!6583175) (not b!6583149) (not b!6583157) (not b!6583144) (not setNonEmpty!44952) (not b!6583180) (not b!6583161) (not b!6583164) (not b!6583159) (not b!6583153) (not b!6583158) (not b!6583171) (not b!6583148) (not b!6583155) (not b!6583179) (not b!6583142) (not b!6583141))
(check-sat)
(get-model)

(declare-fun d!2065261 () Bool)

(declare-fun lambda!366714 () Int)

(declare-fun forall!15634 (List!65664 Int) Bool)

(assert (=> d!2065261 (= (inv!84384 (h!71990 zl!343)) (forall!15634 (exprs!6339 (h!71990 zl!343)) lambda!366714))))

(declare-fun bs!1684391 () Bool)

(assert (= bs!1684391 d!2065261))

(declare-fun m!7362754 () Bool)

(assert (=> bs!1684391 m!7362754))

(assert (=> b!6583170 d!2065261))

(declare-fun d!2065271 () Bool)

(declare-fun lt!2410522 () Regex!16455)

(assert (=> d!2065271 (validRegex!8191 lt!2410522)))

(assert (=> d!2065271 (= lt!2410522 (generalisedUnion!2299 (unfocusZipperList!1876 lt!2410483)))))

(assert (=> d!2065271 (= (unfocusZipper!2197 lt!2410483) lt!2410522)))

(declare-fun bs!1684399 () Bool)

(assert (= bs!1684399 d!2065271))

(declare-fun m!7362772 () Bool)

(assert (=> bs!1684399 m!7362772))

(declare-fun m!7362774 () Bool)

(assert (=> bs!1684399 m!7362774))

(assert (=> bs!1684399 m!7362774))

(declare-fun m!7362776 () Bool)

(assert (=> bs!1684399 m!7362776))

(assert (=> b!6583149 d!2065271))

(declare-fun d!2065285 () Bool)

(declare-fun nullableFct!2373 (Regex!16455) Bool)

(assert (=> d!2065285 (= (nullable!6448 (regOne!33422 (regOne!33422 r!7292))) (nullableFct!2373 (regOne!33422 (regOne!33422 r!7292))))))

(declare-fun bs!1684400 () Bool)

(assert (= bs!1684400 d!2065285))

(declare-fun m!7362784 () Bool)

(assert (=> bs!1684400 m!7362784))

(assert (=> b!6583148 d!2065285))

(declare-fun d!2065289 () Bool)

(assert (=> d!2065289 (= (isEmpty!37798 (t!379314 zl!343)) ((_ is Nil!65542) (t!379314 zl!343)))))

(assert (=> b!6583169 d!2065289))

(declare-fun b!6583518 () Bool)

(declare-fun e!3984305 () Bool)

(declare-fun e!3984308 () Bool)

(assert (=> b!6583518 (= e!3984305 e!3984308)))

(declare-fun res!2700698 () Bool)

(assert (=> b!6583518 (=> (not res!2700698) (not e!3984308))))

(declare-fun lt!2410539 () Bool)

(assert (=> b!6583518 (= res!2700698 (not lt!2410539))))

(declare-fun b!6583519 () Bool)

(declare-fun res!2700699 () Bool)

(assert (=> b!6583519 (=> res!2700699 e!3984305)))

(declare-fun e!3984309 () Bool)

(assert (=> b!6583519 (= res!2700699 e!3984309)))

(declare-fun res!2700697 () Bool)

(assert (=> b!6583519 (=> (not res!2700697) (not e!3984309))))

(assert (=> b!6583519 (= res!2700697 lt!2410539)))

(declare-fun b!6583520 () Bool)

(declare-fun res!2700703 () Bool)

(declare-fun e!3984307 () Bool)

(assert (=> b!6583520 (=> res!2700703 e!3984307)))

(declare-fun isEmpty!37801 (List!65665) Bool)

(declare-fun tail!12446 (List!65665) List!65665)

(assert (=> b!6583520 (= res!2700703 (not (isEmpty!37801 (tail!12446 s!2326))))))

(declare-fun b!6583521 () Bool)

(declare-fun e!3984310 () Bool)

(declare-fun call!574166 () Bool)

(assert (=> b!6583521 (= e!3984310 (= lt!2410539 call!574166))))

(declare-fun b!6583522 () Bool)

(declare-fun res!2700696 () Bool)

(assert (=> b!6583522 (=> (not res!2700696) (not e!3984309))))

(assert (=> b!6583522 (= res!2700696 (not call!574166))))

(declare-fun b!6583523 () Bool)

(declare-fun e!3984306 () Bool)

(assert (=> b!6583523 (= e!3984306 (not lt!2410539))))

(declare-fun b!6583524 () Bool)

(declare-fun head!13361 (List!65665) C!33180)

(assert (=> b!6583524 (= e!3984307 (not (= (head!13361 s!2326) (c!1211172 lt!2410464))))))

(declare-fun b!6583525 () Bool)

(assert (=> b!6583525 (= e!3984310 e!3984306)))

(declare-fun c!1211286 () Bool)

(assert (=> b!6583525 (= c!1211286 ((_ is EmptyLang!16455) lt!2410464))))

(declare-fun b!6583526 () Bool)

(declare-fun e!3984311 () Bool)

(assert (=> b!6583526 (= e!3984311 (nullable!6448 lt!2410464))))

(declare-fun b!6583527 () Bool)

(assert (=> b!6583527 (= e!3984308 e!3984307)))

(declare-fun res!2700701 () Bool)

(assert (=> b!6583527 (=> res!2700701 e!3984307)))

(assert (=> b!6583527 (= res!2700701 call!574166)))

(declare-fun b!6583528 () Bool)

(declare-fun res!2700700 () Bool)

(assert (=> b!6583528 (=> (not res!2700700) (not e!3984309))))

(assert (=> b!6583528 (= res!2700700 (isEmpty!37801 (tail!12446 s!2326)))))

(declare-fun d!2065293 () Bool)

(assert (=> d!2065293 e!3984310))

(declare-fun c!1211284 () Bool)

(assert (=> d!2065293 (= c!1211284 ((_ is EmptyExpr!16455) lt!2410464))))

(assert (=> d!2065293 (= lt!2410539 e!3984311)))

(declare-fun c!1211285 () Bool)

(assert (=> d!2065293 (= c!1211285 (isEmpty!37801 s!2326))))

(assert (=> d!2065293 (validRegex!8191 lt!2410464)))

(assert (=> d!2065293 (= (matchR!8638 lt!2410464 s!2326) lt!2410539)))

(declare-fun bm!574161 () Bool)

(assert (=> bm!574161 (= call!574166 (isEmpty!37801 s!2326))))

(declare-fun b!6583529 () Bool)

(declare-fun derivativeStep!5139 (Regex!16455 C!33180) Regex!16455)

(assert (=> b!6583529 (= e!3984311 (matchR!8638 (derivativeStep!5139 lt!2410464 (head!13361 s!2326)) (tail!12446 s!2326)))))

(declare-fun b!6583530 () Bool)

(assert (=> b!6583530 (= e!3984309 (= (head!13361 s!2326) (c!1211172 lt!2410464)))))

(declare-fun b!6583531 () Bool)

(declare-fun res!2700702 () Bool)

(assert (=> b!6583531 (=> res!2700702 e!3984305)))

(assert (=> b!6583531 (= res!2700702 (not ((_ is ElementMatch!16455) lt!2410464)))))

(assert (=> b!6583531 (= e!3984306 e!3984305)))

(assert (= (and d!2065293 c!1211285) b!6583526))

(assert (= (and d!2065293 (not c!1211285)) b!6583529))

(assert (= (and d!2065293 c!1211284) b!6583521))

(assert (= (and d!2065293 (not c!1211284)) b!6583525))

(assert (= (and b!6583525 c!1211286) b!6583523))

(assert (= (and b!6583525 (not c!1211286)) b!6583531))

(assert (= (and b!6583531 (not res!2700702)) b!6583519))

(assert (= (and b!6583519 res!2700697) b!6583522))

(assert (= (and b!6583522 res!2700696) b!6583528))

(assert (= (and b!6583528 res!2700700) b!6583530))

(assert (= (and b!6583519 (not res!2700699)) b!6583518))

(assert (= (and b!6583518 res!2700698) b!6583527))

(assert (= (and b!6583527 (not res!2700701)) b!6583520))

(assert (= (and b!6583520 (not res!2700703)) b!6583524))

(assert (= (or b!6583521 b!6583522 b!6583527) bm!574161))

(declare-fun m!7362824 () Bool)

(assert (=> bm!574161 m!7362824))

(assert (=> d!2065293 m!7362824))

(declare-fun m!7362826 () Bool)

(assert (=> d!2065293 m!7362826))

(declare-fun m!7362828 () Bool)

(assert (=> b!6583526 m!7362828))

(declare-fun m!7362830 () Bool)

(assert (=> b!6583530 m!7362830))

(assert (=> b!6583529 m!7362830))

(assert (=> b!6583529 m!7362830))

(declare-fun m!7362832 () Bool)

(assert (=> b!6583529 m!7362832))

(declare-fun m!7362834 () Bool)

(assert (=> b!6583529 m!7362834))

(assert (=> b!6583529 m!7362832))

(assert (=> b!6583529 m!7362834))

(declare-fun m!7362836 () Bool)

(assert (=> b!6583529 m!7362836))

(assert (=> b!6583524 m!7362830))

(assert (=> b!6583520 m!7362834))

(assert (=> b!6583520 m!7362834))

(declare-fun m!7362838 () Bool)

(assert (=> b!6583520 m!7362838))

(assert (=> b!6583528 m!7362834))

(assert (=> b!6583528 m!7362834))

(assert (=> b!6583528 m!7362838))

(assert (=> b!6583168 d!2065293))

(declare-fun bs!1684424 () Bool)

(declare-fun b!6583623 () Bool)

(assert (= bs!1684424 (and b!6583623 b!6583175)))

(declare-fun lambda!366746 () Int)

(assert (=> bs!1684424 (not (= lambda!366746 lambda!366699))))

(assert (=> bs!1684424 (not (= lambda!366746 lambda!366700))))

(assert (=> b!6583623 true))

(assert (=> b!6583623 true))

(declare-fun bs!1684425 () Bool)

(declare-fun b!6583631 () Bool)

(assert (= bs!1684425 (and b!6583631 b!6583175)))

(declare-fun lambda!366747 () Int)

(assert (=> bs!1684425 (not (= lambda!366747 lambda!366699))))

(assert (=> bs!1684425 (= (and (= (regOne!33422 lt!2410464) (regOne!33422 r!7292)) (= (regTwo!33422 lt!2410464) (regTwo!33422 r!7292))) (= lambda!366747 lambda!366700))))

(declare-fun bs!1684426 () Bool)

(assert (= bs!1684426 (and b!6583631 b!6583623)))

(assert (=> bs!1684426 (not (= lambda!366747 lambda!366746))))

(assert (=> b!6583631 true))

(assert (=> b!6583631 true))

(declare-fun e!3984372 () Bool)

(declare-fun call!574183 () Bool)

(assert (=> b!6583623 (= e!3984372 call!574183)))

(declare-fun b!6583624 () Bool)

(declare-fun res!2700755 () Bool)

(assert (=> b!6583624 (=> res!2700755 e!3984372)))

(declare-fun call!574184 () Bool)

(assert (=> b!6583624 (= res!2700755 call!574184)))

(declare-fun e!3984377 () Bool)

(assert (=> b!6583624 (= e!3984377 e!3984372)))

(declare-fun b!6583625 () Bool)

(declare-fun e!3984374 () Bool)

(assert (=> b!6583625 (= e!3984374 call!574184)))

(declare-fun b!6583626 () Bool)

(declare-fun e!3984371 () Bool)

(assert (=> b!6583626 (= e!3984371 (= s!2326 (Cons!65541 (c!1211172 lt!2410464) Nil!65541)))))

(declare-fun d!2065303 () Bool)

(declare-fun c!1211314 () Bool)

(assert (=> d!2065303 (= c!1211314 ((_ is EmptyExpr!16455) lt!2410464))))

(assert (=> d!2065303 (= (matchRSpec!3556 lt!2410464 s!2326) e!3984374)))

(declare-fun bm!574178 () Bool)

(assert (=> bm!574178 (= call!574184 (isEmpty!37801 s!2326))))

(declare-fun b!6583627 () Bool)

(declare-fun e!3984376 () Bool)

(declare-fun e!3984373 () Bool)

(assert (=> b!6583627 (= e!3984376 e!3984373)))

(declare-fun res!2700753 () Bool)

(assert (=> b!6583627 (= res!2700753 (matchRSpec!3556 (regOne!33423 lt!2410464) s!2326))))

(assert (=> b!6583627 (=> res!2700753 e!3984373)))

(declare-fun b!6583628 () Bool)

(declare-fun c!1211315 () Bool)

(assert (=> b!6583628 (= c!1211315 ((_ is Union!16455) lt!2410464))))

(assert (=> b!6583628 (= e!3984371 e!3984376)))

(declare-fun b!6583629 () Bool)

(declare-fun c!1211313 () Bool)

(assert (=> b!6583629 (= c!1211313 ((_ is ElementMatch!16455) lt!2410464))))

(declare-fun e!3984375 () Bool)

(assert (=> b!6583629 (= e!3984375 e!3984371)))

(declare-fun b!6583630 () Bool)

(assert (=> b!6583630 (= e!3984373 (matchRSpec!3556 (regTwo!33423 lt!2410464) s!2326))))

(assert (=> b!6583631 (= e!3984377 call!574183)))

(declare-fun b!6583632 () Bool)

(assert (=> b!6583632 (= e!3984376 e!3984377)))

(declare-fun c!1211316 () Bool)

(assert (=> b!6583632 (= c!1211316 ((_ is Star!16455) lt!2410464))))

(declare-fun b!6583633 () Bool)

(assert (=> b!6583633 (= e!3984374 e!3984375)))

(declare-fun res!2700754 () Bool)

(assert (=> b!6583633 (= res!2700754 (not ((_ is EmptyLang!16455) lt!2410464)))))

(assert (=> b!6583633 (=> (not res!2700754) (not e!3984375))))

(declare-fun bm!574179 () Bool)

(assert (=> bm!574179 (= call!574183 (Exists!3525 (ite c!1211316 lambda!366746 lambda!366747)))))

(assert (= (and d!2065303 c!1211314) b!6583625))

(assert (= (and d!2065303 (not c!1211314)) b!6583633))

(assert (= (and b!6583633 res!2700754) b!6583629))

(assert (= (and b!6583629 c!1211313) b!6583626))

(assert (= (and b!6583629 (not c!1211313)) b!6583628))

(assert (= (and b!6583628 c!1211315) b!6583627))

(assert (= (and b!6583628 (not c!1211315)) b!6583632))

(assert (= (and b!6583627 (not res!2700753)) b!6583630))

(assert (= (and b!6583632 c!1211316) b!6583624))

(assert (= (and b!6583632 (not c!1211316)) b!6583631))

(assert (= (and b!6583624 (not res!2700755)) b!6583623))

(assert (= (or b!6583623 b!6583631) bm!574179))

(assert (= (or b!6583625 b!6583624) bm!574178))

(assert (=> bm!574178 m!7362824))

(declare-fun m!7362938 () Bool)

(assert (=> b!6583627 m!7362938))

(declare-fun m!7362942 () Bool)

(assert (=> b!6583630 m!7362942))

(declare-fun m!7362944 () Bool)

(assert (=> bm!574179 m!7362944))

(assert (=> b!6583168 d!2065303))

(declare-fun d!2065341 () Bool)

(assert (=> d!2065341 (= (matchR!8638 lt!2410464 s!2326) (matchRSpec!3556 lt!2410464 s!2326))))

(declare-fun lt!2410569 () Unit!159155)

(declare-fun choose!49156 (Regex!16455 List!65665) Unit!159155)

(assert (=> d!2065341 (= lt!2410569 (choose!49156 lt!2410464 s!2326))))

(assert (=> d!2065341 (validRegex!8191 lt!2410464)))

(assert (=> d!2065341 (= (mainMatchTheorem!3556 lt!2410464 s!2326) lt!2410569)))

(declare-fun bs!1684445 () Bool)

(assert (= bs!1684445 d!2065341))

(assert (=> bs!1684445 m!7362550))

(assert (=> bs!1684445 m!7362552))

(declare-fun m!7362966 () Bool)

(assert (=> bs!1684445 m!7362966))

(assert (=> bs!1684445 m!7362826))

(assert (=> b!6583168 d!2065341))

(declare-fun d!2065351 () Bool)

(declare-fun e!3984460 () Bool)

(assert (=> d!2065351 e!3984460))

(declare-fun res!2700787 () Bool)

(assert (=> d!2065351 (=> (not res!2700787) (not e!3984460))))

(declare-fun lt!2410582 () Int)

(assert (=> d!2065351 (= res!2700787 (> lt!2410582 0))))

(declare-fun e!3984462 () Int)

(assert (=> d!2065351 (= lt!2410582 e!3984462)))

(declare-fun c!1211368 () Bool)

(assert (=> d!2065351 (= c!1211368 ((_ is ElementMatch!16455) r!7292))))

(assert (=> d!2065351 (= (regexDepth!352 r!7292) lt!2410582)))

(declare-fun b!6583771 () Bool)

(declare-fun e!3984463 () Bool)

(assert (=> b!6583771 (= e!3984463 (= lt!2410582 1))))

(declare-fun b!6583772 () Bool)

(declare-fun c!1211370 () Bool)

(assert (=> b!6583772 (= c!1211370 ((_ is Union!16455) r!7292))))

(declare-fun e!3984467 () Int)

(declare-fun e!3984459 () Int)

(assert (=> b!6583772 (= e!3984467 e!3984459)))

(declare-fun bm!574206 () Bool)

(declare-fun call!574215 () Int)

(declare-fun c!1211365 () Bool)

(assert (=> bm!574206 (= call!574215 (regexDepth!352 (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(declare-fun b!6583773 () Bool)

(declare-fun call!574213 () Int)

(assert (=> b!6583773 (= e!3984463 (> lt!2410582 call!574213))))

(declare-fun b!6583774 () Bool)

(declare-fun e!3984466 () Bool)

(assert (=> b!6583774 (= e!3984460 e!3984466)))

(assert (=> b!6583774 (= c!1211365 ((_ is Union!16455) r!7292))))

(declare-fun bm!574207 () Bool)

(declare-fun call!574212 () Int)

(assert (=> bm!574207 (= call!574212 (regexDepth!352 (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(declare-fun b!6583775 () Bool)

(declare-fun e!3984468 () Bool)

(assert (=> b!6583775 (= e!3984466 e!3984468)))

(declare-fun res!2700788 () Bool)

(assert (=> b!6583775 (= res!2700788 (> lt!2410582 call!574215))))

(assert (=> b!6583775 (=> (not res!2700788) (not e!3984468))))

(declare-fun b!6583776 () Bool)

(declare-fun e!3984464 () Int)

(assert (=> b!6583776 (= e!3984459 e!3984464)))

(declare-fun c!1211371 () Bool)

(assert (=> b!6583776 (= c!1211371 ((_ is Concat!25300) r!7292))))

(declare-fun b!6583777 () Bool)

(assert (=> b!6583777 (= e!3984462 1)))

(declare-fun b!6583778 () Bool)

(declare-fun call!574217 () Int)

(assert (=> b!6583778 (= e!3984468 (> lt!2410582 call!574217))))

(declare-fun b!6583779 () Bool)

(declare-fun e!3984465 () Bool)

(assert (=> b!6583779 (= e!3984465 (> lt!2410582 call!574215))))

(declare-fun call!574214 () Int)

(declare-fun bm!574208 () Bool)

(declare-fun call!574216 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!574208 (= call!574214 (maxBigInt!0 (ite c!1211370 call!574212 call!574216) (ite c!1211370 call!574216 call!574212)))))

(declare-fun b!6583780 () Bool)

(assert (=> b!6583780 (= e!3984464 (+ 1 call!574214))))

(declare-fun b!6583781 () Bool)

(declare-fun e!3984461 () Bool)

(assert (=> b!6583781 (= e!3984466 e!3984461)))

(declare-fun c!1211366 () Bool)

(assert (=> b!6583781 (= c!1211366 ((_ is Concat!25300) r!7292))))

(declare-fun c!1211369 () Bool)

(declare-fun bm!574209 () Bool)

(declare-fun call!574211 () Int)

(assert (=> bm!574209 (= call!574211 (regexDepth!352 (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))))))

(declare-fun b!6583782 () Bool)

(assert (=> b!6583782 (= e!3984462 e!3984467)))

(assert (=> b!6583782 (= c!1211369 ((_ is Star!16455) r!7292))))

(declare-fun b!6583783 () Bool)

(assert (=> b!6583783 (= e!3984459 (+ 1 call!574214))))

(declare-fun b!6583784 () Bool)

(assert (=> b!6583784 (= e!3984467 (+ 1 call!574211))))

(declare-fun bm!574210 () Bool)

(assert (=> bm!574210 (= call!574213 call!574217)))

(declare-fun b!6583785 () Bool)

(assert (=> b!6583785 (= e!3984464 1)))

(declare-fun b!6583786 () Bool)

(declare-fun res!2700786 () Bool)

(assert (=> b!6583786 (=> (not res!2700786) (not e!3984465))))

(assert (=> b!6583786 (= res!2700786 (> lt!2410582 call!574213))))

(assert (=> b!6583786 (= e!3984461 e!3984465)))

(declare-fun b!6583787 () Bool)

(declare-fun c!1211367 () Bool)

(assert (=> b!6583787 (= c!1211367 ((_ is Star!16455) r!7292))))

(assert (=> b!6583787 (= e!3984461 e!3984463)))

(declare-fun bm!574211 () Bool)

(assert (=> bm!574211 (= call!574216 call!574211)))

(declare-fun bm!574212 () Bool)

(assert (=> bm!574212 (= call!574217 (regexDepth!352 (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))))))

(assert (= (and d!2065351 c!1211368) b!6583777))

(assert (= (and d!2065351 (not c!1211368)) b!6583782))

(assert (= (and b!6583782 c!1211369) b!6583784))

(assert (= (and b!6583782 (not c!1211369)) b!6583772))

(assert (= (and b!6583772 c!1211370) b!6583783))

(assert (= (and b!6583772 (not c!1211370)) b!6583776))

(assert (= (and b!6583776 c!1211371) b!6583780))

(assert (= (and b!6583776 (not c!1211371)) b!6583785))

(assert (= (or b!6583783 b!6583780) bm!574211))

(assert (= (or b!6583783 b!6583780) bm!574207))

(assert (= (or b!6583783 b!6583780) bm!574208))

(assert (= (or b!6583784 bm!574211) bm!574209))

(assert (= (and d!2065351 res!2700787) b!6583774))

(assert (= (and b!6583774 c!1211365) b!6583775))

(assert (= (and b!6583774 (not c!1211365)) b!6583781))

(assert (= (and b!6583775 res!2700788) b!6583778))

(assert (= (and b!6583781 c!1211366) b!6583786))

(assert (= (and b!6583781 (not c!1211366)) b!6583787))

(assert (= (and b!6583786 res!2700786) b!6583779))

(assert (= (and b!6583787 c!1211367) b!6583773))

(assert (= (and b!6583787 (not c!1211367)) b!6583771))

(assert (= (or b!6583786 b!6583773) bm!574210))

(assert (= (or b!6583778 bm!574210) bm!574212))

(assert (= (or b!6583775 b!6583779) bm!574206))

(declare-fun m!7363014 () Bool)

(assert (=> bm!574208 m!7363014))

(declare-fun m!7363016 () Bool)

(assert (=> bm!574209 m!7363016))

(declare-fun m!7363018 () Bool)

(assert (=> bm!574212 m!7363018))

(declare-fun m!7363020 () Bool)

(assert (=> bm!574206 m!7363020))

(declare-fun m!7363022 () Bool)

(assert (=> bm!574207 m!7363022))

(assert (=> b!6583147 d!2065351))

(declare-fun d!2065367 () Bool)

(declare-fun e!3984480 () Bool)

(assert (=> d!2065367 e!3984480))

(declare-fun res!2700790 () Bool)

(assert (=> d!2065367 (=> (not res!2700790) (not e!3984480))))

(declare-fun lt!2410583 () Int)

(assert (=> d!2065367 (= res!2700790 (> lt!2410583 0))))

(declare-fun e!3984482 () Int)

(assert (=> d!2065367 (= lt!2410583 e!3984482)))

(declare-fun c!1211375 () Bool)

(assert (=> d!2065367 (= c!1211375 ((_ is ElementMatch!16455) lt!2410486))))

(assert (=> d!2065367 (= (regexDepth!352 lt!2410486) lt!2410583)))

(declare-fun b!6583817 () Bool)

(declare-fun e!3984483 () Bool)

(assert (=> b!6583817 (= e!3984483 (= lt!2410583 1))))

(declare-fun b!6583818 () Bool)

(declare-fun c!1211377 () Bool)

(assert (=> b!6583818 (= c!1211377 ((_ is Union!16455) lt!2410486))))

(declare-fun e!3984487 () Int)

(declare-fun e!3984479 () Int)

(assert (=> b!6583818 (= e!3984487 e!3984479)))

(declare-fun bm!574213 () Bool)

(declare-fun call!574222 () Int)

(declare-fun c!1211372 () Bool)

(assert (=> bm!574213 (= call!574222 (regexDepth!352 (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(declare-fun b!6583819 () Bool)

(declare-fun call!574220 () Int)

(assert (=> b!6583819 (= e!3984483 (> lt!2410583 call!574220))))

(declare-fun b!6583820 () Bool)

(declare-fun e!3984486 () Bool)

(assert (=> b!6583820 (= e!3984480 e!3984486)))

(assert (=> b!6583820 (= c!1211372 ((_ is Union!16455) lt!2410486))))

(declare-fun bm!574214 () Bool)

(declare-fun call!574219 () Int)

(assert (=> bm!574214 (= call!574219 (regexDepth!352 (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(declare-fun b!6583821 () Bool)

(declare-fun e!3984488 () Bool)

(assert (=> b!6583821 (= e!3984486 e!3984488)))

(declare-fun res!2700791 () Bool)

(assert (=> b!6583821 (= res!2700791 (> lt!2410583 call!574222))))

(assert (=> b!6583821 (=> (not res!2700791) (not e!3984488))))

(declare-fun b!6583822 () Bool)

(declare-fun e!3984484 () Int)

(assert (=> b!6583822 (= e!3984479 e!3984484)))

(declare-fun c!1211378 () Bool)

(assert (=> b!6583822 (= c!1211378 ((_ is Concat!25300) lt!2410486))))

(declare-fun b!6583823 () Bool)

(assert (=> b!6583823 (= e!3984482 1)))

(declare-fun b!6583824 () Bool)

(declare-fun call!574224 () Int)

(assert (=> b!6583824 (= e!3984488 (> lt!2410583 call!574224))))

(declare-fun b!6583825 () Bool)

(declare-fun e!3984485 () Bool)

(assert (=> b!6583825 (= e!3984485 (> lt!2410583 call!574222))))

(declare-fun bm!574215 () Bool)

(declare-fun call!574221 () Int)

(declare-fun call!574223 () Int)

(assert (=> bm!574215 (= call!574221 (maxBigInt!0 (ite c!1211377 call!574219 call!574223) (ite c!1211377 call!574223 call!574219)))))

(declare-fun b!6583826 () Bool)

(assert (=> b!6583826 (= e!3984484 (+ 1 call!574221))))

(declare-fun b!6583827 () Bool)

(declare-fun e!3984481 () Bool)

(assert (=> b!6583827 (= e!3984486 e!3984481)))

(declare-fun c!1211373 () Bool)

(assert (=> b!6583827 (= c!1211373 ((_ is Concat!25300) lt!2410486))))

(declare-fun call!574218 () Int)

(declare-fun bm!574216 () Bool)

(declare-fun c!1211376 () Bool)

(assert (=> bm!574216 (= call!574218 (regexDepth!352 (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))))))

(declare-fun b!6583828 () Bool)

(assert (=> b!6583828 (= e!3984482 e!3984487)))

(assert (=> b!6583828 (= c!1211376 ((_ is Star!16455) lt!2410486))))

(declare-fun b!6583829 () Bool)

(assert (=> b!6583829 (= e!3984479 (+ 1 call!574221))))

(declare-fun b!6583830 () Bool)

(assert (=> b!6583830 (= e!3984487 (+ 1 call!574218))))

(declare-fun bm!574217 () Bool)

(assert (=> bm!574217 (= call!574220 call!574224)))

(declare-fun b!6583831 () Bool)

(assert (=> b!6583831 (= e!3984484 1)))

(declare-fun b!6583832 () Bool)

(declare-fun res!2700789 () Bool)

(assert (=> b!6583832 (=> (not res!2700789) (not e!3984485))))

(assert (=> b!6583832 (= res!2700789 (> lt!2410583 call!574220))))

(assert (=> b!6583832 (= e!3984481 e!3984485)))

(declare-fun b!6583833 () Bool)

(declare-fun c!1211374 () Bool)

(assert (=> b!6583833 (= c!1211374 ((_ is Star!16455) lt!2410486))))

(assert (=> b!6583833 (= e!3984481 e!3984483)))

(declare-fun bm!574218 () Bool)

(assert (=> bm!574218 (= call!574223 call!574218)))

(declare-fun bm!574219 () Bool)

(assert (=> bm!574219 (= call!574224 (regexDepth!352 (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))))))

(assert (= (and d!2065367 c!1211375) b!6583823))

(assert (= (and d!2065367 (not c!1211375)) b!6583828))

(assert (= (and b!6583828 c!1211376) b!6583830))

(assert (= (and b!6583828 (not c!1211376)) b!6583818))

(assert (= (and b!6583818 c!1211377) b!6583829))

(assert (= (and b!6583818 (not c!1211377)) b!6583822))

(assert (= (and b!6583822 c!1211378) b!6583826))

(assert (= (and b!6583822 (not c!1211378)) b!6583831))

(assert (= (or b!6583829 b!6583826) bm!574218))

(assert (= (or b!6583829 b!6583826) bm!574214))

(assert (= (or b!6583829 b!6583826) bm!574215))

(assert (= (or b!6583830 bm!574218) bm!574216))

(assert (= (and d!2065367 res!2700790) b!6583820))

(assert (= (and b!6583820 c!1211372) b!6583821))

(assert (= (and b!6583820 (not c!1211372)) b!6583827))

(assert (= (and b!6583821 res!2700791) b!6583824))

(assert (= (and b!6583827 c!1211373) b!6583832))

(assert (= (and b!6583827 (not c!1211373)) b!6583833))

(assert (= (and b!6583832 res!2700789) b!6583825))

(assert (= (and b!6583833 c!1211374) b!6583819))

(assert (= (and b!6583833 (not c!1211374)) b!6583817))

(assert (= (or b!6583832 b!6583819) bm!574217))

(assert (= (or b!6583824 bm!574217) bm!574219))

(assert (= (or b!6583821 b!6583825) bm!574213))

(declare-fun m!7363024 () Bool)

(assert (=> bm!574215 m!7363024))

(declare-fun m!7363026 () Bool)

(assert (=> bm!574216 m!7363026))

(declare-fun m!7363028 () Bool)

(assert (=> bm!574219 m!7363028))

(declare-fun m!7363030 () Bool)

(assert (=> bm!574213 m!7363030))

(declare-fun m!7363032 () Bool)

(assert (=> bm!574214 m!7363032))

(assert (=> b!6583147 d!2065367))

(declare-fun bs!1684465 () Bool)

(declare-fun d!2065379 () Bool)

(assert (= bs!1684465 (and d!2065379 d!2065261)))

(declare-fun lambda!366760 () Int)

(assert (=> bs!1684465 (= lambda!366760 lambda!366714)))

(declare-fun b!6583868 () Bool)

(declare-fun e!3984512 () Bool)

(declare-fun e!3984511 () Bool)

(assert (=> b!6583868 (= e!3984512 e!3984511)))

(declare-fun c!1211388 () Bool)

(declare-fun tail!12447 (List!65664) List!65664)

(assert (=> b!6583868 (= c!1211388 (isEmpty!37797 (tail!12447 (t!379312 (exprs!6339 (h!71990 zl!343))))))))

(declare-fun b!6583869 () Bool)

(declare-fun e!3984507 () Regex!16455)

(assert (=> b!6583869 (= e!3984507 EmptyExpr!16455)))

(declare-fun b!6583870 () Bool)

(declare-fun e!3984508 () Bool)

(assert (=> b!6583870 (= e!3984508 e!3984512)))

(declare-fun c!1211387 () Bool)

(assert (=> b!6583870 (= c!1211387 (isEmpty!37797 (t!379312 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun b!6583871 () Bool)

(declare-fun e!3984509 () Bool)

(assert (=> b!6583871 (= e!3984509 (isEmpty!37797 (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343))))))))

(declare-fun b!6583872 () Bool)

(declare-fun lt!2410586 () Regex!16455)

(declare-fun isEmptyExpr!1833 (Regex!16455) Bool)

(assert (=> b!6583872 (= e!3984512 (isEmptyExpr!1833 lt!2410586))))

(assert (=> d!2065379 e!3984508))

(declare-fun res!2700797 () Bool)

(assert (=> d!2065379 (=> (not res!2700797) (not e!3984508))))

(assert (=> d!2065379 (= res!2700797 (validRegex!8191 lt!2410586))))

(declare-fun e!3984510 () Regex!16455)

(assert (=> d!2065379 (= lt!2410586 e!3984510)))

(declare-fun c!1211389 () Bool)

(assert (=> d!2065379 (= c!1211389 e!3984509)))

(declare-fun res!2700796 () Bool)

(assert (=> d!2065379 (=> (not res!2700796) (not e!3984509))))

(assert (=> d!2065379 (= res!2700796 ((_ is Cons!65540) (t!379312 (exprs!6339 (h!71990 zl!343)))))))

(assert (=> d!2065379 (forall!15634 (t!379312 (exprs!6339 (h!71990 zl!343))) lambda!366760)))

(assert (=> d!2065379 (= (generalisedConcat!2052 (t!379312 (exprs!6339 (h!71990 zl!343)))) lt!2410586)))

(declare-fun b!6583873 () Bool)

(assert (=> b!6583873 (= e!3984510 (h!71988 (t!379312 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun b!6583874 () Bool)

(declare-fun head!13362 (List!65664) Regex!16455)

(assert (=> b!6583874 (= e!3984511 (= lt!2410586 (head!13362 (t!379312 (exprs!6339 (h!71990 zl!343))))))))

(declare-fun b!6583875 () Bool)

(assert (=> b!6583875 (= e!3984510 e!3984507)))

(declare-fun c!1211390 () Bool)

(assert (=> b!6583875 (= c!1211390 ((_ is Cons!65540) (t!379312 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun b!6583876 () Bool)

(declare-fun isConcat!1356 (Regex!16455) Bool)

(assert (=> b!6583876 (= e!3984511 (isConcat!1356 lt!2410586))))

(declare-fun b!6583877 () Bool)

(assert (=> b!6583877 (= e!3984507 (Concat!25300 (h!71988 (t!379312 (exprs!6339 (h!71990 zl!343)))) (generalisedConcat!2052 (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343)))))))))

(assert (= (and d!2065379 res!2700796) b!6583871))

(assert (= (and d!2065379 c!1211389) b!6583873))

(assert (= (and d!2065379 (not c!1211389)) b!6583875))

(assert (= (and b!6583875 c!1211390) b!6583877))

(assert (= (and b!6583875 (not c!1211390)) b!6583869))

(assert (= (and d!2065379 res!2700797) b!6583870))

(assert (= (and b!6583870 c!1211387) b!6583872))

(assert (= (and b!6583870 (not c!1211387)) b!6583868))

(assert (= (and b!6583868 c!1211388) b!6583874))

(assert (= (and b!6583868 (not c!1211388)) b!6583876))

(declare-fun m!7363034 () Bool)

(assert (=> b!6583872 m!7363034))

(declare-fun m!7363036 () Bool)

(assert (=> b!6583876 m!7363036))

(declare-fun m!7363038 () Bool)

(assert (=> b!6583868 m!7363038))

(assert (=> b!6583868 m!7363038))

(declare-fun m!7363040 () Bool)

(assert (=> b!6583868 m!7363040))

(declare-fun m!7363042 () Bool)

(assert (=> d!2065379 m!7363042))

(declare-fun m!7363044 () Bool)

(assert (=> d!2065379 m!7363044))

(declare-fun m!7363046 () Bool)

(assert (=> b!6583877 m!7363046))

(declare-fun m!7363048 () Bool)

(assert (=> b!6583874 m!7363048))

(assert (=> b!6583870 m!7362592))

(declare-fun m!7363050 () Bool)

(assert (=> b!6583871 m!7363050))

(assert (=> b!6583147 d!2065379))

(declare-fun d!2065381 () Bool)

(declare-fun lt!2410587 () Regex!16455)

(assert (=> d!2065381 (validRegex!8191 lt!2410587)))

(assert (=> d!2065381 (= lt!2410587 (generalisedUnion!2299 (unfocusZipperList!1876 (Cons!65542 lt!2410472 Nil!65542))))))

(assert (=> d!2065381 (= (unfocusZipper!2197 (Cons!65542 lt!2410472 Nil!65542)) lt!2410587)))

(declare-fun bs!1684466 () Bool)

(assert (= bs!1684466 d!2065381))

(declare-fun m!7363052 () Bool)

(assert (=> bs!1684466 m!7363052))

(declare-fun m!7363054 () Bool)

(assert (=> bs!1684466 m!7363054))

(assert (=> bs!1684466 m!7363054))

(declare-fun m!7363056 () Bool)

(assert (=> bs!1684466 m!7363056))

(assert (=> b!6583146 d!2065381))

(declare-fun bm!574226 () Bool)

(declare-fun call!574233 () Bool)

(declare-fun c!1211396 () Bool)

(assert (=> bm!574226 (= call!574233 (validRegex!8191 (ite c!1211396 (regTwo!33423 r!7292) (regTwo!33422 r!7292))))))

(declare-fun b!6583896 () Bool)

(declare-fun e!3984528 () Bool)

(declare-fun e!3984531 () Bool)

(assert (=> b!6583896 (= e!3984528 e!3984531)))

(declare-fun c!1211395 () Bool)

(assert (=> b!6583896 (= c!1211395 ((_ is Star!16455) r!7292))))

(declare-fun b!6583897 () Bool)

(declare-fun e!3984527 () Bool)

(assert (=> b!6583897 (= e!3984531 e!3984527)))

(assert (=> b!6583897 (= c!1211396 ((_ is Union!16455) r!7292))))

(declare-fun b!6583898 () Bool)

(declare-fun e!3984530 () Bool)

(assert (=> b!6583898 (= e!3984530 call!574233)))

(declare-fun b!6583899 () Bool)

(declare-fun e!3984529 () Bool)

(assert (=> b!6583899 (= e!3984531 e!3984529)))

(declare-fun res!2700809 () Bool)

(assert (=> b!6583899 (= res!2700809 (not (nullable!6448 (reg!16784 r!7292))))))

(assert (=> b!6583899 (=> (not res!2700809) (not e!3984529))))

(declare-fun bm!574227 () Bool)

(declare-fun call!574231 () Bool)

(assert (=> bm!574227 (= call!574231 (validRegex!8191 (ite c!1211395 (reg!16784 r!7292) (ite c!1211396 (regOne!33423 r!7292) (regOne!33422 r!7292)))))))

(declare-fun b!6583901 () Bool)

(declare-fun e!3984533 () Bool)

(declare-fun e!3984532 () Bool)

(assert (=> b!6583901 (= e!3984533 e!3984532)))

(declare-fun res!2700810 () Bool)

(assert (=> b!6583901 (=> (not res!2700810) (not e!3984532))))

(declare-fun call!574232 () Bool)

(assert (=> b!6583901 (= res!2700810 call!574232)))

(declare-fun b!6583902 () Bool)

(declare-fun res!2700812 () Bool)

(assert (=> b!6583902 (=> (not res!2700812) (not e!3984530))))

(assert (=> b!6583902 (= res!2700812 call!574232)))

(assert (=> b!6583902 (= e!3984527 e!3984530)))

(declare-fun bm!574228 () Bool)

(assert (=> bm!574228 (= call!574232 call!574231)))

(declare-fun b!6583903 () Bool)

(declare-fun res!2700808 () Bool)

(assert (=> b!6583903 (=> res!2700808 e!3984533)))

(assert (=> b!6583903 (= res!2700808 (not ((_ is Concat!25300) r!7292)))))

(assert (=> b!6583903 (= e!3984527 e!3984533)))

(declare-fun b!6583904 () Bool)

(assert (=> b!6583904 (= e!3984529 call!574231)))

(declare-fun d!2065383 () Bool)

(declare-fun res!2700811 () Bool)

(assert (=> d!2065383 (=> res!2700811 e!3984528)))

(assert (=> d!2065383 (= res!2700811 ((_ is ElementMatch!16455) r!7292))))

(assert (=> d!2065383 (= (validRegex!8191 r!7292) e!3984528)))

(declare-fun b!6583900 () Bool)

(assert (=> b!6583900 (= e!3984532 call!574233)))

(assert (= (and d!2065383 (not res!2700811)) b!6583896))

(assert (= (and b!6583896 c!1211395) b!6583899))

(assert (= (and b!6583896 (not c!1211395)) b!6583897))

(assert (= (and b!6583899 res!2700809) b!6583904))

(assert (= (and b!6583897 c!1211396) b!6583902))

(assert (= (and b!6583897 (not c!1211396)) b!6583903))

(assert (= (and b!6583902 res!2700812) b!6583898))

(assert (= (and b!6583903 (not res!2700808)) b!6583901))

(assert (= (and b!6583901 res!2700810) b!6583900))

(assert (= (or b!6583898 b!6583900) bm!574226))

(assert (= (or b!6583902 b!6583901) bm!574228))

(assert (= (or b!6583904 bm!574228) bm!574227))

(declare-fun m!7363058 () Bool)

(assert (=> bm!574226 m!7363058))

(declare-fun m!7363060 () Bool)

(assert (=> b!6583899 m!7363060))

(declare-fun m!7363062 () Bool)

(assert (=> bm!574227 m!7363062))

(assert (=> start!644442 d!2065383))

(declare-fun d!2065385 () Bool)

(declare-fun c!1211399 () Bool)

(assert (=> d!2065385 (= c!1211399 (isEmpty!37801 (t!379313 s!2326)))))

(declare-fun e!3984536 () Bool)

(assert (=> d!2065385 (= (matchZipper!2467 lt!2410487 (t!379313 s!2326)) e!3984536)))

(declare-fun b!6583909 () Bool)

(declare-fun nullableZipper!2200 ((InoxSet Context!11678)) Bool)

(assert (=> b!6583909 (= e!3984536 (nullableZipper!2200 lt!2410487))))

(declare-fun b!6583910 () Bool)

(assert (=> b!6583910 (= e!3984536 (matchZipper!2467 (derivationStepZipper!2421 lt!2410487 (head!13361 (t!379313 s!2326))) (tail!12446 (t!379313 s!2326))))))

(assert (= (and d!2065385 c!1211399) b!6583909))

(assert (= (and d!2065385 (not c!1211399)) b!6583910))

(declare-fun m!7363064 () Bool)

(assert (=> d!2065385 m!7363064))

(declare-fun m!7363066 () Bool)

(assert (=> b!6583909 m!7363066))

(declare-fun m!7363068 () Bool)

(assert (=> b!6583910 m!7363068))

(assert (=> b!6583910 m!7363068))

(declare-fun m!7363070 () Bool)

(assert (=> b!6583910 m!7363070))

(declare-fun m!7363072 () Bool)

(assert (=> b!6583910 m!7363072))

(assert (=> b!6583910 m!7363070))

(assert (=> b!6583910 m!7363072))

(declare-fun m!7363074 () Bool)

(assert (=> b!6583910 m!7363074))

(assert (=> b!6583166 d!2065385))

(declare-fun d!2065387 () Bool)

(assert (=> d!2065387 (= (isEmpty!37797 (t!379312 (exprs!6339 (h!71990 zl!343)))) ((_ is Nil!65540) (t!379312 (exprs!6339 (h!71990 zl!343)))))))

(assert (=> b!6583154 d!2065387))

(declare-fun b!6583929 () Bool)

(declare-fun lt!2410596 () Unit!159155)

(declare-fun lt!2410594 () Unit!159155)

(assert (=> b!6583929 (= lt!2410596 lt!2410594)))

(declare-fun ++!14601 (List!65665 List!65665) List!65665)

(assert (=> b!6583929 (= (++!14601 (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541)) (t!379313 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2598 (List!65665 C!33180 List!65665 List!65665) Unit!159155)

(assert (=> b!6583929 (= lt!2410594 (lemmaMoveElementToOtherListKeepsConcatEq!2598 Nil!65541 (h!71989 s!2326) (t!379313 s!2326) s!2326))))

(declare-fun e!3984551 () Option!16346)

(assert (=> b!6583929 (= e!3984551 (findConcatSeparation!2760 (regOne!33422 r!7292) (regTwo!33422 r!7292) (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541)) (t!379313 s!2326) s!2326))))

(declare-fun b!6583930 () Bool)

(declare-fun e!3984548 () Bool)

(declare-fun lt!2410595 () Option!16346)

(declare-fun get!22764 (Option!16346) tuple2!66868)

(assert (=> b!6583930 (= e!3984548 (= (++!14601 (_1!36737 (get!22764 lt!2410595)) (_2!36737 (get!22764 lt!2410595))) s!2326))))

(declare-fun b!6583931 () Bool)

(declare-fun res!2700827 () Bool)

(assert (=> b!6583931 (=> (not res!2700827) (not e!3984548))))

(assert (=> b!6583931 (= res!2700827 (matchR!8638 (regOne!33422 r!7292) (_1!36737 (get!22764 lt!2410595))))))

(declare-fun b!6583932 () Bool)

(declare-fun e!3984549 () Bool)

(assert (=> b!6583932 (= e!3984549 (not (isDefined!13049 lt!2410595)))))

(declare-fun b!6583933 () Bool)

(declare-fun e!3984550 () Bool)

(assert (=> b!6583933 (= e!3984550 (matchR!8638 (regTwo!33422 r!7292) s!2326))))

(declare-fun b!6583934 () Bool)

(declare-fun e!3984547 () Option!16346)

(assert (=> b!6583934 (= e!3984547 (Some!16345 (tuple2!66869 Nil!65541 s!2326)))))

(declare-fun b!6583935 () Bool)

(declare-fun res!2700823 () Bool)

(assert (=> b!6583935 (=> (not res!2700823) (not e!3984548))))

(assert (=> b!6583935 (= res!2700823 (matchR!8638 (regTwo!33422 r!7292) (_2!36737 (get!22764 lt!2410595))))))

(declare-fun b!6583936 () Bool)

(assert (=> b!6583936 (= e!3984551 None!16345)))

(declare-fun d!2065389 () Bool)

(assert (=> d!2065389 e!3984549))

(declare-fun res!2700826 () Bool)

(assert (=> d!2065389 (=> res!2700826 e!3984549)))

(assert (=> d!2065389 (= res!2700826 e!3984548)))

(declare-fun res!2700825 () Bool)

(assert (=> d!2065389 (=> (not res!2700825) (not e!3984548))))

(assert (=> d!2065389 (= res!2700825 (isDefined!13049 lt!2410595))))

(assert (=> d!2065389 (= lt!2410595 e!3984547)))

(declare-fun c!1211405 () Bool)

(assert (=> d!2065389 (= c!1211405 e!3984550)))

(declare-fun res!2700824 () Bool)

(assert (=> d!2065389 (=> (not res!2700824) (not e!3984550))))

(assert (=> d!2065389 (= res!2700824 (matchR!8638 (regOne!33422 r!7292) Nil!65541))))

(assert (=> d!2065389 (validRegex!8191 (regOne!33422 r!7292))))

(assert (=> d!2065389 (= (findConcatSeparation!2760 (regOne!33422 r!7292) (regTwo!33422 r!7292) Nil!65541 s!2326 s!2326) lt!2410595)))

(declare-fun b!6583937 () Bool)

(assert (=> b!6583937 (= e!3984547 e!3984551)))

(declare-fun c!1211404 () Bool)

(assert (=> b!6583937 (= c!1211404 ((_ is Nil!65541) s!2326))))

(assert (= (and d!2065389 res!2700824) b!6583933))

(assert (= (and d!2065389 c!1211405) b!6583934))

(assert (= (and d!2065389 (not c!1211405)) b!6583937))

(assert (= (and b!6583937 c!1211404) b!6583936))

(assert (= (and b!6583937 (not c!1211404)) b!6583929))

(assert (= (and d!2065389 res!2700825) b!6583931))

(assert (= (and b!6583931 res!2700827) b!6583935))

(assert (= (and b!6583935 res!2700823) b!6583930))

(assert (= (and d!2065389 (not res!2700826)) b!6583932))

(declare-fun m!7363076 () Bool)

(assert (=> b!6583935 m!7363076))

(declare-fun m!7363078 () Bool)

(assert (=> b!6583935 m!7363078))

(assert (=> b!6583930 m!7363076))

(declare-fun m!7363080 () Bool)

(assert (=> b!6583930 m!7363080))

(declare-fun m!7363082 () Bool)

(assert (=> b!6583929 m!7363082))

(assert (=> b!6583929 m!7363082))

(declare-fun m!7363084 () Bool)

(assert (=> b!6583929 m!7363084))

(declare-fun m!7363086 () Bool)

(assert (=> b!6583929 m!7363086))

(assert (=> b!6583929 m!7363082))

(declare-fun m!7363088 () Bool)

(assert (=> b!6583929 m!7363088))

(declare-fun m!7363090 () Bool)

(assert (=> b!6583932 m!7363090))

(declare-fun m!7363092 () Bool)

(assert (=> b!6583933 m!7363092))

(assert (=> b!6583931 m!7363076))

(declare-fun m!7363094 () Bool)

(assert (=> b!6583931 m!7363094))

(assert (=> d!2065389 m!7363090))

(declare-fun m!7363096 () Bool)

(assert (=> d!2065389 m!7363096))

(declare-fun m!7363098 () Bool)

(assert (=> d!2065389 m!7363098))

(assert (=> b!6583175 d!2065389))

(declare-fun d!2065391 () Bool)

(declare-fun choose!49158 (Int) Bool)

(assert (=> d!2065391 (= (Exists!3525 lambda!366699) (choose!49158 lambda!366699))))

(declare-fun bs!1684467 () Bool)

(assert (= bs!1684467 d!2065391))

(declare-fun m!7363100 () Bool)

(assert (=> bs!1684467 m!7363100))

(assert (=> b!6583175 d!2065391))

(declare-fun d!2065393 () Bool)

(assert (=> d!2065393 (= (Exists!3525 lambda!366700) (choose!49158 lambda!366700))))

(declare-fun bs!1684468 () Bool)

(assert (= bs!1684468 d!2065393))

(declare-fun m!7363102 () Bool)

(assert (=> bs!1684468 m!7363102))

(assert (=> b!6583175 d!2065393))

(declare-fun bs!1684469 () Bool)

(declare-fun d!2065395 () Bool)

(assert (= bs!1684469 (and d!2065395 b!6583175)))

(declare-fun lambda!366763 () Int)

(assert (=> bs!1684469 (= lambda!366763 lambda!366699)))

(assert (=> bs!1684469 (not (= lambda!366763 lambda!366700))))

(declare-fun bs!1684470 () Bool)

(assert (= bs!1684470 (and d!2065395 b!6583623)))

(assert (=> bs!1684470 (not (= lambda!366763 lambda!366746))))

(declare-fun bs!1684471 () Bool)

(assert (= bs!1684471 (and d!2065395 b!6583631)))

(assert (=> bs!1684471 (not (= lambda!366763 lambda!366747))))

(assert (=> d!2065395 true))

(assert (=> d!2065395 true))

(assert (=> d!2065395 true))

(assert (=> d!2065395 (= (isDefined!13049 (findConcatSeparation!2760 (regOne!33422 r!7292) (regTwo!33422 r!7292) Nil!65541 s!2326 s!2326)) (Exists!3525 lambda!366763))))

(declare-fun lt!2410599 () Unit!159155)

(declare-fun choose!49159 (Regex!16455 Regex!16455 List!65665) Unit!159155)

(assert (=> d!2065395 (= lt!2410599 (choose!49159 (regOne!33422 r!7292) (regTwo!33422 r!7292) s!2326))))

(assert (=> d!2065395 (validRegex!8191 (regOne!33422 r!7292))))

(assert (=> d!2065395 (= (lemmaFindConcatSeparationEquivalentToExists!2524 (regOne!33422 r!7292) (regTwo!33422 r!7292) s!2326) lt!2410599)))

(declare-fun bs!1684472 () Bool)

(assert (= bs!1684472 d!2065395))

(declare-fun m!7363104 () Bool)

(assert (=> bs!1684472 m!7363104))

(assert (=> bs!1684472 m!7363098))

(assert (=> bs!1684472 m!7362568))

(assert (=> bs!1684472 m!7362570))

(declare-fun m!7363106 () Bool)

(assert (=> bs!1684472 m!7363106))

(assert (=> bs!1684472 m!7362568))

(assert (=> b!6583175 d!2065395))

(declare-fun bs!1684473 () Bool)

(declare-fun d!2065397 () Bool)

(assert (= bs!1684473 (and d!2065397 b!6583175)))

(declare-fun lambda!366768 () Int)

(assert (=> bs!1684473 (= lambda!366768 lambda!366699)))

(declare-fun bs!1684474 () Bool)

(assert (= bs!1684474 (and d!2065397 b!6583623)))

(assert (=> bs!1684474 (not (= lambda!366768 lambda!366746))))

(declare-fun bs!1684475 () Bool)

(assert (= bs!1684475 (and d!2065397 d!2065395)))

(assert (=> bs!1684475 (= lambda!366768 lambda!366763)))

(assert (=> bs!1684473 (not (= lambda!366768 lambda!366700))))

(declare-fun bs!1684476 () Bool)

(assert (= bs!1684476 (and d!2065397 b!6583631)))

(assert (=> bs!1684476 (not (= lambda!366768 lambda!366747))))

(assert (=> d!2065397 true))

(assert (=> d!2065397 true))

(assert (=> d!2065397 true))

(declare-fun lambda!366769 () Int)

(assert (=> bs!1684473 (not (= lambda!366769 lambda!366699))))

(assert (=> bs!1684474 (not (= lambda!366769 lambda!366746))))

(declare-fun bs!1684477 () Bool)

(assert (= bs!1684477 d!2065397))

(assert (=> bs!1684477 (not (= lambda!366769 lambda!366768))))

(assert (=> bs!1684475 (not (= lambda!366769 lambda!366763))))

(assert (=> bs!1684473 (= lambda!366769 lambda!366700)))

(assert (=> bs!1684476 (= (and (= (regOne!33422 r!7292) (regOne!33422 lt!2410464)) (= (regTwo!33422 r!7292) (regTwo!33422 lt!2410464))) (= lambda!366769 lambda!366747))))

(assert (=> d!2065397 true))

(assert (=> d!2065397 true))

(assert (=> d!2065397 true))

(assert (=> d!2065397 (= (Exists!3525 lambda!366768) (Exists!3525 lambda!366769))))

(declare-fun lt!2410602 () Unit!159155)

(declare-fun choose!49160 (Regex!16455 Regex!16455 List!65665) Unit!159155)

(assert (=> d!2065397 (= lt!2410602 (choose!49160 (regOne!33422 r!7292) (regTwo!33422 r!7292) s!2326))))

(assert (=> d!2065397 (validRegex!8191 (regOne!33422 r!7292))))

(assert (=> d!2065397 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2062 (regOne!33422 r!7292) (regTwo!33422 r!7292) s!2326) lt!2410602)))

(declare-fun m!7363108 () Bool)

(assert (=> bs!1684477 m!7363108))

(declare-fun m!7363110 () Bool)

(assert (=> bs!1684477 m!7363110))

(declare-fun m!7363112 () Bool)

(assert (=> bs!1684477 m!7363112))

(assert (=> bs!1684477 m!7363098))

(assert (=> b!6583175 d!2065397))

(declare-fun d!2065399 () Bool)

(declare-fun isEmpty!37802 (Option!16346) Bool)

(assert (=> d!2065399 (= (isDefined!13049 (findConcatSeparation!2760 (regOne!33422 r!7292) (regTwo!33422 r!7292) Nil!65541 s!2326 s!2326)) (not (isEmpty!37802 (findConcatSeparation!2760 (regOne!33422 r!7292) (regTwo!33422 r!7292) Nil!65541 s!2326 s!2326))))))

(declare-fun bs!1684478 () Bool)

(assert (= bs!1684478 d!2065399))

(assert (=> bs!1684478 m!7362568))

(declare-fun m!7363114 () Bool)

(assert (=> bs!1684478 m!7363114))

(assert (=> b!6583175 d!2065399))

(declare-fun bs!1684479 () Bool)

(declare-fun d!2065401 () Bool)

(assert (= bs!1684479 (and d!2065401 d!2065261)))

(declare-fun lambda!366770 () Int)

(assert (=> bs!1684479 (= lambda!366770 lambda!366714)))

(declare-fun bs!1684480 () Bool)

(assert (= bs!1684480 (and d!2065401 d!2065379)))

(assert (=> bs!1684480 (= lambda!366770 lambda!366760)))

(declare-fun b!6583950 () Bool)

(declare-fun e!3984563 () Bool)

(declare-fun e!3984562 () Bool)

(assert (=> b!6583950 (= e!3984563 e!3984562)))

(declare-fun c!1211407 () Bool)

(assert (=> b!6583950 (= c!1211407 (isEmpty!37797 (tail!12447 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun b!6583951 () Bool)

(declare-fun e!3984558 () Regex!16455)

(assert (=> b!6583951 (= e!3984558 EmptyExpr!16455)))

(declare-fun b!6583952 () Bool)

(declare-fun e!3984559 () Bool)

(assert (=> b!6583952 (= e!3984559 e!3984563)))

(declare-fun c!1211406 () Bool)

(assert (=> b!6583952 (= c!1211406 (isEmpty!37797 (exprs!6339 (h!71990 zl!343))))))

(declare-fun b!6583953 () Bool)

(declare-fun e!3984560 () Bool)

(assert (=> b!6583953 (= e!3984560 (isEmpty!37797 (t!379312 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun b!6583954 () Bool)

(declare-fun lt!2410603 () Regex!16455)

(assert (=> b!6583954 (= e!3984563 (isEmptyExpr!1833 lt!2410603))))

(assert (=> d!2065401 e!3984559))

(declare-fun res!2700841 () Bool)

(assert (=> d!2065401 (=> (not res!2700841) (not e!3984559))))

(assert (=> d!2065401 (= res!2700841 (validRegex!8191 lt!2410603))))

(declare-fun e!3984561 () Regex!16455)

(assert (=> d!2065401 (= lt!2410603 e!3984561)))

(declare-fun c!1211408 () Bool)

(assert (=> d!2065401 (= c!1211408 e!3984560)))

(declare-fun res!2700840 () Bool)

(assert (=> d!2065401 (=> (not res!2700840) (not e!3984560))))

(assert (=> d!2065401 (= res!2700840 ((_ is Cons!65540) (exprs!6339 (h!71990 zl!343))))))

(assert (=> d!2065401 (forall!15634 (exprs!6339 (h!71990 zl!343)) lambda!366770)))

(assert (=> d!2065401 (= (generalisedConcat!2052 (exprs!6339 (h!71990 zl!343))) lt!2410603)))

(declare-fun b!6583955 () Bool)

(assert (=> b!6583955 (= e!3984561 (h!71988 (exprs!6339 (h!71990 zl!343))))))

(declare-fun b!6583956 () Bool)

(assert (=> b!6583956 (= e!3984562 (= lt!2410603 (head!13362 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun b!6583957 () Bool)

(assert (=> b!6583957 (= e!3984561 e!3984558)))

(declare-fun c!1211409 () Bool)

(assert (=> b!6583957 (= c!1211409 ((_ is Cons!65540) (exprs!6339 (h!71990 zl!343))))))

(declare-fun b!6583958 () Bool)

(assert (=> b!6583958 (= e!3984562 (isConcat!1356 lt!2410603))))

(declare-fun b!6583959 () Bool)

(assert (=> b!6583959 (= e!3984558 (Concat!25300 (h!71988 (exprs!6339 (h!71990 zl!343))) (generalisedConcat!2052 (t!379312 (exprs!6339 (h!71990 zl!343))))))))

(assert (= (and d!2065401 res!2700840) b!6583953))

(assert (= (and d!2065401 c!1211408) b!6583955))

(assert (= (and d!2065401 (not c!1211408)) b!6583957))

(assert (= (and b!6583957 c!1211409) b!6583959))

(assert (= (and b!6583957 (not c!1211409)) b!6583951))

(assert (= (and d!2065401 res!2700841) b!6583952))

(assert (= (and b!6583952 c!1211406) b!6583954))

(assert (= (and b!6583952 (not c!1211406)) b!6583950))

(assert (= (and b!6583950 c!1211407) b!6583956))

(assert (= (and b!6583950 (not c!1211407)) b!6583958))

(declare-fun m!7363116 () Bool)

(assert (=> b!6583954 m!7363116))

(declare-fun m!7363118 () Bool)

(assert (=> b!6583958 m!7363118))

(declare-fun m!7363120 () Bool)

(assert (=> b!6583950 m!7363120))

(assert (=> b!6583950 m!7363120))

(declare-fun m!7363122 () Bool)

(assert (=> b!6583950 m!7363122))

(declare-fun m!7363124 () Bool)

(assert (=> d!2065401 m!7363124))

(declare-fun m!7363126 () Bool)

(assert (=> d!2065401 m!7363126))

(assert (=> b!6583959 m!7362522))

(declare-fun m!7363128 () Bool)

(assert (=> b!6583956 m!7363128))

(declare-fun m!7363130 () Bool)

(assert (=> b!6583952 m!7363130))

(assert (=> b!6583953 m!7362592))

(assert (=> b!6583174 d!2065401))

(assert (=> b!6583153 d!2065385))

(declare-fun d!2065403 () Bool)

(declare-fun dynLambda!26085 (Int Context!11678) (InoxSet Context!11678))

(assert (=> d!2065403 (= (flatMap!1960 lt!2410489 lambda!366701) (dynLambda!26085 lambda!366701 lt!2410465))))

(declare-fun lt!2410606 () Unit!159155)

(declare-fun choose!49161 ((InoxSet Context!11678) Context!11678 Int) Unit!159155)

(assert (=> d!2065403 (= lt!2410606 (choose!49161 lt!2410489 lt!2410465 lambda!366701))))

(assert (=> d!2065403 (= lt!2410489 (store ((as const (Array Context!11678 Bool)) false) lt!2410465 true))))

(assert (=> d!2065403 (= (lemmaFlatMapOnSingletonSet!1486 lt!2410489 lt!2410465 lambda!366701) lt!2410606)))

(declare-fun b_lambda!249085 () Bool)

(assert (=> (not b_lambda!249085) (not d!2065403)))

(declare-fun bs!1684481 () Bool)

(assert (= bs!1684481 d!2065403))

(assert (=> bs!1684481 m!7362514))

(declare-fun m!7363132 () Bool)

(assert (=> bs!1684481 m!7363132))

(declare-fun m!7363134 () Bool)

(assert (=> bs!1684481 m!7363134))

(assert (=> bs!1684481 m!7362506))

(assert (=> b!6583152 d!2065403))

(declare-fun d!2065405 () Bool)

(declare-fun lt!2410607 () Regex!16455)

(assert (=> d!2065405 (validRegex!8191 lt!2410607)))

(assert (=> d!2065405 (= lt!2410607 (generalisedUnion!2299 (unfocusZipperList!1876 (Cons!65542 lt!2410465 Nil!65542))))))

(assert (=> d!2065405 (= (unfocusZipper!2197 (Cons!65542 lt!2410465 Nil!65542)) lt!2410607)))

(declare-fun bs!1684482 () Bool)

(assert (= bs!1684482 d!2065405))

(declare-fun m!7363136 () Bool)

(assert (=> bs!1684482 m!7363136))

(declare-fun m!7363138 () Bool)

(assert (=> bs!1684482 m!7363138))

(assert (=> bs!1684482 m!7363138))

(declare-fun m!7363140 () Bool)

(assert (=> bs!1684482 m!7363140))

(assert (=> b!6583152 d!2065405))

(declare-fun d!2065407 () Bool)

(declare-fun choose!49162 ((InoxSet Context!11678) Int) (InoxSet Context!11678))

(assert (=> d!2065407 (= (flatMap!1960 lt!2410489 lambda!366701) (choose!49162 lt!2410489 lambda!366701))))

(declare-fun bs!1684483 () Bool)

(assert (= bs!1684483 d!2065407))

(declare-fun m!7363142 () Bool)

(assert (=> bs!1684483 m!7363142))

(assert (=> b!6583152 d!2065407))

(declare-fun d!2065409 () Bool)

(assert (=> d!2065409 (= (flatMap!1960 lt!2410491 lambda!366701) (choose!49162 lt!2410491 lambda!366701))))

(declare-fun bs!1684484 () Bool)

(assert (= bs!1684484 d!2065409))

(declare-fun m!7363144 () Bool)

(assert (=> bs!1684484 m!7363144))

(assert (=> b!6583152 d!2065409))

(declare-fun b!6583970 () Bool)

(declare-fun e!3984572 () (InoxSet Context!11678))

(declare-fun e!3984570 () (InoxSet Context!11678))

(assert (=> b!6583970 (= e!3984572 e!3984570)))

(declare-fun c!1211414 () Bool)

(assert (=> b!6583970 (= c!1211414 ((_ is Cons!65540) (exprs!6339 lt!2410465)))))

(declare-fun b!6583971 () Bool)

(declare-fun call!574236 () (InoxSet Context!11678))

(assert (=> b!6583971 (= e!3984570 call!574236)))

(declare-fun b!6583972 () Bool)

(declare-fun e!3984571 () Bool)

(assert (=> b!6583972 (= e!3984571 (nullable!6448 (h!71988 (exprs!6339 lt!2410465))))))

(declare-fun d!2065411 () Bool)

(declare-fun c!1211415 () Bool)

(assert (=> d!2065411 (= c!1211415 e!3984571)))

(declare-fun res!2700844 () Bool)

(assert (=> d!2065411 (=> (not res!2700844) (not e!3984571))))

(assert (=> d!2065411 (= res!2700844 ((_ is Cons!65540) (exprs!6339 lt!2410465)))))

(assert (=> d!2065411 (= (derivationStepZipperUp!1629 lt!2410465 (h!71989 s!2326)) e!3984572)))

(declare-fun b!6583973 () Bool)

(assert (=> b!6583973 (= e!3984572 ((_ map or) call!574236 (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 lt!2410465))) (h!71989 s!2326))))))

(declare-fun bm!574231 () Bool)

(assert (=> bm!574231 (= call!574236 (derivationStepZipperDown!1703 (h!71988 (exprs!6339 lt!2410465)) (Context!11679 (t!379312 (exprs!6339 lt!2410465))) (h!71989 s!2326)))))

(declare-fun b!6583974 () Bool)

(assert (=> b!6583974 (= e!3984570 ((as const (Array Context!11678 Bool)) false))))

(assert (= (and d!2065411 res!2700844) b!6583972))

(assert (= (and d!2065411 c!1211415) b!6583973))

(assert (= (and d!2065411 (not c!1211415)) b!6583970))

(assert (= (and b!6583970 c!1211414) b!6583971))

(assert (= (and b!6583970 (not c!1211414)) b!6583974))

(assert (= (or b!6583973 b!6583971) bm!574231))

(declare-fun m!7363146 () Bool)

(assert (=> b!6583972 m!7363146))

(declare-fun m!7363148 () Bool)

(assert (=> b!6583973 m!7363148))

(declare-fun m!7363150 () Bool)

(assert (=> bm!574231 m!7363150))

(assert (=> b!6583152 d!2065411))

(declare-fun d!2065413 () Bool)

(assert (=> d!2065413 (= (flatMap!1960 lt!2410491 lambda!366701) (dynLambda!26085 lambda!366701 lt!2410469))))

(declare-fun lt!2410608 () Unit!159155)

(assert (=> d!2065413 (= lt!2410608 (choose!49161 lt!2410491 lt!2410469 lambda!366701))))

(assert (=> d!2065413 (= lt!2410491 (store ((as const (Array Context!11678 Bool)) false) lt!2410469 true))))

(assert (=> d!2065413 (= (lemmaFlatMapOnSingletonSet!1486 lt!2410491 lt!2410469 lambda!366701) lt!2410608)))

(declare-fun b_lambda!249087 () Bool)

(assert (=> (not b_lambda!249087) (not d!2065413)))

(declare-fun bs!1684485 () Bool)

(assert (= bs!1684485 d!2065413))

(assert (=> bs!1684485 m!7362512))

(declare-fun m!7363152 () Bool)

(assert (=> bs!1684485 m!7363152))

(declare-fun m!7363154 () Bool)

(assert (=> bs!1684485 m!7363154))

(assert (=> bs!1684485 m!7362498))

(assert (=> b!6583152 d!2065413))

(declare-fun b!6583975 () Bool)

(declare-fun e!3984575 () (InoxSet Context!11678))

(declare-fun e!3984573 () (InoxSet Context!11678))

(assert (=> b!6583975 (= e!3984575 e!3984573)))

(declare-fun c!1211416 () Bool)

(assert (=> b!6583975 (= c!1211416 ((_ is Cons!65540) (exprs!6339 lt!2410469)))))

(declare-fun b!6583976 () Bool)

(declare-fun call!574237 () (InoxSet Context!11678))

(assert (=> b!6583976 (= e!3984573 call!574237)))

(declare-fun b!6583977 () Bool)

(declare-fun e!3984574 () Bool)

(assert (=> b!6583977 (= e!3984574 (nullable!6448 (h!71988 (exprs!6339 lt!2410469))))))

(declare-fun d!2065415 () Bool)

(declare-fun c!1211417 () Bool)

(assert (=> d!2065415 (= c!1211417 e!3984574)))

(declare-fun res!2700845 () Bool)

(assert (=> d!2065415 (=> (not res!2700845) (not e!3984574))))

(assert (=> d!2065415 (= res!2700845 ((_ is Cons!65540) (exprs!6339 lt!2410469)))))

(assert (=> d!2065415 (= (derivationStepZipperUp!1629 lt!2410469 (h!71989 s!2326)) e!3984575)))

(declare-fun b!6583978 () Bool)

(assert (=> b!6583978 (= e!3984575 ((_ map or) call!574237 (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 lt!2410469))) (h!71989 s!2326))))))

(declare-fun bm!574232 () Bool)

(assert (=> bm!574232 (= call!574237 (derivationStepZipperDown!1703 (h!71988 (exprs!6339 lt!2410469)) (Context!11679 (t!379312 (exprs!6339 lt!2410469))) (h!71989 s!2326)))))

(declare-fun b!6583979 () Bool)

(assert (=> b!6583979 (= e!3984573 ((as const (Array Context!11678 Bool)) false))))

(assert (= (and d!2065415 res!2700845) b!6583977))

(assert (= (and d!2065415 c!1211417) b!6583978))

(assert (= (and d!2065415 (not c!1211417)) b!6583975))

(assert (= (and b!6583975 c!1211416) b!6583976))

(assert (= (and b!6583975 (not c!1211416)) b!6583979))

(assert (= (or b!6583978 b!6583976) bm!574232))

(declare-fun m!7363156 () Bool)

(assert (=> b!6583977 m!7363156))

(declare-fun m!7363158 () Bool)

(assert (=> b!6583978 m!7363158))

(declare-fun m!7363160 () Bool)

(assert (=> bm!574232 m!7363160))

(assert (=> b!6583152 d!2065415))

(declare-fun bm!574246 () Bool)

(declare-fun c!1211428 () Bool)

(declare-fun call!574252 () List!65664)

(declare-fun call!574250 () (InoxSet Context!11678))

(assert (=> bm!574246 (= call!574250 (derivationStepZipperDown!1703 (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343))))) (ite c!1211428 lt!2410462 (Context!11679 call!574252)) (h!71989 s!2326)))))

(declare-fun b!6584002 () Bool)

(declare-fun e!3984588 () (InoxSet Context!11678))

(declare-fun call!574254 () (InoxSet Context!11678))

(assert (=> b!6584002 (= e!3984588 ((_ map or) call!574250 call!574254))))

(declare-fun call!574255 () List!65664)

(declare-fun c!1211429 () Bool)

(declare-fun bm!574247 () Bool)

(declare-fun call!574251 () (InoxSet Context!11678))

(declare-fun c!1211430 () Bool)

(assert (=> bm!574247 (= call!574251 (derivationStepZipperDown!1703 (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343))))))) (ite (or c!1211428 c!1211430) lt!2410462 (Context!11679 call!574255)) (h!71989 s!2326)))))

(declare-fun b!6584003 () Bool)

(declare-fun e!3984592 () Bool)

(assert (=> b!6584003 (= c!1211430 e!3984592)))

(declare-fun res!2700848 () Bool)

(assert (=> b!6584003 (=> (not res!2700848) (not e!3984592))))

(assert (=> b!6584003 (= res!2700848 ((_ is Concat!25300) (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun e!3984591 () (InoxSet Context!11678))

(assert (=> b!6584003 (= e!3984591 e!3984588)))

(declare-fun b!6584004 () Bool)

(declare-fun e!3984593 () (InoxSet Context!11678))

(assert (=> b!6584004 (= e!3984588 e!3984593)))

(assert (=> b!6584004 (= c!1211429 ((_ is Concat!25300) (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun b!6584005 () Bool)

(declare-fun c!1211431 () Bool)

(assert (=> b!6584005 (= c!1211431 ((_ is Star!16455) (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun e!3984589 () (InoxSet Context!11678))

(assert (=> b!6584005 (= e!3984593 e!3984589)))

(declare-fun b!6584006 () Bool)

(declare-fun e!3984590 () (InoxSet Context!11678))

(assert (=> b!6584006 (= e!3984590 (store ((as const (Array Context!11678 Bool)) false) lt!2410462 true))))

(declare-fun bm!574248 () Bool)

(assert (=> bm!574248 (= call!574254 call!574251)))

(declare-fun d!2065417 () Bool)

(declare-fun c!1211432 () Bool)

(assert (=> d!2065417 (= c!1211432 (and ((_ is ElementMatch!16455) (h!71988 (exprs!6339 (h!71990 zl!343)))) (= (c!1211172 (h!71988 (exprs!6339 (h!71990 zl!343)))) (h!71989 s!2326))))))

(assert (=> d!2065417 (= (derivationStepZipperDown!1703 (h!71988 (exprs!6339 (h!71990 zl!343))) lt!2410462 (h!71989 s!2326)) e!3984590)))

(declare-fun bm!574245 () Bool)

(declare-fun $colon$colon!2296 (List!65664 Regex!16455) List!65664)

(assert (=> bm!574245 (= call!574252 ($colon$colon!2296 (exprs!6339 lt!2410462) (ite (or c!1211430 c!1211429) (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (h!71988 (exprs!6339 (h!71990 zl!343))))))))

(declare-fun b!6584007 () Bool)

(assert (=> b!6584007 (= e!3984589 ((as const (Array Context!11678 Bool)) false))))

(declare-fun b!6584008 () Bool)

(declare-fun call!574253 () (InoxSet Context!11678))

(assert (=> b!6584008 (= e!3984593 call!574253)))

(declare-fun bm!574249 () Bool)

(assert (=> bm!574249 (= call!574255 call!574252)))

(declare-fun b!6584009 () Bool)

(assert (=> b!6584009 (= e!3984590 e!3984591)))

(assert (=> b!6584009 (= c!1211428 ((_ is Union!16455) (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun bm!574250 () Bool)

(assert (=> bm!574250 (= call!574253 call!574254)))

(declare-fun b!6584010 () Bool)

(assert (=> b!6584010 (= e!3984591 ((_ map or) call!574250 call!574251))))

(declare-fun b!6584011 () Bool)

(assert (=> b!6584011 (= e!3984592 (nullable!6448 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343))))))))

(declare-fun b!6584012 () Bool)

(assert (=> b!6584012 (= e!3984589 call!574253)))

(assert (= (and d!2065417 c!1211432) b!6584006))

(assert (= (and d!2065417 (not c!1211432)) b!6584009))

(assert (= (and b!6584009 c!1211428) b!6584010))

(assert (= (and b!6584009 (not c!1211428)) b!6584003))

(assert (= (and b!6584003 res!2700848) b!6584011))

(assert (= (and b!6584003 c!1211430) b!6584002))

(assert (= (and b!6584003 (not c!1211430)) b!6584004))

(assert (= (and b!6584004 c!1211429) b!6584008))

(assert (= (and b!6584004 (not c!1211429)) b!6584005))

(assert (= (and b!6584005 c!1211431) b!6584012))

(assert (= (and b!6584005 (not c!1211431)) b!6584007))

(assert (= (or b!6584008 b!6584012) bm!574249))

(assert (= (or b!6584008 b!6584012) bm!574250))

(assert (= (or b!6584002 bm!574249) bm!574245))

(assert (= (or b!6584002 bm!574250) bm!574248))

(assert (= (or b!6584010 bm!574248) bm!574247))

(assert (= (or b!6584010 b!6584002) bm!574246))

(declare-fun m!7363162 () Bool)

(assert (=> b!6584011 m!7363162))

(assert (=> b!6584006 m!7362578))

(declare-fun m!7363164 () Bool)

(assert (=> bm!574246 m!7363164))

(declare-fun m!7363166 () Bool)

(assert (=> bm!574247 m!7363166))

(declare-fun m!7363168 () Bool)

(assert (=> bm!574245 m!7363168))

(assert (=> b!6583173 d!2065417))

(declare-fun d!2065419 () Bool)

(assert (=> d!2065419 (= (nullable!6448 (h!71988 (exprs!6339 (h!71990 zl!343)))) (nullableFct!2373 (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun bs!1684486 () Bool)

(assert (= bs!1684486 d!2065419))

(declare-fun m!7363170 () Bool)

(assert (=> bs!1684486 m!7363170))

(assert (=> b!6583173 d!2065419))

(declare-fun b!6584013 () Bool)

(declare-fun e!3984596 () (InoxSet Context!11678))

(declare-fun e!3984594 () (InoxSet Context!11678))

(assert (=> b!6584013 (= e!3984596 e!3984594)))

(declare-fun c!1211433 () Bool)

(assert (=> b!6584013 (= c!1211433 ((_ is Cons!65540) (exprs!6339 (h!71990 zl!343))))))

(declare-fun b!6584014 () Bool)

(declare-fun call!574256 () (InoxSet Context!11678))

(assert (=> b!6584014 (= e!3984594 call!574256)))

(declare-fun b!6584015 () Bool)

(declare-fun e!3984595 () Bool)

(assert (=> b!6584015 (= e!3984595 (nullable!6448 (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun d!2065421 () Bool)

(declare-fun c!1211434 () Bool)

(assert (=> d!2065421 (= c!1211434 e!3984595)))

(declare-fun res!2700849 () Bool)

(assert (=> d!2065421 (=> (not res!2700849) (not e!3984595))))

(assert (=> d!2065421 (= res!2700849 ((_ is Cons!65540) (exprs!6339 (h!71990 zl!343))))))

(assert (=> d!2065421 (= (derivationStepZipperUp!1629 (h!71990 zl!343) (h!71989 s!2326)) e!3984596)))

(declare-fun b!6584016 () Bool)

(assert (=> b!6584016 (= e!3984596 ((_ map or) call!574256 (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343)))) (h!71989 s!2326))))))

(declare-fun bm!574251 () Bool)

(assert (=> bm!574251 (= call!574256 (derivationStepZipperDown!1703 (h!71988 (exprs!6339 (h!71990 zl!343))) (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343)))) (h!71989 s!2326)))))

(declare-fun b!6584017 () Bool)

(assert (=> b!6584017 (= e!3984594 ((as const (Array Context!11678 Bool)) false))))

(assert (= (and d!2065421 res!2700849) b!6584015))

(assert (= (and d!2065421 c!1211434) b!6584016))

(assert (= (and d!2065421 (not c!1211434)) b!6584013))

(assert (= (and b!6584013 c!1211433) b!6584014))

(assert (= (and b!6584013 (not c!1211433)) b!6584017))

(assert (= (or b!6584016 b!6584014) bm!574251))

(assert (=> b!6584015 m!7362538))

(declare-fun m!7363172 () Bool)

(assert (=> b!6584016 m!7363172))

(declare-fun m!7363174 () Bool)

(assert (=> bm!574251 m!7363174))

(assert (=> b!6583173 d!2065421))

(declare-fun b!6584018 () Bool)

(declare-fun e!3984599 () (InoxSet Context!11678))

(declare-fun e!3984597 () (InoxSet Context!11678))

(assert (=> b!6584018 (= e!3984599 e!3984597)))

(declare-fun c!1211435 () Bool)

(assert (=> b!6584018 (= c!1211435 ((_ is Cons!65540) (exprs!6339 lt!2410462)))))

(declare-fun b!6584019 () Bool)

(declare-fun call!574257 () (InoxSet Context!11678))

(assert (=> b!6584019 (= e!3984597 call!574257)))

(declare-fun b!6584020 () Bool)

(declare-fun e!3984598 () Bool)

(assert (=> b!6584020 (= e!3984598 (nullable!6448 (h!71988 (exprs!6339 lt!2410462))))))

(declare-fun d!2065423 () Bool)

(declare-fun c!1211436 () Bool)

(assert (=> d!2065423 (= c!1211436 e!3984598)))

(declare-fun res!2700850 () Bool)

(assert (=> d!2065423 (=> (not res!2700850) (not e!3984598))))

(assert (=> d!2065423 (= res!2700850 ((_ is Cons!65540) (exprs!6339 lt!2410462)))))

(assert (=> d!2065423 (= (derivationStepZipperUp!1629 lt!2410462 (h!71989 s!2326)) e!3984599)))

(declare-fun b!6584021 () Bool)

(assert (=> b!6584021 (= e!3984599 ((_ map or) call!574257 (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 lt!2410462))) (h!71989 s!2326))))))

(declare-fun bm!574252 () Bool)

(assert (=> bm!574252 (= call!574257 (derivationStepZipperDown!1703 (h!71988 (exprs!6339 lt!2410462)) (Context!11679 (t!379312 (exprs!6339 lt!2410462))) (h!71989 s!2326)))))

(declare-fun b!6584022 () Bool)

(assert (=> b!6584022 (= e!3984597 ((as const (Array Context!11678 Bool)) false))))

(assert (= (and d!2065423 res!2700850) b!6584020))

(assert (= (and d!2065423 c!1211436) b!6584021))

(assert (= (and d!2065423 (not c!1211436)) b!6584018))

(assert (= (and b!6584018 c!1211435) b!6584019))

(assert (= (and b!6584018 (not c!1211435)) b!6584022))

(assert (= (or b!6584021 b!6584019) bm!574252))

(declare-fun m!7363176 () Bool)

(assert (=> b!6584020 m!7363176))

(declare-fun m!7363178 () Bool)

(assert (=> b!6584021 m!7363178))

(declare-fun m!7363180 () Bool)

(assert (=> bm!574252 m!7363180))

(assert (=> b!6583173 d!2065423))

(declare-fun d!2065425 () Bool)

(assert (=> d!2065425 (= (flatMap!1960 z!1189 lambda!366701) (choose!49162 z!1189 lambda!366701))))

(declare-fun bs!1684487 () Bool)

(assert (= bs!1684487 d!2065425))

(declare-fun m!7363182 () Bool)

(assert (=> bs!1684487 m!7363182))

(assert (=> b!6583173 d!2065425))

(declare-fun d!2065427 () Bool)

(assert (=> d!2065427 (= (flatMap!1960 z!1189 lambda!366701) (dynLambda!26085 lambda!366701 (h!71990 zl!343)))))

(declare-fun lt!2410609 () Unit!159155)

(assert (=> d!2065427 (= lt!2410609 (choose!49161 z!1189 (h!71990 zl!343) lambda!366701))))

(assert (=> d!2065427 (= z!1189 (store ((as const (Array Context!11678 Bool)) false) (h!71990 zl!343) true))))

(assert (=> d!2065427 (= (lemmaFlatMapOnSingletonSet!1486 z!1189 (h!71990 zl!343) lambda!366701) lt!2410609)))

(declare-fun b_lambda!249089 () Bool)

(assert (=> (not b_lambda!249089) (not d!2065427)))

(declare-fun bs!1684488 () Bool)

(assert (= bs!1684488 d!2065427))

(assert (=> bs!1684488 m!7362540))

(declare-fun m!7363184 () Bool)

(assert (=> bs!1684488 m!7363184))

(declare-fun m!7363186 () Bool)

(assert (=> bs!1684488 m!7363186))

(declare-fun m!7363188 () Bool)

(assert (=> bs!1684488 m!7363188))

(assert (=> b!6583173 d!2065427))

(declare-fun b!6584023 () Bool)

(declare-fun e!3984602 () (InoxSet Context!11678))

(declare-fun e!3984600 () (InoxSet Context!11678))

(assert (=> b!6584023 (= e!3984602 e!3984600)))

(declare-fun c!1211437 () Bool)

(assert (=> b!6584023 (= c!1211437 ((_ is Cons!65540) (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343))))))))))

(declare-fun b!6584024 () Bool)

(declare-fun call!574258 () (InoxSet Context!11678))

(assert (=> b!6584024 (= e!3984600 call!574258)))

(declare-fun b!6584025 () Bool)

(declare-fun e!3984601 () Bool)

(assert (=> b!6584025 (= e!3984601 (nullable!6448 (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))))))

(declare-fun d!2065429 () Bool)

(declare-fun c!1211438 () Bool)

(assert (=> d!2065429 (= c!1211438 e!3984601)))

(declare-fun res!2700851 () Bool)

(assert (=> d!2065429 (=> (not res!2700851) (not e!3984601))))

(assert (=> d!2065429 (= res!2700851 ((_ is Cons!65540) (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343))))))))))

(assert (=> d!2065429 (= (derivationStepZipperUp!1629 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343))))) (h!71989 s!2326)) e!3984602)))

(declare-fun b!6584026 () Bool)

(assert (=> b!6584026 (= e!3984602 ((_ map or) call!574258 (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))) (h!71989 s!2326))))))

(declare-fun bm!574253 () Bool)

(assert (=> bm!574253 (= call!574258 (derivationStepZipperDown!1703 (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343))))))) (Context!11679 (t!379312 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))) (h!71989 s!2326)))))

(declare-fun b!6584027 () Bool)

(assert (=> b!6584027 (= e!3984600 ((as const (Array Context!11678 Bool)) false))))

(assert (= (and d!2065429 res!2700851) b!6584025))

(assert (= (and d!2065429 c!1211438) b!6584026))

(assert (= (and d!2065429 (not c!1211438)) b!6584023))

(assert (= (and b!6584023 c!1211437) b!6584024))

(assert (= (and b!6584023 (not c!1211437)) b!6584027))

(assert (= (or b!6584026 b!6584024) bm!574253))

(declare-fun m!7363190 () Bool)

(assert (=> b!6584025 m!7363190))

(declare-fun m!7363192 () Bool)

(assert (=> b!6584026 m!7363192))

(declare-fun m!7363194 () Bool)

(assert (=> bm!574253 m!7363194))

(assert (=> b!6583173 d!2065429))

(declare-fun bs!1684489 () Bool)

(declare-fun d!2065431 () Bool)

(assert (= bs!1684489 (and d!2065431 b!6583173)))

(declare-fun lambda!366773 () Int)

(assert (=> bs!1684489 (= lambda!366773 lambda!366701)))

(assert (=> d!2065431 true))

(assert (=> d!2065431 (= (derivationStepZipper!2421 lt!2410482 (h!71989 s!2326)) (flatMap!1960 lt!2410482 lambda!366773))))

(declare-fun bs!1684490 () Bool)

(assert (= bs!1684490 d!2065431))

(declare-fun m!7363196 () Bool)

(assert (=> bs!1684490 m!7363196))

(assert (=> b!6583171 d!2065431))

(declare-fun d!2065433 () Bool)

(assert (=> d!2065433 (= (flatMap!1960 lt!2410482 lambda!366701) (choose!49162 lt!2410482 lambda!366701))))

(declare-fun bs!1684491 () Bool)

(assert (= bs!1684491 d!2065433))

(declare-fun m!7363198 () Bool)

(assert (=> bs!1684491 m!7363198))

(assert (=> b!6583171 d!2065433))

(assert (=> b!6583171 d!2065423))

(declare-fun d!2065435 () Bool)

(assert (=> d!2065435 (= (flatMap!1960 lt!2410482 lambda!366701) (dynLambda!26085 lambda!366701 lt!2410462))))

(declare-fun lt!2410610 () Unit!159155)

(assert (=> d!2065435 (= lt!2410610 (choose!49161 lt!2410482 lt!2410462 lambda!366701))))

(assert (=> d!2065435 (= lt!2410482 (store ((as const (Array Context!11678 Bool)) false) lt!2410462 true))))

(assert (=> d!2065435 (= (lemmaFlatMapOnSingletonSet!1486 lt!2410482 lt!2410462 lambda!366701) lt!2410610)))

(declare-fun b_lambda!249091 () Bool)

(assert (=> (not b_lambda!249091) (not d!2065435)))

(declare-fun bs!1684492 () Bool)

(assert (= bs!1684492 d!2065435))

(assert (=> bs!1684492 m!7362582))

(declare-fun m!7363200 () Bool)

(assert (=> bs!1684492 m!7363200))

(declare-fun m!7363202 () Bool)

(assert (=> bs!1684492 m!7363202))

(assert (=> bs!1684492 m!7362578))

(assert (=> b!6583171 d!2065435))

(declare-fun bs!1684493 () Bool)

(declare-fun d!2065437 () Bool)

(assert (= bs!1684493 (and d!2065437 d!2065261)))

(declare-fun lambda!366776 () Int)

(assert (=> bs!1684493 (= lambda!366776 lambda!366714)))

(declare-fun bs!1684494 () Bool)

(assert (= bs!1684494 (and d!2065437 d!2065379)))

(assert (=> bs!1684494 (= lambda!366776 lambda!366760)))

(declare-fun bs!1684495 () Bool)

(assert (= bs!1684495 (and d!2065437 d!2065401)))

(assert (=> bs!1684495 (= lambda!366776 lambda!366770)))

(declare-fun b!6584050 () Bool)

(declare-fun e!3984616 () Bool)

(assert (=> b!6584050 (= e!3984616 (isEmpty!37797 (t!379312 (unfocusZipperList!1876 zl!343))))))

(declare-fun b!6584051 () Bool)

(declare-fun e!3984618 () Regex!16455)

(assert (=> b!6584051 (= e!3984618 (h!71988 (unfocusZipperList!1876 zl!343)))))

(declare-fun b!6584052 () Bool)

(declare-fun e!3984619 () Regex!16455)

(assert (=> b!6584052 (= e!3984619 (Union!16455 (h!71988 (unfocusZipperList!1876 zl!343)) (generalisedUnion!2299 (t!379312 (unfocusZipperList!1876 zl!343)))))))

(declare-fun b!6584053 () Bool)

(declare-fun e!3984620 () Bool)

(declare-fun e!3984615 () Bool)

(assert (=> b!6584053 (= e!3984620 e!3984615)))

(declare-fun c!1211451 () Bool)

(assert (=> b!6584053 (= c!1211451 (isEmpty!37797 (tail!12447 (unfocusZipperList!1876 zl!343))))))

(declare-fun b!6584054 () Bool)

(declare-fun e!3984617 () Bool)

(assert (=> b!6584054 (= e!3984617 e!3984620)))

(declare-fun c!1211449 () Bool)

(assert (=> b!6584054 (= c!1211449 (isEmpty!37797 (unfocusZipperList!1876 zl!343)))))

(declare-fun b!6584055 () Bool)

(assert (=> b!6584055 (= e!3984619 EmptyLang!16455)))

(declare-fun b!6584056 () Bool)

(assert (=> b!6584056 (= e!3984618 e!3984619)))

(declare-fun c!1211450 () Bool)

(assert (=> b!6584056 (= c!1211450 ((_ is Cons!65540) (unfocusZipperList!1876 zl!343)))))

(declare-fun b!6584058 () Bool)

(declare-fun lt!2410613 () Regex!16455)

(declare-fun isUnion!1272 (Regex!16455) Bool)

(assert (=> b!6584058 (= e!3984615 (isUnion!1272 lt!2410613))))

(declare-fun b!6584059 () Bool)

(assert (=> b!6584059 (= e!3984615 (= lt!2410613 (head!13362 (unfocusZipperList!1876 zl!343))))))

(declare-fun b!6584057 () Bool)

(declare-fun isEmptyLang!1842 (Regex!16455) Bool)

(assert (=> b!6584057 (= e!3984620 (isEmptyLang!1842 lt!2410613))))

(assert (=> d!2065437 e!3984617))

(declare-fun res!2700856 () Bool)

(assert (=> d!2065437 (=> (not res!2700856) (not e!3984617))))

(assert (=> d!2065437 (= res!2700856 (validRegex!8191 lt!2410613))))

(assert (=> d!2065437 (= lt!2410613 e!3984618)))

(declare-fun c!1211452 () Bool)

(assert (=> d!2065437 (= c!1211452 e!3984616)))

(declare-fun res!2700857 () Bool)

(assert (=> d!2065437 (=> (not res!2700857) (not e!3984616))))

(assert (=> d!2065437 (= res!2700857 ((_ is Cons!65540) (unfocusZipperList!1876 zl!343)))))

(assert (=> d!2065437 (forall!15634 (unfocusZipperList!1876 zl!343) lambda!366776)))

(assert (=> d!2065437 (= (generalisedUnion!2299 (unfocusZipperList!1876 zl!343)) lt!2410613)))

(assert (= (and d!2065437 res!2700857) b!6584050))

(assert (= (and d!2065437 c!1211452) b!6584051))

(assert (= (and d!2065437 (not c!1211452)) b!6584056))

(assert (= (and b!6584056 c!1211450) b!6584052))

(assert (= (and b!6584056 (not c!1211450)) b!6584055))

(assert (= (and d!2065437 res!2700856) b!6584054))

(assert (= (and b!6584054 c!1211449) b!6584057))

(assert (= (and b!6584054 (not c!1211449)) b!6584053))

(assert (= (and b!6584053 c!1211451) b!6584059))

(assert (= (and b!6584053 (not c!1211451)) b!6584058))

(assert (=> b!6584054 m!7362560))

(declare-fun m!7363204 () Bool)

(assert (=> b!6584054 m!7363204))

(declare-fun m!7363206 () Bool)

(assert (=> b!6584052 m!7363206))

(assert (=> b!6584053 m!7362560))

(declare-fun m!7363208 () Bool)

(assert (=> b!6584053 m!7363208))

(assert (=> b!6584053 m!7363208))

(declare-fun m!7363210 () Bool)

(assert (=> b!6584053 m!7363210))

(assert (=> b!6584059 m!7362560))

(declare-fun m!7363212 () Bool)

(assert (=> b!6584059 m!7363212))

(declare-fun m!7363214 () Bool)

(assert (=> b!6584058 m!7363214))

(declare-fun m!7363216 () Bool)

(assert (=> d!2065437 m!7363216))

(assert (=> d!2065437 m!7362560))

(declare-fun m!7363218 () Bool)

(assert (=> d!2065437 m!7363218))

(declare-fun m!7363220 () Bool)

(assert (=> b!6584050 m!7363220))

(declare-fun m!7363222 () Bool)

(assert (=> b!6584057 m!7363222))

(assert (=> b!6583179 d!2065437))

(declare-fun bs!1684496 () Bool)

(declare-fun d!2065439 () Bool)

(assert (= bs!1684496 (and d!2065439 d!2065261)))

(declare-fun lambda!366779 () Int)

(assert (=> bs!1684496 (= lambda!366779 lambda!366714)))

(declare-fun bs!1684497 () Bool)

(assert (= bs!1684497 (and d!2065439 d!2065379)))

(assert (=> bs!1684497 (= lambda!366779 lambda!366760)))

(declare-fun bs!1684498 () Bool)

(assert (= bs!1684498 (and d!2065439 d!2065401)))

(assert (=> bs!1684498 (= lambda!366779 lambda!366770)))

(declare-fun bs!1684499 () Bool)

(assert (= bs!1684499 (and d!2065439 d!2065437)))

(assert (=> bs!1684499 (= lambda!366779 lambda!366776)))

(declare-fun lt!2410616 () List!65664)

(assert (=> d!2065439 (forall!15634 lt!2410616 lambda!366779)))

(declare-fun e!3984623 () List!65664)

(assert (=> d!2065439 (= lt!2410616 e!3984623)))

(declare-fun c!1211455 () Bool)

(assert (=> d!2065439 (= c!1211455 ((_ is Cons!65542) zl!343))))

(assert (=> d!2065439 (= (unfocusZipperList!1876 zl!343) lt!2410616)))

(declare-fun b!6584064 () Bool)

(assert (=> b!6584064 (= e!3984623 (Cons!65540 (generalisedConcat!2052 (exprs!6339 (h!71990 zl!343))) (unfocusZipperList!1876 (t!379314 zl!343))))))

(declare-fun b!6584065 () Bool)

(assert (=> b!6584065 (= e!3984623 Nil!65540)))

(assert (= (and d!2065439 c!1211455) b!6584064))

(assert (= (and d!2065439 (not c!1211455)) b!6584065))

(declare-fun m!7363224 () Bool)

(assert (=> d!2065439 m!7363224))

(assert (=> b!6584064 m!7362482))

(declare-fun m!7363226 () Bool)

(assert (=> b!6584064 m!7363226))

(assert (=> b!6583179 d!2065439))

(declare-fun d!2065441 () Bool)

(declare-fun lt!2410617 () Regex!16455)

(assert (=> d!2065441 (validRegex!8191 lt!2410617)))

(assert (=> d!2065441 (= lt!2410617 (generalisedUnion!2299 (unfocusZipperList!1876 (Cons!65542 lt!2410469 Nil!65542))))))

(assert (=> d!2065441 (= (unfocusZipper!2197 (Cons!65542 lt!2410469 Nil!65542)) lt!2410617)))

(declare-fun bs!1684500 () Bool)

(assert (= bs!1684500 d!2065441))

(declare-fun m!7363228 () Bool)

(assert (=> bs!1684500 m!7363228))

(declare-fun m!7363230 () Bool)

(assert (=> bs!1684500 m!7363230))

(assert (=> bs!1684500 m!7363230))

(declare-fun m!7363232 () Bool)

(assert (=> bs!1684500 m!7363232))

(assert (=> b!6583159 d!2065441))

(declare-fun bm!574254 () Bool)

(declare-fun call!574261 () Bool)

(declare-fun c!1211457 () Bool)

(assert (=> bm!574254 (= call!574261 (validRegex!8191 (ite c!1211457 (regTwo!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(declare-fun b!6584066 () Bool)

(declare-fun e!3984625 () Bool)

(declare-fun e!3984628 () Bool)

(assert (=> b!6584066 (= e!3984625 e!3984628)))

(declare-fun c!1211456 () Bool)

(assert (=> b!6584066 (= c!1211456 ((_ is Star!16455) lt!2410486))))

(declare-fun b!6584067 () Bool)

(declare-fun e!3984624 () Bool)

(assert (=> b!6584067 (= e!3984628 e!3984624)))

(assert (=> b!6584067 (= c!1211457 ((_ is Union!16455) lt!2410486))))

(declare-fun b!6584068 () Bool)

(declare-fun e!3984627 () Bool)

(assert (=> b!6584068 (= e!3984627 call!574261)))

(declare-fun b!6584069 () Bool)

(declare-fun e!3984626 () Bool)

(assert (=> b!6584069 (= e!3984628 e!3984626)))

(declare-fun res!2700859 () Bool)

(assert (=> b!6584069 (= res!2700859 (not (nullable!6448 (reg!16784 lt!2410486))))))

(assert (=> b!6584069 (=> (not res!2700859) (not e!3984626))))

(declare-fun bm!574255 () Bool)

(declare-fun call!574259 () Bool)

(assert (=> bm!574255 (= call!574259 (validRegex!8191 (ite c!1211456 (reg!16784 lt!2410486) (ite c!1211457 (regOne!33423 lt!2410486) (regOne!33422 lt!2410486)))))))

(declare-fun b!6584071 () Bool)

(declare-fun e!3984630 () Bool)

(declare-fun e!3984629 () Bool)

(assert (=> b!6584071 (= e!3984630 e!3984629)))

(declare-fun res!2700860 () Bool)

(assert (=> b!6584071 (=> (not res!2700860) (not e!3984629))))

(declare-fun call!574260 () Bool)

(assert (=> b!6584071 (= res!2700860 call!574260)))

(declare-fun b!6584072 () Bool)

(declare-fun res!2700862 () Bool)

(assert (=> b!6584072 (=> (not res!2700862) (not e!3984627))))

(assert (=> b!6584072 (= res!2700862 call!574260)))

(assert (=> b!6584072 (= e!3984624 e!3984627)))

(declare-fun bm!574256 () Bool)

(assert (=> bm!574256 (= call!574260 call!574259)))

(declare-fun b!6584073 () Bool)

(declare-fun res!2700858 () Bool)

(assert (=> b!6584073 (=> res!2700858 e!3984630)))

(assert (=> b!6584073 (= res!2700858 (not ((_ is Concat!25300) lt!2410486)))))

(assert (=> b!6584073 (= e!3984624 e!3984630)))

(declare-fun b!6584074 () Bool)

(assert (=> b!6584074 (= e!3984626 call!574259)))

(declare-fun d!2065443 () Bool)

(declare-fun res!2700861 () Bool)

(assert (=> d!2065443 (=> res!2700861 e!3984625)))

(assert (=> d!2065443 (= res!2700861 ((_ is ElementMatch!16455) lt!2410486))))

(assert (=> d!2065443 (= (validRegex!8191 lt!2410486) e!3984625)))

(declare-fun b!6584070 () Bool)

(assert (=> b!6584070 (= e!3984629 call!574261)))

(assert (= (and d!2065443 (not res!2700861)) b!6584066))

(assert (= (and b!6584066 c!1211456) b!6584069))

(assert (= (and b!6584066 (not c!1211456)) b!6584067))

(assert (= (and b!6584069 res!2700859) b!6584074))

(assert (= (and b!6584067 c!1211457) b!6584072))

(assert (= (and b!6584067 (not c!1211457)) b!6584073))

(assert (= (and b!6584072 res!2700862) b!6584068))

(assert (= (and b!6584073 (not res!2700858)) b!6584071))

(assert (= (and b!6584071 res!2700860) b!6584070))

(assert (= (or b!6584068 b!6584070) bm!574254))

(assert (= (or b!6584072 b!6584071) bm!574256))

(assert (= (or b!6584074 bm!574256) bm!574255))

(declare-fun m!7363234 () Bool)

(assert (=> bm!574254 m!7363234))

(declare-fun m!7363236 () Bool)

(assert (=> b!6584069 m!7363236))

(declare-fun m!7363238 () Bool)

(assert (=> bm!574255 m!7363238))

(assert (=> b!6583158 d!2065443))

(declare-fun d!2065445 () Bool)

(assert (=> d!2065445 (= (flatMap!1960 lt!2410479 lambda!366701) (choose!49162 lt!2410479 lambda!366701))))

(declare-fun bs!1684501 () Bool)

(assert (= bs!1684501 d!2065445))

(declare-fun m!7363240 () Bool)

(assert (=> bs!1684501 m!7363240))

(assert (=> b!6583137 d!2065445))

(declare-fun b!6584075 () Bool)

(declare-fun e!3984633 () (InoxSet Context!11678))

(declare-fun e!3984631 () (InoxSet Context!11678))

(assert (=> b!6584075 (= e!3984633 e!3984631)))

(declare-fun c!1211458 () Bool)

(assert (=> b!6584075 (= c!1211458 ((_ is Cons!65540) (exprs!6339 lt!2410472)))))

(declare-fun b!6584076 () Bool)

(declare-fun call!574262 () (InoxSet Context!11678))

(assert (=> b!6584076 (= e!3984631 call!574262)))

(declare-fun b!6584077 () Bool)

(declare-fun e!3984632 () Bool)

(assert (=> b!6584077 (= e!3984632 (nullable!6448 (h!71988 (exprs!6339 lt!2410472))))))

(declare-fun d!2065447 () Bool)

(declare-fun c!1211459 () Bool)

(assert (=> d!2065447 (= c!1211459 e!3984632)))

(declare-fun res!2700863 () Bool)

(assert (=> d!2065447 (=> (not res!2700863) (not e!3984632))))

(assert (=> d!2065447 (= res!2700863 ((_ is Cons!65540) (exprs!6339 lt!2410472)))))

(assert (=> d!2065447 (= (derivationStepZipperUp!1629 lt!2410472 (h!71989 s!2326)) e!3984633)))

(declare-fun b!6584078 () Bool)

(assert (=> b!6584078 (= e!3984633 ((_ map or) call!574262 (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 lt!2410472))) (h!71989 s!2326))))))

(declare-fun bm!574257 () Bool)

(assert (=> bm!574257 (= call!574262 (derivationStepZipperDown!1703 (h!71988 (exprs!6339 lt!2410472)) (Context!11679 (t!379312 (exprs!6339 lt!2410472))) (h!71989 s!2326)))))

(declare-fun b!6584079 () Bool)

(assert (=> b!6584079 (= e!3984631 ((as const (Array Context!11678 Bool)) false))))

(assert (= (and d!2065447 res!2700863) b!6584077))

(assert (= (and d!2065447 c!1211459) b!6584078))

(assert (= (and d!2065447 (not c!1211459)) b!6584075))

(assert (= (and b!6584075 c!1211458) b!6584076))

(assert (= (and b!6584075 (not c!1211458)) b!6584079))

(assert (= (or b!6584078 b!6584076) bm!574257))

(declare-fun m!7363242 () Bool)

(assert (=> b!6584077 m!7363242))

(declare-fun m!7363244 () Bool)

(assert (=> b!6584078 m!7363244))

(declare-fun m!7363246 () Bool)

(assert (=> bm!574257 m!7363246))

(assert (=> b!6583137 d!2065447))

(declare-fun d!2065449 () Bool)

(assert (=> d!2065449 (= (flatMap!1960 lt!2410479 lambda!366701) (dynLambda!26085 lambda!366701 lt!2410472))))

(declare-fun lt!2410618 () Unit!159155)

(assert (=> d!2065449 (= lt!2410618 (choose!49161 lt!2410479 lt!2410472 lambda!366701))))

(assert (=> d!2065449 (= lt!2410479 (store ((as const (Array Context!11678 Bool)) false) lt!2410472 true))))

(assert (=> d!2065449 (= (lemmaFlatMapOnSingletonSet!1486 lt!2410479 lt!2410472 lambda!366701) lt!2410618)))

(declare-fun b_lambda!249093 () Bool)

(assert (=> (not b_lambda!249093) (not d!2065449)))

(declare-fun bs!1684502 () Bool)

(assert (= bs!1684502 d!2065449))

(assert (=> bs!1684502 m!7362486))

(declare-fun m!7363248 () Bool)

(assert (=> bs!1684502 m!7363248))

(declare-fun m!7363250 () Bool)

(assert (=> bs!1684502 m!7363250))

(assert (=> bs!1684502 m!7362484))

(assert (=> b!6583137 d!2065449))

(declare-fun bs!1684503 () Bool)

(declare-fun d!2065451 () Bool)

(assert (= bs!1684503 (and d!2065451 b!6583173)))

(declare-fun lambda!366780 () Int)

(assert (=> bs!1684503 (= lambda!366780 lambda!366701)))

(declare-fun bs!1684504 () Bool)

(assert (= bs!1684504 (and d!2065451 d!2065431)))

(assert (=> bs!1684504 (= lambda!366780 lambda!366773)))

(assert (=> d!2065451 true))

(assert (=> d!2065451 (= (derivationStepZipper!2421 lt!2410479 (h!71989 s!2326)) (flatMap!1960 lt!2410479 lambda!366780))))

(declare-fun bs!1684505 () Bool)

(assert (= bs!1684505 d!2065451))

(declare-fun m!7363252 () Bool)

(assert (=> bs!1684505 m!7363252))

(assert (=> b!6583137 d!2065451))

(declare-fun d!2065453 () Bool)

(declare-fun c!1211460 () Bool)

(assert (=> d!2065453 (= c!1211460 (isEmpty!37801 s!2326))))

(declare-fun e!3984634 () Bool)

(assert (=> d!2065453 (= (matchZipper!2467 lt!2410479 s!2326) e!3984634)))

(declare-fun b!6584080 () Bool)

(assert (=> b!6584080 (= e!3984634 (nullableZipper!2200 lt!2410479))))

(declare-fun b!6584081 () Bool)

(assert (=> b!6584081 (= e!3984634 (matchZipper!2467 (derivationStepZipper!2421 lt!2410479 (head!13361 s!2326)) (tail!12446 s!2326)))))

(assert (= (and d!2065453 c!1211460) b!6584080))

(assert (= (and d!2065453 (not c!1211460)) b!6584081))

(assert (=> d!2065453 m!7362824))

(declare-fun m!7363254 () Bool)

(assert (=> b!6584080 m!7363254))

(assert (=> b!6584081 m!7362830))

(assert (=> b!6584081 m!7362830))

(declare-fun m!7363256 () Bool)

(assert (=> b!6584081 m!7363256))

(assert (=> b!6584081 m!7362834))

(assert (=> b!6584081 m!7363256))

(assert (=> b!6584081 m!7362834))

(declare-fun m!7363258 () Bool)

(assert (=> b!6584081 m!7363258))

(assert (=> b!6583178 d!2065453))

(declare-fun d!2065455 () Bool)

(declare-fun c!1211461 () Bool)

(assert (=> d!2065455 (= c!1211461 (isEmpty!37801 (t!379313 s!2326)))))

(declare-fun e!3984635 () Bool)

(assert (=> d!2065455 (= (matchZipper!2467 lt!2410492 (t!379313 s!2326)) e!3984635)))

(declare-fun b!6584082 () Bool)

(assert (=> b!6584082 (= e!3984635 (nullableZipper!2200 lt!2410492))))

(declare-fun b!6584083 () Bool)

(assert (=> b!6584083 (= e!3984635 (matchZipper!2467 (derivationStepZipper!2421 lt!2410492 (head!13361 (t!379313 s!2326))) (tail!12446 (t!379313 s!2326))))))

(assert (= (and d!2065455 c!1211461) b!6584082))

(assert (= (and d!2065455 (not c!1211461)) b!6584083))

(assert (=> d!2065455 m!7363064))

(declare-fun m!7363260 () Bool)

(assert (=> b!6584082 m!7363260))

(assert (=> b!6584083 m!7363068))

(assert (=> b!6584083 m!7363068))

(declare-fun m!7363262 () Bool)

(assert (=> b!6584083 m!7363262))

(assert (=> b!6584083 m!7363072))

(assert (=> b!6584083 m!7363262))

(assert (=> b!6584083 m!7363072))

(declare-fun m!7363264 () Bool)

(assert (=> b!6584083 m!7363264))

(assert (=> b!6583178 d!2065455))

(declare-fun d!2065457 () Bool)

(declare-fun e!3984638 () Bool)

(assert (=> d!2065457 e!3984638))

(declare-fun res!2700866 () Bool)

(assert (=> d!2065457 (=> (not res!2700866) (not e!3984638))))

(declare-fun lt!2410621 () List!65666)

(declare-fun noDuplicate!2260 (List!65666) Bool)

(assert (=> d!2065457 (= res!2700866 (noDuplicate!2260 lt!2410621))))

(declare-fun choose!49163 ((InoxSet Context!11678)) List!65666)

(assert (=> d!2065457 (= lt!2410621 (choose!49163 z!1189))))

(assert (=> d!2065457 (= (toList!10239 z!1189) lt!2410621)))

(declare-fun b!6584086 () Bool)

(declare-fun content!12628 (List!65666) (InoxSet Context!11678))

(assert (=> b!6584086 (= e!3984638 (= (content!12628 lt!2410621) z!1189))))

(assert (= (and d!2065457 res!2700866) b!6584086))

(declare-fun m!7363266 () Bool)

(assert (=> d!2065457 m!7363266))

(declare-fun m!7363268 () Bool)

(assert (=> d!2065457 m!7363268))

(declare-fun m!7363270 () Bool)

(assert (=> b!6584086 m!7363270))

(assert (=> b!6583177 d!2065457))

(assert (=> b!6583157 d!2065385))

(declare-fun d!2065459 () Bool)

(declare-fun lt!2410622 () Regex!16455)

(assert (=> d!2065459 (validRegex!8191 lt!2410622)))

(assert (=> d!2065459 (= lt!2410622 (generalisedUnion!2299 (unfocusZipperList!1876 zl!343)))))

(assert (=> d!2065459 (= (unfocusZipper!2197 zl!343) lt!2410622)))

(declare-fun bs!1684506 () Bool)

(assert (= bs!1684506 d!2065459))

(declare-fun m!7363272 () Bool)

(assert (=> bs!1684506 m!7363272))

(assert (=> bs!1684506 m!7362560))

(assert (=> bs!1684506 m!7362560))

(assert (=> bs!1684506 m!7362562))

(assert (=> b!6583156 d!2065459))

(declare-fun d!2065461 () Bool)

(declare-fun e!3984641 () Bool)

(assert (=> d!2065461 (= (matchZipper!2467 ((_ map or) lt!2410460 lt!2410487) (t!379313 s!2326)) e!3984641)))

(declare-fun res!2700869 () Bool)

(assert (=> d!2065461 (=> res!2700869 e!3984641)))

(assert (=> d!2065461 (= res!2700869 (matchZipper!2467 lt!2410460 (t!379313 s!2326)))))

(declare-fun lt!2410625 () Unit!159155)

(declare-fun choose!49164 ((InoxSet Context!11678) (InoxSet Context!11678) List!65665) Unit!159155)

(assert (=> d!2065461 (= lt!2410625 (choose!49164 lt!2410460 lt!2410487 (t!379313 s!2326)))))

(assert (=> d!2065461 (= (lemmaZipperConcatMatchesSameAsBothZippers!1286 lt!2410460 lt!2410487 (t!379313 s!2326)) lt!2410625)))

(declare-fun b!6584089 () Bool)

(assert (=> b!6584089 (= e!3984641 (matchZipper!2467 lt!2410487 (t!379313 s!2326)))))

(assert (= (and d!2065461 (not res!2700869)) b!6584089))

(assert (=> d!2065461 m!7362606))

(assert (=> d!2065461 m!7362602))

(declare-fun m!7363274 () Bool)

(assert (=> d!2065461 m!7363274))

(assert (=> b!6584089 m!7362558))

(assert (=> b!6583155 d!2065461))

(declare-fun d!2065463 () Bool)

(declare-fun c!1211462 () Bool)

(assert (=> d!2065463 (= c!1211462 (isEmpty!37801 (t!379313 s!2326)))))

(declare-fun e!3984642 () Bool)

(assert (=> d!2065463 (= (matchZipper!2467 lt!2410460 (t!379313 s!2326)) e!3984642)))

(declare-fun b!6584090 () Bool)

(assert (=> b!6584090 (= e!3984642 (nullableZipper!2200 lt!2410460))))

(declare-fun b!6584091 () Bool)

(assert (=> b!6584091 (= e!3984642 (matchZipper!2467 (derivationStepZipper!2421 lt!2410460 (head!13361 (t!379313 s!2326))) (tail!12446 (t!379313 s!2326))))))

(assert (= (and d!2065463 c!1211462) b!6584090))

(assert (= (and d!2065463 (not c!1211462)) b!6584091))

(assert (=> d!2065463 m!7363064))

(declare-fun m!7363276 () Bool)

(assert (=> b!6584090 m!7363276))

(assert (=> b!6584091 m!7363068))

(assert (=> b!6584091 m!7363068))

(declare-fun m!7363278 () Bool)

(assert (=> b!6584091 m!7363278))

(assert (=> b!6584091 m!7363072))

(assert (=> b!6584091 m!7363278))

(assert (=> b!6584091 m!7363072))

(declare-fun m!7363280 () Bool)

(assert (=> b!6584091 m!7363280))

(assert (=> b!6583155 d!2065463))

(declare-fun d!2065465 () Bool)

(declare-fun c!1211463 () Bool)

(assert (=> d!2065465 (= c!1211463 (isEmpty!37801 (t!379313 s!2326)))))

(declare-fun e!3984643 () Bool)

(assert (=> d!2065465 (= (matchZipper!2467 ((_ map or) lt!2410460 lt!2410487) (t!379313 s!2326)) e!3984643)))

(declare-fun b!6584092 () Bool)

(assert (=> b!6584092 (= e!3984643 (nullableZipper!2200 ((_ map or) lt!2410460 lt!2410487)))))

(declare-fun b!6584093 () Bool)

(assert (=> b!6584093 (= e!3984643 (matchZipper!2467 (derivationStepZipper!2421 ((_ map or) lt!2410460 lt!2410487) (head!13361 (t!379313 s!2326))) (tail!12446 (t!379313 s!2326))))))

(assert (= (and d!2065465 c!1211463) b!6584092))

(assert (= (and d!2065465 (not c!1211463)) b!6584093))

(assert (=> d!2065465 m!7363064))

(declare-fun m!7363282 () Bool)

(assert (=> b!6584092 m!7363282))

(assert (=> b!6584093 m!7363068))

(assert (=> b!6584093 m!7363068))

(declare-fun m!7363284 () Bool)

(assert (=> b!6584093 m!7363284))

(assert (=> b!6584093 m!7363072))

(assert (=> b!6584093 m!7363284))

(assert (=> b!6584093 m!7363072))

(declare-fun m!7363286 () Bool)

(assert (=> b!6584093 m!7363286))

(assert (=> b!6583155 d!2065465))

(declare-fun d!2065467 () Bool)

(declare-fun c!1211464 () Bool)

(assert (=> d!2065467 (= c!1211464 (isEmpty!37801 s!2326))))

(declare-fun e!3984644 () Bool)

(assert (=> d!2065467 (= (matchZipper!2467 z!1189 s!2326) e!3984644)))

(declare-fun b!6584094 () Bool)

(assert (=> b!6584094 (= e!3984644 (nullableZipper!2200 z!1189))))

(declare-fun b!6584095 () Bool)

(assert (=> b!6584095 (= e!3984644 (matchZipper!2467 (derivationStepZipper!2421 z!1189 (head!13361 s!2326)) (tail!12446 s!2326)))))

(assert (= (and d!2065467 c!1211464) b!6584094))

(assert (= (and d!2065467 (not c!1211464)) b!6584095))

(assert (=> d!2065467 m!7362824))

(declare-fun m!7363288 () Bool)

(assert (=> b!6584094 m!7363288))

(assert (=> b!6584095 m!7362830))

(assert (=> b!6584095 m!7362830))

(declare-fun m!7363290 () Bool)

(assert (=> b!6584095 m!7363290))

(assert (=> b!6584095 m!7362834))

(assert (=> b!6584095 m!7363290))

(assert (=> b!6584095 m!7362834))

(declare-fun m!7363292 () Bool)

(assert (=> b!6584095 m!7363292))

(assert (=> b!6583164 d!2065467))

(declare-fun call!574263 () (InoxSet Context!11678))

(declare-fun bm!574259 () Bool)

(declare-fun c!1211465 () Bool)

(declare-fun call!574265 () List!65664)

(assert (=> bm!574259 (= call!574263 (derivationStepZipperDown!1703 (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292)))) (ite c!1211465 lt!2410469 (Context!11679 call!574265)) (h!71989 s!2326)))))

(declare-fun b!6584096 () Bool)

(declare-fun e!3984645 () (InoxSet Context!11678))

(declare-fun call!574267 () (InoxSet Context!11678))

(assert (=> b!6584096 (= e!3984645 ((_ map or) call!574263 call!574267))))

(declare-fun c!1211466 () Bool)

(declare-fun call!574268 () List!65664)

(declare-fun call!574264 () (InoxSet Context!11678))

(declare-fun c!1211467 () Bool)

(declare-fun bm!574260 () Bool)

(assert (=> bm!574260 (= call!574264 (derivationStepZipperDown!1703 (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292)))))) (ite (or c!1211465 c!1211467) lt!2410469 (Context!11679 call!574268)) (h!71989 s!2326)))))

(declare-fun b!6584097 () Bool)

(declare-fun e!3984649 () Bool)

(assert (=> b!6584097 (= c!1211467 e!3984649)))

(declare-fun res!2700870 () Bool)

(assert (=> b!6584097 (=> (not res!2700870) (not e!3984649))))

(assert (=> b!6584097 (= res!2700870 ((_ is Concat!25300) (reg!16784 (regOne!33422 r!7292))))))

(declare-fun e!3984648 () (InoxSet Context!11678))

(assert (=> b!6584097 (= e!3984648 e!3984645)))

(declare-fun b!6584098 () Bool)

(declare-fun e!3984650 () (InoxSet Context!11678))

(assert (=> b!6584098 (= e!3984645 e!3984650)))

(assert (=> b!6584098 (= c!1211466 ((_ is Concat!25300) (reg!16784 (regOne!33422 r!7292))))))

(declare-fun b!6584099 () Bool)

(declare-fun c!1211468 () Bool)

(assert (=> b!6584099 (= c!1211468 ((_ is Star!16455) (reg!16784 (regOne!33422 r!7292))))))

(declare-fun e!3984646 () (InoxSet Context!11678))

(assert (=> b!6584099 (= e!3984650 e!3984646)))

(declare-fun b!6584100 () Bool)

(declare-fun e!3984647 () (InoxSet Context!11678))

(assert (=> b!6584100 (= e!3984647 (store ((as const (Array Context!11678 Bool)) false) lt!2410469 true))))

(declare-fun bm!574261 () Bool)

(assert (=> bm!574261 (= call!574267 call!574264)))

(declare-fun d!2065469 () Bool)

(declare-fun c!1211469 () Bool)

(assert (=> d!2065469 (= c!1211469 (and ((_ is ElementMatch!16455) (reg!16784 (regOne!33422 r!7292))) (= (c!1211172 (reg!16784 (regOne!33422 r!7292))) (h!71989 s!2326))))))

(assert (=> d!2065469 (= (derivationStepZipperDown!1703 (reg!16784 (regOne!33422 r!7292)) lt!2410469 (h!71989 s!2326)) e!3984647)))

(declare-fun bm!574258 () Bool)

(assert (=> bm!574258 (= call!574265 ($colon$colon!2296 (exprs!6339 lt!2410469) (ite (or c!1211467 c!1211466) (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (regOne!33422 r!7292)))))))

(declare-fun b!6584101 () Bool)

(assert (=> b!6584101 (= e!3984646 ((as const (Array Context!11678 Bool)) false))))

(declare-fun b!6584102 () Bool)

(declare-fun call!574266 () (InoxSet Context!11678))

(assert (=> b!6584102 (= e!3984650 call!574266)))

(declare-fun bm!574262 () Bool)

(assert (=> bm!574262 (= call!574268 call!574265)))

(declare-fun b!6584103 () Bool)

(assert (=> b!6584103 (= e!3984647 e!3984648)))

(assert (=> b!6584103 (= c!1211465 ((_ is Union!16455) (reg!16784 (regOne!33422 r!7292))))))

(declare-fun bm!574263 () Bool)

(assert (=> bm!574263 (= call!574266 call!574267)))

(declare-fun b!6584104 () Bool)

(assert (=> b!6584104 (= e!3984648 ((_ map or) call!574263 call!574264))))

(declare-fun b!6584105 () Bool)

(assert (=> b!6584105 (= e!3984649 (nullable!6448 (regOne!33422 (reg!16784 (regOne!33422 r!7292)))))))

(declare-fun b!6584106 () Bool)

(assert (=> b!6584106 (= e!3984646 call!574266)))

(assert (= (and d!2065469 c!1211469) b!6584100))

(assert (= (and d!2065469 (not c!1211469)) b!6584103))

(assert (= (and b!6584103 c!1211465) b!6584104))

(assert (= (and b!6584103 (not c!1211465)) b!6584097))

(assert (= (and b!6584097 res!2700870) b!6584105))

(assert (= (and b!6584097 c!1211467) b!6584096))

(assert (= (and b!6584097 (not c!1211467)) b!6584098))

(assert (= (and b!6584098 c!1211466) b!6584102))

(assert (= (and b!6584098 (not c!1211466)) b!6584099))

(assert (= (and b!6584099 c!1211468) b!6584106))

(assert (= (and b!6584099 (not c!1211468)) b!6584101))

(assert (= (or b!6584102 b!6584106) bm!574262))

(assert (= (or b!6584102 b!6584106) bm!574263))

(assert (= (or b!6584096 bm!574262) bm!574258))

(assert (= (or b!6584096 bm!574263) bm!574261))

(assert (= (or b!6584104 bm!574261) bm!574260))

(assert (= (or b!6584104 b!6584096) bm!574259))

(declare-fun m!7363294 () Bool)

(assert (=> b!6584105 m!7363294))

(assert (=> b!6584100 m!7362498))

(declare-fun m!7363296 () Bool)

(assert (=> bm!574259 m!7363296))

(declare-fun m!7363298 () Bool)

(assert (=> bm!574260 m!7363298))

(declare-fun m!7363300 () Bool)

(assert (=> bm!574258 m!7363300))

(assert (=> b!6583143 d!2065469))

(declare-fun bs!1684507 () Bool)

(declare-fun b!6584107 () Bool)

(assert (= bs!1684507 (and b!6584107 b!6583175)))

(declare-fun lambda!366781 () Int)

(assert (=> bs!1684507 (not (= lambda!366781 lambda!366699))))

(declare-fun bs!1684508 () Bool)

(assert (= bs!1684508 (and b!6584107 b!6583623)))

(assert (=> bs!1684508 (= (and (= (reg!16784 r!7292) (reg!16784 lt!2410464)) (= r!7292 lt!2410464)) (= lambda!366781 lambda!366746))))

(declare-fun bs!1684509 () Bool)

(assert (= bs!1684509 (and b!6584107 d!2065397)))

(assert (=> bs!1684509 (not (= lambda!366781 lambda!366768))))

(declare-fun bs!1684510 () Bool)

(assert (= bs!1684510 (and b!6584107 d!2065395)))

(assert (=> bs!1684510 (not (= lambda!366781 lambda!366763))))

(assert (=> bs!1684509 (not (= lambda!366781 lambda!366769))))

(assert (=> bs!1684507 (not (= lambda!366781 lambda!366700))))

(declare-fun bs!1684511 () Bool)

(assert (= bs!1684511 (and b!6584107 b!6583631)))

(assert (=> bs!1684511 (not (= lambda!366781 lambda!366747))))

(assert (=> b!6584107 true))

(assert (=> b!6584107 true))

(declare-fun bs!1684512 () Bool)

(declare-fun b!6584115 () Bool)

(assert (= bs!1684512 (and b!6584115 b!6583175)))

(declare-fun lambda!366782 () Int)

(assert (=> bs!1684512 (not (= lambda!366782 lambda!366699))))

(declare-fun bs!1684513 () Bool)

(assert (= bs!1684513 (and b!6584115 b!6583623)))

(assert (=> bs!1684513 (not (= lambda!366782 lambda!366746))))

(declare-fun bs!1684514 () Bool)

(assert (= bs!1684514 (and b!6584115 d!2065397)))

(assert (=> bs!1684514 (not (= lambda!366782 lambda!366768))))

(declare-fun bs!1684515 () Bool)

(assert (= bs!1684515 (and b!6584115 d!2065395)))

(assert (=> bs!1684515 (not (= lambda!366782 lambda!366763))))

(assert (=> bs!1684514 (= lambda!366782 lambda!366769)))

(assert (=> bs!1684512 (= lambda!366782 lambda!366700)))

(declare-fun bs!1684516 () Bool)

(assert (= bs!1684516 (and b!6584115 b!6583631)))

(assert (=> bs!1684516 (= (and (= (regOne!33422 r!7292) (regOne!33422 lt!2410464)) (= (regTwo!33422 r!7292) (regTwo!33422 lt!2410464))) (= lambda!366782 lambda!366747))))

(declare-fun bs!1684517 () Bool)

(assert (= bs!1684517 (and b!6584115 b!6584107)))

(assert (=> bs!1684517 (not (= lambda!366782 lambda!366781))))

(assert (=> b!6584115 true))

(assert (=> b!6584115 true))

(declare-fun e!3984652 () Bool)

(declare-fun call!574269 () Bool)

(assert (=> b!6584107 (= e!3984652 call!574269)))

(declare-fun b!6584108 () Bool)

(declare-fun res!2700873 () Bool)

(assert (=> b!6584108 (=> res!2700873 e!3984652)))

(declare-fun call!574270 () Bool)

(assert (=> b!6584108 (= res!2700873 call!574270)))

(declare-fun e!3984657 () Bool)

(assert (=> b!6584108 (= e!3984657 e!3984652)))

(declare-fun b!6584109 () Bool)

(declare-fun e!3984654 () Bool)

(assert (=> b!6584109 (= e!3984654 call!574270)))

(declare-fun b!6584110 () Bool)

(declare-fun e!3984651 () Bool)

(assert (=> b!6584110 (= e!3984651 (= s!2326 (Cons!65541 (c!1211172 r!7292) Nil!65541)))))

(declare-fun d!2065471 () Bool)

(declare-fun c!1211471 () Bool)

(assert (=> d!2065471 (= c!1211471 ((_ is EmptyExpr!16455) r!7292))))

(assert (=> d!2065471 (= (matchRSpec!3556 r!7292 s!2326) e!3984654)))

(declare-fun bm!574264 () Bool)

(assert (=> bm!574264 (= call!574270 (isEmpty!37801 s!2326))))

(declare-fun b!6584111 () Bool)

(declare-fun e!3984656 () Bool)

(declare-fun e!3984653 () Bool)

(assert (=> b!6584111 (= e!3984656 e!3984653)))

(declare-fun res!2700871 () Bool)

(assert (=> b!6584111 (= res!2700871 (matchRSpec!3556 (regOne!33423 r!7292) s!2326))))

(assert (=> b!6584111 (=> res!2700871 e!3984653)))

(declare-fun b!6584112 () Bool)

(declare-fun c!1211472 () Bool)

(assert (=> b!6584112 (= c!1211472 ((_ is Union!16455) r!7292))))

(assert (=> b!6584112 (= e!3984651 e!3984656)))

(declare-fun b!6584113 () Bool)

(declare-fun c!1211470 () Bool)

(assert (=> b!6584113 (= c!1211470 ((_ is ElementMatch!16455) r!7292))))

(declare-fun e!3984655 () Bool)

(assert (=> b!6584113 (= e!3984655 e!3984651)))

(declare-fun b!6584114 () Bool)

(assert (=> b!6584114 (= e!3984653 (matchRSpec!3556 (regTwo!33423 r!7292) s!2326))))

(assert (=> b!6584115 (= e!3984657 call!574269)))

(declare-fun b!6584116 () Bool)

(assert (=> b!6584116 (= e!3984656 e!3984657)))

(declare-fun c!1211473 () Bool)

(assert (=> b!6584116 (= c!1211473 ((_ is Star!16455) r!7292))))

(declare-fun b!6584117 () Bool)

(assert (=> b!6584117 (= e!3984654 e!3984655)))

(declare-fun res!2700872 () Bool)

(assert (=> b!6584117 (= res!2700872 (not ((_ is EmptyLang!16455) r!7292)))))

(assert (=> b!6584117 (=> (not res!2700872) (not e!3984655))))

(declare-fun bm!574265 () Bool)

(assert (=> bm!574265 (= call!574269 (Exists!3525 (ite c!1211473 lambda!366781 lambda!366782)))))

(assert (= (and d!2065471 c!1211471) b!6584109))

(assert (= (and d!2065471 (not c!1211471)) b!6584117))

(assert (= (and b!6584117 res!2700872) b!6584113))

(assert (= (and b!6584113 c!1211470) b!6584110))

(assert (= (and b!6584113 (not c!1211470)) b!6584112))

(assert (= (and b!6584112 c!1211472) b!6584111))

(assert (= (and b!6584112 (not c!1211472)) b!6584116))

(assert (= (and b!6584111 (not res!2700871)) b!6584114))

(assert (= (and b!6584116 c!1211473) b!6584108))

(assert (= (and b!6584116 (not c!1211473)) b!6584115))

(assert (= (and b!6584108 (not res!2700873)) b!6584107))

(assert (= (or b!6584107 b!6584115) bm!574265))

(assert (= (or b!6584109 b!6584108) bm!574264))

(assert (=> bm!574264 m!7362824))

(declare-fun m!7363302 () Bool)

(assert (=> b!6584111 m!7363302))

(declare-fun m!7363304 () Bool)

(assert (=> b!6584114 m!7363304))

(declare-fun m!7363306 () Bool)

(assert (=> bm!574265 m!7363306))

(assert (=> b!6583142 d!2065471))

(declare-fun b!6584118 () Bool)

(declare-fun e!3984658 () Bool)

(declare-fun e!3984661 () Bool)

(assert (=> b!6584118 (= e!3984658 e!3984661)))

(declare-fun res!2700876 () Bool)

(assert (=> b!6584118 (=> (not res!2700876) (not e!3984661))))

(declare-fun lt!2410626 () Bool)

(assert (=> b!6584118 (= res!2700876 (not lt!2410626))))

(declare-fun b!6584119 () Bool)

(declare-fun res!2700877 () Bool)

(assert (=> b!6584119 (=> res!2700877 e!3984658)))

(declare-fun e!3984662 () Bool)

(assert (=> b!6584119 (= res!2700877 e!3984662)))

(declare-fun res!2700875 () Bool)

(assert (=> b!6584119 (=> (not res!2700875) (not e!3984662))))

(assert (=> b!6584119 (= res!2700875 lt!2410626)))

(declare-fun b!6584120 () Bool)

(declare-fun res!2700881 () Bool)

(declare-fun e!3984660 () Bool)

(assert (=> b!6584120 (=> res!2700881 e!3984660)))

(assert (=> b!6584120 (= res!2700881 (not (isEmpty!37801 (tail!12446 s!2326))))))

(declare-fun b!6584121 () Bool)

(declare-fun e!3984663 () Bool)

(declare-fun call!574271 () Bool)

(assert (=> b!6584121 (= e!3984663 (= lt!2410626 call!574271))))

(declare-fun b!6584122 () Bool)

(declare-fun res!2700874 () Bool)

(assert (=> b!6584122 (=> (not res!2700874) (not e!3984662))))

(assert (=> b!6584122 (= res!2700874 (not call!574271))))

(declare-fun b!6584123 () Bool)

(declare-fun e!3984659 () Bool)

(assert (=> b!6584123 (= e!3984659 (not lt!2410626))))

(declare-fun b!6584124 () Bool)

(assert (=> b!6584124 (= e!3984660 (not (= (head!13361 s!2326) (c!1211172 r!7292))))))

(declare-fun b!6584125 () Bool)

(assert (=> b!6584125 (= e!3984663 e!3984659)))

(declare-fun c!1211476 () Bool)

(assert (=> b!6584125 (= c!1211476 ((_ is EmptyLang!16455) r!7292))))

(declare-fun b!6584126 () Bool)

(declare-fun e!3984664 () Bool)

(assert (=> b!6584126 (= e!3984664 (nullable!6448 r!7292))))

(declare-fun b!6584127 () Bool)

(assert (=> b!6584127 (= e!3984661 e!3984660)))

(declare-fun res!2700879 () Bool)

(assert (=> b!6584127 (=> res!2700879 e!3984660)))

(assert (=> b!6584127 (= res!2700879 call!574271)))

(declare-fun b!6584128 () Bool)

(declare-fun res!2700878 () Bool)

(assert (=> b!6584128 (=> (not res!2700878) (not e!3984662))))

(assert (=> b!6584128 (= res!2700878 (isEmpty!37801 (tail!12446 s!2326)))))

(declare-fun d!2065473 () Bool)

(assert (=> d!2065473 e!3984663))

(declare-fun c!1211474 () Bool)

(assert (=> d!2065473 (= c!1211474 ((_ is EmptyExpr!16455) r!7292))))

(assert (=> d!2065473 (= lt!2410626 e!3984664)))

(declare-fun c!1211475 () Bool)

(assert (=> d!2065473 (= c!1211475 (isEmpty!37801 s!2326))))

(assert (=> d!2065473 (validRegex!8191 r!7292)))

(assert (=> d!2065473 (= (matchR!8638 r!7292 s!2326) lt!2410626)))

(declare-fun bm!574266 () Bool)

(assert (=> bm!574266 (= call!574271 (isEmpty!37801 s!2326))))

(declare-fun b!6584129 () Bool)

(assert (=> b!6584129 (= e!3984664 (matchR!8638 (derivativeStep!5139 r!7292 (head!13361 s!2326)) (tail!12446 s!2326)))))

(declare-fun b!6584130 () Bool)

(assert (=> b!6584130 (= e!3984662 (= (head!13361 s!2326) (c!1211172 r!7292)))))

(declare-fun b!6584131 () Bool)

(declare-fun res!2700880 () Bool)

(assert (=> b!6584131 (=> res!2700880 e!3984658)))

(assert (=> b!6584131 (= res!2700880 (not ((_ is ElementMatch!16455) r!7292)))))

(assert (=> b!6584131 (= e!3984659 e!3984658)))

(assert (= (and d!2065473 c!1211475) b!6584126))

(assert (= (and d!2065473 (not c!1211475)) b!6584129))

(assert (= (and d!2065473 c!1211474) b!6584121))

(assert (= (and d!2065473 (not c!1211474)) b!6584125))

(assert (= (and b!6584125 c!1211476) b!6584123))

(assert (= (and b!6584125 (not c!1211476)) b!6584131))

(assert (= (and b!6584131 (not res!2700880)) b!6584119))

(assert (= (and b!6584119 res!2700875) b!6584122))

(assert (= (and b!6584122 res!2700874) b!6584128))

(assert (= (and b!6584128 res!2700878) b!6584130))

(assert (= (and b!6584119 (not res!2700877)) b!6584118))

(assert (= (and b!6584118 res!2700876) b!6584127))

(assert (= (and b!6584127 (not res!2700879)) b!6584120))

(assert (= (and b!6584120 (not res!2700881)) b!6584124))

(assert (= (or b!6584121 b!6584122 b!6584127) bm!574266))

(assert (=> bm!574266 m!7362824))

(assert (=> d!2065473 m!7362824))

(assert (=> d!2065473 m!7362496))

(declare-fun m!7363308 () Bool)

(assert (=> b!6584126 m!7363308))

(assert (=> b!6584130 m!7362830))

(assert (=> b!6584129 m!7362830))

(assert (=> b!6584129 m!7362830))

(declare-fun m!7363310 () Bool)

(assert (=> b!6584129 m!7363310))

(assert (=> b!6584129 m!7362834))

(assert (=> b!6584129 m!7363310))

(assert (=> b!6584129 m!7362834))

(declare-fun m!7363312 () Bool)

(assert (=> b!6584129 m!7363312))

(assert (=> b!6584124 m!7362830))

(assert (=> b!6584120 m!7362834))

(assert (=> b!6584120 m!7362834))

(assert (=> b!6584120 m!7362838))

(assert (=> b!6584128 m!7362834))

(assert (=> b!6584128 m!7362834))

(assert (=> b!6584128 m!7362838))

(assert (=> b!6583142 d!2065473))

(declare-fun d!2065475 () Bool)

(assert (=> d!2065475 (= (matchR!8638 r!7292 s!2326) (matchRSpec!3556 r!7292 s!2326))))

(declare-fun lt!2410627 () Unit!159155)

(assert (=> d!2065475 (= lt!2410627 (choose!49156 r!7292 s!2326))))

(assert (=> d!2065475 (validRegex!8191 r!7292)))

(assert (=> d!2065475 (= (mainMatchTheorem!3556 r!7292 s!2326) lt!2410627)))

(declare-fun bs!1684518 () Bool)

(assert (= bs!1684518 d!2065475))

(assert (=> bs!1684518 m!7362544))

(assert (=> bs!1684518 m!7362542))

(declare-fun m!7363314 () Bool)

(assert (=> bs!1684518 m!7363314))

(assert (=> bs!1684518 m!7362496))

(assert (=> b!6583142 d!2065475))

(declare-fun bs!1684519 () Bool)

(declare-fun d!2065477 () Bool)

(assert (= bs!1684519 (and d!2065477 d!2065401)))

(declare-fun lambda!366783 () Int)

(assert (=> bs!1684519 (= lambda!366783 lambda!366770)))

(declare-fun bs!1684520 () Bool)

(assert (= bs!1684520 (and d!2065477 d!2065261)))

(assert (=> bs!1684520 (= lambda!366783 lambda!366714)))

(declare-fun bs!1684521 () Bool)

(assert (= bs!1684521 (and d!2065477 d!2065379)))

(assert (=> bs!1684521 (= lambda!366783 lambda!366760)))

(declare-fun bs!1684522 () Bool)

(assert (= bs!1684522 (and d!2065477 d!2065439)))

(assert (=> bs!1684522 (= lambda!366783 lambda!366779)))

(declare-fun bs!1684523 () Bool)

(assert (= bs!1684523 (and d!2065477 d!2065437)))

(assert (=> bs!1684523 (= lambda!366783 lambda!366776)))

(assert (=> d!2065477 (= (inv!84384 setElem!44952) (forall!15634 (exprs!6339 setElem!44952) lambda!366783))))

(declare-fun bs!1684524 () Bool)

(assert (= bs!1684524 d!2065477))

(declare-fun m!7363316 () Bool)

(assert (=> bs!1684524 m!7363316))

(assert (=> setNonEmpty!44952 d!2065477))

(assert (=> b!6583141 d!2065463))

(declare-fun b!6584138 () Bool)

(assert (=> b!6584138 true))

(declare-fun bs!1684525 () Bool)

(declare-fun b!6584140 () Bool)

(assert (= bs!1684525 (and b!6584140 b!6584138)))

(declare-fun lambda!366792 () Int)

(declare-fun lambda!366791 () Int)

(declare-fun lt!2410637 () Int)

(declare-fun lt!2410636 () Int)

(assert (=> bs!1684525 (= (= lt!2410636 lt!2410637) (= lambda!366792 lambda!366791))))

(assert (=> b!6584140 true))

(declare-fun d!2065479 () Bool)

(declare-fun e!3984669 () Bool)

(assert (=> d!2065479 e!3984669))

(declare-fun res!2700884 () Bool)

(assert (=> d!2065479 (=> (not res!2700884) (not e!3984669))))

(assert (=> d!2065479 (= res!2700884 (>= lt!2410636 0))))

(declare-fun e!3984670 () Int)

(assert (=> d!2065479 (= lt!2410636 e!3984670)))

(declare-fun c!1211485 () Bool)

(assert (=> d!2065479 (= c!1211485 ((_ is Cons!65542) zl!343))))

(assert (=> d!2065479 (= (zipperDepth!392 zl!343) lt!2410636)))

(assert (=> b!6584138 (= e!3984670 lt!2410637)))

(declare-fun contextDepth!281 (Context!11678) Int)

(assert (=> b!6584138 (= lt!2410637 (maxBigInt!0 (contextDepth!281 (h!71990 zl!343)) (zipperDepth!392 (t!379314 zl!343))))))

(declare-fun lambda!366790 () Int)

(declare-fun lt!2410638 () Unit!159155)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!265 (List!65666 Int Int Int) Unit!159155)

(assert (=> b!6584138 (= lt!2410638 (lemmaForallContextDepthBiggerThanTransitive!265 (t!379314 zl!343) lt!2410637 (zipperDepth!392 (t!379314 zl!343)) lambda!366790))))

(declare-fun forall!15635 (List!65666 Int) Bool)

(assert (=> b!6584138 (forall!15635 (t!379314 zl!343) lambda!366791)))

(declare-fun lt!2410639 () Unit!159155)

(assert (=> b!6584138 (= lt!2410639 lt!2410638)))

(declare-fun b!6584139 () Bool)

(assert (=> b!6584139 (= e!3984670 0)))

(assert (=> b!6584140 (= e!3984669 (forall!15635 zl!343 lambda!366792))))

(assert (= (and d!2065479 c!1211485) b!6584138))

(assert (= (and d!2065479 (not c!1211485)) b!6584139))

(assert (= (and d!2065479 res!2700884) b!6584140))

(declare-fun m!7363318 () Bool)

(assert (=> b!6584138 m!7363318))

(declare-fun m!7363320 () Bool)

(assert (=> b!6584138 m!7363320))

(declare-fun m!7363322 () Bool)

(assert (=> b!6584138 m!7363322))

(assert (=> b!6584138 m!7363322))

(assert (=> b!6584138 m!7363318))

(declare-fun m!7363324 () Bool)

(assert (=> b!6584138 m!7363324))

(assert (=> b!6584138 m!7363318))

(declare-fun m!7363326 () Bool)

(assert (=> b!6584138 m!7363326))

(declare-fun m!7363328 () Bool)

(assert (=> b!6584140 m!7363328))

(assert (=> b!6583181 d!2065479))

(declare-fun bs!1684526 () Bool)

(declare-fun b!6584143 () Bool)

(assert (= bs!1684526 (and b!6584143 b!6584138)))

(declare-fun lambda!366793 () Int)

(assert (=> bs!1684526 (= lambda!366793 lambda!366790)))

(declare-fun lambda!366794 () Int)

(declare-fun lt!2410641 () Int)

(assert (=> bs!1684526 (= (= lt!2410641 lt!2410637) (= lambda!366794 lambda!366791))))

(declare-fun bs!1684527 () Bool)

(assert (= bs!1684527 (and b!6584143 b!6584140)))

(assert (=> bs!1684527 (= (= lt!2410641 lt!2410636) (= lambda!366794 lambda!366792))))

(assert (=> b!6584143 true))

(declare-fun bs!1684528 () Bool)

(declare-fun b!6584145 () Bool)

(assert (= bs!1684528 (and b!6584145 b!6584138)))

(declare-fun lt!2410640 () Int)

(declare-fun lambda!366795 () Int)

(assert (=> bs!1684528 (= (= lt!2410640 lt!2410637) (= lambda!366795 lambda!366791))))

(declare-fun bs!1684529 () Bool)

(assert (= bs!1684529 (and b!6584145 b!6584140)))

(assert (=> bs!1684529 (= (= lt!2410640 lt!2410636) (= lambda!366795 lambda!366792))))

(declare-fun bs!1684530 () Bool)

(assert (= bs!1684530 (and b!6584145 b!6584143)))

(assert (=> bs!1684530 (= (= lt!2410640 lt!2410641) (= lambda!366795 lambda!366794))))

(assert (=> b!6584145 true))

(declare-fun d!2065481 () Bool)

(declare-fun e!3984671 () Bool)

(assert (=> d!2065481 e!3984671))

(declare-fun res!2700885 () Bool)

(assert (=> d!2065481 (=> (not res!2700885) (not e!3984671))))

(assert (=> d!2065481 (= res!2700885 (>= lt!2410640 0))))

(declare-fun e!3984672 () Int)

(assert (=> d!2065481 (= lt!2410640 e!3984672)))

(declare-fun c!1211486 () Bool)

(assert (=> d!2065481 (= c!1211486 ((_ is Cons!65542) lt!2410483))))

(assert (=> d!2065481 (= (zipperDepth!392 lt!2410483) lt!2410640)))

(assert (=> b!6584143 (= e!3984672 lt!2410641)))

(assert (=> b!6584143 (= lt!2410641 (maxBigInt!0 (contextDepth!281 (h!71990 lt!2410483)) (zipperDepth!392 (t!379314 lt!2410483))))))

(declare-fun lt!2410642 () Unit!159155)

(assert (=> b!6584143 (= lt!2410642 (lemmaForallContextDepthBiggerThanTransitive!265 (t!379314 lt!2410483) lt!2410641 (zipperDepth!392 (t!379314 lt!2410483)) lambda!366793))))

(assert (=> b!6584143 (forall!15635 (t!379314 lt!2410483) lambda!366794)))

(declare-fun lt!2410643 () Unit!159155)

(assert (=> b!6584143 (= lt!2410643 lt!2410642)))

(declare-fun b!6584144 () Bool)

(assert (=> b!6584144 (= e!3984672 0)))

(assert (=> b!6584145 (= e!3984671 (forall!15635 lt!2410483 lambda!366795))))

(assert (= (and d!2065481 c!1211486) b!6584143))

(assert (= (and d!2065481 (not c!1211486)) b!6584144))

(assert (= (and d!2065481 res!2700885) b!6584145))

(declare-fun m!7363330 () Bool)

(assert (=> b!6584143 m!7363330))

(declare-fun m!7363332 () Bool)

(assert (=> b!6584143 m!7363332))

(declare-fun m!7363334 () Bool)

(assert (=> b!6584143 m!7363334))

(assert (=> b!6584143 m!7363334))

(assert (=> b!6584143 m!7363330))

(declare-fun m!7363336 () Bool)

(assert (=> b!6584143 m!7363336))

(assert (=> b!6584143 m!7363330))

(declare-fun m!7363338 () Bool)

(assert (=> b!6584143 m!7363338))

(declare-fun m!7363340 () Bool)

(assert (=> b!6584145 m!7363340))

(assert (=> b!6583181 d!2065481))

(declare-fun d!2065483 () Bool)

(declare-fun e!3984673 () Bool)

(assert (=> d!2065483 e!3984673))

(declare-fun res!2700886 () Bool)

(assert (=> d!2065483 (=> (not res!2700886) (not e!3984673))))

(declare-fun lt!2410644 () List!65666)

(assert (=> d!2065483 (= res!2700886 (noDuplicate!2260 lt!2410644))))

(assert (=> d!2065483 (= lt!2410644 (choose!49163 lt!2410482))))

(assert (=> d!2065483 (= (toList!10239 lt!2410482) lt!2410644)))

(declare-fun b!6584146 () Bool)

(assert (=> b!6584146 (= e!3984673 (= (content!12628 lt!2410644) lt!2410482))))

(assert (= (and d!2065483 res!2700886) b!6584146))

(declare-fun m!7363342 () Bool)

(assert (=> d!2065483 m!7363342))

(declare-fun m!7363344 () Bool)

(assert (=> d!2065483 m!7363344))

(declare-fun m!7363346 () Bool)

(assert (=> b!6584146 m!7363346))

(assert (=> b!6583161 d!2065483))

(declare-fun b!6584154 () Bool)

(declare-fun e!3984679 () Bool)

(declare-fun tp!1816622 () Bool)

(assert (=> b!6584154 (= e!3984679 tp!1816622)))

(declare-fun b!6584153 () Bool)

(declare-fun tp!1816623 () Bool)

(declare-fun e!3984678 () Bool)

(assert (=> b!6584153 (= e!3984678 (and (inv!84384 (h!71990 (t!379314 zl!343))) e!3984679 tp!1816623))))

(assert (=> b!6583170 (= tp!1816558 e!3984678)))

(assert (= b!6584153 b!6584154))

(assert (= (and b!6583170 ((_ is Cons!65542) (t!379314 zl!343))) b!6584153))

(declare-fun m!7363348 () Bool)

(assert (=> b!6584153 m!7363348))

(declare-fun b!6584167 () Bool)

(declare-fun e!3984682 () Bool)

(declare-fun tp!1816636 () Bool)

(assert (=> b!6584167 (= e!3984682 tp!1816636)))

(declare-fun b!6584165 () Bool)

(assert (=> b!6584165 (= e!3984682 tp_is_empty!42163)))

(assert (=> b!6583139 (= tp!1816551 e!3984682)))

(declare-fun b!6584166 () Bool)

(declare-fun tp!1816634 () Bool)

(declare-fun tp!1816637 () Bool)

(assert (=> b!6584166 (= e!3984682 (and tp!1816634 tp!1816637))))

(declare-fun b!6584168 () Bool)

(declare-fun tp!1816638 () Bool)

(declare-fun tp!1816635 () Bool)

(assert (=> b!6584168 (= e!3984682 (and tp!1816638 tp!1816635))))

(assert (= (and b!6583139 ((_ is ElementMatch!16455) (regOne!33423 r!7292))) b!6584165))

(assert (= (and b!6583139 ((_ is Concat!25300) (regOne!33423 r!7292))) b!6584166))

(assert (= (and b!6583139 ((_ is Star!16455) (regOne!33423 r!7292))) b!6584167))

(assert (= (and b!6583139 ((_ is Union!16455) (regOne!33423 r!7292))) b!6584168))

(declare-fun b!6584171 () Bool)

(declare-fun e!3984683 () Bool)

(declare-fun tp!1816641 () Bool)

(assert (=> b!6584171 (= e!3984683 tp!1816641)))

(declare-fun b!6584169 () Bool)

(assert (=> b!6584169 (= e!3984683 tp_is_empty!42163)))

(assert (=> b!6583139 (= tp!1816554 e!3984683)))

(declare-fun b!6584170 () Bool)

(declare-fun tp!1816639 () Bool)

(declare-fun tp!1816642 () Bool)

(assert (=> b!6584170 (= e!3984683 (and tp!1816639 tp!1816642))))

(declare-fun b!6584172 () Bool)

(declare-fun tp!1816643 () Bool)

(declare-fun tp!1816640 () Bool)

(assert (=> b!6584172 (= e!3984683 (and tp!1816643 tp!1816640))))

(assert (= (and b!6583139 ((_ is ElementMatch!16455) (regTwo!33423 r!7292))) b!6584169))

(assert (= (and b!6583139 ((_ is Concat!25300) (regTwo!33423 r!7292))) b!6584170))

(assert (= (and b!6583139 ((_ is Star!16455) (regTwo!33423 r!7292))) b!6584171))

(assert (= (and b!6583139 ((_ is Union!16455) (regTwo!33423 r!7292))) b!6584172))

(declare-fun b!6584177 () Bool)

(declare-fun e!3984686 () Bool)

(declare-fun tp!1816648 () Bool)

(declare-fun tp!1816649 () Bool)

(assert (=> b!6584177 (= e!3984686 (and tp!1816648 tp!1816649))))

(assert (=> b!6583180 (= tp!1816557 e!3984686)))

(assert (= (and b!6583180 ((_ is Cons!65540) (exprs!6339 setElem!44952))) b!6584177))

(declare-fun condSetEmpty!44958 () Bool)

(assert (=> setNonEmpty!44952 (= condSetEmpty!44958 (= setRest!44952 ((as const (Array Context!11678 Bool)) false)))))

(declare-fun setRes!44958 () Bool)

(assert (=> setNonEmpty!44952 (= tp!1816553 setRes!44958)))

(declare-fun setIsEmpty!44958 () Bool)

(assert (=> setIsEmpty!44958 setRes!44958))

(declare-fun setElem!44958 () Context!11678)

(declare-fun setNonEmpty!44958 () Bool)

(declare-fun e!3984689 () Bool)

(declare-fun tp!1816655 () Bool)

(assert (=> setNonEmpty!44958 (= setRes!44958 (and tp!1816655 (inv!84384 setElem!44958) e!3984689))))

(declare-fun setRest!44958 () (InoxSet Context!11678))

(assert (=> setNonEmpty!44958 (= setRest!44952 ((_ map or) (store ((as const (Array Context!11678 Bool)) false) setElem!44958 true) setRest!44958))))

(declare-fun b!6584182 () Bool)

(declare-fun tp!1816654 () Bool)

(assert (=> b!6584182 (= e!3984689 tp!1816654)))

(assert (= (and setNonEmpty!44952 condSetEmpty!44958) setIsEmpty!44958))

(assert (= (and setNonEmpty!44952 (not condSetEmpty!44958)) setNonEmpty!44958))

(assert (= setNonEmpty!44958 b!6584182))

(declare-fun m!7363350 () Bool)

(assert (=> setNonEmpty!44958 m!7363350))

(declare-fun b!6584185 () Bool)

(declare-fun e!3984690 () Bool)

(declare-fun tp!1816658 () Bool)

(assert (=> b!6584185 (= e!3984690 tp!1816658)))

(declare-fun b!6584183 () Bool)

(assert (=> b!6584183 (= e!3984690 tp_is_empty!42163)))

(assert (=> b!6583182 (= tp!1816550 e!3984690)))

(declare-fun b!6584184 () Bool)

(declare-fun tp!1816656 () Bool)

(declare-fun tp!1816659 () Bool)

(assert (=> b!6584184 (= e!3984690 (and tp!1816656 tp!1816659))))

(declare-fun b!6584186 () Bool)

(declare-fun tp!1816660 () Bool)

(declare-fun tp!1816657 () Bool)

(assert (=> b!6584186 (= e!3984690 (and tp!1816660 tp!1816657))))

(assert (= (and b!6583182 ((_ is ElementMatch!16455) (reg!16784 r!7292))) b!6584183))

(assert (= (and b!6583182 ((_ is Concat!25300) (reg!16784 r!7292))) b!6584184))

(assert (= (and b!6583182 ((_ is Star!16455) (reg!16784 r!7292))) b!6584185))

(assert (= (and b!6583182 ((_ is Union!16455) (reg!16784 r!7292))) b!6584186))

(declare-fun b!6584187 () Bool)

(declare-fun e!3984691 () Bool)

(declare-fun tp!1816661 () Bool)

(declare-fun tp!1816662 () Bool)

(assert (=> b!6584187 (= e!3984691 (and tp!1816661 tp!1816662))))

(assert (=> b!6583151 (= tp!1816556 e!3984691)))

(assert (= (and b!6583151 ((_ is Cons!65540) (exprs!6339 (h!71990 zl!343)))) b!6584187))

(declare-fun b!6584192 () Bool)

(declare-fun e!3984694 () Bool)

(declare-fun tp!1816665 () Bool)

(assert (=> b!6584192 (= e!3984694 (and tp_is_empty!42163 tp!1816665))))

(assert (=> b!6583150 (= tp!1816555 e!3984694)))

(assert (= (and b!6583150 ((_ is Cons!65541) (t!379313 s!2326))) b!6584192))

(declare-fun b!6584195 () Bool)

(declare-fun e!3984695 () Bool)

(declare-fun tp!1816668 () Bool)

(assert (=> b!6584195 (= e!3984695 tp!1816668)))

(declare-fun b!6584193 () Bool)

(assert (=> b!6584193 (= e!3984695 tp_is_empty!42163)))

(assert (=> b!6583144 (= tp!1816559 e!3984695)))

(declare-fun b!6584194 () Bool)

(declare-fun tp!1816666 () Bool)

(declare-fun tp!1816669 () Bool)

(assert (=> b!6584194 (= e!3984695 (and tp!1816666 tp!1816669))))

(declare-fun b!6584196 () Bool)

(declare-fun tp!1816670 () Bool)

(declare-fun tp!1816667 () Bool)

(assert (=> b!6584196 (= e!3984695 (and tp!1816670 tp!1816667))))

(assert (= (and b!6583144 ((_ is ElementMatch!16455) (regOne!33422 r!7292))) b!6584193))

(assert (= (and b!6583144 ((_ is Concat!25300) (regOne!33422 r!7292))) b!6584194))

(assert (= (and b!6583144 ((_ is Star!16455) (regOne!33422 r!7292))) b!6584195))

(assert (= (and b!6583144 ((_ is Union!16455) (regOne!33422 r!7292))) b!6584196))

(declare-fun b!6584199 () Bool)

(declare-fun e!3984696 () Bool)

(declare-fun tp!1816673 () Bool)

(assert (=> b!6584199 (= e!3984696 tp!1816673)))

(declare-fun b!6584197 () Bool)

(assert (=> b!6584197 (= e!3984696 tp_is_empty!42163)))

(assert (=> b!6583144 (= tp!1816552 e!3984696)))

(declare-fun b!6584198 () Bool)

(declare-fun tp!1816671 () Bool)

(declare-fun tp!1816674 () Bool)

(assert (=> b!6584198 (= e!3984696 (and tp!1816671 tp!1816674))))

(declare-fun b!6584200 () Bool)

(declare-fun tp!1816675 () Bool)

(declare-fun tp!1816672 () Bool)

(assert (=> b!6584200 (= e!3984696 (and tp!1816675 tp!1816672))))

(assert (= (and b!6583144 ((_ is ElementMatch!16455) (regTwo!33422 r!7292))) b!6584197))

(assert (= (and b!6583144 ((_ is Concat!25300) (regTwo!33422 r!7292))) b!6584198))

(assert (= (and b!6583144 ((_ is Star!16455) (regTwo!33422 r!7292))) b!6584199))

(assert (= (and b!6583144 ((_ is Union!16455) (regTwo!33422 r!7292))) b!6584200))

(declare-fun b_lambda!249095 () Bool)

(assert (= b_lambda!249085 (or b!6583173 b_lambda!249095)))

(declare-fun bs!1684531 () Bool)

(declare-fun d!2065485 () Bool)

(assert (= bs!1684531 (and d!2065485 b!6583173)))

(assert (=> bs!1684531 (= (dynLambda!26085 lambda!366701 lt!2410465) (derivationStepZipperUp!1629 lt!2410465 (h!71989 s!2326)))))

(assert (=> bs!1684531 m!7362500))

(assert (=> d!2065403 d!2065485))

(declare-fun b_lambda!249097 () Bool)

(assert (= b_lambda!249093 (or b!6583173 b_lambda!249097)))

(declare-fun bs!1684532 () Bool)

(declare-fun d!2065487 () Bool)

(assert (= bs!1684532 (and d!2065487 b!6583173)))

(assert (=> bs!1684532 (= (dynLambda!26085 lambda!366701 lt!2410472) (derivationStepZipperUp!1629 lt!2410472 (h!71989 s!2326)))))

(assert (=> bs!1684532 m!7362488))

(assert (=> d!2065449 d!2065487))

(declare-fun b_lambda!249099 () Bool)

(assert (= b_lambda!249091 (or b!6583173 b_lambda!249099)))

(declare-fun bs!1684533 () Bool)

(declare-fun d!2065489 () Bool)

(assert (= bs!1684533 (and d!2065489 b!6583173)))

(assert (=> bs!1684533 (= (dynLambda!26085 lambda!366701 lt!2410462) (derivationStepZipperUp!1629 lt!2410462 (h!71989 s!2326)))))

(assert (=> bs!1684533 m!7362536))

(assert (=> d!2065435 d!2065489))

(declare-fun b_lambda!249101 () Bool)

(assert (= b_lambda!249089 (or b!6583173 b_lambda!249101)))

(declare-fun bs!1684534 () Bool)

(declare-fun d!2065491 () Bool)

(assert (= bs!1684534 (and d!2065491 b!6583173)))

(assert (=> bs!1684534 (= (dynLambda!26085 lambda!366701 (h!71990 zl!343)) (derivationStepZipperUp!1629 (h!71990 zl!343) (h!71989 s!2326)))))

(assert (=> bs!1684534 m!7362530))

(assert (=> d!2065427 d!2065491))

(declare-fun b_lambda!249103 () Bool)

(assert (= b_lambda!249087 (or b!6583173 b_lambda!249103)))

(declare-fun bs!1684535 () Bool)

(declare-fun d!2065493 () Bool)

(assert (= bs!1684535 (and d!2065493 b!6583173)))

(assert (=> bs!1684535 (= (dynLambda!26085 lambda!366701 lt!2410469) (derivationStepZipperUp!1629 lt!2410469 (h!71989 s!2326)))))

(assert (=> bs!1684535 m!7362508))

(assert (=> d!2065413 d!2065493))

(check-sat (not b!6584126) (not bm!574214) (not b!6584186) (not b!6583876) (not d!2065419) (not b_lambda!249099) (not b!6583977) (not bm!574227) (not b!6584199) (not bm!574206) (not b!6583929) (not b!6584025) (not b!6584146) (not b_lambda!249095) (not b!6583530) (not b!6584124) (not b!6584081) (not bm!574213) (not b!6583973) (not bm!574253) (not b!6583627) (not b_lambda!249097) (not b!6583931) (not d!2065405) (not b!6584195) (not d!2065379) (not b!6583909) (not bs!1684534) (not bs!1684532) (not setNonEmpty!44958) (not d!2065449) (not b!6584052) (not b!6584153) (not b!6583930) (not d!2065453) (not d!2065477) (not b!6583950) (not d!2065451) (not bm!574215) (not b!6583954) (not b!6583935) (not b!6584086) (not d!2065341) (not b!6584093) (not d!2065455) (not b!6584091) (not b!6584095) (not d!2065445) (not b!6584077) (not b!6584094) (not d!2065435) (not d!2065465) (not d!2065395) (not bm!574255) (not b!6583630) (not b!6584078) (not b!6584168) (not d!2065467) (not b!6584194) (not b!6583528) (not b!6584054) (not b!6583910) (not bm!574258) (not b!6584015) (not d!2065397) (not b!6583871) (not bm!574246) (not b!6583932) (not b!6584069) (not d!2065391) (not d!2065459) (not d!2065393) (not bm!574216) (not b!6584083) (not b!6584092) (not bm!574247) (not b!6584016) (not d!2065293) (not d!2065437) (not d!2065271) (not b!6584172) (not b!6583958) (not bm!574179) (not bm!574252) (not d!2065475) (not b!6584064) (not d!2065403) (not bm!574266) (not b!6583956) (not b!6584058) (not b!6584026) (not b!6584177) (not b!6584120) (not bm!574178) (not b!6584059) (not b!6583874) (not d!2065381) (not b!6584170) (not bm!574209) (not b!6584198) (not bm!574245) (not bm!574254) (not bm!574257) (not b!6583959) (not b!6584167) (not b!6584089) (not b!6583868) (not d!2065441) (not b!6584114) (not b!6584185) (not b!6584154) (not b!6583877) (not b!6584020) (not d!2065457) (not bm!574260) (not b!6583870) (not b!6584196) (not b!6584128) (not d!2065483) (not d!2065425) (not d!2065427) (not d!2065473) (not b!6584105) (not b!6584200) (not b!6584080) (not d!2065389) (not d!2065401) (not b!6584187) (not d!2065413) (not b!6584050) (not b!6584129) (not b!6584082) (not d!2065439) (not b!6584053) (not bm!574265) (not bm!574231) (not d!2065431) (not d!2065461) (not b!6584145) (not bm!574226) (not d!2065409) (not b_lambda!249101) (not b!6583529) (not d!2065385) (not b!6583972) (not b!6584140) (not bs!1684533) (not b_lambda!249103) (not b!6584166) (not b!6583520) (not bm!574208) (not b!6584090) (not d!2065463) (not b!6583899) (not b!6584111) (not b!6584143) (not b!6583933) (not d!2065285) (not b!6584057) (not d!2065407) (not b!6584184) (not b!6583524) (not bm!574264) (not b!6584192) (not b!6584138) (not bm!574219) (not b!6583952) (not bm!574212) (not b!6584011) (not d!2065433) (not b!6584130) (not d!2065399) (not bm!574207) (not d!2065261) (not b!6583526) (not bs!1684531) (not bm!574232) tp_is_empty!42163 (not bm!574259) (not b!6584182) (not b!6584021) (not b!6583872) (not b!6583953) (not b!6584171) (not bs!1684535) (not bm!574161) (not bm!574251) (not b!6583978))
(check-sat)
(get-model)

(declare-fun d!2065495 () Bool)

(assert (=> d!2065495 (= (nullable!6448 (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))) (nullableFct!2373 (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))))))

(declare-fun bs!1684536 () Bool)

(assert (= bs!1684536 d!2065495))

(declare-fun m!7363352 () Bool)

(assert (=> bs!1684536 m!7363352))

(assert (=> b!6584025 d!2065495))

(declare-fun d!2065497 () Bool)

(assert (=> d!2065497 (= (isEmpty!37801 (tail!12446 s!2326)) ((_ is Nil!65541) (tail!12446 s!2326)))))

(assert (=> b!6584120 d!2065497))

(declare-fun d!2065499 () Bool)

(assert (=> d!2065499 (= (tail!12446 s!2326) (t!379313 s!2326))))

(assert (=> b!6584120 d!2065499))

(declare-fun b!6584211 () Bool)

(declare-fun res!2700891 () Bool)

(declare-fun e!3984701 () Bool)

(assert (=> b!6584211 (=> (not res!2700891) (not e!3984701))))

(declare-fun lt!2410647 () List!65665)

(declare-fun size!40541 (List!65665) Int)

(assert (=> b!6584211 (= res!2700891 (= (size!40541 lt!2410647) (+ (size!40541 (_1!36737 (get!22764 lt!2410595))) (size!40541 (_2!36737 (get!22764 lt!2410595))))))))

(declare-fun b!6584210 () Bool)

(declare-fun e!3984702 () List!65665)

(assert (=> b!6584210 (= e!3984702 (Cons!65541 (h!71989 (_1!36737 (get!22764 lt!2410595))) (++!14601 (t!379313 (_1!36737 (get!22764 lt!2410595))) (_2!36737 (get!22764 lt!2410595)))))))

(declare-fun b!6584212 () Bool)

(assert (=> b!6584212 (= e!3984701 (or (not (= (_2!36737 (get!22764 lt!2410595)) Nil!65541)) (= lt!2410647 (_1!36737 (get!22764 lt!2410595)))))))

(declare-fun b!6584209 () Bool)

(assert (=> b!6584209 (= e!3984702 (_2!36737 (get!22764 lt!2410595)))))

(declare-fun d!2065501 () Bool)

(assert (=> d!2065501 e!3984701))

(declare-fun res!2700892 () Bool)

(assert (=> d!2065501 (=> (not res!2700892) (not e!3984701))))

(declare-fun content!12629 (List!65665) (InoxSet C!33180))

(assert (=> d!2065501 (= res!2700892 (= (content!12629 lt!2410647) ((_ map or) (content!12629 (_1!36737 (get!22764 lt!2410595))) (content!12629 (_2!36737 (get!22764 lt!2410595))))))))

(assert (=> d!2065501 (= lt!2410647 e!3984702)))

(declare-fun c!1211489 () Bool)

(assert (=> d!2065501 (= c!1211489 ((_ is Nil!65541) (_1!36737 (get!22764 lt!2410595))))))

(assert (=> d!2065501 (= (++!14601 (_1!36737 (get!22764 lt!2410595)) (_2!36737 (get!22764 lt!2410595))) lt!2410647)))

(assert (= (and d!2065501 c!1211489) b!6584209))

(assert (= (and d!2065501 (not c!1211489)) b!6584210))

(assert (= (and d!2065501 res!2700892) b!6584211))

(assert (= (and b!6584211 res!2700891) b!6584212))

(declare-fun m!7363354 () Bool)

(assert (=> b!6584211 m!7363354))

(declare-fun m!7363356 () Bool)

(assert (=> b!6584211 m!7363356))

(declare-fun m!7363358 () Bool)

(assert (=> b!6584211 m!7363358))

(declare-fun m!7363360 () Bool)

(assert (=> b!6584210 m!7363360))

(declare-fun m!7363362 () Bool)

(assert (=> d!2065501 m!7363362))

(declare-fun m!7363364 () Bool)

(assert (=> d!2065501 m!7363364))

(declare-fun m!7363366 () Bool)

(assert (=> d!2065501 m!7363366))

(assert (=> b!6583930 d!2065501))

(declare-fun d!2065503 () Bool)

(assert (=> d!2065503 (= (get!22764 lt!2410595) (v!52532 lt!2410595))))

(assert (=> b!6583930 d!2065503))

(declare-fun d!2065505 () Bool)

(assert (=> d!2065505 (= (nullable!6448 (h!71988 (exprs!6339 lt!2410465))) (nullableFct!2373 (h!71988 (exprs!6339 lt!2410465))))))

(declare-fun bs!1684537 () Bool)

(assert (= bs!1684537 d!2065505))

(declare-fun m!7363368 () Bool)

(assert (=> bs!1684537 m!7363368))

(assert (=> b!6583972 d!2065505))

(declare-fun d!2065507 () Bool)

(assert (=> d!2065507 (= (head!13361 s!2326) (h!71989 s!2326))))

(assert (=> b!6583524 d!2065507))

(declare-fun bm!574267 () Bool)

(declare-fun call!574274 () Bool)

(declare-fun c!1211491 () Bool)

(assert (=> bm!574267 (= call!574274 (validRegex!8191 (ite c!1211491 (regTwo!33423 lt!2410603) (regTwo!33422 lt!2410603))))))

(declare-fun b!6584213 () Bool)

(declare-fun e!3984704 () Bool)

(declare-fun e!3984707 () Bool)

(assert (=> b!6584213 (= e!3984704 e!3984707)))

(declare-fun c!1211490 () Bool)

(assert (=> b!6584213 (= c!1211490 ((_ is Star!16455) lt!2410603))))

(declare-fun b!6584214 () Bool)

(declare-fun e!3984703 () Bool)

(assert (=> b!6584214 (= e!3984707 e!3984703)))

(assert (=> b!6584214 (= c!1211491 ((_ is Union!16455) lt!2410603))))

(declare-fun b!6584215 () Bool)

(declare-fun e!3984706 () Bool)

(assert (=> b!6584215 (= e!3984706 call!574274)))

(declare-fun b!6584216 () Bool)

(declare-fun e!3984705 () Bool)

(assert (=> b!6584216 (= e!3984707 e!3984705)))

(declare-fun res!2700894 () Bool)

(assert (=> b!6584216 (= res!2700894 (not (nullable!6448 (reg!16784 lt!2410603))))))

(assert (=> b!6584216 (=> (not res!2700894) (not e!3984705))))

(declare-fun bm!574268 () Bool)

(declare-fun call!574272 () Bool)

(assert (=> bm!574268 (= call!574272 (validRegex!8191 (ite c!1211490 (reg!16784 lt!2410603) (ite c!1211491 (regOne!33423 lt!2410603) (regOne!33422 lt!2410603)))))))

(declare-fun b!6584218 () Bool)

(declare-fun e!3984709 () Bool)

(declare-fun e!3984708 () Bool)

(assert (=> b!6584218 (= e!3984709 e!3984708)))

(declare-fun res!2700895 () Bool)

(assert (=> b!6584218 (=> (not res!2700895) (not e!3984708))))

(declare-fun call!574273 () Bool)

(assert (=> b!6584218 (= res!2700895 call!574273)))

(declare-fun b!6584219 () Bool)

(declare-fun res!2700897 () Bool)

(assert (=> b!6584219 (=> (not res!2700897) (not e!3984706))))

(assert (=> b!6584219 (= res!2700897 call!574273)))

(assert (=> b!6584219 (= e!3984703 e!3984706)))

(declare-fun bm!574269 () Bool)

(assert (=> bm!574269 (= call!574273 call!574272)))

(declare-fun b!6584220 () Bool)

(declare-fun res!2700893 () Bool)

(assert (=> b!6584220 (=> res!2700893 e!3984709)))

(assert (=> b!6584220 (= res!2700893 (not ((_ is Concat!25300) lt!2410603)))))

(assert (=> b!6584220 (= e!3984703 e!3984709)))

(declare-fun b!6584221 () Bool)

(assert (=> b!6584221 (= e!3984705 call!574272)))

(declare-fun d!2065509 () Bool)

(declare-fun res!2700896 () Bool)

(assert (=> d!2065509 (=> res!2700896 e!3984704)))

(assert (=> d!2065509 (= res!2700896 ((_ is ElementMatch!16455) lt!2410603))))

(assert (=> d!2065509 (= (validRegex!8191 lt!2410603) e!3984704)))

(declare-fun b!6584217 () Bool)

(assert (=> b!6584217 (= e!3984708 call!574274)))

(assert (= (and d!2065509 (not res!2700896)) b!6584213))

(assert (= (and b!6584213 c!1211490) b!6584216))

(assert (= (and b!6584213 (not c!1211490)) b!6584214))

(assert (= (and b!6584216 res!2700894) b!6584221))

(assert (= (and b!6584214 c!1211491) b!6584219))

(assert (= (and b!6584214 (not c!1211491)) b!6584220))

(assert (= (and b!6584219 res!2700897) b!6584215))

(assert (= (and b!6584220 (not res!2700893)) b!6584218))

(assert (= (and b!6584218 res!2700895) b!6584217))

(assert (= (or b!6584215 b!6584217) bm!574267))

(assert (= (or b!6584219 b!6584218) bm!574269))

(assert (= (or b!6584221 bm!574269) bm!574268))

(declare-fun m!7363370 () Bool)

(assert (=> bm!574267 m!7363370))

(declare-fun m!7363372 () Bool)

(assert (=> b!6584216 m!7363372))

(declare-fun m!7363374 () Bool)

(assert (=> bm!574268 m!7363374))

(assert (=> d!2065401 d!2065509))

(declare-fun d!2065511 () Bool)

(declare-fun res!2700902 () Bool)

(declare-fun e!3984714 () Bool)

(assert (=> d!2065511 (=> res!2700902 e!3984714)))

(assert (=> d!2065511 (= res!2700902 ((_ is Nil!65540) (exprs!6339 (h!71990 zl!343))))))

(assert (=> d!2065511 (= (forall!15634 (exprs!6339 (h!71990 zl!343)) lambda!366770) e!3984714)))

(declare-fun b!6584226 () Bool)

(declare-fun e!3984715 () Bool)

(assert (=> b!6584226 (= e!3984714 e!3984715)))

(declare-fun res!2700903 () Bool)

(assert (=> b!6584226 (=> (not res!2700903) (not e!3984715))))

(declare-fun dynLambda!26086 (Int Regex!16455) Bool)

(assert (=> b!6584226 (= res!2700903 (dynLambda!26086 lambda!366770 (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun b!6584227 () Bool)

(assert (=> b!6584227 (= e!3984715 (forall!15634 (t!379312 (exprs!6339 (h!71990 zl!343))) lambda!366770))))

(assert (= (and d!2065511 (not res!2700902)) b!6584226))

(assert (= (and b!6584226 res!2700903) b!6584227))

(declare-fun b_lambda!249105 () Bool)

(assert (=> (not b_lambda!249105) (not b!6584226)))

(declare-fun m!7363376 () Bool)

(assert (=> b!6584226 m!7363376))

(declare-fun m!7363378 () Bool)

(assert (=> b!6584227 m!7363378))

(assert (=> d!2065401 d!2065511))

(assert (=> b!6583953 d!2065387))

(declare-fun bm!574270 () Bool)

(declare-fun call!574277 () Bool)

(declare-fun c!1211493 () Bool)

(assert (=> bm!574270 (= call!574277 (validRegex!8191 (ite c!1211493 (regTwo!33423 lt!2410617) (regTwo!33422 lt!2410617))))))

(declare-fun b!6584228 () Bool)

(declare-fun e!3984717 () Bool)

(declare-fun e!3984720 () Bool)

(assert (=> b!6584228 (= e!3984717 e!3984720)))

(declare-fun c!1211492 () Bool)

(assert (=> b!6584228 (= c!1211492 ((_ is Star!16455) lt!2410617))))

(declare-fun b!6584229 () Bool)

(declare-fun e!3984716 () Bool)

(assert (=> b!6584229 (= e!3984720 e!3984716)))

(assert (=> b!6584229 (= c!1211493 ((_ is Union!16455) lt!2410617))))

(declare-fun b!6584230 () Bool)

(declare-fun e!3984719 () Bool)

(assert (=> b!6584230 (= e!3984719 call!574277)))

(declare-fun b!6584231 () Bool)

(declare-fun e!3984718 () Bool)

(assert (=> b!6584231 (= e!3984720 e!3984718)))

(declare-fun res!2700905 () Bool)

(assert (=> b!6584231 (= res!2700905 (not (nullable!6448 (reg!16784 lt!2410617))))))

(assert (=> b!6584231 (=> (not res!2700905) (not e!3984718))))

(declare-fun bm!574271 () Bool)

(declare-fun call!574275 () Bool)

(assert (=> bm!574271 (= call!574275 (validRegex!8191 (ite c!1211492 (reg!16784 lt!2410617) (ite c!1211493 (regOne!33423 lt!2410617) (regOne!33422 lt!2410617)))))))

(declare-fun b!6584233 () Bool)

(declare-fun e!3984722 () Bool)

(declare-fun e!3984721 () Bool)

(assert (=> b!6584233 (= e!3984722 e!3984721)))

(declare-fun res!2700906 () Bool)

(assert (=> b!6584233 (=> (not res!2700906) (not e!3984721))))

(declare-fun call!574276 () Bool)

(assert (=> b!6584233 (= res!2700906 call!574276)))

(declare-fun b!6584234 () Bool)

(declare-fun res!2700908 () Bool)

(assert (=> b!6584234 (=> (not res!2700908) (not e!3984719))))

(assert (=> b!6584234 (= res!2700908 call!574276)))

(assert (=> b!6584234 (= e!3984716 e!3984719)))

(declare-fun bm!574272 () Bool)

(assert (=> bm!574272 (= call!574276 call!574275)))

(declare-fun b!6584235 () Bool)

(declare-fun res!2700904 () Bool)

(assert (=> b!6584235 (=> res!2700904 e!3984722)))

(assert (=> b!6584235 (= res!2700904 (not ((_ is Concat!25300) lt!2410617)))))

(assert (=> b!6584235 (= e!3984716 e!3984722)))

(declare-fun b!6584236 () Bool)

(assert (=> b!6584236 (= e!3984718 call!574275)))

(declare-fun d!2065513 () Bool)

(declare-fun res!2700907 () Bool)

(assert (=> d!2065513 (=> res!2700907 e!3984717)))

(assert (=> d!2065513 (= res!2700907 ((_ is ElementMatch!16455) lt!2410617))))

(assert (=> d!2065513 (= (validRegex!8191 lt!2410617) e!3984717)))

(declare-fun b!6584232 () Bool)

(assert (=> b!6584232 (= e!3984721 call!574277)))

(assert (= (and d!2065513 (not res!2700907)) b!6584228))

(assert (= (and b!6584228 c!1211492) b!6584231))

(assert (= (and b!6584228 (not c!1211492)) b!6584229))

(assert (= (and b!6584231 res!2700905) b!6584236))

(assert (= (and b!6584229 c!1211493) b!6584234))

(assert (= (and b!6584229 (not c!1211493)) b!6584235))

(assert (= (and b!6584234 res!2700908) b!6584230))

(assert (= (and b!6584235 (not res!2700904)) b!6584233))

(assert (= (and b!6584233 res!2700906) b!6584232))

(assert (= (or b!6584230 b!6584232) bm!574270))

(assert (= (or b!6584234 b!6584233) bm!574272))

(assert (= (or b!6584236 bm!574272) bm!574271))

(declare-fun m!7363380 () Bool)

(assert (=> bm!574270 m!7363380))

(declare-fun m!7363382 () Bool)

(assert (=> b!6584231 m!7363382))

(declare-fun m!7363384 () Bool)

(assert (=> bm!574271 m!7363384))

(assert (=> d!2065441 d!2065513))

(declare-fun bs!1684538 () Bool)

(declare-fun d!2065515 () Bool)

(assert (= bs!1684538 (and d!2065515 d!2065401)))

(declare-fun lambda!366796 () Int)

(assert (=> bs!1684538 (= lambda!366796 lambda!366770)))

(declare-fun bs!1684539 () Bool)

(assert (= bs!1684539 (and d!2065515 d!2065261)))

(assert (=> bs!1684539 (= lambda!366796 lambda!366714)))

(declare-fun bs!1684540 () Bool)

(assert (= bs!1684540 (and d!2065515 d!2065477)))

(assert (=> bs!1684540 (= lambda!366796 lambda!366783)))

(declare-fun bs!1684541 () Bool)

(assert (= bs!1684541 (and d!2065515 d!2065379)))

(assert (=> bs!1684541 (= lambda!366796 lambda!366760)))

(declare-fun bs!1684542 () Bool)

(assert (= bs!1684542 (and d!2065515 d!2065439)))

(assert (=> bs!1684542 (= lambda!366796 lambda!366779)))

(declare-fun bs!1684543 () Bool)

(assert (= bs!1684543 (and d!2065515 d!2065437)))

(assert (=> bs!1684543 (= lambda!366796 lambda!366776)))

(declare-fun b!6584237 () Bool)

(declare-fun e!3984724 () Bool)

(assert (=> b!6584237 (= e!3984724 (isEmpty!37797 (t!379312 (unfocusZipperList!1876 (Cons!65542 lt!2410469 Nil!65542)))))))

(declare-fun b!6584238 () Bool)

(declare-fun e!3984726 () Regex!16455)

(assert (=> b!6584238 (= e!3984726 (h!71988 (unfocusZipperList!1876 (Cons!65542 lt!2410469 Nil!65542))))))

(declare-fun b!6584239 () Bool)

(declare-fun e!3984727 () Regex!16455)

(assert (=> b!6584239 (= e!3984727 (Union!16455 (h!71988 (unfocusZipperList!1876 (Cons!65542 lt!2410469 Nil!65542))) (generalisedUnion!2299 (t!379312 (unfocusZipperList!1876 (Cons!65542 lt!2410469 Nil!65542))))))))

(declare-fun b!6584240 () Bool)

(declare-fun e!3984728 () Bool)

(declare-fun e!3984723 () Bool)

(assert (=> b!6584240 (= e!3984728 e!3984723)))

(declare-fun c!1211496 () Bool)

(assert (=> b!6584240 (= c!1211496 (isEmpty!37797 (tail!12447 (unfocusZipperList!1876 (Cons!65542 lt!2410469 Nil!65542)))))))

(declare-fun b!6584241 () Bool)

(declare-fun e!3984725 () Bool)

(assert (=> b!6584241 (= e!3984725 e!3984728)))

(declare-fun c!1211494 () Bool)

(assert (=> b!6584241 (= c!1211494 (isEmpty!37797 (unfocusZipperList!1876 (Cons!65542 lt!2410469 Nil!65542))))))

(declare-fun b!6584242 () Bool)

(assert (=> b!6584242 (= e!3984727 EmptyLang!16455)))

(declare-fun b!6584243 () Bool)

(assert (=> b!6584243 (= e!3984726 e!3984727)))

(declare-fun c!1211495 () Bool)

(assert (=> b!6584243 (= c!1211495 ((_ is Cons!65540) (unfocusZipperList!1876 (Cons!65542 lt!2410469 Nil!65542))))))

(declare-fun b!6584245 () Bool)

(declare-fun lt!2410648 () Regex!16455)

(assert (=> b!6584245 (= e!3984723 (isUnion!1272 lt!2410648))))

(declare-fun b!6584246 () Bool)

(assert (=> b!6584246 (= e!3984723 (= lt!2410648 (head!13362 (unfocusZipperList!1876 (Cons!65542 lt!2410469 Nil!65542)))))))

(declare-fun b!6584244 () Bool)

(assert (=> b!6584244 (= e!3984728 (isEmptyLang!1842 lt!2410648))))

(assert (=> d!2065515 e!3984725))

(declare-fun res!2700909 () Bool)

(assert (=> d!2065515 (=> (not res!2700909) (not e!3984725))))

(assert (=> d!2065515 (= res!2700909 (validRegex!8191 lt!2410648))))

(assert (=> d!2065515 (= lt!2410648 e!3984726)))

(declare-fun c!1211497 () Bool)

(assert (=> d!2065515 (= c!1211497 e!3984724)))

(declare-fun res!2700910 () Bool)

(assert (=> d!2065515 (=> (not res!2700910) (not e!3984724))))

(assert (=> d!2065515 (= res!2700910 ((_ is Cons!65540) (unfocusZipperList!1876 (Cons!65542 lt!2410469 Nil!65542))))))

(assert (=> d!2065515 (forall!15634 (unfocusZipperList!1876 (Cons!65542 lt!2410469 Nil!65542)) lambda!366796)))

(assert (=> d!2065515 (= (generalisedUnion!2299 (unfocusZipperList!1876 (Cons!65542 lt!2410469 Nil!65542))) lt!2410648)))

(assert (= (and d!2065515 res!2700910) b!6584237))

(assert (= (and d!2065515 c!1211497) b!6584238))

(assert (= (and d!2065515 (not c!1211497)) b!6584243))

(assert (= (and b!6584243 c!1211495) b!6584239))

(assert (= (and b!6584243 (not c!1211495)) b!6584242))

(assert (= (and d!2065515 res!2700909) b!6584241))

(assert (= (and b!6584241 c!1211494) b!6584244))

(assert (= (and b!6584241 (not c!1211494)) b!6584240))

(assert (= (and b!6584240 c!1211496) b!6584246))

(assert (= (and b!6584240 (not c!1211496)) b!6584245))

(assert (=> b!6584241 m!7363230))

(declare-fun m!7363386 () Bool)

(assert (=> b!6584241 m!7363386))

(declare-fun m!7363388 () Bool)

(assert (=> b!6584239 m!7363388))

(assert (=> b!6584240 m!7363230))

(declare-fun m!7363390 () Bool)

(assert (=> b!6584240 m!7363390))

(assert (=> b!6584240 m!7363390))

(declare-fun m!7363392 () Bool)

(assert (=> b!6584240 m!7363392))

(assert (=> b!6584246 m!7363230))

(declare-fun m!7363394 () Bool)

(assert (=> b!6584246 m!7363394))

(declare-fun m!7363396 () Bool)

(assert (=> b!6584245 m!7363396))

(declare-fun m!7363398 () Bool)

(assert (=> d!2065515 m!7363398))

(assert (=> d!2065515 m!7363230))

(declare-fun m!7363400 () Bool)

(assert (=> d!2065515 m!7363400))

(declare-fun m!7363402 () Bool)

(assert (=> b!6584237 m!7363402))

(declare-fun m!7363404 () Bool)

(assert (=> b!6584244 m!7363404))

(assert (=> d!2065441 d!2065515))

(declare-fun bs!1684544 () Bool)

(declare-fun d!2065517 () Bool)

(assert (= bs!1684544 (and d!2065517 d!2065261)))

(declare-fun lambda!366797 () Int)

(assert (=> bs!1684544 (= lambda!366797 lambda!366714)))

(declare-fun bs!1684545 () Bool)

(assert (= bs!1684545 (and d!2065517 d!2065477)))

(assert (=> bs!1684545 (= lambda!366797 lambda!366783)))

(declare-fun bs!1684546 () Bool)

(assert (= bs!1684546 (and d!2065517 d!2065379)))

(assert (=> bs!1684546 (= lambda!366797 lambda!366760)))

(declare-fun bs!1684547 () Bool)

(assert (= bs!1684547 (and d!2065517 d!2065439)))

(assert (=> bs!1684547 (= lambda!366797 lambda!366779)))

(declare-fun bs!1684548 () Bool)

(assert (= bs!1684548 (and d!2065517 d!2065437)))

(assert (=> bs!1684548 (= lambda!366797 lambda!366776)))

(declare-fun bs!1684549 () Bool)

(assert (= bs!1684549 (and d!2065517 d!2065401)))

(assert (=> bs!1684549 (= lambda!366797 lambda!366770)))

(declare-fun bs!1684550 () Bool)

(assert (= bs!1684550 (and d!2065517 d!2065515)))

(assert (=> bs!1684550 (= lambda!366797 lambda!366796)))

(declare-fun lt!2410649 () List!65664)

(assert (=> d!2065517 (forall!15634 lt!2410649 lambda!366797)))

(declare-fun e!3984729 () List!65664)

(assert (=> d!2065517 (= lt!2410649 e!3984729)))

(declare-fun c!1211498 () Bool)

(assert (=> d!2065517 (= c!1211498 ((_ is Cons!65542) (Cons!65542 lt!2410469 Nil!65542)))))

(assert (=> d!2065517 (= (unfocusZipperList!1876 (Cons!65542 lt!2410469 Nil!65542)) lt!2410649)))

(declare-fun b!6584247 () Bool)

(assert (=> b!6584247 (= e!3984729 (Cons!65540 (generalisedConcat!2052 (exprs!6339 (h!71990 (Cons!65542 lt!2410469 Nil!65542)))) (unfocusZipperList!1876 (t!379314 (Cons!65542 lt!2410469 Nil!65542)))))))

(declare-fun b!6584248 () Bool)

(assert (=> b!6584248 (= e!3984729 Nil!65540)))

(assert (= (and d!2065517 c!1211498) b!6584247))

(assert (= (and d!2065517 (not c!1211498)) b!6584248))

(declare-fun m!7363406 () Bool)

(assert (=> d!2065517 m!7363406))

(declare-fun m!7363408 () Bool)

(assert (=> b!6584247 m!7363408))

(declare-fun m!7363410 () Bool)

(assert (=> b!6584247 m!7363410))

(assert (=> d!2065441 d!2065517))

(assert (=> bs!1684533 d!2065423))

(declare-fun d!2065519 () Bool)

(declare-fun e!3984731 () Bool)

(assert (=> d!2065519 e!3984731))

(declare-fun res!2700912 () Bool)

(assert (=> d!2065519 (=> (not res!2700912) (not e!3984731))))

(declare-fun lt!2410650 () Int)

(assert (=> d!2065519 (= res!2700912 (> lt!2410650 0))))

(declare-fun e!3984733 () Int)

(assert (=> d!2065519 (= lt!2410650 e!3984733)))

(declare-fun c!1211502 () Bool)

(assert (=> d!2065519 (= c!1211502 ((_ is ElementMatch!16455) (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))))))

(assert (=> d!2065519 (= (regexDepth!352 (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))) lt!2410650)))

(declare-fun b!6584249 () Bool)

(declare-fun e!3984734 () Bool)

(assert (=> b!6584249 (= e!3984734 (= lt!2410650 1))))

(declare-fun c!1211504 () Bool)

(declare-fun b!6584250 () Bool)

(assert (=> b!6584250 (= c!1211504 ((_ is Union!16455) (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))))))

(declare-fun e!3984738 () Int)

(declare-fun e!3984730 () Int)

(assert (=> b!6584250 (= e!3984738 e!3984730)))

(declare-fun bm!574273 () Bool)

(declare-fun call!574282 () Int)

(declare-fun c!1211499 () Bool)

(assert (=> bm!574273 (= call!574282 (regexDepth!352 (ite c!1211499 (regOne!33423 (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))) (regTwo!33422 (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))))))))

(declare-fun b!6584251 () Bool)

(declare-fun call!574280 () Int)

(assert (=> b!6584251 (= e!3984734 (> lt!2410650 call!574280))))

(declare-fun b!6584252 () Bool)

(declare-fun e!3984737 () Bool)

(assert (=> b!6584252 (= e!3984731 e!3984737)))

(assert (=> b!6584252 (= c!1211499 ((_ is Union!16455) (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))))))

(declare-fun bm!574274 () Bool)

(declare-fun call!574279 () Int)

(assert (=> bm!574274 (= call!574279 (regexDepth!352 (ite c!1211504 (regOne!33423 (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))) (regTwo!33422 (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))))))))

(declare-fun b!6584253 () Bool)

(declare-fun e!3984739 () Bool)

(assert (=> b!6584253 (= e!3984737 e!3984739)))

(declare-fun res!2700913 () Bool)

(assert (=> b!6584253 (= res!2700913 (> lt!2410650 call!574282))))

(assert (=> b!6584253 (=> (not res!2700913) (not e!3984739))))

(declare-fun b!6584254 () Bool)

(declare-fun e!3984735 () Int)

(assert (=> b!6584254 (= e!3984730 e!3984735)))

(declare-fun c!1211505 () Bool)

(assert (=> b!6584254 (= c!1211505 ((_ is Concat!25300) (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))))))

(declare-fun b!6584255 () Bool)

(assert (=> b!6584255 (= e!3984733 1)))

(declare-fun b!6584256 () Bool)

(declare-fun call!574284 () Int)

(assert (=> b!6584256 (= e!3984739 (> lt!2410650 call!574284))))

(declare-fun b!6584257 () Bool)

(declare-fun e!3984736 () Bool)

(assert (=> b!6584257 (= e!3984736 (> lt!2410650 call!574282))))

(declare-fun bm!574275 () Bool)

(declare-fun call!574281 () Int)

(declare-fun call!574283 () Int)

(assert (=> bm!574275 (= call!574281 (maxBigInt!0 (ite c!1211504 call!574279 call!574283) (ite c!1211504 call!574283 call!574279)))))

(declare-fun b!6584258 () Bool)

(assert (=> b!6584258 (= e!3984735 (+ 1 call!574281))))

(declare-fun b!6584259 () Bool)

(declare-fun e!3984732 () Bool)

(assert (=> b!6584259 (= e!3984737 e!3984732)))

(declare-fun c!1211500 () Bool)

(assert (=> b!6584259 (= c!1211500 ((_ is Concat!25300) (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))))))

(declare-fun call!574278 () Int)

(declare-fun bm!574276 () Bool)

(declare-fun c!1211503 () Bool)

(assert (=> bm!574276 (= call!574278 (regexDepth!352 (ite c!1211503 (reg!16784 (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))) (ite c!1211504 (regTwo!33423 (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))) (regOne!33422 (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486))))))))))

(declare-fun b!6584260 () Bool)

(assert (=> b!6584260 (= e!3984733 e!3984738)))

(assert (=> b!6584260 (= c!1211503 ((_ is Star!16455) (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))))))

(declare-fun b!6584261 () Bool)

(assert (=> b!6584261 (= e!3984730 (+ 1 call!574281))))

(declare-fun b!6584262 () Bool)

(assert (=> b!6584262 (= e!3984738 (+ 1 call!574278))))

(declare-fun bm!574277 () Bool)

(assert (=> bm!574277 (= call!574280 call!574284)))

(declare-fun b!6584263 () Bool)

(assert (=> b!6584263 (= e!3984735 1)))

(declare-fun b!6584264 () Bool)

(declare-fun res!2700911 () Bool)

(assert (=> b!6584264 (=> (not res!2700911) (not e!3984736))))

(assert (=> b!6584264 (= res!2700911 (> lt!2410650 call!574280))))

(assert (=> b!6584264 (= e!3984732 e!3984736)))

(declare-fun c!1211501 () Bool)

(declare-fun b!6584265 () Bool)

(assert (=> b!6584265 (= c!1211501 ((_ is Star!16455) (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))))))

(assert (=> b!6584265 (= e!3984732 e!3984734)))

(declare-fun bm!574278 () Bool)

(assert (=> bm!574278 (= call!574283 call!574278)))

(declare-fun bm!574279 () Bool)

(assert (=> bm!574279 (= call!574284 (regexDepth!352 (ite c!1211499 (regTwo!33423 (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))) (ite c!1211500 (regOne!33422 (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486)))) (reg!16784 (ite c!1211376 (reg!16784 lt!2410486) (ite c!1211377 (regTwo!33423 lt!2410486) (regOne!33422 lt!2410486))))))))))

(assert (= (and d!2065519 c!1211502) b!6584255))

(assert (= (and d!2065519 (not c!1211502)) b!6584260))

(assert (= (and b!6584260 c!1211503) b!6584262))

(assert (= (and b!6584260 (not c!1211503)) b!6584250))

(assert (= (and b!6584250 c!1211504) b!6584261))

(assert (= (and b!6584250 (not c!1211504)) b!6584254))

(assert (= (and b!6584254 c!1211505) b!6584258))

(assert (= (and b!6584254 (not c!1211505)) b!6584263))

(assert (= (or b!6584261 b!6584258) bm!574278))

(assert (= (or b!6584261 b!6584258) bm!574274))

(assert (= (or b!6584261 b!6584258) bm!574275))

(assert (= (or b!6584262 bm!574278) bm!574276))

(assert (= (and d!2065519 res!2700912) b!6584252))

(assert (= (and b!6584252 c!1211499) b!6584253))

(assert (= (and b!6584252 (not c!1211499)) b!6584259))

(assert (= (and b!6584253 res!2700913) b!6584256))

(assert (= (and b!6584259 c!1211500) b!6584264))

(assert (= (and b!6584259 (not c!1211500)) b!6584265))

(assert (= (and b!6584264 res!2700911) b!6584257))

(assert (= (and b!6584265 c!1211501) b!6584251))

(assert (= (and b!6584265 (not c!1211501)) b!6584249))

(assert (= (or b!6584264 b!6584251) bm!574277))

(assert (= (or b!6584256 bm!574277) bm!574279))

(assert (= (or b!6584253 b!6584257) bm!574273))

(declare-fun m!7363412 () Bool)

(assert (=> bm!574275 m!7363412))

(declare-fun m!7363414 () Bool)

(assert (=> bm!574276 m!7363414))

(declare-fun m!7363416 () Bool)

(assert (=> bm!574279 m!7363416))

(declare-fun m!7363418 () Bool)

(assert (=> bm!574273 m!7363418))

(declare-fun m!7363420 () Bool)

(assert (=> bm!574274 m!7363420))

(assert (=> bm!574216 d!2065519))

(declare-fun d!2065521 () Bool)

(assert (=> d!2065521 (= (isUnion!1272 lt!2410613) ((_ is Union!16455) lt!2410613))))

(assert (=> b!6584058 d!2065521))

(declare-fun d!2065523 () Bool)

(assert (=> d!2065523 (= ($colon$colon!2296 (exprs!6339 lt!2410469) (ite (or c!1211467 c!1211466) (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (regOne!33422 r!7292)))) (Cons!65540 (ite (or c!1211467 c!1211466) (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (regOne!33422 r!7292))) (exprs!6339 lt!2410469)))))

(assert (=> bm!574258 d!2065523))

(declare-fun d!2065525 () Bool)

(assert (=> d!2065525 (= (nullable!6448 (h!71988 (exprs!6339 lt!2410462))) (nullableFct!2373 (h!71988 (exprs!6339 lt!2410462))))))

(declare-fun bs!1684551 () Bool)

(assert (= bs!1684551 d!2065525))

(declare-fun m!7363422 () Bool)

(assert (=> bs!1684551 m!7363422))

(assert (=> b!6584020 d!2065525))

(assert (=> b!6583528 d!2065497))

(assert (=> b!6583528 d!2065499))

(declare-fun d!2065527 () Bool)

(declare-fun res!2700918 () Bool)

(declare-fun e!3984744 () Bool)

(assert (=> d!2065527 (=> res!2700918 e!3984744)))

(assert (=> d!2065527 (= res!2700918 ((_ is Nil!65542) lt!2410483))))

(assert (=> d!2065527 (= (forall!15635 lt!2410483 lambda!366795) e!3984744)))

(declare-fun b!6584270 () Bool)

(declare-fun e!3984745 () Bool)

(assert (=> b!6584270 (= e!3984744 e!3984745)))

(declare-fun res!2700919 () Bool)

(assert (=> b!6584270 (=> (not res!2700919) (not e!3984745))))

(declare-fun dynLambda!26087 (Int Context!11678) Bool)

(assert (=> b!6584270 (= res!2700919 (dynLambda!26087 lambda!366795 (h!71990 lt!2410483)))))

(declare-fun b!6584271 () Bool)

(assert (=> b!6584271 (= e!3984745 (forall!15635 (t!379314 lt!2410483) lambda!366795))))

(assert (= (and d!2065527 (not res!2700918)) b!6584270))

(assert (= (and b!6584270 res!2700919) b!6584271))

(declare-fun b_lambda!249107 () Bool)

(assert (=> (not b_lambda!249107) (not b!6584270)))

(declare-fun m!7363424 () Bool)

(assert (=> b!6584270 m!7363424))

(declare-fun m!7363426 () Bool)

(assert (=> b!6584271 m!7363426))

(assert (=> b!6584145 d!2065527))

(assert (=> b!6584124 d!2065507))

(declare-fun d!2065529 () Bool)

(assert (=> d!2065529 (= (isEmpty!37797 (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343))))) ((_ is Nil!65540) (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343))))))))

(assert (=> b!6583871 d!2065529))

(assert (=> d!2065395 d!2065389))

(declare-fun bm!574280 () Bool)

(declare-fun call!574287 () Bool)

(declare-fun c!1211507 () Bool)

(assert (=> bm!574280 (= call!574287 (validRegex!8191 (ite c!1211507 (regTwo!33423 (regOne!33422 r!7292)) (regTwo!33422 (regOne!33422 r!7292)))))))

(declare-fun b!6584272 () Bool)

(declare-fun e!3984747 () Bool)

(declare-fun e!3984750 () Bool)

(assert (=> b!6584272 (= e!3984747 e!3984750)))

(declare-fun c!1211506 () Bool)

(assert (=> b!6584272 (= c!1211506 ((_ is Star!16455) (regOne!33422 r!7292)))))

(declare-fun b!6584273 () Bool)

(declare-fun e!3984746 () Bool)

(assert (=> b!6584273 (= e!3984750 e!3984746)))

(assert (=> b!6584273 (= c!1211507 ((_ is Union!16455) (regOne!33422 r!7292)))))

(declare-fun b!6584274 () Bool)

(declare-fun e!3984749 () Bool)

(assert (=> b!6584274 (= e!3984749 call!574287)))

(declare-fun b!6584275 () Bool)

(declare-fun e!3984748 () Bool)

(assert (=> b!6584275 (= e!3984750 e!3984748)))

(declare-fun res!2700921 () Bool)

(assert (=> b!6584275 (= res!2700921 (not (nullable!6448 (reg!16784 (regOne!33422 r!7292)))))))

(assert (=> b!6584275 (=> (not res!2700921) (not e!3984748))))

(declare-fun call!574285 () Bool)

(declare-fun bm!574281 () Bool)

(assert (=> bm!574281 (= call!574285 (validRegex!8191 (ite c!1211506 (reg!16784 (regOne!33422 r!7292)) (ite c!1211507 (regOne!33423 (regOne!33422 r!7292)) (regOne!33422 (regOne!33422 r!7292))))))))

(declare-fun b!6584277 () Bool)

(declare-fun e!3984752 () Bool)

(declare-fun e!3984751 () Bool)

(assert (=> b!6584277 (= e!3984752 e!3984751)))

(declare-fun res!2700922 () Bool)

(assert (=> b!6584277 (=> (not res!2700922) (not e!3984751))))

(declare-fun call!574286 () Bool)

(assert (=> b!6584277 (= res!2700922 call!574286)))

(declare-fun b!6584278 () Bool)

(declare-fun res!2700924 () Bool)

(assert (=> b!6584278 (=> (not res!2700924) (not e!3984749))))

(assert (=> b!6584278 (= res!2700924 call!574286)))

(assert (=> b!6584278 (= e!3984746 e!3984749)))

(declare-fun bm!574282 () Bool)

(assert (=> bm!574282 (= call!574286 call!574285)))

(declare-fun b!6584279 () Bool)

(declare-fun res!2700920 () Bool)

(assert (=> b!6584279 (=> res!2700920 e!3984752)))

(assert (=> b!6584279 (= res!2700920 (not ((_ is Concat!25300) (regOne!33422 r!7292))))))

(assert (=> b!6584279 (= e!3984746 e!3984752)))

(declare-fun b!6584280 () Bool)

(assert (=> b!6584280 (= e!3984748 call!574285)))

(declare-fun d!2065531 () Bool)

(declare-fun res!2700923 () Bool)

(assert (=> d!2065531 (=> res!2700923 e!3984747)))

(assert (=> d!2065531 (= res!2700923 ((_ is ElementMatch!16455) (regOne!33422 r!7292)))))

(assert (=> d!2065531 (= (validRegex!8191 (regOne!33422 r!7292)) e!3984747)))

(declare-fun b!6584276 () Bool)

(assert (=> b!6584276 (= e!3984751 call!574287)))

(assert (= (and d!2065531 (not res!2700923)) b!6584272))

(assert (= (and b!6584272 c!1211506) b!6584275))

(assert (= (and b!6584272 (not c!1211506)) b!6584273))

(assert (= (and b!6584275 res!2700921) b!6584280))

(assert (= (and b!6584273 c!1211507) b!6584278))

(assert (= (and b!6584273 (not c!1211507)) b!6584279))

(assert (= (and b!6584278 res!2700924) b!6584274))

(assert (= (and b!6584279 (not res!2700920)) b!6584277))

(assert (= (and b!6584277 res!2700922) b!6584276))

(assert (= (or b!6584274 b!6584276) bm!574280))

(assert (= (or b!6584278 b!6584277) bm!574282))

(assert (= (or b!6584280 bm!574282) bm!574281))

(declare-fun m!7363428 () Bool)

(assert (=> bm!574280 m!7363428))

(declare-fun m!7363430 () Bool)

(assert (=> b!6584275 m!7363430))

(declare-fun m!7363432 () Bool)

(assert (=> bm!574281 m!7363432))

(assert (=> d!2065395 d!2065531))

(assert (=> d!2065395 d!2065399))

(declare-fun d!2065533 () Bool)

(assert (=> d!2065533 (= (Exists!3525 lambda!366763) (choose!49158 lambda!366763))))

(declare-fun bs!1684552 () Bool)

(assert (= bs!1684552 d!2065533))

(declare-fun m!7363434 () Bool)

(assert (=> bs!1684552 m!7363434))

(assert (=> d!2065395 d!2065533))

(declare-fun bs!1684553 () Bool)

(declare-fun d!2065535 () Bool)

(assert (= bs!1684553 (and d!2065535 b!6583175)))

(declare-fun lambda!366800 () Int)

(assert (=> bs!1684553 (= lambda!366800 lambda!366699)))

(declare-fun bs!1684554 () Bool)

(assert (= bs!1684554 (and d!2065535 b!6583623)))

(assert (=> bs!1684554 (not (= lambda!366800 lambda!366746))))

(declare-fun bs!1684555 () Bool)

(assert (= bs!1684555 (and d!2065535 d!2065397)))

(assert (=> bs!1684555 (= lambda!366800 lambda!366768)))

(declare-fun bs!1684556 () Bool)

(assert (= bs!1684556 (and d!2065535 b!6584115)))

(assert (=> bs!1684556 (not (= lambda!366800 lambda!366782))))

(declare-fun bs!1684557 () Bool)

(assert (= bs!1684557 (and d!2065535 d!2065395)))

(assert (=> bs!1684557 (= lambda!366800 lambda!366763)))

(assert (=> bs!1684555 (not (= lambda!366800 lambda!366769))))

(assert (=> bs!1684553 (not (= lambda!366800 lambda!366700))))

(declare-fun bs!1684558 () Bool)

(assert (= bs!1684558 (and d!2065535 b!6583631)))

(assert (=> bs!1684558 (not (= lambda!366800 lambda!366747))))

(declare-fun bs!1684559 () Bool)

(assert (= bs!1684559 (and d!2065535 b!6584107)))

(assert (=> bs!1684559 (not (= lambda!366800 lambda!366781))))

(assert (=> d!2065535 true))

(assert (=> d!2065535 true))

(assert (=> d!2065535 true))

(assert (=> d!2065535 (= (isDefined!13049 (findConcatSeparation!2760 (regOne!33422 r!7292) (regTwo!33422 r!7292) Nil!65541 s!2326 s!2326)) (Exists!3525 lambda!366800))))

(assert (=> d!2065535 true))

(declare-fun _$89!2798 () Unit!159155)

(assert (=> d!2065535 (= (choose!49159 (regOne!33422 r!7292) (regTwo!33422 r!7292) s!2326) _$89!2798)))

(declare-fun bs!1684560 () Bool)

(assert (= bs!1684560 d!2065535))

(assert (=> bs!1684560 m!7362568))

(assert (=> bs!1684560 m!7362568))

(assert (=> bs!1684560 m!7362570))

(declare-fun m!7363436 () Bool)

(assert (=> bs!1684560 m!7363436))

(assert (=> d!2065395 d!2065535))

(assert (=> b!6584089 d!2065385))

(declare-fun d!2065537 () Bool)

(declare-fun e!3984756 () Bool)

(assert (=> d!2065537 e!3984756))

(declare-fun res!2700930 () Bool)

(assert (=> d!2065537 (=> (not res!2700930) (not e!3984756))))

(declare-fun lt!2410651 () Int)

(assert (=> d!2065537 (= res!2700930 (> lt!2410651 0))))

(declare-fun e!3984758 () Int)

(assert (=> d!2065537 (= lt!2410651 e!3984758)))

(declare-fun c!1211511 () Bool)

(assert (=> d!2065537 (= c!1211511 ((_ is ElementMatch!16455) (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(assert (=> d!2065537 (= (regexDepth!352 (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))) lt!2410651)))

(declare-fun b!6584285 () Bool)

(declare-fun e!3984759 () Bool)

(assert (=> b!6584285 (= e!3984759 (= lt!2410651 1))))

(declare-fun b!6584286 () Bool)

(declare-fun c!1211513 () Bool)

(assert (=> b!6584286 (= c!1211513 ((_ is Union!16455) (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(declare-fun e!3984763 () Int)

(declare-fun e!3984755 () Int)

(assert (=> b!6584286 (= e!3984763 e!3984755)))

(declare-fun c!1211508 () Bool)

(declare-fun call!574292 () Int)

(declare-fun bm!574283 () Bool)

(assert (=> bm!574283 (= call!574292 (regexDepth!352 (ite c!1211508 (regOne!33423 (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))) (regTwo!33422 (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))))

(declare-fun b!6584287 () Bool)

(declare-fun call!574290 () Int)

(assert (=> b!6584287 (= e!3984759 (> lt!2410651 call!574290))))

(declare-fun b!6584288 () Bool)

(declare-fun e!3984762 () Bool)

(assert (=> b!6584288 (= e!3984756 e!3984762)))

(assert (=> b!6584288 (= c!1211508 ((_ is Union!16455) (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(declare-fun call!574289 () Int)

(declare-fun bm!574284 () Bool)

(assert (=> bm!574284 (= call!574289 (regexDepth!352 (ite c!1211513 (regOne!33423 (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))) (regTwo!33422 (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))))

(declare-fun b!6584289 () Bool)

(declare-fun e!3984764 () Bool)

(assert (=> b!6584289 (= e!3984762 e!3984764)))

(declare-fun res!2700931 () Bool)

(assert (=> b!6584289 (= res!2700931 (> lt!2410651 call!574292))))

(assert (=> b!6584289 (=> (not res!2700931) (not e!3984764))))

(declare-fun b!6584290 () Bool)

(declare-fun e!3984760 () Int)

(assert (=> b!6584290 (= e!3984755 e!3984760)))

(declare-fun c!1211514 () Bool)

(assert (=> b!6584290 (= c!1211514 ((_ is Concat!25300) (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(declare-fun b!6584291 () Bool)

(assert (=> b!6584291 (= e!3984758 1)))

(declare-fun b!6584292 () Bool)

(declare-fun call!574294 () Int)

(assert (=> b!6584292 (= e!3984764 (> lt!2410651 call!574294))))

(declare-fun b!6584293 () Bool)

(declare-fun e!3984761 () Bool)

(assert (=> b!6584293 (= e!3984761 (> lt!2410651 call!574292))))

(declare-fun call!574291 () Int)

(declare-fun bm!574285 () Bool)

(declare-fun call!574293 () Int)

(assert (=> bm!574285 (= call!574291 (maxBigInt!0 (ite c!1211513 call!574289 call!574293) (ite c!1211513 call!574293 call!574289)))))

(declare-fun b!6584294 () Bool)

(assert (=> b!6584294 (= e!3984760 (+ 1 call!574291))))

(declare-fun b!6584295 () Bool)

(declare-fun e!3984757 () Bool)

(assert (=> b!6584295 (= e!3984762 e!3984757)))

(declare-fun c!1211509 () Bool)

(assert (=> b!6584295 (= c!1211509 ((_ is Concat!25300) (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(declare-fun bm!574286 () Bool)

(declare-fun call!574288 () Int)

(declare-fun c!1211512 () Bool)

(assert (=> bm!574286 (= call!574288 (regexDepth!352 (ite c!1211512 (reg!16784 (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))) (ite c!1211513 (regTwo!33423 (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))) (regOne!33422 (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486)))))))))

(declare-fun b!6584296 () Bool)

(assert (=> b!6584296 (= e!3984758 e!3984763)))

(assert (=> b!6584296 (= c!1211512 ((_ is Star!16455) (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(declare-fun b!6584297 () Bool)

(assert (=> b!6584297 (= e!3984755 (+ 1 call!574291))))

(declare-fun b!6584298 () Bool)

(assert (=> b!6584298 (= e!3984763 (+ 1 call!574288))))

(declare-fun bm!574287 () Bool)

(assert (=> bm!574287 (= call!574290 call!574294)))

(declare-fun b!6584299 () Bool)

(assert (=> b!6584299 (= e!3984760 1)))

(declare-fun b!6584300 () Bool)

(declare-fun res!2700929 () Bool)

(assert (=> b!6584300 (=> (not res!2700929) (not e!3984761))))

(assert (=> b!6584300 (= res!2700929 (> lt!2410651 call!574290))))

(assert (=> b!6584300 (= e!3984757 e!3984761)))

(declare-fun b!6584301 () Bool)

(declare-fun c!1211510 () Bool)

(assert (=> b!6584301 (= c!1211510 ((_ is Star!16455) (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(assert (=> b!6584301 (= e!3984757 e!3984759)))

(declare-fun bm!574288 () Bool)

(assert (=> bm!574288 (= call!574293 call!574288)))

(declare-fun bm!574289 () Bool)

(assert (=> bm!574289 (= call!574294 (regexDepth!352 (ite c!1211508 (regTwo!33423 (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))) (ite c!1211509 (regOne!33422 (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))) (reg!16784 (ite c!1211377 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486)))))))))

(assert (= (and d!2065537 c!1211511) b!6584291))

(assert (= (and d!2065537 (not c!1211511)) b!6584296))

(assert (= (and b!6584296 c!1211512) b!6584298))

(assert (= (and b!6584296 (not c!1211512)) b!6584286))

(assert (= (and b!6584286 c!1211513) b!6584297))

(assert (= (and b!6584286 (not c!1211513)) b!6584290))

(assert (= (and b!6584290 c!1211514) b!6584294))

(assert (= (and b!6584290 (not c!1211514)) b!6584299))

(assert (= (or b!6584297 b!6584294) bm!574288))

(assert (= (or b!6584297 b!6584294) bm!574284))

(assert (= (or b!6584297 b!6584294) bm!574285))

(assert (= (or b!6584298 bm!574288) bm!574286))

(assert (= (and d!2065537 res!2700930) b!6584288))

(assert (= (and b!6584288 c!1211508) b!6584289))

(assert (= (and b!6584288 (not c!1211508)) b!6584295))

(assert (= (and b!6584289 res!2700931) b!6584292))

(assert (= (and b!6584295 c!1211509) b!6584300))

(assert (= (and b!6584295 (not c!1211509)) b!6584301))

(assert (= (and b!6584300 res!2700929) b!6584293))

(assert (= (and b!6584301 c!1211510) b!6584287))

(assert (= (and b!6584301 (not c!1211510)) b!6584285))

(assert (= (or b!6584300 b!6584287) bm!574287))

(assert (= (or b!6584292 bm!574287) bm!574289))

(assert (= (or b!6584289 b!6584293) bm!574283))

(declare-fun m!7363438 () Bool)

(assert (=> bm!574285 m!7363438))

(declare-fun m!7363440 () Bool)

(assert (=> bm!574286 m!7363440))

(declare-fun m!7363442 () Bool)

(assert (=> bm!574289 m!7363442))

(declare-fun m!7363444 () Bool)

(assert (=> bm!574283 m!7363444))

(declare-fun m!7363446 () Bool)

(assert (=> bm!574284 m!7363446))

(assert (=> bm!574214 d!2065537))

(declare-fun call!574295 () (InoxSet Context!11678))

(declare-fun c!1211515 () Bool)

(declare-fun bm!574291 () Bool)

(declare-fun call!574297 () List!65664)

(assert (=> bm!574291 (= call!574295 (derivationStepZipperDown!1703 (ite c!1211515 (regOne!33423 (h!71988 (exprs!6339 lt!2410469))) (regOne!33422 (h!71988 (exprs!6339 lt!2410469)))) (ite c!1211515 (Context!11679 (t!379312 (exprs!6339 lt!2410469))) (Context!11679 call!574297)) (h!71989 s!2326)))))

(declare-fun b!6584302 () Bool)

(declare-fun e!3984765 () (InoxSet Context!11678))

(declare-fun call!574299 () (InoxSet Context!11678))

(assert (=> b!6584302 (= e!3984765 ((_ map or) call!574295 call!574299))))

(declare-fun c!1211517 () Bool)

(declare-fun bm!574292 () Bool)

(declare-fun call!574300 () List!65664)

(declare-fun call!574296 () (InoxSet Context!11678))

(declare-fun c!1211516 () Bool)

(assert (=> bm!574292 (= call!574296 (derivationStepZipperDown!1703 (ite c!1211515 (regTwo!33423 (h!71988 (exprs!6339 lt!2410469))) (ite c!1211517 (regTwo!33422 (h!71988 (exprs!6339 lt!2410469))) (ite c!1211516 (regOne!33422 (h!71988 (exprs!6339 lt!2410469))) (reg!16784 (h!71988 (exprs!6339 lt!2410469)))))) (ite (or c!1211515 c!1211517) (Context!11679 (t!379312 (exprs!6339 lt!2410469))) (Context!11679 call!574300)) (h!71989 s!2326)))))

(declare-fun b!6584303 () Bool)

(declare-fun e!3984769 () Bool)

(assert (=> b!6584303 (= c!1211517 e!3984769)))

(declare-fun res!2700932 () Bool)

(assert (=> b!6584303 (=> (not res!2700932) (not e!3984769))))

(assert (=> b!6584303 (= res!2700932 ((_ is Concat!25300) (h!71988 (exprs!6339 lt!2410469))))))

(declare-fun e!3984768 () (InoxSet Context!11678))

(assert (=> b!6584303 (= e!3984768 e!3984765)))

(declare-fun b!6584304 () Bool)

(declare-fun e!3984770 () (InoxSet Context!11678))

(assert (=> b!6584304 (= e!3984765 e!3984770)))

(assert (=> b!6584304 (= c!1211516 ((_ is Concat!25300) (h!71988 (exprs!6339 lt!2410469))))))

(declare-fun b!6584305 () Bool)

(declare-fun c!1211518 () Bool)

(assert (=> b!6584305 (= c!1211518 ((_ is Star!16455) (h!71988 (exprs!6339 lt!2410469))))))

(declare-fun e!3984766 () (InoxSet Context!11678))

(assert (=> b!6584305 (= e!3984770 e!3984766)))

(declare-fun b!6584306 () Bool)

(declare-fun e!3984767 () (InoxSet Context!11678))

(assert (=> b!6584306 (= e!3984767 (store ((as const (Array Context!11678 Bool)) false) (Context!11679 (t!379312 (exprs!6339 lt!2410469))) true))))

(declare-fun bm!574293 () Bool)

(assert (=> bm!574293 (= call!574299 call!574296)))

(declare-fun d!2065539 () Bool)

(declare-fun c!1211519 () Bool)

(assert (=> d!2065539 (= c!1211519 (and ((_ is ElementMatch!16455) (h!71988 (exprs!6339 lt!2410469))) (= (c!1211172 (h!71988 (exprs!6339 lt!2410469))) (h!71989 s!2326))))))

(assert (=> d!2065539 (= (derivationStepZipperDown!1703 (h!71988 (exprs!6339 lt!2410469)) (Context!11679 (t!379312 (exprs!6339 lt!2410469))) (h!71989 s!2326)) e!3984767)))

(declare-fun bm!574290 () Bool)

(assert (=> bm!574290 (= call!574297 ($colon$colon!2296 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410469)))) (ite (or c!1211517 c!1211516) (regTwo!33422 (h!71988 (exprs!6339 lt!2410469))) (h!71988 (exprs!6339 lt!2410469)))))))

(declare-fun b!6584307 () Bool)

(assert (=> b!6584307 (= e!3984766 ((as const (Array Context!11678 Bool)) false))))

(declare-fun b!6584308 () Bool)

(declare-fun call!574298 () (InoxSet Context!11678))

(assert (=> b!6584308 (= e!3984770 call!574298)))

(declare-fun bm!574294 () Bool)

(assert (=> bm!574294 (= call!574300 call!574297)))

(declare-fun b!6584309 () Bool)

(assert (=> b!6584309 (= e!3984767 e!3984768)))

(assert (=> b!6584309 (= c!1211515 ((_ is Union!16455) (h!71988 (exprs!6339 lt!2410469))))))

(declare-fun bm!574295 () Bool)

(assert (=> bm!574295 (= call!574298 call!574299)))

(declare-fun b!6584310 () Bool)

(assert (=> b!6584310 (= e!3984768 ((_ map or) call!574295 call!574296))))

(declare-fun b!6584311 () Bool)

(assert (=> b!6584311 (= e!3984769 (nullable!6448 (regOne!33422 (h!71988 (exprs!6339 lt!2410469)))))))

(declare-fun b!6584312 () Bool)

(assert (=> b!6584312 (= e!3984766 call!574298)))

(assert (= (and d!2065539 c!1211519) b!6584306))

(assert (= (and d!2065539 (not c!1211519)) b!6584309))

(assert (= (and b!6584309 c!1211515) b!6584310))

(assert (= (and b!6584309 (not c!1211515)) b!6584303))

(assert (= (and b!6584303 res!2700932) b!6584311))

(assert (= (and b!6584303 c!1211517) b!6584302))

(assert (= (and b!6584303 (not c!1211517)) b!6584304))

(assert (= (and b!6584304 c!1211516) b!6584308))

(assert (= (and b!6584304 (not c!1211516)) b!6584305))

(assert (= (and b!6584305 c!1211518) b!6584312))

(assert (= (and b!6584305 (not c!1211518)) b!6584307))

(assert (= (or b!6584308 b!6584312) bm!574294))

(assert (= (or b!6584308 b!6584312) bm!574295))

(assert (= (or b!6584302 bm!574294) bm!574290))

(assert (= (or b!6584302 bm!574295) bm!574293))

(assert (= (or b!6584310 bm!574293) bm!574292))

(assert (= (or b!6584310 b!6584302) bm!574291))

(declare-fun m!7363448 () Bool)

(assert (=> b!6584311 m!7363448))

(declare-fun m!7363450 () Bool)

(assert (=> b!6584306 m!7363450))

(declare-fun m!7363452 () Bool)

(assert (=> bm!574291 m!7363452))

(declare-fun m!7363454 () Bool)

(assert (=> bm!574292 m!7363454))

(declare-fun m!7363456 () Bool)

(assert (=> bm!574290 m!7363456))

(assert (=> bm!574232 d!2065539))

(declare-fun d!2065541 () Bool)

(assert (=> d!2065541 true))

(declare-fun setRes!44961 () Bool)

(assert (=> d!2065541 setRes!44961))

(declare-fun condSetEmpty!44961 () Bool)

(declare-fun res!2700935 () (InoxSet Context!11678))

(assert (=> d!2065541 (= condSetEmpty!44961 (= res!2700935 ((as const (Array Context!11678 Bool)) false)))))

(assert (=> d!2065541 (= (choose!49162 lt!2410482 lambda!366701) res!2700935)))

(declare-fun setIsEmpty!44961 () Bool)

(assert (=> setIsEmpty!44961 setRes!44961))

(declare-fun e!3984773 () Bool)

(declare-fun setElem!44961 () Context!11678)

(declare-fun setNonEmpty!44961 () Bool)

(declare-fun tp!1816680 () Bool)

(assert (=> setNonEmpty!44961 (= setRes!44961 (and tp!1816680 (inv!84384 setElem!44961) e!3984773))))

(declare-fun setRest!44961 () (InoxSet Context!11678))

(assert (=> setNonEmpty!44961 (= res!2700935 ((_ map or) (store ((as const (Array Context!11678 Bool)) false) setElem!44961 true) setRest!44961))))

(declare-fun b!6584315 () Bool)

(declare-fun tp!1816681 () Bool)

(assert (=> b!6584315 (= e!3984773 tp!1816681)))

(assert (= (and d!2065541 condSetEmpty!44961) setIsEmpty!44961))

(assert (= (and d!2065541 (not condSetEmpty!44961)) setNonEmpty!44961))

(assert (= setNonEmpty!44961 b!6584315))

(declare-fun m!7363458 () Bool)

(assert (=> setNonEmpty!44961 m!7363458))

(assert (=> d!2065433 d!2065541))

(declare-fun d!2065543 () Bool)

(assert (=> d!2065543 true))

(assert (=> d!2065543 true))

(declare-fun res!2700938 () Bool)

(assert (=> d!2065543 (= (choose!49158 lambda!366699) res!2700938)))

(assert (=> d!2065391 d!2065543))

(assert (=> b!6584128 d!2065497))

(assert (=> b!6584128 d!2065499))

(declare-fun d!2065545 () Bool)

(assert (=> d!2065545 (= (isDefined!13049 lt!2410595) (not (isEmpty!37802 lt!2410595)))))

(declare-fun bs!1684561 () Bool)

(assert (= bs!1684561 d!2065545))

(declare-fun m!7363460 () Bool)

(assert (=> bs!1684561 m!7363460))

(assert (=> d!2065389 d!2065545))

(declare-fun b!6584316 () Bool)

(declare-fun e!3984774 () Bool)

(declare-fun e!3984777 () Bool)

(assert (=> b!6584316 (= e!3984774 e!3984777)))

(declare-fun res!2700941 () Bool)

(assert (=> b!6584316 (=> (not res!2700941) (not e!3984777))))

(declare-fun lt!2410652 () Bool)

(assert (=> b!6584316 (= res!2700941 (not lt!2410652))))

(declare-fun b!6584317 () Bool)

(declare-fun res!2700942 () Bool)

(assert (=> b!6584317 (=> res!2700942 e!3984774)))

(declare-fun e!3984778 () Bool)

(assert (=> b!6584317 (= res!2700942 e!3984778)))

(declare-fun res!2700940 () Bool)

(assert (=> b!6584317 (=> (not res!2700940) (not e!3984778))))

(assert (=> b!6584317 (= res!2700940 lt!2410652)))

(declare-fun b!6584318 () Bool)

(declare-fun res!2700946 () Bool)

(declare-fun e!3984776 () Bool)

(assert (=> b!6584318 (=> res!2700946 e!3984776)))

(assert (=> b!6584318 (= res!2700946 (not (isEmpty!37801 (tail!12446 Nil!65541))))))

(declare-fun b!6584319 () Bool)

(declare-fun e!3984779 () Bool)

(declare-fun call!574301 () Bool)

(assert (=> b!6584319 (= e!3984779 (= lt!2410652 call!574301))))

(declare-fun b!6584320 () Bool)

(declare-fun res!2700939 () Bool)

(assert (=> b!6584320 (=> (not res!2700939) (not e!3984778))))

(assert (=> b!6584320 (= res!2700939 (not call!574301))))

(declare-fun b!6584321 () Bool)

(declare-fun e!3984775 () Bool)

(assert (=> b!6584321 (= e!3984775 (not lt!2410652))))

(declare-fun b!6584322 () Bool)

(assert (=> b!6584322 (= e!3984776 (not (= (head!13361 Nil!65541) (c!1211172 (regOne!33422 r!7292)))))))

(declare-fun b!6584323 () Bool)

(assert (=> b!6584323 (= e!3984779 e!3984775)))

(declare-fun c!1211522 () Bool)

(assert (=> b!6584323 (= c!1211522 ((_ is EmptyLang!16455) (regOne!33422 r!7292)))))

(declare-fun b!6584324 () Bool)

(declare-fun e!3984780 () Bool)

(assert (=> b!6584324 (= e!3984780 (nullable!6448 (regOne!33422 r!7292)))))

(declare-fun b!6584325 () Bool)

(assert (=> b!6584325 (= e!3984777 e!3984776)))

(declare-fun res!2700944 () Bool)

(assert (=> b!6584325 (=> res!2700944 e!3984776)))

(assert (=> b!6584325 (= res!2700944 call!574301)))

(declare-fun b!6584326 () Bool)

(declare-fun res!2700943 () Bool)

(assert (=> b!6584326 (=> (not res!2700943) (not e!3984778))))

(assert (=> b!6584326 (= res!2700943 (isEmpty!37801 (tail!12446 Nil!65541)))))

(declare-fun d!2065547 () Bool)

(assert (=> d!2065547 e!3984779))

(declare-fun c!1211520 () Bool)

(assert (=> d!2065547 (= c!1211520 ((_ is EmptyExpr!16455) (regOne!33422 r!7292)))))

(assert (=> d!2065547 (= lt!2410652 e!3984780)))

(declare-fun c!1211521 () Bool)

(assert (=> d!2065547 (= c!1211521 (isEmpty!37801 Nil!65541))))

(assert (=> d!2065547 (validRegex!8191 (regOne!33422 r!7292))))

(assert (=> d!2065547 (= (matchR!8638 (regOne!33422 r!7292) Nil!65541) lt!2410652)))

(declare-fun bm!574296 () Bool)

(assert (=> bm!574296 (= call!574301 (isEmpty!37801 Nil!65541))))

(declare-fun b!6584327 () Bool)

(assert (=> b!6584327 (= e!3984780 (matchR!8638 (derivativeStep!5139 (regOne!33422 r!7292) (head!13361 Nil!65541)) (tail!12446 Nil!65541)))))

(declare-fun b!6584328 () Bool)

(assert (=> b!6584328 (= e!3984778 (= (head!13361 Nil!65541) (c!1211172 (regOne!33422 r!7292))))))

(declare-fun b!6584329 () Bool)

(declare-fun res!2700945 () Bool)

(assert (=> b!6584329 (=> res!2700945 e!3984774)))

(assert (=> b!6584329 (= res!2700945 (not ((_ is ElementMatch!16455) (regOne!33422 r!7292))))))

(assert (=> b!6584329 (= e!3984775 e!3984774)))

(assert (= (and d!2065547 c!1211521) b!6584324))

(assert (= (and d!2065547 (not c!1211521)) b!6584327))

(assert (= (and d!2065547 c!1211520) b!6584319))

(assert (= (and d!2065547 (not c!1211520)) b!6584323))

(assert (= (and b!6584323 c!1211522) b!6584321))

(assert (= (and b!6584323 (not c!1211522)) b!6584329))

(assert (= (and b!6584329 (not res!2700945)) b!6584317))

(assert (= (and b!6584317 res!2700940) b!6584320))

(assert (= (and b!6584320 res!2700939) b!6584326))

(assert (= (and b!6584326 res!2700943) b!6584328))

(assert (= (and b!6584317 (not res!2700942)) b!6584316))

(assert (= (and b!6584316 res!2700941) b!6584325))

(assert (= (and b!6584325 (not res!2700944)) b!6584318))

(assert (= (and b!6584318 (not res!2700946)) b!6584322))

(assert (= (or b!6584319 b!6584320 b!6584325) bm!574296))

(declare-fun m!7363462 () Bool)

(assert (=> bm!574296 m!7363462))

(assert (=> d!2065547 m!7363462))

(assert (=> d!2065547 m!7363098))

(declare-fun m!7363464 () Bool)

(assert (=> b!6584324 m!7363464))

(declare-fun m!7363466 () Bool)

(assert (=> b!6584328 m!7363466))

(assert (=> b!6584327 m!7363466))

(assert (=> b!6584327 m!7363466))

(declare-fun m!7363468 () Bool)

(assert (=> b!6584327 m!7363468))

(declare-fun m!7363470 () Bool)

(assert (=> b!6584327 m!7363470))

(assert (=> b!6584327 m!7363468))

(assert (=> b!6584327 m!7363470))

(declare-fun m!7363472 () Bool)

(assert (=> b!6584327 m!7363472))

(assert (=> b!6584322 m!7363466))

(assert (=> b!6584318 m!7363470))

(assert (=> b!6584318 m!7363470))

(declare-fun m!7363474 () Bool)

(assert (=> b!6584318 m!7363474))

(assert (=> b!6584326 m!7363470))

(assert (=> b!6584326 m!7363470))

(assert (=> b!6584326 m!7363474))

(assert (=> d!2065389 d!2065547))

(assert (=> d!2065389 d!2065531))

(declare-fun c!1211523 () Bool)

(declare-fun call!574302 () (InoxSet Context!11678))

(declare-fun bm!574298 () Bool)

(declare-fun call!574304 () List!65664)

(assert (=> bm!574298 (= call!574302 (derivationStepZipperDown!1703 (ite c!1211523 (regOne!33423 (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))))) (regOne!33422 (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343))))))) (ite c!1211523 (ite c!1211428 lt!2410462 (Context!11679 call!574252)) (Context!11679 call!574304)) (h!71989 s!2326)))))

(declare-fun b!6584330 () Bool)

(declare-fun e!3984781 () (InoxSet Context!11678))

(declare-fun call!574306 () (InoxSet Context!11678))

(assert (=> b!6584330 (= e!3984781 ((_ map or) call!574302 call!574306))))

(declare-fun c!1211525 () Bool)

(declare-fun call!574307 () List!65664)

(declare-fun call!574303 () (InoxSet Context!11678))

(declare-fun c!1211524 () Bool)

(declare-fun bm!574299 () Bool)

(assert (=> bm!574299 (= call!574303 (derivationStepZipperDown!1703 (ite c!1211523 (regTwo!33423 (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))))) (ite c!1211525 (regTwo!33422 (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))))) (ite c!1211524 (regOne!33422 (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))))) (reg!16784 (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343))))))))) (ite (or c!1211523 c!1211525) (ite c!1211428 lt!2410462 (Context!11679 call!574252)) (Context!11679 call!574307)) (h!71989 s!2326)))))

(declare-fun b!6584331 () Bool)

(declare-fun e!3984785 () Bool)

(assert (=> b!6584331 (= c!1211525 e!3984785)))

(declare-fun res!2700947 () Bool)

(assert (=> b!6584331 (=> (not res!2700947) (not e!3984785))))

(assert (=> b!6584331 (= res!2700947 ((_ is Concat!25300) (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))))))))

(declare-fun e!3984784 () (InoxSet Context!11678))

(assert (=> b!6584331 (= e!3984784 e!3984781)))

(declare-fun b!6584332 () Bool)

(declare-fun e!3984786 () (InoxSet Context!11678))

(assert (=> b!6584332 (= e!3984781 e!3984786)))

(assert (=> b!6584332 (= c!1211524 ((_ is Concat!25300) (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))))))))

(declare-fun b!6584333 () Bool)

(declare-fun c!1211526 () Bool)

(assert (=> b!6584333 (= c!1211526 ((_ is Star!16455) (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))))))))

(declare-fun e!3984782 () (InoxSet Context!11678))

(assert (=> b!6584333 (= e!3984786 e!3984782)))

(declare-fun e!3984783 () (InoxSet Context!11678))

(declare-fun b!6584334 () Bool)

(assert (=> b!6584334 (= e!3984783 (store ((as const (Array Context!11678 Bool)) false) (ite c!1211428 lt!2410462 (Context!11679 call!574252)) true))))

(declare-fun bm!574300 () Bool)

(assert (=> bm!574300 (= call!574306 call!574303)))

(declare-fun d!2065549 () Bool)

(declare-fun c!1211527 () Bool)

(assert (=> d!2065549 (= c!1211527 (and ((_ is ElementMatch!16455) (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))))) (= (c!1211172 (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))))) (h!71989 s!2326))))))

(assert (=> d!2065549 (= (derivationStepZipperDown!1703 (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343))))) (ite c!1211428 lt!2410462 (Context!11679 call!574252)) (h!71989 s!2326)) e!3984783)))

(declare-fun bm!574297 () Bool)

(assert (=> bm!574297 (= call!574304 ($colon$colon!2296 (exprs!6339 (ite c!1211428 lt!2410462 (Context!11679 call!574252))) (ite (or c!1211525 c!1211524) (regTwo!33422 (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))))) (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343))))))))))

(declare-fun b!6584335 () Bool)

(assert (=> b!6584335 (= e!3984782 ((as const (Array Context!11678 Bool)) false))))

(declare-fun b!6584336 () Bool)

(declare-fun call!574305 () (InoxSet Context!11678))

(assert (=> b!6584336 (= e!3984786 call!574305)))

(declare-fun bm!574301 () Bool)

(assert (=> bm!574301 (= call!574307 call!574304)))

(declare-fun b!6584337 () Bool)

(assert (=> b!6584337 (= e!3984783 e!3984784)))

(assert (=> b!6584337 (= c!1211523 ((_ is Union!16455) (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))))))))

(declare-fun bm!574302 () Bool)

(assert (=> bm!574302 (= call!574305 call!574306)))

(declare-fun b!6584338 () Bool)

(assert (=> b!6584338 (= e!3984784 ((_ map or) call!574302 call!574303))))

(declare-fun b!6584339 () Bool)

(assert (=> b!6584339 (= e!3984785 (nullable!6448 (regOne!33422 (ite c!1211428 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343))))))))))

(declare-fun b!6584340 () Bool)

(assert (=> b!6584340 (= e!3984782 call!574305)))

(assert (= (and d!2065549 c!1211527) b!6584334))

(assert (= (and d!2065549 (not c!1211527)) b!6584337))

(assert (= (and b!6584337 c!1211523) b!6584338))

(assert (= (and b!6584337 (not c!1211523)) b!6584331))

(assert (= (and b!6584331 res!2700947) b!6584339))

(assert (= (and b!6584331 c!1211525) b!6584330))

(assert (= (and b!6584331 (not c!1211525)) b!6584332))

(assert (= (and b!6584332 c!1211524) b!6584336))

(assert (= (and b!6584332 (not c!1211524)) b!6584333))

(assert (= (and b!6584333 c!1211526) b!6584340))

(assert (= (and b!6584333 (not c!1211526)) b!6584335))

(assert (= (or b!6584336 b!6584340) bm!574301))

(assert (= (or b!6584336 b!6584340) bm!574302))

(assert (= (or b!6584330 bm!574301) bm!574297))

(assert (= (or b!6584330 bm!574302) bm!574300))

(assert (= (or b!6584338 bm!574300) bm!574299))

(assert (= (or b!6584338 b!6584330) bm!574298))

(declare-fun m!7363476 () Bool)

(assert (=> b!6584339 m!7363476))

(declare-fun m!7363478 () Bool)

(assert (=> b!6584334 m!7363478))

(declare-fun m!7363480 () Bool)

(assert (=> bm!574298 m!7363480))

(declare-fun m!7363482 () Bool)

(assert (=> bm!574299 m!7363482))

(declare-fun m!7363484 () Bool)

(assert (=> bm!574297 m!7363484))

(assert (=> bm!574246 d!2065549))

(declare-fun d!2065551 () Bool)

(assert (=> d!2065551 true))

(declare-fun setRes!44962 () Bool)

(assert (=> d!2065551 setRes!44962))

(declare-fun condSetEmpty!44962 () Bool)

(declare-fun res!2700948 () (InoxSet Context!11678))

(assert (=> d!2065551 (= condSetEmpty!44962 (= res!2700948 ((as const (Array Context!11678 Bool)) false)))))

(assert (=> d!2065551 (= (choose!49162 lt!2410489 lambda!366701) res!2700948)))

(declare-fun setIsEmpty!44962 () Bool)

(assert (=> setIsEmpty!44962 setRes!44962))

(declare-fun e!3984787 () Bool)

(declare-fun setElem!44962 () Context!11678)

(declare-fun setNonEmpty!44962 () Bool)

(declare-fun tp!1816682 () Bool)

(assert (=> setNonEmpty!44962 (= setRes!44962 (and tp!1816682 (inv!84384 setElem!44962) e!3984787))))

(declare-fun setRest!44962 () (InoxSet Context!11678))

(assert (=> setNonEmpty!44962 (= res!2700948 ((_ map or) (store ((as const (Array Context!11678 Bool)) false) setElem!44962 true) setRest!44962))))

(declare-fun b!6584341 () Bool)

(declare-fun tp!1816683 () Bool)

(assert (=> b!6584341 (= e!3984787 tp!1816683)))

(assert (= (and d!2065551 condSetEmpty!44962) setIsEmpty!44962))

(assert (= (and d!2065551 (not condSetEmpty!44962)) setNonEmpty!44962))

(assert (= setNonEmpty!44962 b!6584341))

(declare-fun m!7363486 () Bool)

(assert (=> setNonEmpty!44962 m!7363486))

(assert (=> d!2065407 d!2065551))

(declare-fun bm!574303 () Bool)

(declare-fun call!574310 () Bool)

(declare-fun c!1211529 () Bool)

(assert (=> bm!574303 (= call!574310 (validRegex!8191 (ite c!1211529 (regTwo!33423 (ite c!1211456 (reg!16784 lt!2410486) (ite c!1211457 (regOne!33423 lt!2410486) (regOne!33422 lt!2410486)))) (regTwo!33422 (ite c!1211456 (reg!16784 lt!2410486) (ite c!1211457 (regOne!33423 lt!2410486) (regOne!33422 lt!2410486)))))))))

(declare-fun b!6584342 () Bool)

(declare-fun e!3984789 () Bool)

(declare-fun e!3984792 () Bool)

(assert (=> b!6584342 (= e!3984789 e!3984792)))

(declare-fun c!1211528 () Bool)

(assert (=> b!6584342 (= c!1211528 ((_ is Star!16455) (ite c!1211456 (reg!16784 lt!2410486) (ite c!1211457 (regOne!33423 lt!2410486) (regOne!33422 lt!2410486)))))))

(declare-fun b!6584343 () Bool)

(declare-fun e!3984788 () Bool)

(assert (=> b!6584343 (= e!3984792 e!3984788)))

(assert (=> b!6584343 (= c!1211529 ((_ is Union!16455) (ite c!1211456 (reg!16784 lt!2410486) (ite c!1211457 (regOne!33423 lt!2410486) (regOne!33422 lt!2410486)))))))

(declare-fun b!6584344 () Bool)

(declare-fun e!3984791 () Bool)

(assert (=> b!6584344 (= e!3984791 call!574310)))

(declare-fun b!6584345 () Bool)

(declare-fun e!3984790 () Bool)

(assert (=> b!6584345 (= e!3984792 e!3984790)))

(declare-fun res!2700950 () Bool)

(assert (=> b!6584345 (= res!2700950 (not (nullable!6448 (reg!16784 (ite c!1211456 (reg!16784 lt!2410486) (ite c!1211457 (regOne!33423 lt!2410486) (regOne!33422 lt!2410486)))))))))

(assert (=> b!6584345 (=> (not res!2700950) (not e!3984790))))

(declare-fun call!574308 () Bool)

(declare-fun bm!574304 () Bool)

(assert (=> bm!574304 (= call!574308 (validRegex!8191 (ite c!1211528 (reg!16784 (ite c!1211456 (reg!16784 lt!2410486) (ite c!1211457 (regOne!33423 lt!2410486) (regOne!33422 lt!2410486)))) (ite c!1211529 (regOne!33423 (ite c!1211456 (reg!16784 lt!2410486) (ite c!1211457 (regOne!33423 lt!2410486) (regOne!33422 lt!2410486)))) (regOne!33422 (ite c!1211456 (reg!16784 lt!2410486) (ite c!1211457 (regOne!33423 lt!2410486) (regOne!33422 lt!2410486))))))))))

(declare-fun b!6584347 () Bool)

(declare-fun e!3984794 () Bool)

(declare-fun e!3984793 () Bool)

(assert (=> b!6584347 (= e!3984794 e!3984793)))

(declare-fun res!2700951 () Bool)

(assert (=> b!6584347 (=> (not res!2700951) (not e!3984793))))

(declare-fun call!574309 () Bool)

(assert (=> b!6584347 (= res!2700951 call!574309)))

(declare-fun b!6584348 () Bool)

(declare-fun res!2700953 () Bool)

(assert (=> b!6584348 (=> (not res!2700953) (not e!3984791))))

(assert (=> b!6584348 (= res!2700953 call!574309)))

(assert (=> b!6584348 (= e!3984788 e!3984791)))

(declare-fun bm!574305 () Bool)

(assert (=> bm!574305 (= call!574309 call!574308)))

(declare-fun b!6584349 () Bool)

(declare-fun res!2700949 () Bool)

(assert (=> b!6584349 (=> res!2700949 e!3984794)))

(assert (=> b!6584349 (= res!2700949 (not ((_ is Concat!25300) (ite c!1211456 (reg!16784 lt!2410486) (ite c!1211457 (regOne!33423 lt!2410486) (regOne!33422 lt!2410486))))))))

(assert (=> b!6584349 (= e!3984788 e!3984794)))

(declare-fun b!6584350 () Bool)

(assert (=> b!6584350 (= e!3984790 call!574308)))

(declare-fun d!2065553 () Bool)

(declare-fun res!2700952 () Bool)

(assert (=> d!2065553 (=> res!2700952 e!3984789)))

(assert (=> d!2065553 (= res!2700952 ((_ is ElementMatch!16455) (ite c!1211456 (reg!16784 lt!2410486) (ite c!1211457 (regOne!33423 lt!2410486) (regOne!33422 lt!2410486)))))))

(assert (=> d!2065553 (= (validRegex!8191 (ite c!1211456 (reg!16784 lt!2410486) (ite c!1211457 (regOne!33423 lt!2410486) (regOne!33422 lt!2410486)))) e!3984789)))

(declare-fun b!6584346 () Bool)

(assert (=> b!6584346 (= e!3984793 call!574310)))

(assert (= (and d!2065553 (not res!2700952)) b!6584342))

(assert (= (and b!6584342 c!1211528) b!6584345))

(assert (= (and b!6584342 (not c!1211528)) b!6584343))

(assert (= (and b!6584345 res!2700950) b!6584350))

(assert (= (and b!6584343 c!1211529) b!6584348))

(assert (= (and b!6584343 (not c!1211529)) b!6584349))

(assert (= (and b!6584348 res!2700953) b!6584344))

(assert (= (and b!6584349 (not res!2700949)) b!6584347))

(assert (= (and b!6584347 res!2700951) b!6584346))

(assert (= (or b!6584344 b!6584346) bm!574303))

(assert (= (or b!6584348 b!6584347) bm!574305))

(assert (= (or b!6584350 bm!574305) bm!574304))

(declare-fun m!7363488 () Bool)

(assert (=> bm!574303 m!7363488))

(declare-fun m!7363490 () Bool)

(assert (=> b!6584345 m!7363490))

(declare-fun m!7363492 () Bool)

(assert (=> bm!574304 m!7363492))

(assert (=> bm!574255 d!2065553))

(declare-fun c!1211530 () Bool)

(declare-fun call!574313 () List!65664)

(declare-fun call!574311 () (InoxSet Context!11678))

(declare-fun bm!574307 () Bool)

(assert (=> bm!574307 (= call!574311 (derivationStepZipperDown!1703 (ite c!1211530 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343))))) (ite c!1211530 (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343)))) (Context!11679 call!574313)) (h!71989 s!2326)))))

(declare-fun b!6584351 () Bool)

(declare-fun e!3984795 () (InoxSet Context!11678))

(declare-fun call!574315 () (InoxSet Context!11678))

(assert (=> b!6584351 (= e!3984795 ((_ map or) call!574311 call!574315))))

(declare-fun c!1211531 () Bool)

(declare-fun bm!574308 () Bool)

(declare-fun call!574316 () List!65664)

(declare-fun c!1211532 () Bool)

(declare-fun call!574312 () (InoxSet Context!11678))

(assert (=> bm!574308 (= call!574312 (derivationStepZipperDown!1703 (ite c!1211530 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211532 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211531 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343))))))) (ite (or c!1211530 c!1211532) (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343)))) (Context!11679 call!574316)) (h!71989 s!2326)))))

(declare-fun b!6584352 () Bool)

(declare-fun e!3984799 () Bool)

(assert (=> b!6584352 (= c!1211532 e!3984799)))

(declare-fun res!2700954 () Bool)

(assert (=> b!6584352 (=> (not res!2700954) (not e!3984799))))

(assert (=> b!6584352 (= res!2700954 ((_ is Concat!25300) (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun e!3984798 () (InoxSet Context!11678))

(assert (=> b!6584352 (= e!3984798 e!3984795)))

(declare-fun b!6584353 () Bool)

(declare-fun e!3984800 () (InoxSet Context!11678))

(assert (=> b!6584353 (= e!3984795 e!3984800)))

(assert (=> b!6584353 (= c!1211531 ((_ is Concat!25300) (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun b!6584354 () Bool)

(declare-fun c!1211533 () Bool)

(assert (=> b!6584354 (= c!1211533 ((_ is Star!16455) (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun e!3984796 () (InoxSet Context!11678))

(assert (=> b!6584354 (= e!3984800 e!3984796)))

(declare-fun b!6584355 () Bool)

(declare-fun e!3984797 () (InoxSet Context!11678))

(assert (=> b!6584355 (= e!3984797 (store ((as const (Array Context!11678 Bool)) false) (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343)))) true))))

(declare-fun bm!574309 () Bool)

(assert (=> bm!574309 (= call!574315 call!574312)))

(declare-fun d!2065555 () Bool)

(declare-fun c!1211534 () Bool)

(assert (=> d!2065555 (= c!1211534 (and ((_ is ElementMatch!16455) (h!71988 (exprs!6339 (h!71990 zl!343)))) (= (c!1211172 (h!71988 (exprs!6339 (h!71990 zl!343)))) (h!71989 s!2326))))))

(assert (=> d!2065555 (= (derivationStepZipperDown!1703 (h!71988 (exprs!6339 (h!71990 zl!343))) (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343)))) (h!71989 s!2326)) e!3984797)))

(declare-fun bm!574306 () Bool)

(assert (=> bm!574306 (= call!574313 ($colon$colon!2296 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343))))) (ite (or c!1211532 c!1211531) (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (h!71988 (exprs!6339 (h!71990 zl!343))))))))

(declare-fun b!6584356 () Bool)

(assert (=> b!6584356 (= e!3984796 ((as const (Array Context!11678 Bool)) false))))

(declare-fun b!6584357 () Bool)

(declare-fun call!574314 () (InoxSet Context!11678))

(assert (=> b!6584357 (= e!3984800 call!574314)))

(declare-fun bm!574310 () Bool)

(assert (=> bm!574310 (= call!574316 call!574313)))

(declare-fun b!6584358 () Bool)

(assert (=> b!6584358 (= e!3984797 e!3984798)))

(assert (=> b!6584358 (= c!1211530 ((_ is Union!16455) (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun bm!574311 () Bool)

(assert (=> bm!574311 (= call!574314 call!574315)))

(declare-fun b!6584359 () Bool)

(assert (=> b!6584359 (= e!3984798 ((_ map or) call!574311 call!574312))))

(declare-fun b!6584360 () Bool)

(assert (=> b!6584360 (= e!3984799 (nullable!6448 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343))))))))

(declare-fun b!6584361 () Bool)

(assert (=> b!6584361 (= e!3984796 call!574314)))

(assert (= (and d!2065555 c!1211534) b!6584355))

(assert (= (and d!2065555 (not c!1211534)) b!6584358))

(assert (= (and b!6584358 c!1211530) b!6584359))

(assert (= (and b!6584358 (not c!1211530)) b!6584352))

(assert (= (and b!6584352 res!2700954) b!6584360))

(assert (= (and b!6584352 c!1211532) b!6584351))

(assert (= (and b!6584352 (not c!1211532)) b!6584353))

(assert (= (and b!6584353 c!1211531) b!6584357))

(assert (= (and b!6584353 (not c!1211531)) b!6584354))

(assert (= (and b!6584354 c!1211533) b!6584361))

(assert (= (and b!6584354 (not c!1211533)) b!6584356))

(assert (= (or b!6584357 b!6584361) bm!574310))

(assert (= (or b!6584357 b!6584361) bm!574311))

(assert (= (or b!6584351 bm!574310) bm!574306))

(assert (= (or b!6584351 bm!574311) bm!574309))

(assert (= (or b!6584359 bm!574309) bm!574308))

(assert (= (or b!6584359 b!6584351) bm!574307))

(assert (=> b!6584360 m!7363162))

(declare-fun m!7363494 () Bool)

(assert (=> b!6584355 m!7363494))

(declare-fun m!7363496 () Bool)

(assert (=> bm!574307 m!7363496))

(declare-fun m!7363498 () Bool)

(assert (=> bm!574308 m!7363498))

(declare-fun m!7363500 () Bool)

(assert (=> bm!574306 m!7363500))

(assert (=> bm!574251 d!2065555))

(declare-fun d!2065557 () Bool)

(assert (=> d!2065557 (= (flatMap!1960 lt!2410479 lambda!366780) (choose!49162 lt!2410479 lambda!366780))))

(declare-fun bs!1684562 () Bool)

(assert (= bs!1684562 d!2065557))

(declare-fun m!7363502 () Bool)

(assert (=> bs!1684562 m!7363502))

(assert (=> d!2065451 d!2065557))

(declare-fun d!2065559 () Bool)

(assert (=> d!2065559 (= (nullable!6448 (h!71988 (exprs!6339 lt!2410472))) (nullableFct!2373 (h!71988 (exprs!6339 lt!2410472))))))

(declare-fun bs!1684563 () Bool)

(assert (= bs!1684563 d!2065559))

(declare-fun m!7363504 () Bool)

(assert (=> bs!1684563 m!7363504))

(assert (=> b!6584077 d!2065559))

(declare-fun d!2065561 () Bool)

(assert (=> d!2065561 (= (isEmpty!37797 (exprs!6339 (h!71990 zl!343))) ((_ is Nil!65540) (exprs!6339 (h!71990 zl!343))))))

(assert (=> b!6583952 d!2065561))

(declare-fun d!2065563 () Bool)

(declare-fun res!2700969 () Bool)

(declare-fun e!3984814 () Bool)

(assert (=> d!2065563 (=> res!2700969 e!3984814)))

(assert (=> d!2065563 (= res!2700969 ((_ is EmptyExpr!16455) (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(assert (=> d!2065563 (= (nullableFct!2373 (h!71988 (exprs!6339 (h!71990 zl!343)))) e!3984814)))

(declare-fun bm!574316 () Bool)

(declare-fun call!574322 () Bool)

(declare-fun c!1211537 () Bool)

(assert (=> bm!574316 (= call!574322 (nullable!6448 (ite c!1211537 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))))))))

(declare-fun b!6584376 () Bool)

(declare-fun e!3984817 () Bool)

(declare-fun e!3984816 () Bool)

(assert (=> b!6584376 (= e!3984817 e!3984816)))

(declare-fun res!2700968 () Bool)

(assert (=> b!6584376 (=> res!2700968 e!3984816)))

(assert (=> b!6584376 (= res!2700968 ((_ is Star!16455) (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun b!6584377 () Bool)

(assert (=> b!6584377 (= e!3984814 e!3984817)))

(declare-fun res!2700965 () Bool)

(assert (=> b!6584377 (=> (not res!2700965) (not e!3984817))))

(assert (=> b!6584377 (= res!2700965 (and (not ((_ is EmptyLang!16455) (h!71988 (exprs!6339 (h!71990 zl!343))))) (not ((_ is ElementMatch!16455) (h!71988 (exprs!6339 (h!71990 zl!343)))))))))

(declare-fun b!6584378 () Bool)

(declare-fun e!3984813 () Bool)

(declare-fun e!3984818 () Bool)

(assert (=> b!6584378 (= e!3984813 e!3984818)))

(declare-fun res!2700966 () Bool)

(declare-fun call!574321 () Bool)

(assert (=> b!6584378 (= res!2700966 call!574321)))

(assert (=> b!6584378 (=> res!2700966 e!3984818)))

(declare-fun bm!574317 () Bool)

(assert (=> bm!574317 (= call!574321 (nullable!6448 (ite c!1211537 (regOne!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))))))))

(declare-fun b!6584379 () Bool)

(assert (=> b!6584379 (= e!3984816 e!3984813)))

(assert (=> b!6584379 (= c!1211537 ((_ is Union!16455) (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun b!6584380 () Bool)

(assert (=> b!6584380 (= e!3984818 call!574322)))

(declare-fun b!6584381 () Bool)

(declare-fun e!3984815 () Bool)

(assert (=> b!6584381 (= e!3984813 e!3984815)))

(declare-fun res!2700967 () Bool)

(assert (=> b!6584381 (= res!2700967 call!574321)))

(assert (=> b!6584381 (=> (not res!2700967) (not e!3984815))))

(declare-fun b!6584382 () Bool)

(assert (=> b!6584382 (= e!3984815 call!574322)))

(assert (= (and d!2065563 (not res!2700969)) b!6584377))

(assert (= (and b!6584377 res!2700965) b!6584376))

(assert (= (and b!6584376 (not res!2700968)) b!6584379))

(assert (= (and b!6584379 c!1211537) b!6584378))

(assert (= (and b!6584379 (not c!1211537)) b!6584381))

(assert (= (and b!6584378 (not res!2700966)) b!6584380))

(assert (= (and b!6584381 res!2700967) b!6584382))

(assert (= (or b!6584380 b!6584382) bm!574316))

(assert (= (or b!6584378 b!6584381) bm!574317))

(declare-fun m!7363506 () Bool)

(assert (=> bm!574316 m!7363506))

(declare-fun m!7363508 () Bool)

(assert (=> bm!574317 m!7363508))

(assert (=> d!2065419 d!2065563))

(declare-fun d!2065565 () Bool)

(assert (=> d!2065565 (= (isEmpty!37801 (t!379313 s!2326)) ((_ is Nil!65541) (t!379313 s!2326)))))

(assert (=> d!2065463 d!2065565))

(declare-fun d!2065567 () Bool)

(assert (=> d!2065567 (= (isEmpty!37797 (tail!12447 (unfocusZipperList!1876 zl!343))) ((_ is Nil!65540) (tail!12447 (unfocusZipperList!1876 zl!343))))))

(assert (=> b!6584053 d!2065567))

(declare-fun d!2065569 () Bool)

(assert (=> d!2065569 (= (tail!12447 (unfocusZipperList!1876 zl!343)) (t!379312 (unfocusZipperList!1876 zl!343)))))

(assert (=> b!6584053 d!2065569))

(declare-fun d!2065571 () Bool)

(assert (=> d!2065571 (= (head!13362 (exprs!6339 (h!71990 zl!343))) (h!71988 (exprs!6339 (h!71990 zl!343))))))

(assert (=> b!6583956 d!2065571))

(assert (=> d!2065427 d!2065425))

(declare-fun d!2065573 () Bool)

(assert (=> d!2065573 (= (flatMap!1960 z!1189 lambda!366701) (dynLambda!26085 lambda!366701 (h!71990 zl!343)))))

(assert (=> d!2065573 true))

(declare-fun _$13!3841 () Unit!159155)

(assert (=> d!2065573 (= (choose!49161 z!1189 (h!71990 zl!343) lambda!366701) _$13!3841)))

(declare-fun b_lambda!249109 () Bool)

(assert (=> (not b_lambda!249109) (not d!2065573)))

(declare-fun bs!1684564 () Bool)

(assert (= bs!1684564 d!2065573))

(assert (=> bs!1684564 m!7362540))

(assert (=> bs!1684564 m!7363184))

(assert (=> d!2065427 d!2065573))

(assert (=> bs!1684534 d!2065421))

(declare-fun d!2065575 () Bool)

(declare-fun c!1211538 () Bool)

(assert (=> d!2065575 (= c!1211538 (isEmpty!37801 (tail!12446 (t!379313 s!2326))))))

(declare-fun e!3984819 () Bool)

(assert (=> d!2065575 (= (matchZipper!2467 (derivationStepZipper!2421 lt!2410460 (head!13361 (t!379313 s!2326))) (tail!12446 (t!379313 s!2326))) e!3984819)))

(declare-fun b!6584383 () Bool)

(assert (=> b!6584383 (= e!3984819 (nullableZipper!2200 (derivationStepZipper!2421 lt!2410460 (head!13361 (t!379313 s!2326)))))))

(declare-fun b!6584384 () Bool)

(assert (=> b!6584384 (= e!3984819 (matchZipper!2467 (derivationStepZipper!2421 (derivationStepZipper!2421 lt!2410460 (head!13361 (t!379313 s!2326))) (head!13361 (tail!12446 (t!379313 s!2326)))) (tail!12446 (tail!12446 (t!379313 s!2326)))))))

(assert (= (and d!2065575 c!1211538) b!6584383))

(assert (= (and d!2065575 (not c!1211538)) b!6584384))

(assert (=> d!2065575 m!7363072))

(declare-fun m!7363510 () Bool)

(assert (=> d!2065575 m!7363510))

(assert (=> b!6584383 m!7363278))

(declare-fun m!7363512 () Bool)

(assert (=> b!6584383 m!7363512))

(assert (=> b!6584384 m!7363072))

(declare-fun m!7363514 () Bool)

(assert (=> b!6584384 m!7363514))

(assert (=> b!6584384 m!7363278))

(assert (=> b!6584384 m!7363514))

(declare-fun m!7363516 () Bool)

(assert (=> b!6584384 m!7363516))

(assert (=> b!6584384 m!7363072))

(declare-fun m!7363518 () Bool)

(assert (=> b!6584384 m!7363518))

(assert (=> b!6584384 m!7363516))

(assert (=> b!6584384 m!7363518))

(declare-fun m!7363520 () Bool)

(assert (=> b!6584384 m!7363520))

(assert (=> b!6584091 d!2065575))

(declare-fun bs!1684565 () Bool)

(declare-fun d!2065577 () Bool)

(assert (= bs!1684565 (and d!2065577 b!6583173)))

(declare-fun lambda!366801 () Int)

(assert (=> bs!1684565 (= (= (head!13361 (t!379313 s!2326)) (h!71989 s!2326)) (= lambda!366801 lambda!366701))))

(declare-fun bs!1684566 () Bool)

(assert (= bs!1684566 (and d!2065577 d!2065431)))

(assert (=> bs!1684566 (= (= (head!13361 (t!379313 s!2326)) (h!71989 s!2326)) (= lambda!366801 lambda!366773))))

(declare-fun bs!1684567 () Bool)

(assert (= bs!1684567 (and d!2065577 d!2065451)))

(assert (=> bs!1684567 (= (= (head!13361 (t!379313 s!2326)) (h!71989 s!2326)) (= lambda!366801 lambda!366780))))

(assert (=> d!2065577 true))

(assert (=> d!2065577 (= (derivationStepZipper!2421 lt!2410460 (head!13361 (t!379313 s!2326))) (flatMap!1960 lt!2410460 lambda!366801))))

(declare-fun bs!1684568 () Bool)

(assert (= bs!1684568 d!2065577))

(declare-fun m!7363522 () Bool)

(assert (=> bs!1684568 m!7363522))

(assert (=> b!6584091 d!2065577))

(declare-fun d!2065579 () Bool)

(assert (=> d!2065579 (= (head!13361 (t!379313 s!2326)) (h!71989 (t!379313 s!2326)))))

(assert (=> b!6584091 d!2065579))

(declare-fun d!2065581 () Bool)

(assert (=> d!2065581 (= (tail!12446 (t!379313 s!2326)) (t!379313 (t!379313 s!2326)))))

(assert (=> b!6584091 d!2065581))

(declare-fun d!2065583 () Bool)

(assert (=> d!2065583 (= (isEmptyLang!1842 lt!2410613) ((_ is EmptyLang!16455) lt!2410613))))

(assert (=> b!6584057 d!2065583))

(declare-fun b!6584387 () Bool)

(declare-fun res!2700970 () Bool)

(declare-fun e!3984820 () Bool)

(assert (=> b!6584387 (=> (not res!2700970) (not e!3984820))))

(declare-fun lt!2410653 () List!65665)

(assert (=> b!6584387 (= res!2700970 (= (size!40541 lt!2410653) (+ (size!40541 (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541))) (size!40541 (t!379313 s!2326)))))))

(declare-fun b!6584386 () Bool)

(declare-fun e!3984821 () List!65665)

(assert (=> b!6584386 (= e!3984821 (Cons!65541 (h!71989 (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541))) (++!14601 (t!379313 (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541))) (t!379313 s!2326))))))

(declare-fun b!6584388 () Bool)

(assert (=> b!6584388 (= e!3984820 (or (not (= (t!379313 s!2326) Nil!65541)) (= lt!2410653 (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541)))))))

(declare-fun b!6584385 () Bool)

(assert (=> b!6584385 (= e!3984821 (t!379313 s!2326))))

(declare-fun d!2065585 () Bool)

(assert (=> d!2065585 e!3984820))

(declare-fun res!2700971 () Bool)

(assert (=> d!2065585 (=> (not res!2700971) (not e!3984820))))

(assert (=> d!2065585 (= res!2700971 (= (content!12629 lt!2410653) ((_ map or) (content!12629 (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541))) (content!12629 (t!379313 s!2326)))))))

(assert (=> d!2065585 (= lt!2410653 e!3984821)))

(declare-fun c!1211539 () Bool)

(assert (=> d!2065585 (= c!1211539 ((_ is Nil!65541) (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541))))))

(assert (=> d!2065585 (= (++!14601 (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541)) (t!379313 s!2326)) lt!2410653)))

(assert (= (and d!2065585 c!1211539) b!6584385))

(assert (= (and d!2065585 (not c!1211539)) b!6584386))

(assert (= (and d!2065585 res!2700971) b!6584387))

(assert (= (and b!6584387 res!2700970) b!6584388))

(declare-fun m!7363524 () Bool)

(assert (=> b!6584387 m!7363524))

(assert (=> b!6584387 m!7363082))

(declare-fun m!7363526 () Bool)

(assert (=> b!6584387 m!7363526))

(declare-fun m!7363528 () Bool)

(assert (=> b!6584387 m!7363528))

(declare-fun m!7363530 () Bool)

(assert (=> b!6584386 m!7363530))

(declare-fun m!7363532 () Bool)

(assert (=> d!2065585 m!7363532))

(assert (=> d!2065585 m!7363082))

(declare-fun m!7363534 () Bool)

(assert (=> d!2065585 m!7363534))

(declare-fun m!7363536 () Bool)

(assert (=> d!2065585 m!7363536))

(assert (=> b!6583929 d!2065585))

(declare-fun b!6584391 () Bool)

(declare-fun res!2700972 () Bool)

(declare-fun e!3984822 () Bool)

(assert (=> b!6584391 (=> (not res!2700972) (not e!3984822))))

(declare-fun lt!2410654 () List!65665)

(assert (=> b!6584391 (= res!2700972 (= (size!40541 lt!2410654) (+ (size!40541 Nil!65541) (size!40541 (Cons!65541 (h!71989 s!2326) Nil!65541)))))))

(declare-fun b!6584390 () Bool)

(declare-fun e!3984823 () List!65665)

(assert (=> b!6584390 (= e!3984823 (Cons!65541 (h!71989 Nil!65541) (++!14601 (t!379313 Nil!65541) (Cons!65541 (h!71989 s!2326) Nil!65541))))))

(declare-fun b!6584392 () Bool)

(assert (=> b!6584392 (= e!3984822 (or (not (= (Cons!65541 (h!71989 s!2326) Nil!65541) Nil!65541)) (= lt!2410654 Nil!65541)))))

(declare-fun b!6584389 () Bool)

(assert (=> b!6584389 (= e!3984823 (Cons!65541 (h!71989 s!2326) Nil!65541))))

(declare-fun d!2065587 () Bool)

(assert (=> d!2065587 e!3984822))

(declare-fun res!2700973 () Bool)

(assert (=> d!2065587 (=> (not res!2700973) (not e!3984822))))

(assert (=> d!2065587 (= res!2700973 (= (content!12629 lt!2410654) ((_ map or) (content!12629 Nil!65541) (content!12629 (Cons!65541 (h!71989 s!2326) Nil!65541)))))))

(assert (=> d!2065587 (= lt!2410654 e!3984823)))

(declare-fun c!1211540 () Bool)

(assert (=> d!2065587 (= c!1211540 ((_ is Nil!65541) Nil!65541))))

(assert (=> d!2065587 (= (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541)) lt!2410654)))

(assert (= (and d!2065587 c!1211540) b!6584389))

(assert (= (and d!2065587 (not c!1211540)) b!6584390))

(assert (= (and d!2065587 res!2700973) b!6584391))

(assert (= (and b!6584391 res!2700972) b!6584392))

(declare-fun m!7363538 () Bool)

(assert (=> b!6584391 m!7363538))

(declare-fun m!7363540 () Bool)

(assert (=> b!6584391 m!7363540))

(declare-fun m!7363542 () Bool)

(assert (=> b!6584391 m!7363542))

(declare-fun m!7363544 () Bool)

(assert (=> b!6584390 m!7363544))

(declare-fun m!7363546 () Bool)

(assert (=> d!2065587 m!7363546))

(declare-fun m!7363548 () Bool)

(assert (=> d!2065587 m!7363548))

(declare-fun m!7363550 () Bool)

(assert (=> d!2065587 m!7363550))

(assert (=> b!6583929 d!2065587))

(declare-fun d!2065589 () Bool)

(assert (=> d!2065589 (= (++!14601 (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541)) (t!379313 s!2326)) s!2326)))

(declare-fun lt!2410657 () Unit!159155)

(declare-fun choose!49165 (List!65665 C!33180 List!65665 List!65665) Unit!159155)

(assert (=> d!2065589 (= lt!2410657 (choose!49165 Nil!65541 (h!71989 s!2326) (t!379313 s!2326) s!2326))))

(assert (=> d!2065589 (= (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) (t!379313 s!2326))) s!2326)))

(assert (=> d!2065589 (= (lemmaMoveElementToOtherListKeepsConcatEq!2598 Nil!65541 (h!71989 s!2326) (t!379313 s!2326) s!2326) lt!2410657)))

(declare-fun bs!1684569 () Bool)

(assert (= bs!1684569 d!2065589))

(assert (=> bs!1684569 m!7363082))

(assert (=> bs!1684569 m!7363082))

(assert (=> bs!1684569 m!7363084))

(declare-fun m!7363552 () Bool)

(assert (=> bs!1684569 m!7363552))

(declare-fun m!7363554 () Bool)

(assert (=> bs!1684569 m!7363554))

(assert (=> b!6583929 d!2065589))

(declare-fun b!6584393 () Bool)

(declare-fun lt!2410660 () Unit!159155)

(declare-fun lt!2410658 () Unit!159155)

(assert (=> b!6584393 (= lt!2410660 lt!2410658)))

(assert (=> b!6584393 (= (++!14601 (++!14601 (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541)) (Cons!65541 (h!71989 (t!379313 s!2326)) Nil!65541)) (t!379313 (t!379313 s!2326))) s!2326)))

(assert (=> b!6584393 (= lt!2410658 (lemmaMoveElementToOtherListKeepsConcatEq!2598 (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541)) (h!71989 (t!379313 s!2326)) (t!379313 (t!379313 s!2326)) s!2326))))

(declare-fun e!3984828 () Option!16346)

(assert (=> b!6584393 (= e!3984828 (findConcatSeparation!2760 (regOne!33422 r!7292) (regTwo!33422 r!7292) (++!14601 (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541)) (Cons!65541 (h!71989 (t!379313 s!2326)) Nil!65541)) (t!379313 (t!379313 s!2326)) s!2326))))

(declare-fun b!6584394 () Bool)

(declare-fun e!3984825 () Bool)

(declare-fun lt!2410659 () Option!16346)

(assert (=> b!6584394 (= e!3984825 (= (++!14601 (_1!36737 (get!22764 lt!2410659)) (_2!36737 (get!22764 lt!2410659))) s!2326))))

(declare-fun b!6584395 () Bool)

(declare-fun res!2700978 () Bool)

(assert (=> b!6584395 (=> (not res!2700978) (not e!3984825))))

(assert (=> b!6584395 (= res!2700978 (matchR!8638 (regOne!33422 r!7292) (_1!36737 (get!22764 lt!2410659))))))

(declare-fun b!6584396 () Bool)

(declare-fun e!3984826 () Bool)

(assert (=> b!6584396 (= e!3984826 (not (isDefined!13049 lt!2410659)))))

(declare-fun b!6584397 () Bool)

(declare-fun e!3984827 () Bool)

(assert (=> b!6584397 (= e!3984827 (matchR!8638 (regTwo!33422 r!7292) (t!379313 s!2326)))))

(declare-fun b!6584398 () Bool)

(declare-fun e!3984824 () Option!16346)

(assert (=> b!6584398 (= e!3984824 (Some!16345 (tuple2!66869 (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541)) (t!379313 s!2326))))))

(declare-fun b!6584399 () Bool)

(declare-fun res!2700974 () Bool)

(assert (=> b!6584399 (=> (not res!2700974) (not e!3984825))))

(assert (=> b!6584399 (= res!2700974 (matchR!8638 (regTwo!33422 r!7292) (_2!36737 (get!22764 lt!2410659))))))

(declare-fun b!6584400 () Bool)

(assert (=> b!6584400 (= e!3984828 None!16345)))

(declare-fun d!2065591 () Bool)

(assert (=> d!2065591 e!3984826))

(declare-fun res!2700977 () Bool)

(assert (=> d!2065591 (=> res!2700977 e!3984826)))

(assert (=> d!2065591 (= res!2700977 e!3984825)))

(declare-fun res!2700976 () Bool)

(assert (=> d!2065591 (=> (not res!2700976) (not e!3984825))))

(assert (=> d!2065591 (= res!2700976 (isDefined!13049 lt!2410659))))

(assert (=> d!2065591 (= lt!2410659 e!3984824)))

(declare-fun c!1211542 () Bool)

(assert (=> d!2065591 (= c!1211542 e!3984827)))

(declare-fun res!2700975 () Bool)

(assert (=> d!2065591 (=> (not res!2700975) (not e!3984827))))

(assert (=> d!2065591 (= res!2700975 (matchR!8638 (regOne!33422 r!7292) (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541))))))

(assert (=> d!2065591 (validRegex!8191 (regOne!33422 r!7292))))

(assert (=> d!2065591 (= (findConcatSeparation!2760 (regOne!33422 r!7292) (regTwo!33422 r!7292) (++!14601 Nil!65541 (Cons!65541 (h!71989 s!2326) Nil!65541)) (t!379313 s!2326) s!2326) lt!2410659)))

(declare-fun b!6584401 () Bool)

(assert (=> b!6584401 (= e!3984824 e!3984828)))

(declare-fun c!1211541 () Bool)

(assert (=> b!6584401 (= c!1211541 ((_ is Nil!65541) (t!379313 s!2326)))))

(assert (= (and d!2065591 res!2700975) b!6584397))

(assert (= (and d!2065591 c!1211542) b!6584398))

(assert (= (and d!2065591 (not c!1211542)) b!6584401))

(assert (= (and b!6584401 c!1211541) b!6584400))

(assert (= (and b!6584401 (not c!1211541)) b!6584393))

(assert (= (and d!2065591 res!2700976) b!6584395))

(assert (= (and b!6584395 res!2700978) b!6584399))

(assert (= (and b!6584399 res!2700974) b!6584394))

(assert (= (and d!2065591 (not res!2700977)) b!6584396))

(declare-fun m!7363556 () Bool)

(assert (=> b!6584399 m!7363556))

(declare-fun m!7363558 () Bool)

(assert (=> b!6584399 m!7363558))

(assert (=> b!6584394 m!7363556))

(declare-fun m!7363560 () Bool)

(assert (=> b!6584394 m!7363560))

(assert (=> b!6584393 m!7363082))

(declare-fun m!7363562 () Bool)

(assert (=> b!6584393 m!7363562))

(assert (=> b!6584393 m!7363562))

(declare-fun m!7363564 () Bool)

(assert (=> b!6584393 m!7363564))

(assert (=> b!6584393 m!7363082))

(declare-fun m!7363566 () Bool)

(assert (=> b!6584393 m!7363566))

(assert (=> b!6584393 m!7363562))

(declare-fun m!7363568 () Bool)

(assert (=> b!6584393 m!7363568))

(declare-fun m!7363570 () Bool)

(assert (=> b!6584396 m!7363570))

(declare-fun m!7363572 () Bool)

(assert (=> b!6584397 m!7363572))

(assert (=> b!6584395 m!7363556))

(declare-fun m!7363574 () Bool)

(assert (=> b!6584395 m!7363574))

(assert (=> d!2065591 m!7363570))

(assert (=> d!2065591 m!7363082))

(declare-fun m!7363576 () Bool)

(assert (=> d!2065591 m!7363576))

(assert (=> d!2065591 m!7363098))

(assert (=> b!6583929 d!2065591))

(assert (=> d!2065475 d!2065473))

(assert (=> d!2065475 d!2065471))

(declare-fun d!2065593 () Bool)

(assert (=> d!2065593 (= (matchR!8638 r!7292 s!2326) (matchRSpec!3556 r!7292 s!2326))))

(assert (=> d!2065593 true))

(declare-fun _$88!5270 () Unit!159155)

(assert (=> d!2065593 (= (choose!49156 r!7292 s!2326) _$88!5270)))

(declare-fun bs!1684570 () Bool)

(assert (= bs!1684570 d!2065593))

(assert (=> bs!1684570 m!7362544))

(assert (=> bs!1684570 m!7362542))

(assert (=> d!2065475 d!2065593))

(assert (=> d!2065475 d!2065383))

(declare-fun d!2065595 () Bool)

(assert (=> d!2065595 true))

(assert (=> d!2065595 true))

(declare-fun res!2700979 () Bool)

(assert (=> d!2065595 (= (choose!49158 lambda!366700) res!2700979)))

(assert (=> d!2065393 d!2065595))

(assert (=> d!2065465 d!2065565))

(assert (=> b!6583530 d!2065507))

(declare-fun d!2065597 () Bool)

(assert (=> d!2065597 (= (head!13362 (t!379312 (exprs!6339 (h!71990 zl!343)))) (h!71988 (t!379312 (exprs!6339 (h!71990 zl!343)))))))

(assert (=> b!6583874 d!2065597))

(declare-fun d!2065599 () Bool)

(declare-fun c!1211543 () Bool)

(assert (=> d!2065599 (= c!1211543 (isEmpty!37801 (tail!12446 s!2326)))))

(declare-fun e!3984829 () Bool)

(assert (=> d!2065599 (= (matchZipper!2467 (derivationStepZipper!2421 lt!2410479 (head!13361 s!2326)) (tail!12446 s!2326)) e!3984829)))

(declare-fun b!6584402 () Bool)

(assert (=> b!6584402 (= e!3984829 (nullableZipper!2200 (derivationStepZipper!2421 lt!2410479 (head!13361 s!2326))))))

(declare-fun b!6584403 () Bool)

(assert (=> b!6584403 (= e!3984829 (matchZipper!2467 (derivationStepZipper!2421 (derivationStepZipper!2421 lt!2410479 (head!13361 s!2326)) (head!13361 (tail!12446 s!2326))) (tail!12446 (tail!12446 s!2326))))))

(assert (= (and d!2065599 c!1211543) b!6584402))

(assert (= (and d!2065599 (not c!1211543)) b!6584403))

(assert (=> d!2065599 m!7362834))

(assert (=> d!2065599 m!7362838))

(assert (=> b!6584402 m!7363256))

(declare-fun m!7363578 () Bool)

(assert (=> b!6584402 m!7363578))

(assert (=> b!6584403 m!7362834))

(declare-fun m!7363580 () Bool)

(assert (=> b!6584403 m!7363580))

(assert (=> b!6584403 m!7363256))

(assert (=> b!6584403 m!7363580))

(declare-fun m!7363582 () Bool)

(assert (=> b!6584403 m!7363582))

(assert (=> b!6584403 m!7362834))

(declare-fun m!7363584 () Bool)

(assert (=> b!6584403 m!7363584))

(assert (=> b!6584403 m!7363582))

(assert (=> b!6584403 m!7363584))

(declare-fun m!7363586 () Bool)

(assert (=> b!6584403 m!7363586))

(assert (=> b!6584081 d!2065599))

(declare-fun bs!1684571 () Bool)

(declare-fun d!2065601 () Bool)

(assert (= bs!1684571 (and d!2065601 b!6583173)))

(declare-fun lambda!366802 () Int)

(assert (=> bs!1684571 (= (= (head!13361 s!2326) (h!71989 s!2326)) (= lambda!366802 lambda!366701))))

(declare-fun bs!1684572 () Bool)

(assert (= bs!1684572 (and d!2065601 d!2065431)))

(assert (=> bs!1684572 (= (= (head!13361 s!2326) (h!71989 s!2326)) (= lambda!366802 lambda!366773))))

(declare-fun bs!1684573 () Bool)

(assert (= bs!1684573 (and d!2065601 d!2065451)))

(assert (=> bs!1684573 (= (= (head!13361 s!2326) (h!71989 s!2326)) (= lambda!366802 lambda!366780))))

(declare-fun bs!1684574 () Bool)

(assert (= bs!1684574 (and d!2065601 d!2065577)))

(assert (=> bs!1684574 (= (= (head!13361 s!2326) (head!13361 (t!379313 s!2326))) (= lambda!366802 lambda!366801))))

(assert (=> d!2065601 true))

(assert (=> d!2065601 (= (derivationStepZipper!2421 lt!2410479 (head!13361 s!2326)) (flatMap!1960 lt!2410479 lambda!366802))))

(declare-fun bs!1684575 () Bool)

(assert (= bs!1684575 d!2065601))

(declare-fun m!7363588 () Bool)

(assert (=> bs!1684575 m!7363588))

(assert (=> b!6584081 d!2065601))

(assert (=> b!6584081 d!2065507))

(assert (=> b!6584081 d!2065499))

(declare-fun b!6584404 () Bool)

(declare-fun e!3984830 () Bool)

(declare-fun e!3984833 () Bool)

(assert (=> b!6584404 (= e!3984830 e!3984833)))

(declare-fun res!2700982 () Bool)

(assert (=> b!6584404 (=> (not res!2700982) (not e!3984833))))

(declare-fun lt!2410661 () Bool)

(assert (=> b!6584404 (= res!2700982 (not lt!2410661))))

(declare-fun b!6584405 () Bool)

(declare-fun res!2700983 () Bool)

(assert (=> b!6584405 (=> res!2700983 e!3984830)))

(declare-fun e!3984834 () Bool)

(assert (=> b!6584405 (= res!2700983 e!3984834)))

(declare-fun res!2700981 () Bool)

(assert (=> b!6584405 (=> (not res!2700981) (not e!3984834))))

(assert (=> b!6584405 (= res!2700981 lt!2410661)))

(declare-fun b!6584406 () Bool)

(declare-fun res!2700987 () Bool)

(declare-fun e!3984832 () Bool)

(assert (=> b!6584406 (=> res!2700987 e!3984832)))

(assert (=> b!6584406 (= res!2700987 (not (isEmpty!37801 (tail!12446 s!2326))))))

(declare-fun b!6584407 () Bool)

(declare-fun e!3984835 () Bool)

(declare-fun call!574323 () Bool)

(assert (=> b!6584407 (= e!3984835 (= lt!2410661 call!574323))))

(declare-fun b!6584408 () Bool)

(declare-fun res!2700980 () Bool)

(assert (=> b!6584408 (=> (not res!2700980) (not e!3984834))))

(assert (=> b!6584408 (= res!2700980 (not call!574323))))

(declare-fun b!6584409 () Bool)

(declare-fun e!3984831 () Bool)

(assert (=> b!6584409 (= e!3984831 (not lt!2410661))))

(declare-fun b!6584410 () Bool)

(assert (=> b!6584410 (= e!3984832 (not (= (head!13361 s!2326) (c!1211172 (regTwo!33422 r!7292)))))))

(declare-fun b!6584411 () Bool)

(assert (=> b!6584411 (= e!3984835 e!3984831)))

(declare-fun c!1211546 () Bool)

(assert (=> b!6584411 (= c!1211546 ((_ is EmptyLang!16455) (regTwo!33422 r!7292)))))

(declare-fun b!6584412 () Bool)

(declare-fun e!3984836 () Bool)

(assert (=> b!6584412 (= e!3984836 (nullable!6448 (regTwo!33422 r!7292)))))

(declare-fun b!6584413 () Bool)

(assert (=> b!6584413 (= e!3984833 e!3984832)))

(declare-fun res!2700985 () Bool)

(assert (=> b!6584413 (=> res!2700985 e!3984832)))

(assert (=> b!6584413 (= res!2700985 call!574323)))

(declare-fun b!6584414 () Bool)

(declare-fun res!2700984 () Bool)

(assert (=> b!6584414 (=> (not res!2700984) (not e!3984834))))

(assert (=> b!6584414 (= res!2700984 (isEmpty!37801 (tail!12446 s!2326)))))

(declare-fun d!2065603 () Bool)

(assert (=> d!2065603 e!3984835))

(declare-fun c!1211544 () Bool)

(assert (=> d!2065603 (= c!1211544 ((_ is EmptyExpr!16455) (regTwo!33422 r!7292)))))

(assert (=> d!2065603 (= lt!2410661 e!3984836)))

(declare-fun c!1211545 () Bool)

(assert (=> d!2065603 (= c!1211545 (isEmpty!37801 s!2326))))

(assert (=> d!2065603 (validRegex!8191 (regTwo!33422 r!7292))))

(assert (=> d!2065603 (= (matchR!8638 (regTwo!33422 r!7292) s!2326) lt!2410661)))

(declare-fun bm!574318 () Bool)

(assert (=> bm!574318 (= call!574323 (isEmpty!37801 s!2326))))

(declare-fun b!6584415 () Bool)

(assert (=> b!6584415 (= e!3984836 (matchR!8638 (derivativeStep!5139 (regTwo!33422 r!7292) (head!13361 s!2326)) (tail!12446 s!2326)))))

(declare-fun b!6584416 () Bool)

(assert (=> b!6584416 (= e!3984834 (= (head!13361 s!2326) (c!1211172 (regTwo!33422 r!7292))))))

(declare-fun b!6584417 () Bool)

(declare-fun res!2700986 () Bool)

(assert (=> b!6584417 (=> res!2700986 e!3984830)))

(assert (=> b!6584417 (= res!2700986 (not ((_ is ElementMatch!16455) (regTwo!33422 r!7292))))))

(assert (=> b!6584417 (= e!3984831 e!3984830)))

(assert (= (and d!2065603 c!1211545) b!6584412))

(assert (= (and d!2065603 (not c!1211545)) b!6584415))

(assert (= (and d!2065603 c!1211544) b!6584407))

(assert (= (and d!2065603 (not c!1211544)) b!6584411))

(assert (= (and b!6584411 c!1211546) b!6584409))

(assert (= (and b!6584411 (not c!1211546)) b!6584417))

(assert (= (and b!6584417 (not res!2700986)) b!6584405))

(assert (= (and b!6584405 res!2700981) b!6584408))

(assert (= (and b!6584408 res!2700980) b!6584414))

(assert (= (and b!6584414 res!2700984) b!6584416))

(assert (= (and b!6584405 (not res!2700983)) b!6584404))

(assert (= (and b!6584404 res!2700982) b!6584413))

(assert (= (and b!6584413 (not res!2700985)) b!6584406))

(assert (= (and b!6584406 (not res!2700987)) b!6584410))

(assert (= (or b!6584407 b!6584408 b!6584413) bm!574318))

(assert (=> bm!574318 m!7362824))

(assert (=> d!2065603 m!7362824))

(declare-fun m!7363590 () Bool)

(assert (=> d!2065603 m!7363590))

(declare-fun m!7363592 () Bool)

(assert (=> b!6584412 m!7363592))

(assert (=> b!6584416 m!7362830))

(assert (=> b!6584415 m!7362830))

(assert (=> b!6584415 m!7362830))

(declare-fun m!7363594 () Bool)

(assert (=> b!6584415 m!7363594))

(assert (=> b!6584415 m!7362834))

(assert (=> b!6584415 m!7363594))

(assert (=> b!6584415 m!7362834))

(declare-fun m!7363596 () Bool)

(assert (=> b!6584415 m!7363596))

(assert (=> b!6584410 m!7362830))

(assert (=> b!6584406 m!7362834))

(assert (=> b!6584406 m!7362834))

(assert (=> b!6584406 m!7362838))

(assert (=> b!6584414 m!7362834))

(assert (=> b!6584414 m!7362834))

(assert (=> b!6584414 m!7362838))

(assert (=> b!6583933 d!2065603))

(assert (=> b!6583870 d!2065387))

(declare-fun d!2065607 () Bool)

(assert (=> d!2065607 (= (isEmpty!37801 s!2326) ((_ is Nil!65541) s!2326))))

(assert (=> d!2065453 d!2065607))

(declare-fun c!1211548 () Bool)

(declare-fun bm!574319 () Bool)

(declare-fun call!574326 () Bool)

(assert (=> bm!574319 (= call!574326 (validRegex!8191 (ite c!1211548 (regTwo!33423 (ite c!1211457 (regTwo!33423 lt!2410486) (regTwo!33422 lt!2410486))) (regTwo!33422 (ite c!1211457 (regTwo!33423 lt!2410486) (regTwo!33422 lt!2410486))))))))

(declare-fun b!6584418 () Bool)

(declare-fun e!3984838 () Bool)

(declare-fun e!3984841 () Bool)

(assert (=> b!6584418 (= e!3984838 e!3984841)))

(declare-fun c!1211547 () Bool)

(assert (=> b!6584418 (= c!1211547 ((_ is Star!16455) (ite c!1211457 (regTwo!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(declare-fun b!6584419 () Bool)

(declare-fun e!3984837 () Bool)

(assert (=> b!6584419 (= e!3984841 e!3984837)))

(assert (=> b!6584419 (= c!1211548 ((_ is Union!16455) (ite c!1211457 (regTwo!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(declare-fun b!6584420 () Bool)

(declare-fun e!3984840 () Bool)

(assert (=> b!6584420 (= e!3984840 call!574326)))

(declare-fun b!6584421 () Bool)

(declare-fun e!3984839 () Bool)

(assert (=> b!6584421 (= e!3984841 e!3984839)))

(declare-fun res!2700989 () Bool)

(assert (=> b!6584421 (= res!2700989 (not (nullable!6448 (reg!16784 (ite c!1211457 (regTwo!33423 lt!2410486) (regTwo!33422 lt!2410486))))))))

(assert (=> b!6584421 (=> (not res!2700989) (not e!3984839))))

(declare-fun bm!574320 () Bool)

(declare-fun call!574324 () Bool)

(assert (=> bm!574320 (= call!574324 (validRegex!8191 (ite c!1211547 (reg!16784 (ite c!1211457 (regTwo!33423 lt!2410486) (regTwo!33422 lt!2410486))) (ite c!1211548 (regOne!33423 (ite c!1211457 (regTwo!33423 lt!2410486) (regTwo!33422 lt!2410486))) (regOne!33422 (ite c!1211457 (regTwo!33423 lt!2410486) (regTwo!33422 lt!2410486)))))))))

(declare-fun b!6584423 () Bool)

(declare-fun e!3984843 () Bool)

(declare-fun e!3984842 () Bool)

(assert (=> b!6584423 (= e!3984843 e!3984842)))

(declare-fun res!2700990 () Bool)

(assert (=> b!6584423 (=> (not res!2700990) (not e!3984842))))

(declare-fun call!574325 () Bool)

(assert (=> b!6584423 (= res!2700990 call!574325)))

(declare-fun b!6584424 () Bool)

(declare-fun res!2700992 () Bool)

(assert (=> b!6584424 (=> (not res!2700992) (not e!3984840))))

(assert (=> b!6584424 (= res!2700992 call!574325)))

(assert (=> b!6584424 (= e!3984837 e!3984840)))

(declare-fun bm!574321 () Bool)

(assert (=> bm!574321 (= call!574325 call!574324)))

(declare-fun b!6584425 () Bool)

(declare-fun res!2700988 () Bool)

(assert (=> b!6584425 (=> res!2700988 e!3984843)))

(assert (=> b!6584425 (= res!2700988 (not ((_ is Concat!25300) (ite c!1211457 (regTwo!33423 lt!2410486) (regTwo!33422 lt!2410486)))))))

(assert (=> b!6584425 (= e!3984837 e!3984843)))

(declare-fun b!6584426 () Bool)

(assert (=> b!6584426 (= e!3984839 call!574324)))

(declare-fun d!2065609 () Bool)

(declare-fun res!2700991 () Bool)

(assert (=> d!2065609 (=> res!2700991 e!3984838)))

(assert (=> d!2065609 (= res!2700991 ((_ is ElementMatch!16455) (ite c!1211457 (regTwo!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(assert (=> d!2065609 (= (validRegex!8191 (ite c!1211457 (regTwo!33423 lt!2410486) (regTwo!33422 lt!2410486))) e!3984838)))

(declare-fun b!6584422 () Bool)

(assert (=> b!6584422 (= e!3984842 call!574326)))

(assert (= (and d!2065609 (not res!2700991)) b!6584418))

(assert (= (and b!6584418 c!1211547) b!6584421))

(assert (= (and b!6584418 (not c!1211547)) b!6584419))

(assert (= (and b!6584421 res!2700989) b!6584426))

(assert (= (and b!6584419 c!1211548) b!6584424))

(assert (= (and b!6584419 (not c!1211548)) b!6584425))

(assert (= (and b!6584424 res!2700992) b!6584420))

(assert (= (and b!6584425 (not res!2700988)) b!6584423))

(assert (= (and b!6584423 res!2700990) b!6584422))

(assert (= (or b!6584420 b!6584422) bm!574319))

(assert (= (or b!6584424 b!6584423) bm!574321))

(assert (= (or b!6584426 bm!574321) bm!574320))

(declare-fun m!7363598 () Bool)

(assert (=> bm!574319 m!7363598))

(declare-fun m!7363600 () Bool)

(assert (=> b!6584421 m!7363600))

(declare-fun m!7363602 () Bool)

(assert (=> bm!574320 m!7363602))

(assert (=> bm!574254 d!2065609))

(assert (=> d!2065413 d!2065409))

(declare-fun d!2065611 () Bool)

(assert (=> d!2065611 (= (flatMap!1960 lt!2410491 lambda!366701) (dynLambda!26085 lambda!366701 lt!2410469))))

(assert (=> d!2065611 true))

(declare-fun _$13!3842 () Unit!159155)

(assert (=> d!2065611 (= (choose!49161 lt!2410491 lt!2410469 lambda!366701) _$13!3842)))

(declare-fun b_lambda!249111 () Bool)

(assert (=> (not b_lambda!249111) (not d!2065611)))

(declare-fun bs!1684583 () Bool)

(assert (= bs!1684583 d!2065611))

(assert (=> bs!1684583 m!7362512))

(assert (=> bs!1684583 m!7363152))

(assert (=> d!2065413 d!2065611))

(declare-fun bm!574322 () Bool)

(declare-fun call!574329 () Bool)

(declare-fun c!1211550 () Bool)

(assert (=> bm!574322 (= call!574329 (validRegex!8191 (ite c!1211550 (regTwo!33423 lt!2410587) (regTwo!33422 lt!2410587))))))

(declare-fun b!6584427 () Bool)

(declare-fun e!3984845 () Bool)

(declare-fun e!3984848 () Bool)

(assert (=> b!6584427 (= e!3984845 e!3984848)))

(declare-fun c!1211549 () Bool)

(assert (=> b!6584427 (= c!1211549 ((_ is Star!16455) lt!2410587))))

(declare-fun b!6584428 () Bool)

(declare-fun e!3984844 () Bool)

(assert (=> b!6584428 (= e!3984848 e!3984844)))

(assert (=> b!6584428 (= c!1211550 ((_ is Union!16455) lt!2410587))))

(declare-fun b!6584429 () Bool)

(declare-fun e!3984847 () Bool)

(assert (=> b!6584429 (= e!3984847 call!574329)))

(declare-fun b!6584430 () Bool)

(declare-fun e!3984846 () Bool)

(assert (=> b!6584430 (= e!3984848 e!3984846)))

(declare-fun res!2700994 () Bool)

(assert (=> b!6584430 (= res!2700994 (not (nullable!6448 (reg!16784 lt!2410587))))))

(assert (=> b!6584430 (=> (not res!2700994) (not e!3984846))))

(declare-fun call!574327 () Bool)

(declare-fun bm!574323 () Bool)

(assert (=> bm!574323 (= call!574327 (validRegex!8191 (ite c!1211549 (reg!16784 lt!2410587) (ite c!1211550 (regOne!33423 lt!2410587) (regOne!33422 lt!2410587)))))))

(declare-fun b!6584432 () Bool)

(declare-fun e!3984850 () Bool)

(declare-fun e!3984849 () Bool)

(assert (=> b!6584432 (= e!3984850 e!3984849)))

(declare-fun res!2700995 () Bool)

(assert (=> b!6584432 (=> (not res!2700995) (not e!3984849))))

(declare-fun call!574328 () Bool)

(assert (=> b!6584432 (= res!2700995 call!574328)))

(declare-fun b!6584433 () Bool)

(declare-fun res!2700997 () Bool)

(assert (=> b!6584433 (=> (not res!2700997) (not e!3984847))))

(assert (=> b!6584433 (= res!2700997 call!574328)))

(assert (=> b!6584433 (= e!3984844 e!3984847)))

(declare-fun bm!574324 () Bool)

(assert (=> bm!574324 (= call!574328 call!574327)))

(declare-fun b!6584434 () Bool)

(declare-fun res!2700993 () Bool)

(assert (=> b!6584434 (=> res!2700993 e!3984850)))

(assert (=> b!6584434 (= res!2700993 (not ((_ is Concat!25300) lt!2410587)))))

(assert (=> b!6584434 (= e!3984844 e!3984850)))

(declare-fun b!6584435 () Bool)

(assert (=> b!6584435 (= e!3984846 call!574327)))

(declare-fun d!2065615 () Bool)

(declare-fun res!2700996 () Bool)

(assert (=> d!2065615 (=> res!2700996 e!3984845)))

(assert (=> d!2065615 (= res!2700996 ((_ is ElementMatch!16455) lt!2410587))))

(assert (=> d!2065615 (= (validRegex!8191 lt!2410587) e!3984845)))

(declare-fun b!6584431 () Bool)

(assert (=> b!6584431 (= e!3984849 call!574329)))

(assert (= (and d!2065615 (not res!2700996)) b!6584427))

(assert (= (and b!6584427 c!1211549) b!6584430))

(assert (= (and b!6584427 (not c!1211549)) b!6584428))

(assert (= (and b!6584430 res!2700994) b!6584435))

(assert (= (and b!6584428 c!1211550) b!6584433))

(assert (= (and b!6584428 (not c!1211550)) b!6584434))

(assert (= (and b!6584433 res!2700997) b!6584429))

(assert (= (and b!6584434 (not res!2700993)) b!6584432))

(assert (= (and b!6584432 res!2700995) b!6584431))

(assert (= (or b!6584429 b!6584431) bm!574322))

(assert (= (or b!6584433 b!6584432) bm!574324))

(assert (= (or b!6584435 bm!574324) bm!574323))

(declare-fun m!7363606 () Bool)

(assert (=> bm!574322 m!7363606))

(declare-fun m!7363608 () Bool)

(assert (=> b!6584430 m!7363608))

(declare-fun m!7363610 () Bool)

(assert (=> bm!574323 m!7363610))

(assert (=> d!2065381 d!2065615))

(declare-fun bs!1684584 () Bool)

(declare-fun d!2065619 () Bool)

(assert (= bs!1684584 (and d!2065619 d!2065261)))

(declare-fun lambda!366804 () Int)

(assert (=> bs!1684584 (= lambda!366804 lambda!366714)))

(declare-fun bs!1684585 () Bool)

(assert (= bs!1684585 (and d!2065619 d!2065477)))

(assert (=> bs!1684585 (= lambda!366804 lambda!366783)))

(declare-fun bs!1684586 () Bool)

(assert (= bs!1684586 (and d!2065619 d!2065379)))

(assert (=> bs!1684586 (= lambda!366804 lambda!366760)))

(declare-fun bs!1684587 () Bool)

(assert (= bs!1684587 (and d!2065619 d!2065439)))

(assert (=> bs!1684587 (= lambda!366804 lambda!366779)))

(declare-fun bs!1684588 () Bool)

(assert (= bs!1684588 (and d!2065619 d!2065401)))

(assert (=> bs!1684588 (= lambda!366804 lambda!366770)))

(declare-fun bs!1684589 () Bool)

(assert (= bs!1684589 (and d!2065619 d!2065515)))

(assert (=> bs!1684589 (= lambda!366804 lambda!366796)))

(declare-fun bs!1684590 () Bool)

(assert (= bs!1684590 (and d!2065619 d!2065517)))

(assert (=> bs!1684590 (= lambda!366804 lambda!366797)))

(declare-fun bs!1684591 () Bool)

(assert (= bs!1684591 (and d!2065619 d!2065437)))

(assert (=> bs!1684591 (= lambda!366804 lambda!366776)))

(declare-fun b!6584436 () Bool)

(declare-fun e!3984852 () Bool)

(assert (=> b!6584436 (= e!3984852 (isEmpty!37797 (t!379312 (unfocusZipperList!1876 (Cons!65542 lt!2410472 Nil!65542)))))))

(declare-fun b!6584437 () Bool)

(declare-fun e!3984854 () Regex!16455)

(assert (=> b!6584437 (= e!3984854 (h!71988 (unfocusZipperList!1876 (Cons!65542 lt!2410472 Nil!65542))))))

(declare-fun b!6584438 () Bool)

(declare-fun e!3984855 () Regex!16455)

(assert (=> b!6584438 (= e!3984855 (Union!16455 (h!71988 (unfocusZipperList!1876 (Cons!65542 lt!2410472 Nil!65542))) (generalisedUnion!2299 (t!379312 (unfocusZipperList!1876 (Cons!65542 lt!2410472 Nil!65542))))))))

(declare-fun b!6584439 () Bool)

(declare-fun e!3984856 () Bool)

(declare-fun e!3984851 () Bool)

(assert (=> b!6584439 (= e!3984856 e!3984851)))

(declare-fun c!1211553 () Bool)

(assert (=> b!6584439 (= c!1211553 (isEmpty!37797 (tail!12447 (unfocusZipperList!1876 (Cons!65542 lt!2410472 Nil!65542)))))))

(declare-fun b!6584440 () Bool)

(declare-fun e!3984853 () Bool)

(assert (=> b!6584440 (= e!3984853 e!3984856)))

(declare-fun c!1211551 () Bool)

(assert (=> b!6584440 (= c!1211551 (isEmpty!37797 (unfocusZipperList!1876 (Cons!65542 lt!2410472 Nil!65542))))))

(declare-fun b!6584441 () Bool)

(assert (=> b!6584441 (= e!3984855 EmptyLang!16455)))

(declare-fun b!6584442 () Bool)

(assert (=> b!6584442 (= e!3984854 e!3984855)))

(declare-fun c!1211552 () Bool)

(assert (=> b!6584442 (= c!1211552 ((_ is Cons!65540) (unfocusZipperList!1876 (Cons!65542 lt!2410472 Nil!65542))))))

(declare-fun b!6584444 () Bool)

(declare-fun lt!2410662 () Regex!16455)

(assert (=> b!6584444 (= e!3984851 (isUnion!1272 lt!2410662))))

(declare-fun b!6584445 () Bool)

(assert (=> b!6584445 (= e!3984851 (= lt!2410662 (head!13362 (unfocusZipperList!1876 (Cons!65542 lt!2410472 Nil!65542)))))))

(declare-fun b!6584443 () Bool)

(assert (=> b!6584443 (= e!3984856 (isEmptyLang!1842 lt!2410662))))

(assert (=> d!2065619 e!3984853))

(declare-fun res!2700998 () Bool)

(assert (=> d!2065619 (=> (not res!2700998) (not e!3984853))))

(assert (=> d!2065619 (= res!2700998 (validRegex!8191 lt!2410662))))

(assert (=> d!2065619 (= lt!2410662 e!3984854)))

(declare-fun c!1211554 () Bool)

(assert (=> d!2065619 (= c!1211554 e!3984852)))

(declare-fun res!2700999 () Bool)

(assert (=> d!2065619 (=> (not res!2700999) (not e!3984852))))

(assert (=> d!2065619 (= res!2700999 ((_ is Cons!65540) (unfocusZipperList!1876 (Cons!65542 lt!2410472 Nil!65542))))))

(assert (=> d!2065619 (forall!15634 (unfocusZipperList!1876 (Cons!65542 lt!2410472 Nil!65542)) lambda!366804)))

(assert (=> d!2065619 (= (generalisedUnion!2299 (unfocusZipperList!1876 (Cons!65542 lt!2410472 Nil!65542))) lt!2410662)))

(assert (= (and d!2065619 res!2700999) b!6584436))

(assert (= (and d!2065619 c!1211554) b!6584437))

(assert (= (and d!2065619 (not c!1211554)) b!6584442))

(assert (= (and b!6584442 c!1211552) b!6584438))

(assert (= (and b!6584442 (not c!1211552)) b!6584441))

(assert (= (and d!2065619 res!2700998) b!6584440))

(assert (= (and b!6584440 c!1211551) b!6584443))

(assert (= (and b!6584440 (not c!1211551)) b!6584439))

(assert (= (and b!6584439 c!1211553) b!6584445))

(assert (= (and b!6584439 (not c!1211553)) b!6584444))

(assert (=> b!6584440 m!7363054))

(declare-fun m!7363612 () Bool)

(assert (=> b!6584440 m!7363612))

(declare-fun m!7363614 () Bool)

(assert (=> b!6584438 m!7363614))

(assert (=> b!6584439 m!7363054))

(declare-fun m!7363616 () Bool)

(assert (=> b!6584439 m!7363616))

(assert (=> b!6584439 m!7363616))

(declare-fun m!7363618 () Bool)

(assert (=> b!6584439 m!7363618))

(assert (=> b!6584445 m!7363054))

(declare-fun m!7363620 () Bool)

(assert (=> b!6584445 m!7363620))

(declare-fun m!7363622 () Bool)

(assert (=> b!6584444 m!7363622))

(declare-fun m!7363624 () Bool)

(assert (=> d!2065619 m!7363624))

(assert (=> d!2065619 m!7363054))

(declare-fun m!7363626 () Bool)

(assert (=> d!2065619 m!7363626))

(declare-fun m!7363630 () Bool)

(assert (=> b!6584436 m!7363630))

(declare-fun m!7363632 () Bool)

(assert (=> b!6584443 m!7363632))

(assert (=> d!2065381 d!2065619))

(declare-fun bs!1684592 () Bool)

(declare-fun d!2065623 () Bool)

(assert (= bs!1684592 (and d!2065623 d!2065261)))

(declare-fun lambda!366805 () Int)

(assert (=> bs!1684592 (= lambda!366805 lambda!366714)))

(declare-fun bs!1684593 () Bool)

(assert (= bs!1684593 (and d!2065623 d!2065477)))

(assert (=> bs!1684593 (= lambda!366805 lambda!366783)))

(declare-fun bs!1684594 () Bool)

(assert (= bs!1684594 (and d!2065623 d!2065379)))

(assert (=> bs!1684594 (= lambda!366805 lambda!366760)))

(declare-fun bs!1684595 () Bool)

(assert (= bs!1684595 (and d!2065623 d!2065619)))

(assert (=> bs!1684595 (= lambda!366805 lambda!366804)))

(declare-fun bs!1684596 () Bool)

(assert (= bs!1684596 (and d!2065623 d!2065439)))

(assert (=> bs!1684596 (= lambda!366805 lambda!366779)))

(declare-fun bs!1684597 () Bool)

(assert (= bs!1684597 (and d!2065623 d!2065401)))

(assert (=> bs!1684597 (= lambda!366805 lambda!366770)))

(declare-fun bs!1684598 () Bool)

(assert (= bs!1684598 (and d!2065623 d!2065515)))

(assert (=> bs!1684598 (= lambda!366805 lambda!366796)))

(declare-fun bs!1684599 () Bool)

(assert (= bs!1684599 (and d!2065623 d!2065517)))

(assert (=> bs!1684599 (= lambda!366805 lambda!366797)))

(declare-fun bs!1684600 () Bool)

(assert (= bs!1684600 (and d!2065623 d!2065437)))

(assert (=> bs!1684600 (= lambda!366805 lambda!366776)))

(declare-fun lt!2410663 () List!65664)

(assert (=> d!2065623 (forall!15634 lt!2410663 lambda!366805)))

(declare-fun e!3984860 () List!65664)

(assert (=> d!2065623 (= lt!2410663 e!3984860)))

(declare-fun c!1211557 () Bool)

(assert (=> d!2065623 (= c!1211557 ((_ is Cons!65542) (Cons!65542 lt!2410472 Nil!65542)))))

(assert (=> d!2065623 (= (unfocusZipperList!1876 (Cons!65542 lt!2410472 Nil!65542)) lt!2410663)))

(declare-fun b!6584451 () Bool)

(assert (=> b!6584451 (= e!3984860 (Cons!65540 (generalisedConcat!2052 (exprs!6339 (h!71990 (Cons!65542 lt!2410472 Nil!65542)))) (unfocusZipperList!1876 (t!379314 (Cons!65542 lt!2410472 Nil!65542)))))))

(declare-fun b!6584452 () Bool)

(assert (=> b!6584452 (= e!3984860 Nil!65540)))

(assert (= (and d!2065623 c!1211557) b!6584451))

(assert (= (and d!2065623 (not c!1211557)) b!6584452))

(declare-fun m!7363638 () Bool)

(assert (=> d!2065623 m!7363638))

(declare-fun m!7363640 () Bool)

(assert (=> b!6584451 m!7363640))

(declare-fun m!7363642 () Bool)

(assert (=> b!6584451 m!7363642))

(assert (=> d!2065381 d!2065623))

(declare-fun d!2065629 () Bool)

(assert (=> d!2065629 (= (flatMap!1960 lt!2410482 lambda!366773) (choose!49162 lt!2410482 lambda!366773))))

(declare-fun bs!1684601 () Bool)

(assert (= bs!1684601 d!2065629))

(declare-fun m!7363644 () Bool)

(assert (=> bs!1684601 m!7363644))

(assert (=> d!2065431 d!2065629))

(assert (=> b!6584130 d!2065507))

(declare-fun b!6584453 () Bool)

(declare-fun e!3984866 () (InoxSet Context!11678))

(declare-fun e!3984862 () (InoxSet Context!11678))

(assert (=> b!6584453 (= e!3984866 e!3984862)))

(declare-fun c!1211558 () Bool)

(assert (=> b!6584453 (= c!1211558 ((_ is Cons!65540) (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410469))))))))

(declare-fun b!6584454 () Bool)

(declare-fun call!574331 () (InoxSet Context!11678))

(assert (=> b!6584454 (= e!3984862 call!574331)))

(declare-fun b!6584455 () Bool)

(declare-fun e!3984864 () Bool)

(assert (=> b!6584455 (= e!3984864 (nullable!6448 (h!71988 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410469)))))))))

(declare-fun d!2065631 () Bool)

(declare-fun c!1211561 () Bool)

(assert (=> d!2065631 (= c!1211561 e!3984864)))

(declare-fun res!2701001 () Bool)

(assert (=> d!2065631 (=> (not res!2701001) (not e!3984864))))

(assert (=> d!2065631 (= res!2701001 ((_ is Cons!65540) (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410469))))))))

(assert (=> d!2065631 (= (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 lt!2410469))) (h!71989 s!2326)) e!3984866)))

(declare-fun b!6584456 () Bool)

(assert (=> b!6584456 (= e!3984866 ((_ map or) call!574331 (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410469)))))) (h!71989 s!2326))))))

(declare-fun bm!574326 () Bool)

(assert (=> bm!574326 (= call!574331 (derivationStepZipperDown!1703 (h!71988 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410469))))) (Context!11679 (t!379312 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410469)))))) (h!71989 s!2326)))))

(declare-fun b!6584457 () Bool)

(assert (=> b!6584457 (= e!3984862 ((as const (Array Context!11678 Bool)) false))))

(assert (= (and d!2065631 res!2701001) b!6584455))

(assert (= (and d!2065631 c!1211561) b!6584456))

(assert (= (and d!2065631 (not c!1211561)) b!6584453))

(assert (= (and b!6584453 c!1211558) b!6584454))

(assert (= (and b!6584453 (not c!1211558)) b!6584457))

(assert (= (or b!6584456 b!6584454) bm!574326))

(declare-fun m!7363646 () Bool)

(assert (=> b!6584455 m!7363646))

(declare-fun m!7363648 () Bool)

(assert (=> b!6584456 m!7363648))

(declare-fun m!7363650 () Bool)

(assert (=> bm!574326 m!7363650))

(assert (=> b!6583978 d!2065631))

(declare-fun bs!1684602 () Bool)

(declare-fun b!6584469 () Bool)

(assert (= bs!1684602 (and b!6584469 d!2065535)))

(declare-fun lambda!366806 () Int)

(assert (=> bs!1684602 (not (= lambda!366806 lambda!366800))))

(declare-fun bs!1684603 () Bool)

(assert (= bs!1684603 (and b!6584469 b!6583175)))

(assert (=> bs!1684603 (not (= lambda!366806 lambda!366699))))

(declare-fun bs!1684604 () Bool)

(assert (= bs!1684604 (and b!6584469 b!6583623)))

(assert (=> bs!1684604 (= (and (= (reg!16784 (regOne!33423 r!7292)) (reg!16784 lt!2410464)) (= (regOne!33423 r!7292) lt!2410464)) (= lambda!366806 lambda!366746))))

(declare-fun bs!1684605 () Bool)

(assert (= bs!1684605 (and b!6584469 d!2065397)))

(assert (=> bs!1684605 (not (= lambda!366806 lambda!366768))))

(declare-fun bs!1684606 () Bool)

(assert (= bs!1684606 (and b!6584469 b!6584115)))

(assert (=> bs!1684606 (not (= lambda!366806 lambda!366782))))

(declare-fun bs!1684607 () Bool)

(assert (= bs!1684607 (and b!6584469 d!2065395)))

(assert (=> bs!1684607 (not (= lambda!366806 lambda!366763))))

(assert (=> bs!1684605 (not (= lambda!366806 lambda!366769))))

(assert (=> bs!1684603 (not (= lambda!366806 lambda!366700))))

(declare-fun bs!1684608 () Bool)

(assert (= bs!1684608 (and b!6584469 b!6583631)))

(assert (=> bs!1684608 (not (= lambda!366806 lambda!366747))))

(declare-fun bs!1684609 () Bool)

(assert (= bs!1684609 (and b!6584469 b!6584107)))

(assert (=> bs!1684609 (= (and (= (reg!16784 (regOne!33423 r!7292)) (reg!16784 r!7292)) (= (regOne!33423 r!7292) r!7292)) (= lambda!366806 lambda!366781))))

(assert (=> b!6584469 true))

(assert (=> b!6584469 true))

(declare-fun bs!1684610 () Bool)

(declare-fun b!6584477 () Bool)

(assert (= bs!1684610 (and b!6584477 d!2065535)))

(declare-fun lambda!366807 () Int)

(assert (=> bs!1684610 (not (= lambda!366807 lambda!366800))))

(declare-fun bs!1684611 () Bool)

(assert (= bs!1684611 (and b!6584477 b!6583175)))

(assert (=> bs!1684611 (not (= lambda!366807 lambda!366699))))

(declare-fun bs!1684612 () Bool)

(assert (= bs!1684612 (and b!6584477 b!6583623)))

(assert (=> bs!1684612 (not (= lambda!366807 lambda!366746))))

(declare-fun bs!1684613 () Bool)

(assert (= bs!1684613 (and b!6584477 d!2065397)))

(assert (=> bs!1684613 (not (= lambda!366807 lambda!366768))))

(declare-fun bs!1684614 () Bool)

(assert (= bs!1684614 (and b!6584477 b!6584115)))

(assert (=> bs!1684614 (= (and (= (regOne!33422 (regOne!33423 r!7292)) (regOne!33422 r!7292)) (= (regTwo!33422 (regOne!33423 r!7292)) (regTwo!33422 r!7292))) (= lambda!366807 lambda!366782))))

(declare-fun bs!1684615 () Bool)

(assert (= bs!1684615 (and b!6584477 d!2065395)))

(assert (=> bs!1684615 (not (= lambda!366807 lambda!366763))))

(assert (=> bs!1684613 (= (and (= (regOne!33422 (regOne!33423 r!7292)) (regOne!33422 r!7292)) (= (regTwo!33422 (regOne!33423 r!7292)) (regTwo!33422 r!7292))) (= lambda!366807 lambda!366769))))

(declare-fun bs!1684616 () Bool)

(assert (= bs!1684616 (and b!6584477 b!6584469)))

(assert (=> bs!1684616 (not (= lambda!366807 lambda!366806))))

(assert (=> bs!1684611 (= (and (= (regOne!33422 (regOne!33423 r!7292)) (regOne!33422 r!7292)) (= (regTwo!33422 (regOne!33423 r!7292)) (regTwo!33422 r!7292))) (= lambda!366807 lambda!366700))))

(declare-fun bs!1684617 () Bool)

(assert (= bs!1684617 (and b!6584477 b!6583631)))

(assert (=> bs!1684617 (= (and (= (regOne!33422 (regOne!33423 r!7292)) (regOne!33422 lt!2410464)) (= (regTwo!33422 (regOne!33423 r!7292)) (regTwo!33422 lt!2410464))) (= lambda!366807 lambda!366747))))

(declare-fun bs!1684618 () Bool)

(assert (= bs!1684618 (and b!6584477 b!6584107)))

(assert (=> bs!1684618 (not (= lambda!366807 lambda!366781))))

(assert (=> b!6584477 true))

(assert (=> b!6584477 true))

(declare-fun e!3984871 () Bool)

(declare-fun call!574338 () Bool)

(assert (=> b!6584469 (= e!3984871 call!574338)))

(declare-fun b!6584470 () Bool)

(declare-fun res!2701005 () Bool)

(assert (=> b!6584470 (=> res!2701005 e!3984871)))

(declare-fun call!574339 () Bool)

(assert (=> b!6584470 (= res!2701005 call!574339)))

(declare-fun e!3984876 () Bool)

(assert (=> b!6584470 (= e!3984876 e!3984871)))

(declare-fun b!6584471 () Bool)

(declare-fun e!3984873 () Bool)

(assert (=> b!6584471 (= e!3984873 call!574339)))

(declare-fun b!6584472 () Bool)

(declare-fun e!3984870 () Bool)

(assert (=> b!6584472 (= e!3984870 (= s!2326 (Cons!65541 (c!1211172 (regOne!33423 r!7292)) Nil!65541)))))

(declare-fun d!2065633 () Bool)

(declare-fun c!1211566 () Bool)

(assert (=> d!2065633 (= c!1211566 ((_ is EmptyExpr!16455) (regOne!33423 r!7292)))))

(assert (=> d!2065633 (= (matchRSpec!3556 (regOne!33423 r!7292) s!2326) e!3984873)))

(declare-fun bm!574333 () Bool)

(assert (=> bm!574333 (= call!574339 (isEmpty!37801 s!2326))))

(declare-fun b!6584473 () Bool)

(declare-fun e!3984875 () Bool)

(declare-fun e!3984872 () Bool)

(assert (=> b!6584473 (= e!3984875 e!3984872)))

(declare-fun res!2701003 () Bool)

(assert (=> b!6584473 (= res!2701003 (matchRSpec!3556 (regOne!33423 (regOne!33423 r!7292)) s!2326))))

(assert (=> b!6584473 (=> res!2701003 e!3984872)))

(declare-fun b!6584474 () Bool)

(declare-fun c!1211567 () Bool)

(assert (=> b!6584474 (= c!1211567 ((_ is Union!16455) (regOne!33423 r!7292)))))

(assert (=> b!6584474 (= e!3984870 e!3984875)))

(declare-fun b!6584475 () Bool)

(declare-fun c!1211565 () Bool)

(assert (=> b!6584475 (= c!1211565 ((_ is ElementMatch!16455) (regOne!33423 r!7292)))))

(declare-fun e!3984874 () Bool)

(assert (=> b!6584475 (= e!3984874 e!3984870)))

(declare-fun b!6584476 () Bool)

(assert (=> b!6584476 (= e!3984872 (matchRSpec!3556 (regTwo!33423 (regOne!33423 r!7292)) s!2326))))

(assert (=> b!6584477 (= e!3984876 call!574338)))

(declare-fun b!6584478 () Bool)

(assert (=> b!6584478 (= e!3984875 e!3984876)))

(declare-fun c!1211568 () Bool)

(assert (=> b!6584478 (= c!1211568 ((_ is Star!16455) (regOne!33423 r!7292)))))

(declare-fun b!6584479 () Bool)

(assert (=> b!6584479 (= e!3984873 e!3984874)))

(declare-fun res!2701004 () Bool)

(assert (=> b!6584479 (= res!2701004 (not ((_ is EmptyLang!16455) (regOne!33423 r!7292))))))

(assert (=> b!6584479 (=> (not res!2701004) (not e!3984874))))

(declare-fun bm!574334 () Bool)

(assert (=> bm!574334 (= call!574338 (Exists!3525 (ite c!1211568 lambda!366806 lambda!366807)))))

(assert (= (and d!2065633 c!1211566) b!6584471))

(assert (= (and d!2065633 (not c!1211566)) b!6584479))

(assert (= (and b!6584479 res!2701004) b!6584475))

(assert (= (and b!6584475 c!1211565) b!6584472))

(assert (= (and b!6584475 (not c!1211565)) b!6584474))

(assert (= (and b!6584474 c!1211567) b!6584473))

(assert (= (and b!6584474 (not c!1211567)) b!6584478))

(assert (= (and b!6584473 (not res!2701003)) b!6584476))

(assert (= (and b!6584478 c!1211568) b!6584470))

(assert (= (and b!6584478 (not c!1211568)) b!6584477))

(assert (= (and b!6584470 (not res!2701005)) b!6584469))

(assert (= (or b!6584469 b!6584477) bm!574334))

(assert (= (or b!6584471 b!6584470) bm!574333))

(assert (=> bm!574333 m!7362824))

(declare-fun m!7363662 () Bool)

(assert (=> b!6584473 m!7363662))

(declare-fun m!7363664 () Bool)

(assert (=> b!6584476 m!7363664))

(declare-fun m!7363666 () Bool)

(assert (=> bm!574334 m!7363666))

(assert (=> b!6584111 d!2065633))

(declare-fun d!2065637 () Bool)

(declare-fun res!2701010 () Bool)

(declare-fun e!3984878 () Bool)

(assert (=> d!2065637 (=> res!2701010 e!3984878)))

(assert (=> d!2065637 (= res!2701010 ((_ is EmptyExpr!16455) (regOne!33422 (regOne!33422 r!7292))))))

(assert (=> d!2065637 (= (nullableFct!2373 (regOne!33422 (regOne!33422 r!7292))) e!3984878)))

(declare-fun bm!574335 () Bool)

(declare-fun call!574341 () Bool)

(declare-fun c!1211569 () Bool)

(assert (=> bm!574335 (= call!574341 (nullable!6448 (ite c!1211569 (regTwo!33423 (regOne!33422 (regOne!33422 r!7292))) (regTwo!33422 (regOne!33422 (regOne!33422 r!7292))))))))

(declare-fun b!6584480 () Bool)

(declare-fun e!3984881 () Bool)

(declare-fun e!3984880 () Bool)

(assert (=> b!6584480 (= e!3984881 e!3984880)))

(declare-fun res!2701009 () Bool)

(assert (=> b!6584480 (=> res!2701009 e!3984880)))

(assert (=> b!6584480 (= res!2701009 ((_ is Star!16455) (regOne!33422 (regOne!33422 r!7292))))))

(declare-fun b!6584481 () Bool)

(assert (=> b!6584481 (= e!3984878 e!3984881)))

(declare-fun res!2701006 () Bool)

(assert (=> b!6584481 (=> (not res!2701006) (not e!3984881))))

(assert (=> b!6584481 (= res!2701006 (and (not ((_ is EmptyLang!16455) (regOne!33422 (regOne!33422 r!7292)))) (not ((_ is ElementMatch!16455) (regOne!33422 (regOne!33422 r!7292))))))))

(declare-fun b!6584482 () Bool)

(declare-fun e!3984877 () Bool)

(declare-fun e!3984882 () Bool)

(assert (=> b!6584482 (= e!3984877 e!3984882)))

(declare-fun res!2701007 () Bool)

(declare-fun call!574340 () Bool)

(assert (=> b!6584482 (= res!2701007 call!574340)))

(assert (=> b!6584482 (=> res!2701007 e!3984882)))

(declare-fun bm!574336 () Bool)

(assert (=> bm!574336 (= call!574340 (nullable!6448 (ite c!1211569 (regOne!33423 (regOne!33422 (regOne!33422 r!7292))) (regOne!33422 (regOne!33422 (regOne!33422 r!7292))))))))

(declare-fun b!6584483 () Bool)

(assert (=> b!6584483 (= e!3984880 e!3984877)))

(assert (=> b!6584483 (= c!1211569 ((_ is Union!16455) (regOne!33422 (regOne!33422 r!7292))))))

(declare-fun b!6584484 () Bool)

(assert (=> b!6584484 (= e!3984882 call!574341)))

(declare-fun b!6584485 () Bool)

(declare-fun e!3984879 () Bool)

(assert (=> b!6584485 (= e!3984877 e!3984879)))

(declare-fun res!2701008 () Bool)

(assert (=> b!6584485 (= res!2701008 call!574340)))

(assert (=> b!6584485 (=> (not res!2701008) (not e!3984879))))

(declare-fun b!6584486 () Bool)

(assert (=> b!6584486 (= e!3984879 call!574341)))

(assert (= (and d!2065637 (not res!2701010)) b!6584481))

(assert (= (and b!6584481 res!2701006) b!6584480))

(assert (= (and b!6584480 (not res!2701009)) b!6584483))

(assert (= (and b!6584483 c!1211569) b!6584482))

(assert (= (and b!6584483 (not c!1211569)) b!6584485))

(assert (= (and b!6584482 (not res!2701007)) b!6584484))

(assert (= (and b!6584485 res!2701008) b!6584486))

(assert (= (or b!6584484 b!6584486) bm!574335))

(assert (= (or b!6584482 b!6584485) bm!574336))

(declare-fun m!7363668 () Bool)

(assert (=> bm!574335 m!7363668))

(declare-fun m!7363670 () Bool)

(assert (=> bm!574336 m!7363670))

(assert (=> d!2065285 d!2065637))

(declare-fun b!6584487 () Bool)

(declare-fun e!3984887 () (InoxSet Context!11678))

(declare-fun e!3984885 () (InoxSet Context!11678))

(assert (=> b!6584487 (= e!3984887 e!3984885)))

(declare-fun c!1211570 () Bool)

(assert (=> b!6584487 (= c!1211570 ((_ is Cons!65540) (exprs!6339 (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343)))))))))

(declare-fun b!6584488 () Bool)

(declare-fun call!574342 () (InoxSet Context!11678))

(assert (=> b!6584488 (= e!3984885 call!574342)))

(declare-fun b!6584489 () Bool)

(declare-fun e!3984886 () Bool)

(assert (=> b!6584489 (= e!3984886 (nullable!6448 (h!71988 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343))))))))))

(declare-fun d!2065639 () Bool)

(declare-fun c!1211571 () Bool)

(assert (=> d!2065639 (= c!1211571 e!3984886)))

(declare-fun res!2701013 () Bool)

(assert (=> d!2065639 (=> (not res!2701013) (not e!3984886))))

(assert (=> d!2065639 (= res!2701013 ((_ is Cons!65540) (exprs!6339 (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343)))))))))

(assert (=> d!2065639 (= (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343)))) (h!71989 s!2326)) e!3984887)))

(declare-fun b!6584490 () Bool)

(assert (=> b!6584490 (= e!3984887 ((_ map or) call!574342 (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343))))))) (h!71989 s!2326))))))

(declare-fun bm!574337 () Bool)

(assert (=> bm!574337 (= call!574342 (derivationStepZipperDown!1703 (h!71988 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343)))))) (Context!11679 (t!379312 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343))))))) (h!71989 s!2326)))))

(declare-fun b!6584493 () Bool)

(assert (=> b!6584493 (= e!3984885 ((as const (Array Context!11678 Bool)) false))))

(assert (= (and d!2065639 res!2701013) b!6584489))

(assert (= (and d!2065639 c!1211571) b!6584490))

(assert (= (and d!2065639 (not c!1211571)) b!6584487))

(assert (= (and b!6584487 c!1211570) b!6584488))

(assert (= (and b!6584487 (not c!1211570)) b!6584493))

(assert (= (or b!6584490 b!6584488) bm!574337))

(declare-fun m!7363672 () Bool)

(assert (=> b!6584489 m!7363672))

(declare-fun m!7363674 () Bool)

(assert (=> b!6584490 m!7363674))

(declare-fun m!7363676 () Bool)

(assert (=> bm!574337 m!7363676))

(assert (=> b!6584016 d!2065639))

(declare-fun d!2065641 () Bool)

(assert (=> d!2065641 (= (nullable!6448 (reg!16784 lt!2410486)) (nullableFct!2373 (reg!16784 lt!2410486)))))

(declare-fun bs!1684619 () Bool)

(assert (= bs!1684619 d!2065641))

(declare-fun m!7363678 () Bool)

(assert (=> bs!1684619 m!7363678))

(assert (=> b!6584069 d!2065641))

(declare-fun d!2065643 () Bool)

(declare-fun c!1211574 () Bool)

(assert (=> d!2065643 (= c!1211574 (isEmpty!37801 (tail!12446 (t!379313 s!2326))))))

(declare-fun e!3984898 () Bool)

(assert (=> d!2065643 (= (matchZipper!2467 (derivationStepZipper!2421 ((_ map or) lt!2410460 lt!2410487) (head!13361 (t!379313 s!2326))) (tail!12446 (t!379313 s!2326))) e!3984898)))

(declare-fun b!6584506 () Bool)

(assert (=> b!6584506 (= e!3984898 (nullableZipper!2200 (derivationStepZipper!2421 ((_ map or) lt!2410460 lt!2410487) (head!13361 (t!379313 s!2326)))))))

(declare-fun b!6584507 () Bool)

(assert (=> b!6584507 (= e!3984898 (matchZipper!2467 (derivationStepZipper!2421 (derivationStepZipper!2421 ((_ map or) lt!2410460 lt!2410487) (head!13361 (t!379313 s!2326))) (head!13361 (tail!12446 (t!379313 s!2326)))) (tail!12446 (tail!12446 (t!379313 s!2326)))))))

(assert (= (and d!2065643 c!1211574) b!6584506))

(assert (= (and d!2065643 (not c!1211574)) b!6584507))

(assert (=> d!2065643 m!7363072))

(assert (=> d!2065643 m!7363510))

(assert (=> b!6584506 m!7363284))

(declare-fun m!7363680 () Bool)

(assert (=> b!6584506 m!7363680))

(assert (=> b!6584507 m!7363072))

(assert (=> b!6584507 m!7363514))

(assert (=> b!6584507 m!7363284))

(assert (=> b!6584507 m!7363514))

(declare-fun m!7363682 () Bool)

(assert (=> b!6584507 m!7363682))

(assert (=> b!6584507 m!7363072))

(assert (=> b!6584507 m!7363518))

(assert (=> b!6584507 m!7363682))

(assert (=> b!6584507 m!7363518))

(declare-fun m!7363684 () Bool)

(assert (=> b!6584507 m!7363684))

(assert (=> b!6584093 d!2065643))

(declare-fun bs!1684620 () Bool)

(declare-fun d!2065645 () Bool)

(assert (= bs!1684620 (and d!2065645 d!2065431)))

(declare-fun lambda!366808 () Int)

(assert (=> bs!1684620 (= (= (head!13361 (t!379313 s!2326)) (h!71989 s!2326)) (= lambda!366808 lambda!366773))))

(declare-fun bs!1684621 () Bool)

(assert (= bs!1684621 (and d!2065645 d!2065451)))

(assert (=> bs!1684621 (= (= (head!13361 (t!379313 s!2326)) (h!71989 s!2326)) (= lambda!366808 lambda!366780))))

(declare-fun bs!1684622 () Bool)

(assert (= bs!1684622 (and d!2065645 d!2065601)))

(assert (=> bs!1684622 (= (= (head!13361 (t!379313 s!2326)) (head!13361 s!2326)) (= lambda!366808 lambda!366802))))

(declare-fun bs!1684623 () Bool)

(assert (= bs!1684623 (and d!2065645 b!6583173)))

(assert (=> bs!1684623 (= (= (head!13361 (t!379313 s!2326)) (h!71989 s!2326)) (= lambda!366808 lambda!366701))))

(declare-fun bs!1684624 () Bool)

(assert (= bs!1684624 (and d!2065645 d!2065577)))

(assert (=> bs!1684624 (= lambda!366808 lambda!366801)))

(assert (=> d!2065645 true))

(assert (=> d!2065645 (= (derivationStepZipper!2421 ((_ map or) lt!2410460 lt!2410487) (head!13361 (t!379313 s!2326))) (flatMap!1960 ((_ map or) lt!2410460 lt!2410487) lambda!366808))))

(declare-fun bs!1684625 () Bool)

(assert (= bs!1684625 d!2065645))

(declare-fun m!7363686 () Bool)

(assert (=> bs!1684625 m!7363686))

(assert (=> b!6584093 d!2065645))

(assert (=> b!6584093 d!2065579))

(assert (=> b!6584093 d!2065581))

(assert (=> d!2065341 d!2065293))

(assert (=> d!2065341 d!2065303))

(declare-fun d!2065647 () Bool)

(assert (=> d!2065647 (= (matchR!8638 lt!2410464 s!2326) (matchRSpec!3556 lt!2410464 s!2326))))

(assert (=> d!2065647 true))

(declare-fun _$88!5271 () Unit!159155)

(assert (=> d!2065647 (= (choose!49156 lt!2410464 s!2326) _$88!5271)))

(declare-fun bs!1684626 () Bool)

(assert (= bs!1684626 d!2065647))

(assert (=> bs!1684626 m!7362550))

(assert (=> bs!1684626 m!7362552))

(assert (=> d!2065341 d!2065647))

(declare-fun bm!574342 () Bool)

(declare-fun call!574349 () Bool)

(declare-fun c!1211576 () Bool)

(assert (=> bm!574342 (= call!574349 (validRegex!8191 (ite c!1211576 (regTwo!33423 lt!2410464) (regTwo!33422 lt!2410464))))))

(declare-fun b!6584508 () Bool)

(declare-fun e!3984900 () Bool)

(declare-fun e!3984903 () Bool)

(assert (=> b!6584508 (= e!3984900 e!3984903)))

(declare-fun c!1211575 () Bool)

(assert (=> b!6584508 (= c!1211575 ((_ is Star!16455) lt!2410464))))

(declare-fun b!6584509 () Bool)

(declare-fun e!3984899 () Bool)

(assert (=> b!6584509 (= e!3984903 e!3984899)))

(assert (=> b!6584509 (= c!1211576 ((_ is Union!16455) lt!2410464))))

(declare-fun b!6584510 () Bool)

(declare-fun e!3984902 () Bool)

(assert (=> b!6584510 (= e!3984902 call!574349)))

(declare-fun b!6584511 () Bool)

(declare-fun e!3984901 () Bool)

(assert (=> b!6584511 (= e!3984903 e!3984901)))

(declare-fun res!2701023 () Bool)

(assert (=> b!6584511 (= res!2701023 (not (nullable!6448 (reg!16784 lt!2410464))))))

(assert (=> b!6584511 (=> (not res!2701023) (not e!3984901))))

(declare-fun bm!574343 () Bool)

(declare-fun call!574347 () Bool)

(assert (=> bm!574343 (= call!574347 (validRegex!8191 (ite c!1211575 (reg!16784 lt!2410464) (ite c!1211576 (regOne!33423 lt!2410464) (regOne!33422 lt!2410464)))))))

(declare-fun b!6584513 () Bool)

(declare-fun e!3984905 () Bool)

(declare-fun e!3984904 () Bool)

(assert (=> b!6584513 (= e!3984905 e!3984904)))

(declare-fun res!2701024 () Bool)

(assert (=> b!6584513 (=> (not res!2701024) (not e!3984904))))

(declare-fun call!574348 () Bool)

(assert (=> b!6584513 (= res!2701024 call!574348)))

(declare-fun b!6584514 () Bool)

(declare-fun res!2701026 () Bool)

(assert (=> b!6584514 (=> (not res!2701026) (not e!3984902))))

(assert (=> b!6584514 (= res!2701026 call!574348)))

(assert (=> b!6584514 (= e!3984899 e!3984902)))

(declare-fun bm!574344 () Bool)

(assert (=> bm!574344 (= call!574348 call!574347)))

(declare-fun b!6584515 () Bool)

(declare-fun res!2701022 () Bool)

(assert (=> b!6584515 (=> res!2701022 e!3984905)))

(assert (=> b!6584515 (= res!2701022 (not ((_ is Concat!25300) lt!2410464)))))

(assert (=> b!6584515 (= e!3984899 e!3984905)))

(declare-fun b!6584516 () Bool)

(assert (=> b!6584516 (= e!3984901 call!574347)))

(declare-fun d!2065649 () Bool)

(declare-fun res!2701025 () Bool)

(assert (=> d!2065649 (=> res!2701025 e!3984900)))

(assert (=> d!2065649 (= res!2701025 ((_ is ElementMatch!16455) lt!2410464))))

(assert (=> d!2065649 (= (validRegex!8191 lt!2410464) e!3984900)))

(declare-fun b!6584512 () Bool)

(assert (=> b!6584512 (= e!3984904 call!574349)))

(assert (= (and d!2065649 (not res!2701025)) b!6584508))

(assert (= (and b!6584508 c!1211575) b!6584511))

(assert (= (and b!6584508 (not c!1211575)) b!6584509))

(assert (= (and b!6584511 res!2701023) b!6584516))

(assert (= (and b!6584509 c!1211576) b!6584514))

(assert (= (and b!6584509 (not c!1211576)) b!6584515))

(assert (= (and b!6584514 res!2701026) b!6584510))

(assert (= (and b!6584515 (not res!2701022)) b!6584513))

(assert (= (and b!6584513 res!2701024) b!6584512))

(assert (= (or b!6584510 b!6584512) bm!574342))

(assert (= (or b!6584514 b!6584513) bm!574344))

(assert (= (or b!6584516 bm!574344) bm!574343))

(declare-fun m!7363688 () Bool)

(assert (=> bm!574342 m!7363688))

(declare-fun m!7363690 () Bool)

(assert (=> b!6584511 m!7363690))

(declare-fun m!7363692 () Bool)

(assert (=> bm!574343 m!7363692))

(assert (=> d!2065341 d!2065649))

(declare-fun d!2065651 () Bool)

(assert (=> d!2065651 (= ($colon$colon!2296 (exprs!6339 lt!2410462) (ite (or c!1211430 c!1211429) (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (h!71988 (exprs!6339 (h!71990 zl!343))))) (Cons!65540 (ite (or c!1211430 c!1211429) (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (h!71988 (exprs!6339 (h!71990 zl!343)))) (exprs!6339 lt!2410462)))))

(assert (=> bm!574245 d!2065651))

(declare-fun call!574350 () (InoxSet Context!11678))

(declare-fun c!1211577 () Bool)

(declare-fun call!574352 () List!65664)

(declare-fun bm!574346 () Bool)

(assert (=> bm!574346 (= call!574350 (derivationStepZipperDown!1703 (ite c!1211577 (regOne!33423 (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292))))))) (regOne!33422 (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292)))))))) (ite c!1211577 (ite (or c!1211465 c!1211467) lt!2410469 (Context!11679 call!574268)) (Context!11679 call!574352)) (h!71989 s!2326)))))

(declare-fun b!6584517 () Bool)

(declare-fun e!3984906 () (InoxSet Context!11678))

(declare-fun call!574354 () (InoxSet Context!11678))

(assert (=> b!6584517 (= e!3984906 ((_ map or) call!574350 call!574354))))

(declare-fun bm!574347 () Bool)

(declare-fun call!574351 () (InoxSet Context!11678))

(declare-fun c!1211579 () Bool)

(declare-fun call!574355 () List!65664)

(declare-fun c!1211578 () Bool)

(assert (=> bm!574347 (= call!574351 (derivationStepZipperDown!1703 (ite c!1211577 (regTwo!33423 (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292))))))) (ite c!1211579 (regTwo!33422 (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292))))))) (ite c!1211578 (regOne!33422 (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292))))))) (reg!16784 (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292)))))))))) (ite (or c!1211577 c!1211579) (ite (or c!1211465 c!1211467) lt!2410469 (Context!11679 call!574268)) (Context!11679 call!574355)) (h!71989 s!2326)))))

(declare-fun b!6584518 () Bool)

(declare-fun e!3984910 () Bool)

(assert (=> b!6584518 (= c!1211579 e!3984910)))

(declare-fun res!2701027 () Bool)

(assert (=> b!6584518 (=> (not res!2701027) (not e!3984910))))

(assert (=> b!6584518 (= res!2701027 ((_ is Concat!25300) (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292))))))))))

(declare-fun e!3984909 () (InoxSet Context!11678))

(assert (=> b!6584518 (= e!3984909 e!3984906)))

(declare-fun b!6584519 () Bool)

(declare-fun e!3984911 () (InoxSet Context!11678))

(assert (=> b!6584519 (= e!3984906 e!3984911)))

(assert (=> b!6584519 (= c!1211578 ((_ is Concat!25300) (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292))))))))))

(declare-fun c!1211580 () Bool)

(declare-fun b!6584520 () Bool)

(assert (=> b!6584520 (= c!1211580 ((_ is Star!16455) (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292))))))))))

(declare-fun e!3984907 () (InoxSet Context!11678))

(assert (=> b!6584520 (= e!3984911 e!3984907)))

(declare-fun b!6584521 () Bool)

(declare-fun e!3984908 () (InoxSet Context!11678))

(assert (=> b!6584521 (= e!3984908 (store ((as const (Array Context!11678 Bool)) false) (ite (or c!1211465 c!1211467) lt!2410469 (Context!11679 call!574268)) true))))

(declare-fun bm!574348 () Bool)

(assert (=> bm!574348 (= call!574354 call!574351)))

(declare-fun d!2065653 () Bool)

(declare-fun c!1211581 () Bool)

(assert (=> d!2065653 (= c!1211581 (and ((_ is ElementMatch!16455) (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292))))))) (= (c!1211172 (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292))))))) (h!71989 s!2326))))))

(assert (=> d!2065653 (= (derivationStepZipperDown!1703 (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292)))))) (ite (or c!1211465 c!1211467) lt!2410469 (Context!11679 call!574268)) (h!71989 s!2326)) e!3984908)))

(declare-fun bm!574345 () Bool)

(assert (=> bm!574345 (= call!574352 ($colon$colon!2296 (exprs!6339 (ite (or c!1211465 c!1211467) lt!2410469 (Context!11679 call!574268))) (ite (or c!1211579 c!1211578) (regTwo!33422 (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292))))))) (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292)))))))))))

(declare-fun b!6584522 () Bool)

(assert (=> b!6584522 (= e!3984907 ((as const (Array Context!11678 Bool)) false))))

(declare-fun b!6584523 () Bool)

(declare-fun call!574353 () (InoxSet Context!11678))

(assert (=> b!6584523 (= e!3984911 call!574353)))

(declare-fun bm!574349 () Bool)

(assert (=> bm!574349 (= call!574355 call!574352)))

(declare-fun b!6584524 () Bool)

(assert (=> b!6584524 (= e!3984908 e!3984909)))

(assert (=> b!6584524 (= c!1211577 ((_ is Union!16455) (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292))))))))))

(declare-fun bm!574350 () Bool)

(assert (=> bm!574350 (= call!574353 call!574354)))

(declare-fun b!6584525 () Bool)

(assert (=> b!6584525 (= e!3984909 ((_ map or) call!574350 call!574351))))

(declare-fun b!6584526 () Bool)

(assert (=> b!6584526 (= e!3984910 (nullable!6448 (regOne!33422 (ite c!1211465 (regTwo!33423 (reg!16784 (regOne!33422 r!7292))) (ite c!1211467 (regTwo!33422 (reg!16784 (regOne!33422 r!7292))) (ite c!1211466 (regOne!33422 (reg!16784 (regOne!33422 r!7292))) (reg!16784 (reg!16784 (regOne!33422 r!7292)))))))))))

(declare-fun b!6584527 () Bool)

(assert (=> b!6584527 (= e!3984907 call!574353)))

(assert (= (and d!2065653 c!1211581) b!6584521))

(assert (= (and d!2065653 (not c!1211581)) b!6584524))

(assert (= (and b!6584524 c!1211577) b!6584525))

(assert (= (and b!6584524 (not c!1211577)) b!6584518))

(assert (= (and b!6584518 res!2701027) b!6584526))

(assert (= (and b!6584518 c!1211579) b!6584517))

(assert (= (and b!6584518 (not c!1211579)) b!6584519))

(assert (= (and b!6584519 c!1211578) b!6584523))

(assert (= (and b!6584519 (not c!1211578)) b!6584520))

(assert (= (and b!6584520 c!1211580) b!6584527))

(assert (= (and b!6584520 (not c!1211580)) b!6584522))

(assert (= (or b!6584523 b!6584527) bm!574349))

(assert (= (or b!6584523 b!6584527) bm!574350))

(assert (= (or b!6584517 bm!574349) bm!574345))

(assert (= (or b!6584517 bm!574350) bm!574348))

(assert (= (or b!6584525 bm!574348) bm!574347))

(assert (= (or b!6584525 b!6584517) bm!574346))

(declare-fun m!7363694 () Bool)

(assert (=> b!6584526 m!7363694))

(declare-fun m!7363696 () Bool)

(assert (=> b!6584521 m!7363696))

(declare-fun m!7363698 () Bool)

(assert (=> bm!574346 m!7363698))

(declare-fun m!7363700 () Bool)

(assert (=> bm!574347 m!7363700))

(declare-fun m!7363702 () Bool)

(assert (=> bm!574345 m!7363702))

(assert (=> bm!574260 d!2065653))

(declare-fun d!2065655 () Bool)

(declare-fun res!2701028 () Bool)

(declare-fun e!3984912 () Bool)

(assert (=> d!2065655 (=> res!2701028 e!3984912)))

(assert (=> d!2065655 (= res!2701028 ((_ is Nil!65542) zl!343))))

(assert (=> d!2065655 (= (forall!15635 zl!343 lambda!366792) e!3984912)))

(declare-fun b!6584528 () Bool)

(declare-fun e!3984913 () Bool)

(assert (=> b!6584528 (= e!3984912 e!3984913)))

(declare-fun res!2701029 () Bool)

(assert (=> b!6584528 (=> (not res!2701029) (not e!3984913))))

(assert (=> b!6584528 (= res!2701029 (dynLambda!26087 lambda!366792 (h!71990 zl!343)))))

(declare-fun b!6584529 () Bool)

(assert (=> b!6584529 (= e!3984913 (forall!15635 (t!379314 zl!343) lambda!366792))))

(assert (= (and d!2065655 (not res!2701028)) b!6584528))

(assert (= (and b!6584528 res!2701029) b!6584529))

(declare-fun b_lambda!249113 () Bool)

(assert (=> (not b_lambda!249113) (not b!6584528)))

(declare-fun m!7363704 () Bool)

(assert (=> b!6584528 m!7363704))

(declare-fun m!7363706 () Bool)

(assert (=> b!6584529 m!7363706))

(assert (=> b!6584140 d!2065655))

(declare-fun d!2065657 () Bool)

(assert (=> d!2065657 true))

(declare-fun setRes!44963 () Bool)

(assert (=> d!2065657 setRes!44963))

(declare-fun condSetEmpty!44963 () Bool)

(declare-fun res!2701030 () (InoxSet Context!11678))

(assert (=> d!2065657 (= condSetEmpty!44963 (= res!2701030 ((as const (Array Context!11678 Bool)) false)))))

(assert (=> d!2065657 (= (choose!49162 z!1189 lambda!366701) res!2701030)))

(declare-fun setIsEmpty!44963 () Bool)

(assert (=> setIsEmpty!44963 setRes!44963))

(declare-fun setNonEmpty!44963 () Bool)

(declare-fun tp!1816684 () Bool)

(declare-fun e!3984914 () Bool)

(declare-fun setElem!44963 () Context!11678)

(assert (=> setNonEmpty!44963 (= setRes!44963 (and tp!1816684 (inv!84384 setElem!44963) e!3984914))))

(declare-fun setRest!44963 () (InoxSet Context!11678))

(assert (=> setNonEmpty!44963 (= res!2701030 ((_ map or) (store ((as const (Array Context!11678 Bool)) false) setElem!44963 true) setRest!44963))))

(declare-fun b!6584530 () Bool)

(declare-fun tp!1816685 () Bool)

(assert (=> b!6584530 (= e!3984914 tp!1816685)))

(assert (= (and d!2065657 condSetEmpty!44963) setIsEmpty!44963))

(assert (= (and d!2065657 (not condSetEmpty!44963)) setNonEmpty!44963))

(assert (= setNonEmpty!44963 b!6584530))

(declare-fun m!7363708 () Bool)

(assert (=> setNonEmpty!44963 m!7363708))

(assert (=> d!2065425 d!2065657))

(assert (=> d!2065467 d!2065607))

(declare-fun bs!1684627 () Bool)

(declare-fun d!2065659 () Bool)

(assert (= bs!1684627 (and d!2065659 b!6584138)))

(declare-fun lambda!366811 () Int)

(assert (=> bs!1684627 (not (= lambda!366811 lambda!366791))))

(declare-fun bs!1684628 () Bool)

(assert (= bs!1684628 (and d!2065659 b!6584140)))

(assert (=> bs!1684628 (not (= lambda!366811 lambda!366792))))

(declare-fun bs!1684629 () Bool)

(assert (= bs!1684629 (and d!2065659 b!6584143)))

(assert (=> bs!1684629 (not (= lambda!366811 lambda!366794))))

(declare-fun bs!1684630 () Bool)

(assert (= bs!1684630 (and d!2065659 b!6584145)))

(assert (=> bs!1684630 (not (= lambda!366811 lambda!366795))))

(declare-fun exists!2647 ((InoxSet Context!11678) Int) Bool)

(assert (=> d!2065659 (= (nullableZipper!2200 lt!2410460) (exists!2647 lt!2410460 lambda!366811))))

(declare-fun bs!1684631 () Bool)

(assert (= bs!1684631 d!2065659))

(declare-fun m!7363726 () Bool)

(assert (=> bs!1684631 m!7363726))

(assert (=> b!6584090 d!2065659))

(declare-fun bs!1684633 () Bool)

(declare-fun d!2065665 () Bool)

(assert (= bs!1684633 (and d!2065665 d!2065261)))

(declare-fun lambda!366813 () Int)

(assert (=> bs!1684633 (= lambda!366813 lambda!366714)))

(declare-fun bs!1684634 () Bool)

(assert (= bs!1684634 (and d!2065665 d!2065477)))

(assert (=> bs!1684634 (= lambda!366813 lambda!366783)))

(declare-fun bs!1684635 () Bool)

(assert (= bs!1684635 (and d!2065665 d!2065379)))

(assert (=> bs!1684635 (= lambda!366813 lambda!366760)))

(declare-fun bs!1684636 () Bool)

(assert (= bs!1684636 (and d!2065665 d!2065619)))

(assert (=> bs!1684636 (= lambda!366813 lambda!366804)))

(declare-fun bs!1684638 () Bool)

(assert (= bs!1684638 (and d!2065665 d!2065623)))

(assert (=> bs!1684638 (= lambda!366813 lambda!366805)))

(declare-fun bs!1684639 () Bool)

(assert (= bs!1684639 (and d!2065665 d!2065439)))

(assert (=> bs!1684639 (= lambda!366813 lambda!366779)))

(declare-fun bs!1684641 () Bool)

(assert (= bs!1684641 (and d!2065665 d!2065401)))

(assert (=> bs!1684641 (= lambda!366813 lambda!366770)))

(declare-fun bs!1684642 () Bool)

(assert (= bs!1684642 (and d!2065665 d!2065515)))

(assert (=> bs!1684642 (= lambda!366813 lambda!366796)))

(declare-fun bs!1684643 () Bool)

(assert (= bs!1684643 (and d!2065665 d!2065517)))

(assert (=> bs!1684643 (= lambda!366813 lambda!366797)))

(declare-fun bs!1684644 () Bool)

(assert (= bs!1684644 (and d!2065665 d!2065437)))

(assert (=> bs!1684644 (= lambda!366813 lambda!366776)))

(declare-fun b!6584540 () Bool)

(declare-fun e!3984923 () Bool)

(assert (=> b!6584540 (= e!3984923 (isEmpty!37797 (t!379312 (t!379312 (unfocusZipperList!1876 zl!343)))))))

(declare-fun b!6584541 () Bool)

(declare-fun e!3984925 () Regex!16455)

(assert (=> b!6584541 (= e!3984925 (h!71988 (t!379312 (unfocusZipperList!1876 zl!343))))))

(declare-fun b!6584542 () Bool)

(declare-fun e!3984926 () Regex!16455)

(assert (=> b!6584542 (= e!3984926 (Union!16455 (h!71988 (t!379312 (unfocusZipperList!1876 zl!343))) (generalisedUnion!2299 (t!379312 (t!379312 (unfocusZipperList!1876 zl!343))))))))

(declare-fun b!6584543 () Bool)

(declare-fun e!3984927 () Bool)

(declare-fun e!3984922 () Bool)

(assert (=> b!6584543 (= e!3984927 e!3984922)))

(declare-fun c!1211588 () Bool)

(assert (=> b!6584543 (= c!1211588 (isEmpty!37797 (tail!12447 (t!379312 (unfocusZipperList!1876 zl!343)))))))

(declare-fun b!6584544 () Bool)

(declare-fun e!3984924 () Bool)

(assert (=> b!6584544 (= e!3984924 e!3984927)))

(declare-fun c!1211586 () Bool)

(assert (=> b!6584544 (= c!1211586 (isEmpty!37797 (t!379312 (unfocusZipperList!1876 zl!343))))))

(declare-fun b!6584545 () Bool)

(assert (=> b!6584545 (= e!3984926 EmptyLang!16455)))

(declare-fun b!6584546 () Bool)

(assert (=> b!6584546 (= e!3984925 e!3984926)))

(declare-fun c!1211587 () Bool)

(assert (=> b!6584546 (= c!1211587 ((_ is Cons!65540) (t!379312 (unfocusZipperList!1876 zl!343))))))

(declare-fun b!6584548 () Bool)

(declare-fun lt!2410664 () Regex!16455)

(assert (=> b!6584548 (= e!3984922 (isUnion!1272 lt!2410664))))

(declare-fun b!6584549 () Bool)

(assert (=> b!6584549 (= e!3984922 (= lt!2410664 (head!13362 (t!379312 (unfocusZipperList!1876 zl!343)))))))

(declare-fun b!6584547 () Bool)

(assert (=> b!6584547 (= e!3984927 (isEmptyLang!1842 lt!2410664))))

(assert (=> d!2065665 e!3984924))

(declare-fun res!2701036 () Bool)

(assert (=> d!2065665 (=> (not res!2701036) (not e!3984924))))

(assert (=> d!2065665 (= res!2701036 (validRegex!8191 lt!2410664))))

(assert (=> d!2065665 (= lt!2410664 e!3984925)))

(declare-fun c!1211589 () Bool)

(assert (=> d!2065665 (= c!1211589 e!3984923)))

(declare-fun res!2701037 () Bool)

(assert (=> d!2065665 (=> (not res!2701037) (not e!3984923))))

(assert (=> d!2065665 (= res!2701037 ((_ is Cons!65540) (t!379312 (unfocusZipperList!1876 zl!343))))))

(assert (=> d!2065665 (forall!15634 (t!379312 (unfocusZipperList!1876 zl!343)) lambda!366813)))

(assert (=> d!2065665 (= (generalisedUnion!2299 (t!379312 (unfocusZipperList!1876 zl!343))) lt!2410664)))

(assert (= (and d!2065665 res!2701037) b!6584540))

(assert (= (and d!2065665 c!1211589) b!6584541))

(assert (= (and d!2065665 (not c!1211589)) b!6584546))

(assert (= (and b!6584546 c!1211587) b!6584542))

(assert (= (and b!6584546 (not c!1211587)) b!6584545))

(assert (= (and d!2065665 res!2701036) b!6584544))

(assert (= (and b!6584544 c!1211586) b!6584547))

(assert (= (and b!6584544 (not c!1211586)) b!6584543))

(assert (= (and b!6584543 c!1211588) b!6584549))

(assert (= (and b!6584543 (not c!1211588)) b!6584548))

(assert (=> b!6584544 m!7363220))

(declare-fun m!7363730 () Bool)

(assert (=> b!6584542 m!7363730))

(declare-fun m!7363732 () Bool)

(assert (=> b!6584543 m!7363732))

(assert (=> b!6584543 m!7363732))

(declare-fun m!7363734 () Bool)

(assert (=> b!6584543 m!7363734))

(declare-fun m!7363736 () Bool)

(assert (=> b!6584549 m!7363736))

(declare-fun m!7363738 () Bool)

(assert (=> b!6584548 m!7363738))

(declare-fun m!7363740 () Bool)

(assert (=> d!2065665 m!7363740))

(declare-fun m!7363742 () Bool)

(assert (=> d!2065665 m!7363742))

(declare-fun m!7363744 () Bool)

(assert (=> b!6584540 m!7363744))

(declare-fun m!7363746 () Bool)

(assert (=> b!6584547 m!7363746))

(assert (=> b!6584052 d!2065665))

(assert (=> bs!1684531 d!2065411))

(assert (=> d!2065455 d!2065565))

(assert (=> d!2065461 d!2065465))

(assert (=> d!2065461 d!2065463))

(declare-fun d!2065671 () Bool)

(declare-fun e!3984937 () Bool)

(assert (=> d!2065671 (= (matchZipper!2467 ((_ map or) lt!2410460 lt!2410487) (t!379313 s!2326)) e!3984937)))

(declare-fun res!2701045 () Bool)

(assert (=> d!2065671 (=> res!2701045 e!3984937)))

(assert (=> d!2065671 (= res!2701045 (matchZipper!2467 lt!2410460 (t!379313 s!2326)))))

(assert (=> d!2065671 true))

(declare-fun _$48!2309 () Unit!159155)

(assert (=> d!2065671 (= (choose!49164 lt!2410460 lt!2410487 (t!379313 s!2326)) _$48!2309)))

(declare-fun b!6584561 () Bool)

(assert (=> b!6584561 (= e!3984937 (matchZipper!2467 lt!2410487 (t!379313 s!2326)))))

(assert (= (and d!2065671 (not res!2701045)) b!6584561))

(assert (=> d!2065671 m!7362606))

(assert (=> d!2065671 m!7362602))

(assert (=> b!6584561 m!7362558))

(assert (=> d!2065461 d!2065671))

(declare-fun d!2065677 () Bool)

(declare-fun c!1211592 () Bool)

(assert (=> d!2065677 (= c!1211592 (isEmpty!37801 (tail!12446 s!2326)))))

(declare-fun e!3984938 () Bool)

(assert (=> d!2065677 (= (matchZipper!2467 (derivationStepZipper!2421 z!1189 (head!13361 s!2326)) (tail!12446 s!2326)) e!3984938)))

(declare-fun b!6584562 () Bool)

(assert (=> b!6584562 (= e!3984938 (nullableZipper!2200 (derivationStepZipper!2421 z!1189 (head!13361 s!2326))))))

(declare-fun b!6584563 () Bool)

(assert (=> b!6584563 (= e!3984938 (matchZipper!2467 (derivationStepZipper!2421 (derivationStepZipper!2421 z!1189 (head!13361 s!2326)) (head!13361 (tail!12446 s!2326))) (tail!12446 (tail!12446 s!2326))))))

(assert (= (and d!2065677 c!1211592) b!6584562))

(assert (= (and d!2065677 (not c!1211592)) b!6584563))

(assert (=> d!2065677 m!7362834))

(assert (=> d!2065677 m!7362838))

(assert (=> b!6584562 m!7363290))

(declare-fun m!7363754 () Bool)

(assert (=> b!6584562 m!7363754))

(assert (=> b!6584563 m!7362834))

(assert (=> b!6584563 m!7363580))

(assert (=> b!6584563 m!7363290))

(assert (=> b!6584563 m!7363580))

(declare-fun m!7363756 () Bool)

(assert (=> b!6584563 m!7363756))

(assert (=> b!6584563 m!7362834))

(assert (=> b!6584563 m!7363584))

(assert (=> b!6584563 m!7363756))

(assert (=> b!6584563 m!7363584))

(declare-fun m!7363758 () Bool)

(assert (=> b!6584563 m!7363758))

(assert (=> b!6584095 d!2065677))

(declare-fun bs!1684646 () Bool)

(declare-fun d!2065679 () Bool)

(assert (= bs!1684646 (and d!2065679 d!2065645)))

(declare-fun lambda!366814 () Int)

(assert (=> bs!1684646 (= (= (head!13361 s!2326) (head!13361 (t!379313 s!2326))) (= lambda!366814 lambda!366808))))

(declare-fun bs!1684647 () Bool)

(assert (= bs!1684647 (and d!2065679 d!2065431)))

(assert (=> bs!1684647 (= (= (head!13361 s!2326) (h!71989 s!2326)) (= lambda!366814 lambda!366773))))

(declare-fun bs!1684648 () Bool)

(assert (= bs!1684648 (and d!2065679 d!2065451)))

(assert (=> bs!1684648 (= (= (head!13361 s!2326) (h!71989 s!2326)) (= lambda!366814 lambda!366780))))

(declare-fun bs!1684649 () Bool)

(assert (= bs!1684649 (and d!2065679 d!2065601)))

(assert (=> bs!1684649 (= lambda!366814 lambda!366802)))

(declare-fun bs!1684650 () Bool)

(assert (= bs!1684650 (and d!2065679 b!6583173)))

(assert (=> bs!1684650 (= (= (head!13361 s!2326) (h!71989 s!2326)) (= lambda!366814 lambda!366701))))

(declare-fun bs!1684652 () Bool)

(assert (= bs!1684652 (and d!2065679 d!2065577)))

(assert (=> bs!1684652 (= (= (head!13361 s!2326) (head!13361 (t!379313 s!2326))) (= lambda!366814 lambda!366801))))

(assert (=> d!2065679 true))

(assert (=> d!2065679 (= (derivationStepZipper!2421 z!1189 (head!13361 s!2326)) (flatMap!1960 z!1189 lambda!366814))))

(declare-fun bs!1684653 () Bool)

(assert (= bs!1684653 d!2065679))

(declare-fun m!7363760 () Bool)

(assert (=> bs!1684653 m!7363760))

(assert (=> b!6584095 d!2065679))

(assert (=> b!6584095 d!2065507))

(assert (=> b!6584095 d!2065499))

(declare-fun bm!574356 () Bool)

(declare-fun c!1211594 () Bool)

(declare-fun call!574363 () Bool)

(assert (=> bm!574356 (= call!574363 (validRegex!8191 (ite c!1211594 (regTwo!33423 (ite c!1211395 (reg!16784 r!7292) (ite c!1211396 (regOne!33423 r!7292) (regOne!33422 r!7292)))) (regTwo!33422 (ite c!1211395 (reg!16784 r!7292) (ite c!1211396 (regOne!33423 r!7292) (regOne!33422 r!7292)))))))))

(declare-fun b!6584564 () Bool)

(declare-fun e!3984940 () Bool)

(declare-fun e!3984943 () Bool)

(assert (=> b!6584564 (= e!3984940 e!3984943)))

(declare-fun c!1211593 () Bool)

(assert (=> b!6584564 (= c!1211593 ((_ is Star!16455) (ite c!1211395 (reg!16784 r!7292) (ite c!1211396 (regOne!33423 r!7292) (regOne!33422 r!7292)))))))

(declare-fun b!6584565 () Bool)

(declare-fun e!3984939 () Bool)

(assert (=> b!6584565 (= e!3984943 e!3984939)))

(assert (=> b!6584565 (= c!1211594 ((_ is Union!16455) (ite c!1211395 (reg!16784 r!7292) (ite c!1211396 (regOne!33423 r!7292) (regOne!33422 r!7292)))))))

(declare-fun b!6584566 () Bool)

(declare-fun e!3984942 () Bool)

(assert (=> b!6584566 (= e!3984942 call!574363)))

(declare-fun b!6584567 () Bool)

(declare-fun e!3984941 () Bool)

(assert (=> b!6584567 (= e!3984943 e!3984941)))

(declare-fun res!2701047 () Bool)

(assert (=> b!6584567 (= res!2701047 (not (nullable!6448 (reg!16784 (ite c!1211395 (reg!16784 r!7292) (ite c!1211396 (regOne!33423 r!7292) (regOne!33422 r!7292)))))))))

(assert (=> b!6584567 (=> (not res!2701047) (not e!3984941))))

(declare-fun bm!574357 () Bool)

(declare-fun call!574361 () Bool)

(assert (=> bm!574357 (= call!574361 (validRegex!8191 (ite c!1211593 (reg!16784 (ite c!1211395 (reg!16784 r!7292) (ite c!1211396 (regOne!33423 r!7292) (regOne!33422 r!7292)))) (ite c!1211594 (regOne!33423 (ite c!1211395 (reg!16784 r!7292) (ite c!1211396 (regOne!33423 r!7292) (regOne!33422 r!7292)))) (regOne!33422 (ite c!1211395 (reg!16784 r!7292) (ite c!1211396 (regOne!33423 r!7292) (regOne!33422 r!7292))))))))))

(declare-fun b!6584569 () Bool)

(declare-fun e!3984945 () Bool)

(declare-fun e!3984944 () Bool)

(assert (=> b!6584569 (= e!3984945 e!3984944)))

(declare-fun res!2701048 () Bool)

(assert (=> b!6584569 (=> (not res!2701048) (not e!3984944))))

(declare-fun call!574362 () Bool)

(assert (=> b!6584569 (= res!2701048 call!574362)))

(declare-fun b!6584570 () Bool)

(declare-fun res!2701050 () Bool)

(assert (=> b!6584570 (=> (not res!2701050) (not e!3984942))))

(assert (=> b!6584570 (= res!2701050 call!574362)))

(assert (=> b!6584570 (= e!3984939 e!3984942)))

(declare-fun bm!574358 () Bool)

(assert (=> bm!574358 (= call!574362 call!574361)))

(declare-fun b!6584571 () Bool)

(declare-fun res!2701046 () Bool)

(assert (=> b!6584571 (=> res!2701046 e!3984945)))

(assert (=> b!6584571 (= res!2701046 (not ((_ is Concat!25300) (ite c!1211395 (reg!16784 r!7292) (ite c!1211396 (regOne!33423 r!7292) (regOne!33422 r!7292))))))))

(assert (=> b!6584571 (= e!3984939 e!3984945)))

(declare-fun b!6584572 () Bool)

(assert (=> b!6584572 (= e!3984941 call!574361)))

(declare-fun d!2065683 () Bool)

(declare-fun res!2701049 () Bool)

(assert (=> d!2065683 (=> res!2701049 e!3984940)))

(assert (=> d!2065683 (= res!2701049 ((_ is ElementMatch!16455) (ite c!1211395 (reg!16784 r!7292) (ite c!1211396 (regOne!33423 r!7292) (regOne!33422 r!7292)))))))

(assert (=> d!2065683 (= (validRegex!8191 (ite c!1211395 (reg!16784 r!7292) (ite c!1211396 (regOne!33423 r!7292) (regOne!33422 r!7292)))) e!3984940)))

(declare-fun b!6584568 () Bool)

(assert (=> b!6584568 (= e!3984944 call!574363)))

(assert (= (and d!2065683 (not res!2701049)) b!6584564))

(assert (= (and b!6584564 c!1211593) b!6584567))

(assert (= (and b!6584564 (not c!1211593)) b!6584565))

(assert (= (and b!6584567 res!2701047) b!6584572))

(assert (= (and b!6584565 c!1211594) b!6584570))

(assert (= (and b!6584565 (not c!1211594)) b!6584571))

(assert (= (and b!6584570 res!2701050) b!6584566))

(assert (= (and b!6584571 (not res!2701046)) b!6584569))

(assert (= (and b!6584569 res!2701048) b!6584568))

(assert (= (or b!6584566 b!6584568) bm!574356))

(assert (= (or b!6584570 b!6584569) bm!574358))

(assert (= (or b!6584572 bm!574358) bm!574357))

(declare-fun m!7363762 () Bool)

(assert (=> bm!574356 m!7363762))

(declare-fun m!7363764 () Bool)

(assert (=> b!6584567 m!7363764))

(declare-fun m!7363766 () Bool)

(assert (=> bm!574357 m!7363766))

(assert (=> bm!574227 d!2065683))

(declare-fun d!2065687 () Bool)

(assert (=> d!2065687 (= (nullable!6448 lt!2410464) (nullableFct!2373 lt!2410464))))

(declare-fun bs!1684655 () Bool)

(assert (= bs!1684655 d!2065687))

(declare-fun m!7363770 () Bool)

(assert (=> bs!1684655 m!7363770))

(assert (=> b!6583526 d!2065687))

(declare-fun d!2065689 () Bool)

(assert (=> d!2065689 (= (nullable!6448 (regOne!33422 (reg!16784 (regOne!33422 r!7292)))) (nullableFct!2373 (regOne!33422 (reg!16784 (regOne!33422 r!7292)))))))

(declare-fun bs!1684656 () Bool)

(assert (= bs!1684656 d!2065689))

(declare-fun m!7363772 () Bool)

(assert (=> bs!1684656 m!7363772))

(assert (=> b!6584105 d!2065689))

(declare-fun bs!1684657 () Bool)

(declare-fun d!2065693 () Bool)

(assert (= bs!1684657 (and d!2065693 d!2065659)))

(declare-fun lambda!366817 () Int)

(assert (=> bs!1684657 (not (= lambda!366817 lambda!366811))))

(declare-fun bs!1684658 () Bool)

(assert (= bs!1684658 (and d!2065693 b!6584138)))

(assert (=> bs!1684658 (not (= lambda!366817 lambda!366791))))

(declare-fun bs!1684659 () Bool)

(assert (= bs!1684659 (and d!2065693 b!6584140)))

(assert (=> bs!1684659 (not (= lambda!366817 lambda!366792))))

(declare-fun bs!1684660 () Bool)

(assert (= bs!1684660 (and d!2065693 b!6584143)))

(assert (=> bs!1684660 (not (= lambda!366817 lambda!366794))))

(declare-fun bs!1684661 () Bool)

(assert (= bs!1684661 (and d!2065693 b!6584145)))

(assert (=> bs!1684661 (not (= lambda!366817 lambda!366795))))

(assert (=> d!2065693 true))

(assert (=> d!2065693 true))

(declare-fun order!27579 () Int)

(declare-fun order!27577 () Int)

(declare-fun dynLambda!26092 (Int Int) Int)

(declare-fun dynLambda!26093 (Int Int) Int)

(assert (=> d!2065693 (< (dynLambda!26092 order!27577 lambda!366793) (dynLambda!26093 order!27579 lambda!366817))))

(assert (=> d!2065693 (forall!15635 (t!379314 lt!2410483) lambda!366817)))

(declare-fun lt!2410667 () Unit!159155)

(declare-fun choose!49168 (List!65666 Int Int Int) Unit!159155)

(assert (=> d!2065693 (= lt!2410667 (choose!49168 (t!379314 lt!2410483) lt!2410641 (zipperDepth!392 (t!379314 lt!2410483)) lambda!366793))))

(assert (=> d!2065693 (>= lt!2410641 (zipperDepth!392 (t!379314 lt!2410483)))))

(assert (=> d!2065693 (= (lemmaForallContextDepthBiggerThanTransitive!265 (t!379314 lt!2410483) lt!2410641 (zipperDepth!392 (t!379314 lt!2410483)) lambda!366793) lt!2410667)))

(declare-fun bs!1684662 () Bool)

(assert (= bs!1684662 d!2065693))

(declare-fun m!7363780 () Bool)

(assert (=> bs!1684662 m!7363780))

(assert (=> bs!1684662 m!7363330))

(declare-fun m!7363782 () Bool)

(assert (=> bs!1684662 m!7363782))

(assert (=> b!6584143 d!2065693))

(declare-fun bs!1684663 () Bool)

(declare-fun b!6584589 () Bool)

(assert (= bs!1684663 (and b!6584589 b!6584138)))

(declare-fun lambda!366818 () Int)

(assert (=> bs!1684663 (= lambda!366818 lambda!366790)))

(declare-fun bs!1684664 () Bool)

(assert (= bs!1684664 (and b!6584589 b!6584143)))

(assert (=> bs!1684664 (= lambda!366818 lambda!366793)))

(declare-fun bs!1684665 () Bool)

(assert (= bs!1684665 (and b!6584589 d!2065659)))

(declare-fun lambda!366819 () Int)

(assert (=> bs!1684665 (not (= lambda!366819 lambda!366811))))

(declare-fun bs!1684666 () Bool)

(assert (= bs!1684666 (and b!6584589 d!2065693)))

(assert (=> bs!1684666 (not (= lambda!366819 lambda!366817))))

(declare-fun lt!2410669 () Int)

(assert (=> bs!1684663 (= (= lt!2410669 lt!2410637) (= lambda!366819 lambda!366791))))

(declare-fun bs!1684667 () Bool)

(assert (= bs!1684667 (and b!6584589 b!6584140)))

(assert (=> bs!1684667 (= (= lt!2410669 lt!2410636) (= lambda!366819 lambda!366792))))

(assert (=> bs!1684664 (= (= lt!2410669 lt!2410641) (= lambda!366819 lambda!366794))))

(declare-fun bs!1684668 () Bool)

(assert (= bs!1684668 (and b!6584589 b!6584145)))

(assert (=> bs!1684668 (= (= lt!2410669 lt!2410640) (= lambda!366819 lambda!366795))))

(assert (=> b!6584589 true))

(declare-fun bs!1684669 () Bool)

(declare-fun b!6584591 () Bool)

(assert (= bs!1684669 (and b!6584591 b!6584589)))

(declare-fun lt!2410668 () Int)

(declare-fun lambda!366820 () Int)

(assert (=> bs!1684669 (= (= lt!2410668 lt!2410669) (= lambda!366820 lambda!366819))))

(declare-fun bs!1684670 () Bool)

(assert (= bs!1684670 (and b!6584591 d!2065659)))

(assert (=> bs!1684670 (not (= lambda!366820 lambda!366811))))

(declare-fun bs!1684671 () Bool)

(assert (= bs!1684671 (and b!6584591 d!2065693)))

(assert (=> bs!1684671 (not (= lambda!366820 lambda!366817))))

(declare-fun bs!1684672 () Bool)

(assert (= bs!1684672 (and b!6584591 b!6584138)))

(assert (=> bs!1684672 (= (= lt!2410668 lt!2410637) (= lambda!366820 lambda!366791))))

(declare-fun bs!1684673 () Bool)

(assert (= bs!1684673 (and b!6584591 b!6584140)))

(assert (=> bs!1684673 (= (= lt!2410668 lt!2410636) (= lambda!366820 lambda!366792))))

(declare-fun bs!1684674 () Bool)

(assert (= bs!1684674 (and b!6584591 b!6584143)))

(assert (=> bs!1684674 (= (= lt!2410668 lt!2410641) (= lambda!366820 lambda!366794))))

(declare-fun bs!1684675 () Bool)

(assert (= bs!1684675 (and b!6584591 b!6584145)))

(assert (=> bs!1684675 (= (= lt!2410668 lt!2410640) (= lambda!366820 lambda!366795))))

(assert (=> b!6584591 true))

(declare-fun d!2065697 () Bool)

(declare-fun e!3984957 () Bool)

(assert (=> d!2065697 e!3984957))

(declare-fun res!2701060 () Bool)

(assert (=> d!2065697 (=> (not res!2701060) (not e!3984957))))

(assert (=> d!2065697 (= res!2701060 (>= lt!2410668 0))))

(declare-fun e!3984958 () Int)

(assert (=> d!2065697 (= lt!2410668 e!3984958)))

(declare-fun c!1211599 () Bool)

(assert (=> d!2065697 (= c!1211599 ((_ is Cons!65542) (t!379314 lt!2410483)))))

(assert (=> d!2065697 (= (zipperDepth!392 (t!379314 lt!2410483)) lt!2410668)))

(assert (=> b!6584589 (= e!3984958 lt!2410669)))

(assert (=> b!6584589 (= lt!2410669 (maxBigInt!0 (contextDepth!281 (h!71990 (t!379314 lt!2410483))) (zipperDepth!392 (t!379314 (t!379314 lt!2410483)))))))

(declare-fun lt!2410670 () Unit!159155)

(assert (=> b!6584589 (= lt!2410670 (lemmaForallContextDepthBiggerThanTransitive!265 (t!379314 (t!379314 lt!2410483)) lt!2410669 (zipperDepth!392 (t!379314 (t!379314 lt!2410483))) lambda!366818))))

(assert (=> b!6584589 (forall!15635 (t!379314 (t!379314 lt!2410483)) lambda!366819)))

(declare-fun lt!2410671 () Unit!159155)

(assert (=> b!6584589 (= lt!2410671 lt!2410670)))

(declare-fun b!6584590 () Bool)

(assert (=> b!6584590 (= e!3984958 0)))

(assert (=> b!6584591 (= e!3984957 (forall!15635 (t!379314 lt!2410483) lambda!366820))))

(assert (= (and d!2065697 c!1211599) b!6584589))

(assert (= (and d!2065697 (not c!1211599)) b!6584590))

(assert (= (and d!2065697 res!2701060) b!6584591))

(declare-fun m!7363788 () Bool)

(assert (=> b!6584589 m!7363788))

(declare-fun m!7363790 () Bool)

(assert (=> b!6584589 m!7363790))

(declare-fun m!7363792 () Bool)

(assert (=> b!6584589 m!7363792))

(assert (=> b!6584589 m!7363792))

(assert (=> b!6584589 m!7363788))

(declare-fun m!7363794 () Bool)

(assert (=> b!6584589 m!7363794))

(assert (=> b!6584589 m!7363788))

(declare-fun m!7363796 () Bool)

(assert (=> b!6584589 m!7363796))

(declare-fun m!7363798 () Bool)

(assert (=> b!6584591 m!7363798))

(assert (=> b!6584143 d!2065697))

(declare-fun d!2065701 () Bool)

(assert (=> d!2065701 (= (maxBigInt!0 (contextDepth!281 (h!71990 lt!2410483)) (zipperDepth!392 (t!379314 lt!2410483))) (ite (>= (contextDepth!281 (h!71990 lt!2410483)) (zipperDepth!392 (t!379314 lt!2410483))) (contextDepth!281 (h!71990 lt!2410483)) (zipperDepth!392 (t!379314 lt!2410483))))))

(assert (=> b!6584143 d!2065701))

(declare-fun bs!1684694 () Bool)

(declare-fun b!6584625 () Bool)

(assert (= bs!1684694 (and b!6584625 d!2065261)))

(declare-fun lambda!366830 () Int)

(assert (=> bs!1684694 (not (= lambda!366830 lambda!366714))))

(declare-fun bs!1684695 () Bool)

(assert (= bs!1684695 (and b!6584625 d!2065665)))

(assert (=> bs!1684695 (not (= lambda!366830 lambda!366813))))

(declare-fun bs!1684696 () Bool)

(assert (= bs!1684696 (and b!6584625 d!2065477)))

(assert (=> bs!1684696 (not (= lambda!366830 lambda!366783))))

(declare-fun bs!1684697 () Bool)

(assert (= bs!1684697 (and b!6584625 d!2065379)))

(assert (=> bs!1684697 (not (= lambda!366830 lambda!366760))))

(declare-fun bs!1684698 () Bool)

(assert (= bs!1684698 (and b!6584625 d!2065619)))

(assert (=> bs!1684698 (not (= lambda!366830 lambda!366804))))

(declare-fun bs!1684699 () Bool)

(assert (= bs!1684699 (and b!6584625 d!2065623)))

(assert (=> bs!1684699 (not (= lambda!366830 lambda!366805))))

(declare-fun bs!1684700 () Bool)

(assert (= bs!1684700 (and b!6584625 d!2065439)))

(assert (=> bs!1684700 (not (= lambda!366830 lambda!366779))))

(declare-fun bs!1684701 () Bool)

(assert (= bs!1684701 (and b!6584625 d!2065401)))

(assert (=> bs!1684701 (not (= lambda!366830 lambda!366770))))

(declare-fun bs!1684702 () Bool)

(assert (= bs!1684702 (and b!6584625 d!2065515)))

(assert (=> bs!1684702 (not (= lambda!366830 lambda!366796))))

(declare-fun bs!1684703 () Bool)

(assert (= bs!1684703 (and b!6584625 d!2065517)))

(assert (=> bs!1684703 (not (= lambda!366830 lambda!366797))))

(declare-fun bs!1684704 () Bool)

(assert (= bs!1684704 (and b!6584625 d!2065437)))

(assert (=> bs!1684704 (not (= lambda!366830 lambda!366776))))

(assert (=> b!6584625 true))

(declare-fun bs!1684705 () Bool)

(declare-fun b!6584627 () Bool)

(assert (= bs!1684705 (and b!6584627 d!2065261)))

(declare-fun lambda!366831 () Int)

(assert (=> bs!1684705 (not (= lambda!366831 lambda!366714))))

(declare-fun bs!1684706 () Bool)

(assert (= bs!1684706 (and b!6584627 d!2065665)))

(assert (=> bs!1684706 (not (= lambda!366831 lambda!366813))))

(declare-fun bs!1684707 () Bool)

(assert (= bs!1684707 (and b!6584627 b!6584625)))

(declare-fun lt!2410682 () Int)

(declare-fun lt!2410684 () Int)

(assert (=> bs!1684707 (= (= lt!2410682 lt!2410684) (= lambda!366831 lambda!366830))))

(declare-fun bs!1684708 () Bool)

(assert (= bs!1684708 (and b!6584627 d!2065477)))

(assert (=> bs!1684708 (not (= lambda!366831 lambda!366783))))

(declare-fun bs!1684709 () Bool)

(assert (= bs!1684709 (and b!6584627 d!2065379)))

(assert (=> bs!1684709 (not (= lambda!366831 lambda!366760))))

(declare-fun bs!1684710 () Bool)

(assert (= bs!1684710 (and b!6584627 d!2065619)))

(assert (=> bs!1684710 (not (= lambda!366831 lambda!366804))))

(declare-fun bs!1684711 () Bool)

(assert (= bs!1684711 (and b!6584627 d!2065623)))

(assert (=> bs!1684711 (not (= lambda!366831 lambda!366805))))

(declare-fun bs!1684712 () Bool)

(assert (= bs!1684712 (and b!6584627 d!2065439)))

(assert (=> bs!1684712 (not (= lambda!366831 lambda!366779))))

(declare-fun bs!1684713 () Bool)

(assert (= bs!1684713 (and b!6584627 d!2065401)))

(assert (=> bs!1684713 (not (= lambda!366831 lambda!366770))))

(declare-fun bs!1684714 () Bool)

(assert (= bs!1684714 (and b!6584627 d!2065515)))

(assert (=> bs!1684714 (not (= lambda!366831 lambda!366796))))

(declare-fun bs!1684715 () Bool)

(assert (= bs!1684715 (and b!6584627 d!2065517)))

(assert (=> bs!1684715 (not (= lambda!366831 lambda!366797))))

(declare-fun bs!1684716 () Bool)

(assert (= bs!1684716 (and b!6584627 d!2065437)))

(assert (=> bs!1684716 (not (= lambda!366831 lambda!366776))))

(assert (=> b!6584627 true))

(declare-fun d!2065703 () Bool)

(declare-fun e!3984981 () Bool)

(assert (=> d!2065703 e!3984981))

(declare-fun res!2701073 () Bool)

(assert (=> d!2065703 (=> (not res!2701073) (not e!3984981))))

(assert (=> d!2065703 (= res!2701073 (>= lt!2410682 0))))

(declare-fun e!3984982 () Int)

(assert (=> d!2065703 (= lt!2410682 e!3984982)))

(declare-fun c!1211613 () Bool)

(assert (=> d!2065703 (= c!1211613 ((_ is Cons!65540) (exprs!6339 (h!71990 lt!2410483))))))

(assert (=> d!2065703 (= (contextDepth!281 (h!71990 lt!2410483)) lt!2410682)))

(assert (=> b!6584625 (= e!3984982 lt!2410684)))

(assert (=> b!6584625 (= lt!2410684 (maxBigInt!0 (regexDepth!352 (h!71988 (exprs!6339 (h!71990 lt!2410483)))) (contextDepth!281 (Context!11679 (t!379312 (exprs!6339 (h!71990 lt!2410483)))))))))

(declare-fun lt!2410681 () Unit!159155)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!130 (List!65664 Int Int) Unit!159155)

(assert (=> b!6584625 (= lt!2410681 (lemmaForallRegexDepthBiggerThanTransitive!130 (t!379312 (exprs!6339 (h!71990 lt!2410483))) lt!2410684 (contextDepth!281 (Context!11679 (t!379312 (exprs!6339 (h!71990 lt!2410483)))))))))

(assert (=> b!6584625 (forall!15634 (t!379312 (exprs!6339 (h!71990 lt!2410483))) lambda!366830)))

(declare-fun lt!2410683 () Unit!159155)

(assert (=> b!6584625 (= lt!2410683 lt!2410681)))

(declare-fun b!6584626 () Bool)

(assert (=> b!6584626 (= e!3984982 0)))

(assert (=> b!6584627 (= e!3984981 (forall!15634 (exprs!6339 (h!71990 lt!2410483)) lambda!366831))))

(assert (= (and d!2065703 c!1211613) b!6584625))

(assert (= (and d!2065703 (not c!1211613)) b!6584626))

(assert (= (and d!2065703 res!2701073) b!6584627))

(declare-fun m!7363830 () Bool)

(assert (=> b!6584625 m!7363830))

(declare-fun m!7363832 () Bool)

(assert (=> b!6584625 m!7363832))

(assert (=> b!6584625 m!7363832))

(assert (=> b!6584625 m!7363830))

(declare-fun m!7363834 () Bool)

(assert (=> b!6584625 m!7363834))

(declare-fun m!7363836 () Bool)

(assert (=> b!6584625 m!7363836))

(assert (=> b!6584625 m!7363830))

(declare-fun m!7363838 () Bool)

(assert (=> b!6584625 m!7363838))

(declare-fun m!7363840 () Bool)

(assert (=> b!6584627 m!7363840))

(assert (=> b!6584143 d!2065703))

(declare-fun d!2065723 () Bool)

(declare-fun res!2701077 () Bool)

(declare-fun e!3984990 () Bool)

(assert (=> d!2065723 (=> res!2701077 e!3984990)))

(assert (=> d!2065723 (= res!2701077 ((_ is Nil!65542) (t!379314 lt!2410483)))))

(assert (=> d!2065723 (= (forall!15635 (t!379314 lt!2410483) lambda!366794) e!3984990)))

(declare-fun b!6584641 () Bool)

(declare-fun e!3984991 () Bool)

(assert (=> b!6584641 (= e!3984990 e!3984991)))

(declare-fun res!2701078 () Bool)

(assert (=> b!6584641 (=> (not res!2701078) (not e!3984991))))

(assert (=> b!6584641 (= res!2701078 (dynLambda!26087 lambda!366794 (h!71990 (t!379314 lt!2410483))))))

(declare-fun b!6584642 () Bool)

(assert (=> b!6584642 (= e!3984991 (forall!15635 (t!379314 (t!379314 lt!2410483)) lambda!366794))))

(assert (= (and d!2065723 (not res!2701077)) b!6584641))

(assert (= (and b!6584641 res!2701078) b!6584642))

(declare-fun b_lambda!249121 () Bool)

(assert (=> (not b_lambda!249121) (not b!6584641)))

(declare-fun m!7363842 () Bool)

(assert (=> b!6584641 m!7363842))

(declare-fun m!7363844 () Bool)

(assert (=> b!6584642 m!7363844))

(assert (=> b!6584143 d!2065723))

(declare-fun bm!574373 () Bool)

(declare-fun call!574380 () Bool)

(declare-fun c!1211619 () Bool)

(assert (=> bm!574373 (= call!574380 (validRegex!8191 (ite c!1211619 (regTwo!33423 lt!2410522) (regTwo!33422 lt!2410522))))))

(declare-fun b!6584643 () Bool)

(declare-fun e!3984993 () Bool)

(declare-fun e!3984996 () Bool)

(assert (=> b!6584643 (= e!3984993 e!3984996)))

(declare-fun c!1211618 () Bool)

(assert (=> b!6584643 (= c!1211618 ((_ is Star!16455) lt!2410522))))

(declare-fun b!6584644 () Bool)

(declare-fun e!3984992 () Bool)

(assert (=> b!6584644 (= e!3984996 e!3984992)))

(assert (=> b!6584644 (= c!1211619 ((_ is Union!16455) lt!2410522))))

(declare-fun b!6584645 () Bool)

(declare-fun e!3984995 () Bool)

(assert (=> b!6584645 (= e!3984995 call!574380)))

(declare-fun b!6584646 () Bool)

(declare-fun e!3984994 () Bool)

(assert (=> b!6584646 (= e!3984996 e!3984994)))

(declare-fun res!2701080 () Bool)

(assert (=> b!6584646 (= res!2701080 (not (nullable!6448 (reg!16784 lt!2410522))))))

(assert (=> b!6584646 (=> (not res!2701080) (not e!3984994))))

(declare-fun bm!574374 () Bool)

(declare-fun call!574378 () Bool)

(assert (=> bm!574374 (= call!574378 (validRegex!8191 (ite c!1211618 (reg!16784 lt!2410522) (ite c!1211619 (regOne!33423 lt!2410522) (regOne!33422 lt!2410522)))))))

(declare-fun b!6584648 () Bool)

(declare-fun e!3984998 () Bool)

(declare-fun e!3984997 () Bool)

(assert (=> b!6584648 (= e!3984998 e!3984997)))

(declare-fun res!2701081 () Bool)

(assert (=> b!6584648 (=> (not res!2701081) (not e!3984997))))

(declare-fun call!574379 () Bool)

(assert (=> b!6584648 (= res!2701081 call!574379)))

(declare-fun b!6584649 () Bool)

(declare-fun res!2701083 () Bool)

(assert (=> b!6584649 (=> (not res!2701083) (not e!3984995))))

(assert (=> b!6584649 (= res!2701083 call!574379)))

(assert (=> b!6584649 (= e!3984992 e!3984995)))

(declare-fun bm!574375 () Bool)

(assert (=> bm!574375 (= call!574379 call!574378)))

(declare-fun b!6584650 () Bool)

(declare-fun res!2701079 () Bool)

(assert (=> b!6584650 (=> res!2701079 e!3984998)))

(assert (=> b!6584650 (= res!2701079 (not ((_ is Concat!25300) lt!2410522)))))

(assert (=> b!6584650 (= e!3984992 e!3984998)))

(declare-fun b!6584651 () Bool)

(assert (=> b!6584651 (= e!3984994 call!574378)))

(declare-fun d!2065725 () Bool)

(declare-fun res!2701082 () Bool)

(assert (=> d!2065725 (=> res!2701082 e!3984993)))

(assert (=> d!2065725 (= res!2701082 ((_ is ElementMatch!16455) lt!2410522))))

(assert (=> d!2065725 (= (validRegex!8191 lt!2410522) e!3984993)))

(declare-fun b!6584647 () Bool)

(assert (=> b!6584647 (= e!3984997 call!574380)))

(assert (= (and d!2065725 (not res!2701082)) b!6584643))

(assert (= (and b!6584643 c!1211618) b!6584646))

(assert (= (and b!6584643 (not c!1211618)) b!6584644))

(assert (= (and b!6584646 res!2701080) b!6584651))

(assert (= (and b!6584644 c!1211619) b!6584649))

(assert (= (and b!6584644 (not c!1211619)) b!6584650))

(assert (= (and b!6584649 res!2701083) b!6584645))

(assert (= (and b!6584650 (not res!2701079)) b!6584648))

(assert (= (and b!6584648 res!2701081) b!6584647))

(assert (= (or b!6584645 b!6584647) bm!574373))

(assert (= (or b!6584649 b!6584648) bm!574375))

(assert (= (or b!6584651 bm!574375) bm!574374))

(declare-fun m!7363846 () Bool)

(assert (=> bm!574373 m!7363846))

(declare-fun m!7363848 () Bool)

(assert (=> b!6584646 m!7363848))

(declare-fun m!7363850 () Bool)

(assert (=> bm!574374 m!7363850))

(assert (=> d!2065271 d!2065725))

(declare-fun bs!1684723 () Bool)

(declare-fun d!2065727 () Bool)

(assert (= bs!1684723 (and d!2065727 d!2065261)))

(declare-fun lambda!366833 () Int)

(assert (=> bs!1684723 (= lambda!366833 lambda!366714)))

(declare-fun bs!1684725 () Bool)

(assert (= bs!1684725 (and d!2065727 d!2065665)))

(assert (=> bs!1684725 (= lambda!366833 lambda!366813)))

(declare-fun bs!1684726 () Bool)

(assert (= bs!1684726 (and d!2065727 b!6584625)))

(assert (=> bs!1684726 (not (= lambda!366833 lambda!366830))))

(declare-fun bs!1684727 () Bool)

(assert (= bs!1684727 (and d!2065727 d!2065477)))

(assert (=> bs!1684727 (= lambda!366833 lambda!366783)))

(declare-fun bs!1684728 () Bool)

(assert (= bs!1684728 (and d!2065727 d!2065379)))

(assert (=> bs!1684728 (= lambda!366833 lambda!366760)))

(declare-fun bs!1684729 () Bool)

(assert (= bs!1684729 (and d!2065727 d!2065619)))

(assert (=> bs!1684729 (= lambda!366833 lambda!366804)))

(declare-fun bs!1684730 () Bool)

(assert (= bs!1684730 (and d!2065727 d!2065623)))

(assert (=> bs!1684730 (= lambda!366833 lambda!366805)))

(declare-fun bs!1684731 () Bool)

(assert (= bs!1684731 (and d!2065727 d!2065439)))

(assert (=> bs!1684731 (= lambda!366833 lambda!366779)))

(declare-fun bs!1684732 () Bool)

(assert (= bs!1684732 (and d!2065727 d!2065401)))

(assert (=> bs!1684732 (= lambda!366833 lambda!366770)))

(declare-fun bs!1684733 () Bool)

(assert (= bs!1684733 (and d!2065727 d!2065515)))

(assert (=> bs!1684733 (= lambda!366833 lambda!366796)))

(declare-fun bs!1684734 () Bool)

(assert (= bs!1684734 (and d!2065727 b!6584627)))

(assert (=> bs!1684734 (not (= lambda!366833 lambda!366831))))

(declare-fun bs!1684735 () Bool)

(assert (= bs!1684735 (and d!2065727 d!2065517)))

(assert (=> bs!1684735 (= lambda!366833 lambda!366797)))

(declare-fun bs!1684736 () Bool)

(assert (= bs!1684736 (and d!2065727 d!2065437)))

(assert (=> bs!1684736 (= lambda!366833 lambda!366776)))

(declare-fun b!6584652 () Bool)

(declare-fun e!3985000 () Bool)

(assert (=> b!6584652 (= e!3985000 (isEmpty!37797 (t!379312 (unfocusZipperList!1876 lt!2410483))))))

(declare-fun b!6584653 () Bool)

(declare-fun e!3985002 () Regex!16455)

(assert (=> b!6584653 (= e!3985002 (h!71988 (unfocusZipperList!1876 lt!2410483)))))

(declare-fun b!6584654 () Bool)

(declare-fun e!3985003 () Regex!16455)

(assert (=> b!6584654 (= e!3985003 (Union!16455 (h!71988 (unfocusZipperList!1876 lt!2410483)) (generalisedUnion!2299 (t!379312 (unfocusZipperList!1876 lt!2410483)))))))

(declare-fun b!6584655 () Bool)

(declare-fun e!3985004 () Bool)

(declare-fun e!3984999 () Bool)

(assert (=> b!6584655 (= e!3985004 e!3984999)))

(declare-fun c!1211622 () Bool)

(assert (=> b!6584655 (= c!1211622 (isEmpty!37797 (tail!12447 (unfocusZipperList!1876 lt!2410483))))))

(declare-fun b!6584656 () Bool)

(declare-fun e!3985001 () Bool)

(assert (=> b!6584656 (= e!3985001 e!3985004)))

(declare-fun c!1211620 () Bool)

(assert (=> b!6584656 (= c!1211620 (isEmpty!37797 (unfocusZipperList!1876 lt!2410483)))))

(declare-fun b!6584657 () Bool)

(assert (=> b!6584657 (= e!3985003 EmptyLang!16455)))

(declare-fun b!6584658 () Bool)

(assert (=> b!6584658 (= e!3985002 e!3985003)))

(declare-fun c!1211621 () Bool)

(assert (=> b!6584658 (= c!1211621 ((_ is Cons!65540) (unfocusZipperList!1876 lt!2410483)))))

(declare-fun b!6584660 () Bool)

(declare-fun lt!2410685 () Regex!16455)

(assert (=> b!6584660 (= e!3984999 (isUnion!1272 lt!2410685))))

(declare-fun b!6584661 () Bool)

(assert (=> b!6584661 (= e!3984999 (= lt!2410685 (head!13362 (unfocusZipperList!1876 lt!2410483))))))

(declare-fun b!6584659 () Bool)

(assert (=> b!6584659 (= e!3985004 (isEmptyLang!1842 lt!2410685))))

(assert (=> d!2065727 e!3985001))

(declare-fun res!2701084 () Bool)

(assert (=> d!2065727 (=> (not res!2701084) (not e!3985001))))

(assert (=> d!2065727 (= res!2701084 (validRegex!8191 lt!2410685))))

(assert (=> d!2065727 (= lt!2410685 e!3985002)))

(declare-fun c!1211623 () Bool)

(assert (=> d!2065727 (= c!1211623 e!3985000)))

(declare-fun res!2701085 () Bool)

(assert (=> d!2065727 (=> (not res!2701085) (not e!3985000))))

(assert (=> d!2065727 (= res!2701085 ((_ is Cons!65540) (unfocusZipperList!1876 lt!2410483)))))

(assert (=> d!2065727 (forall!15634 (unfocusZipperList!1876 lt!2410483) lambda!366833)))

(assert (=> d!2065727 (= (generalisedUnion!2299 (unfocusZipperList!1876 lt!2410483)) lt!2410685)))

(assert (= (and d!2065727 res!2701085) b!6584652))

(assert (= (and d!2065727 c!1211623) b!6584653))

(assert (= (and d!2065727 (not c!1211623)) b!6584658))

(assert (= (and b!6584658 c!1211621) b!6584654))

(assert (= (and b!6584658 (not c!1211621)) b!6584657))

(assert (= (and d!2065727 res!2701084) b!6584656))

(assert (= (and b!6584656 c!1211620) b!6584659))

(assert (= (and b!6584656 (not c!1211620)) b!6584655))

(assert (= (and b!6584655 c!1211622) b!6584661))

(assert (= (and b!6584655 (not c!1211622)) b!6584660))

(assert (=> b!6584656 m!7362774))

(declare-fun m!7363852 () Bool)

(assert (=> b!6584656 m!7363852))

(declare-fun m!7363854 () Bool)

(assert (=> b!6584654 m!7363854))

(assert (=> b!6584655 m!7362774))

(declare-fun m!7363856 () Bool)

(assert (=> b!6584655 m!7363856))

(assert (=> b!6584655 m!7363856))

(declare-fun m!7363858 () Bool)

(assert (=> b!6584655 m!7363858))

(assert (=> b!6584661 m!7362774))

(declare-fun m!7363860 () Bool)

(assert (=> b!6584661 m!7363860))

(declare-fun m!7363862 () Bool)

(assert (=> b!6584660 m!7363862))

(declare-fun m!7363864 () Bool)

(assert (=> d!2065727 m!7363864))

(assert (=> d!2065727 m!7362774))

(declare-fun m!7363866 () Bool)

(assert (=> d!2065727 m!7363866))

(declare-fun m!7363868 () Bool)

(assert (=> b!6584652 m!7363868))

(declare-fun m!7363870 () Bool)

(assert (=> b!6584659 m!7363870))

(assert (=> d!2065271 d!2065727))

(declare-fun bs!1684740 () Bool)

(declare-fun d!2065729 () Bool)

(assert (= bs!1684740 (and d!2065729 d!2065261)))

(declare-fun lambda!366835 () Int)

(assert (=> bs!1684740 (= lambda!366835 lambda!366714)))

(declare-fun bs!1684741 () Bool)

(assert (= bs!1684741 (and d!2065729 d!2065665)))

(assert (=> bs!1684741 (= lambda!366835 lambda!366813)))

(declare-fun bs!1684743 () Bool)

(assert (= bs!1684743 (and d!2065729 b!6584625)))

(assert (=> bs!1684743 (not (= lambda!366835 lambda!366830))))

(declare-fun bs!1684744 () Bool)

(assert (= bs!1684744 (and d!2065729 d!2065477)))

(assert (=> bs!1684744 (= lambda!366835 lambda!366783)))

(declare-fun bs!1684745 () Bool)

(assert (= bs!1684745 (and d!2065729 d!2065379)))

(assert (=> bs!1684745 (= lambda!366835 lambda!366760)))

(declare-fun bs!1684747 () Bool)

(assert (= bs!1684747 (and d!2065729 d!2065619)))

(assert (=> bs!1684747 (= lambda!366835 lambda!366804)))

(declare-fun bs!1684748 () Bool)

(assert (= bs!1684748 (and d!2065729 d!2065623)))

(assert (=> bs!1684748 (= lambda!366835 lambda!366805)))

(declare-fun bs!1684749 () Bool)

(assert (= bs!1684749 (and d!2065729 d!2065439)))

(assert (=> bs!1684749 (= lambda!366835 lambda!366779)))

(declare-fun bs!1684750 () Bool)

(assert (= bs!1684750 (and d!2065729 d!2065727)))

(assert (=> bs!1684750 (= lambda!366835 lambda!366833)))

(declare-fun bs!1684751 () Bool)

(assert (= bs!1684751 (and d!2065729 d!2065401)))

(assert (=> bs!1684751 (= lambda!366835 lambda!366770)))

(declare-fun bs!1684752 () Bool)

(assert (= bs!1684752 (and d!2065729 d!2065515)))

(assert (=> bs!1684752 (= lambda!366835 lambda!366796)))

(declare-fun bs!1684753 () Bool)

(assert (= bs!1684753 (and d!2065729 b!6584627)))

(assert (=> bs!1684753 (not (= lambda!366835 lambda!366831))))

(declare-fun bs!1684755 () Bool)

(assert (= bs!1684755 (and d!2065729 d!2065517)))

(assert (=> bs!1684755 (= lambda!366835 lambda!366797)))

(declare-fun bs!1684756 () Bool)

(assert (= bs!1684756 (and d!2065729 d!2065437)))

(assert (=> bs!1684756 (= lambda!366835 lambda!366776)))

(declare-fun lt!2410686 () List!65664)

(assert (=> d!2065729 (forall!15634 lt!2410686 lambda!366835)))

(declare-fun e!3985005 () List!65664)

(assert (=> d!2065729 (= lt!2410686 e!3985005)))

(declare-fun c!1211624 () Bool)

(assert (=> d!2065729 (= c!1211624 ((_ is Cons!65542) lt!2410483))))

(assert (=> d!2065729 (= (unfocusZipperList!1876 lt!2410483) lt!2410686)))

(declare-fun b!6584662 () Bool)

(assert (=> b!6584662 (= e!3985005 (Cons!65540 (generalisedConcat!2052 (exprs!6339 (h!71990 lt!2410483))) (unfocusZipperList!1876 (t!379314 lt!2410483))))))

(declare-fun b!6584663 () Bool)

(assert (=> b!6584663 (= e!3985005 Nil!65540)))

(assert (= (and d!2065729 c!1211624) b!6584662))

(assert (= (and d!2065729 (not c!1211624)) b!6584663))

(declare-fun m!7363872 () Bool)

(assert (=> d!2065729 m!7363872))

(declare-fun m!7363874 () Bool)

(assert (=> b!6584662 m!7363874))

(declare-fun m!7363876 () Bool)

(assert (=> b!6584662 m!7363876))

(assert (=> d!2065271 d!2065729))

(declare-fun bm!574377 () Bool)

(declare-fun call!574381 () (InoxSet Context!11678))

(declare-fun call!574383 () List!65664)

(declare-fun c!1211625 () Bool)

(assert (=> bm!574377 (= call!574381 (derivationStepZipperDown!1703 (ite c!1211625 (regOne!33423 (h!71988 (exprs!6339 lt!2410465))) (regOne!33422 (h!71988 (exprs!6339 lt!2410465)))) (ite c!1211625 (Context!11679 (t!379312 (exprs!6339 lt!2410465))) (Context!11679 call!574383)) (h!71989 s!2326)))))

(declare-fun b!6584664 () Bool)

(declare-fun e!3985006 () (InoxSet Context!11678))

(declare-fun call!574385 () (InoxSet Context!11678))

(assert (=> b!6584664 (= e!3985006 ((_ map or) call!574381 call!574385))))

(declare-fun c!1211626 () Bool)

(declare-fun bm!574378 () Bool)

(declare-fun call!574386 () List!65664)

(declare-fun call!574382 () (InoxSet Context!11678))

(declare-fun c!1211627 () Bool)

(assert (=> bm!574378 (= call!574382 (derivationStepZipperDown!1703 (ite c!1211625 (regTwo!33423 (h!71988 (exprs!6339 lt!2410465))) (ite c!1211627 (regTwo!33422 (h!71988 (exprs!6339 lt!2410465))) (ite c!1211626 (regOne!33422 (h!71988 (exprs!6339 lt!2410465))) (reg!16784 (h!71988 (exprs!6339 lt!2410465)))))) (ite (or c!1211625 c!1211627) (Context!11679 (t!379312 (exprs!6339 lt!2410465))) (Context!11679 call!574386)) (h!71989 s!2326)))))

(declare-fun b!6584665 () Bool)

(declare-fun e!3985010 () Bool)

(assert (=> b!6584665 (= c!1211627 e!3985010)))

(declare-fun res!2701086 () Bool)

(assert (=> b!6584665 (=> (not res!2701086) (not e!3985010))))

(assert (=> b!6584665 (= res!2701086 ((_ is Concat!25300) (h!71988 (exprs!6339 lt!2410465))))))

(declare-fun e!3985009 () (InoxSet Context!11678))

(assert (=> b!6584665 (= e!3985009 e!3985006)))

(declare-fun b!6584666 () Bool)

(declare-fun e!3985011 () (InoxSet Context!11678))

(assert (=> b!6584666 (= e!3985006 e!3985011)))

(assert (=> b!6584666 (= c!1211626 ((_ is Concat!25300) (h!71988 (exprs!6339 lt!2410465))))))

(declare-fun b!6584667 () Bool)

(declare-fun c!1211628 () Bool)

(assert (=> b!6584667 (= c!1211628 ((_ is Star!16455) (h!71988 (exprs!6339 lt!2410465))))))

(declare-fun e!3985007 () (InoxSet Context!11678))

(assert (=> b!6584667 (= e!3985011 e!3985007)))

(declare-fun b!6584668 () Bool)

(declare-fun e!3985008 () (InoxSet Context!11678))

(assert (=> b!6584668 (= e!3985008 (store ((as const (Array Context!11678 Bool)) false) (Context!11679 (t!379312 (exprs!6339 lt!2410465))) true))))

(declare-fun bm!574379 () Bool)

(assert (=> bm!574379 (= call!574385 call!574382)))

(declare-fun d!2065731 () Bool)

(declare-fun c!1211629 () Bool)

(assert (=> d!2065731 (= c!1211629 (and ((_ is ElementMatch!16455) (h!71988 (exprs!6339 lt!2410465))) (= (c!1211172 (h!71988 (exprs!6339 lt!2410465))) (h!71989 s!2326))))))

(assert (=> d!2065731 (= (derivationStepZipperDown!1703 (h!71988 (exprs!6339 lt!2410465)) (Context!11679 (t!379312 (exprs!6339 lt!2410465))) (h!71989 s!2326)) e!3985008)))

(declare-fun bm!574376 () Bool)

(assert (=> bm!574376 (= call!574383 ($colon$colon!2296 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410465)))) (ite (or c!1211627 c!1211626) (regTwo!33422 (h!71988 (exprs!6339 lt!2410465))) (h!71988 (exprs!6339 lt!2410465)))))))

(declare-fun b!6584669 () Bool)

(assert (=> b!6584669 (= e!3985007 ((as const (Array Context!11678 Bool)) false))))

(declare-fun b!6584670 () Bool)

(declare-fun call!574384 () (InoxSet Context!11678))

(assert (=> b!6584670 (= e!3985011 call!574384)))

(declare-fun bm!574380 () Bool)

(assert (=> bm!574380 (= call!574386 call!574383)))

(declare-fun b!6584671 () Bool)

(assert (=> b!6584671 (= e!3985008 e!3985009)))

(assert (=> b!6584671 (= c!1211625 ((_ is Union!16455) (h!71988 (exprs!6339 lt!2410465))))))

(declare-fun bm!574381 () Bool)

(assert (=> bm!574381 (= call!574384 call!574385)))

(declare-fun b!6584672 () Bool)

(assert (=> b!6584672 (= e!3985009 ((_ map or) call!574381 call!574382))))

(declare-fun b!6584673 () Bool)

(assert (=> b!6584673 (= e!3985010 (nullable!6448 (regOne!33422 (h!71988 (exprs!6339 lt!2410465)))))))

(declare-fun b!6584674 () Bool)

(assert (=> b!6584674 (= e!3985007 call!574384)))

(assert (= (and d!2065731 c!1211629) b!6584668))

(assert (= (and d!2065731 (not c!1211629)) b!6584671))

(assert (= (and b!6584671 c!1211625) b!6584672))

(assert (= (and b!6584671 (not c!1211625)) b!6584665))

(assert (= (and b!6584665 res!2701086) b!6584673))

(assert (= (and b!6584665 c!1211627) b!6584664))

(assert (= (and b!6584665 (not c!1211627)) b!6584666))

(assert (= (and b!6584666 c!1211626) b!6584670))

(assert (= (and b!6584666 (not c!1211626)) b!6584667))

(assert (= (and b!6584667 c!1211628) b!6584674))

(assert (= (and b!6584667 (not c!1211628)) b!6584669))

(assert (= (or b!6584670 b!6584674) bm!574380))

(assert (= (or b!6584670 b!6584674) bm!574381))

(assert (= (or b!6584664 bm!574380) bm!574376))

(assert (= (or b!6584664 bm!574381) bm!574379))

(assert (= (or b!6584672 bm!574379) bm!574378))

(assert (= (or b!6584672 b!6584664) bm!574377))

(declare-fun m!7363878 () Bool)

(assert (=> b!6584673 m!7363878))

(declare-fun m!7363880 () Bool)

(assert (=> b!6584668 m!7363880))

(declare-fun m!7363882 () Bool)

(assert (=> bm!574377 m!7363882))

(declare-fun m!7363884 () Bool)

(assert (=> bm!574378 m!7363884))

(declare-fun m!7363886 () Bool)

(assert (=> bm!574376 m!7363886))

(assert (=> bm!574231 d!2065731))

(declare-fun d!2065733 () Bool)

(assert (=> d!2065733 (= (Exists!3525 lambda!366768) (choose!49158 lambda!366768))))

(declare-fun bs!1684759 () Bool)

(assert (= bs!1684759 d!2065733))

(declare-fun m!7363888 () Bool)

(assert (=> bs!1684759 m!7363888))

(assert (=> d!2065397 d!2065733))

(declare-fun d!2065735 () Bool)

(assert (=> d!2065735 (= (Exists!3525 lambda!366769) (choose!49158 lambda!366769))))

(declare-fun bs!1684760 () Bool)

(assert (= bs!1684760 d!2065735))

(declare-fun m!7363894 () Bool)

(assert (=> bs!1684760 m!7363894))

(assert (=> d!2065397 d!2065735))

(declare-fun bs!1684762 () Bool)

(declare-fun d!2065737 () Bool)

(assert (= bs!1684762 (and d!2065737 d!2065535)))

(declare-fun lambda!366840 () Int)

(assert (=> bs!1684762 (= lambda!366840 lambda!366800)))

(declare-fun bs!1684763 () Bool)

(assert (= bs!1684763 (and d!2065737 b!6583175)))

(assert (=> bs!1684763 (= lambda!366840 lambda!366699)))

(declare-fun bs!1684764 () Bool)

(assert (= bs!1684764 (and d!2065737 b!6583623)))

(assert (=> bs!1684764 (not (= lambda!366840 lambda!366746))))

(declare-fun bs!1684765 () Bool)

(assert (= bs!1684765 (and d!2065737 b!6584477)))

(assert (=> bs!1684765 (not (= lambda!366840 lambda!366807))))

(declare-fun bs!1684766 () Bool)

(assert (= bs!1684766 (and d!2065737 d!2065397)))

(assert (=> bs!1684766 (= lambda!366840 lambda!366768)))

(declare-fun bs!1684767 () Bool)

(assert (= bs!1684767 (and d!2065737 b!6584115)))

(assert (=> bs!1684767 (not (= lambda!366840 lambda!366782))))

(declare-fun bs!1684768 () Bool)

(assert (= bs!1684768 (and d!2065737 d!2065395)))

(assert (=> bs!1684768 (= lambda!366840 lambda!366763)))

(assert (=> bs!1684766 (not (= lambda!366840 lambda!366769))))

(declare-fun bs!1684769 () Bool)

(assert (= bs!1684769 (and d!2065737 b!6584469)))

(assert (=> bs!1684769 (not (= lambda!366840 lambda!366806))))

(assert (=> bs!1684763 (not (= lambda!366840 lambda!366700))))

(declare-fun bs!1684770 () Bool)

(assert (= bs!1684770 (and d!2065737 b!6583631)))

(assert (=> bs!1684770 (not (= lambda!366840 lambda!366747))))

(declare-fun bs!1684771 () Bool)

(assert (= bs!1684771 (and d!2065737 b!6584107)))

(assert (=> bs!1684771 (not (= lambda!366840 lambda!366781))))

(assert (=> d!2065737 true))

(assert (=> d!2065737 true))

(assert (=> d!2065737 true))

(declare-fun lambda!366841 () Int)

(assert (=> bs!1684762 (not (= lambda!366841 lambda!366800))))

(assert (=> bs!1684763 (not (= lambda!366841 lambda!366699))))

(assert (=> bs!1684764 (not (= lambda!366841 lambda!366746))))

(assert (=> bs!1684765 (= (and (= (regOne!33422 r!7292) (regOne!33422 (regOne!33423 r!7292))) (= (regTwo!33422 r!7292) (regTwo!33422 (regOne!33423 r!7292)))) (= lambda!366841 lambda!366807))))

(assert (=> bs!1684766 (not (= lambda!366841 lambda!366768))))

(assert (=> bs!1684767 (= lambda!366841 lambda!366782)))

(assert (=> bs!1684768 (not (= lambda!366841 lambda!366763))))

(assert (=> bs!1684766 (= lambda!366841 lambda!366769)))

(assert (=> bs!1684763 (= lambda!366841 lambda!366700)))

(declare-fun bs!1684772 () Bool)

(assert (= bs!1684772 d!2065737))

(assert (=> bs!1684772 (not (= lambda!366841 lambda!366840))))

(assert (=> bs!1684769 (not (= lambda!366841 lambda!366806))))

(assert (=> bs!1684770 (= (and (= (regOne!33422 r!7292) (regOne!33422 lt!2410464)) (= (regTwo!33422 r!7292) (regTwo!33422 lt!2410464))) (= lambda!366841 lambda!366747))))

(assert (=> bs!1684771 (not (= lambda!366841 lambda!366781))))

(assert (=> d!2065737 true))

(assert (=> d!2065737 true))

(assert (=> d!2065737 true))

(assert (=> d!2065737 (= (Exists!3525 lambda!366840) (Exists!3525 lambda!366841))))

(assert (=> d!2065737 true))

(declare-fun _$90!2420 () Unit!159155)

(assert (=> d!2065737 (= (choose!49160 (regOne!33422 r!7292) (regTwo!33422 r!7292) s!2326) _$90!2420)))

(declare-fun m!7363910 () Bool)

(assert (=> bs!1684772 m!7363910))

(declare-fun m!7363912 () Bool)

(assert (=> bs!1684772 m!7363912))

(assert (=> d!2065397 d!2065737))

(assert (=> d!2065397 d!2065531))

(declare-fun d!2065751 () Bool)

(declare-fun c!1211633 () Bool)

(assert (=> d!2065751 (= c!1211633 (isEmpty!37801 (tail!12446 (t!379313 s!2326))))))

(declare-fun e!3985031 () Bool)

(assert (=> d!2065751 (= (matchZipper!2467 (derivationStepZipper!2421 lt!2410492 (head!13361 (t!379313 s!2326))) (tail!12446 (t!379313 s!2326))) e!3985031)))

(declare-fun b!6584702 () Bool)

(assert (=> b!6584702 (= e!3985031 (nullableZipper!2200 (derivationStepZipper!2421 lt!2410492 (head!13361 (t!379313 s!2326)))))))

(declare-fun b!6584703 () Bool)

(assert (=> b!6584703 (= e!3985031 (matchZipper!2467 (derivationStepZipper!2421 (derivationStepZipper!2421 lt!2410492 (head!13361 (t!379313 s!2326))) (head!13361 (tail!12446 (t!379313 s!2326)))) (tail!12446 (tail!12446 (t!379313 s!2326)))))))

(assert (= (and d!2065751 c!1211633) b!6584702))

(assert (= (and d!2065751 (not c!1211633)) b!6584703))

(assert (=> d!2065751 m!7363072))

(assert (=> d!2065751 m!7363510))

(assert (=> b!6584702 m!7363262))

(declare-fun m!7363914 () Bool)

(assert (=> b!6584702 m!7363914))

(assert (=> b!6584703 m!7363072))

(assert (=> b!6584703 m!7363514))

(assert (=> b!6584703 m!7363262))

(assert (=> b!6584703 m!7363514))

(declare-fun m!7363916 () Bool)

(assert (=> b!6584703 m!7363916))

(assert (=> b!6584703 m!7363072))

(assert (=> b!6584703 m!7363518))

(assert (=> b!6584703 m!7363916))

(assert (=> b!6584703 m!7363518))

(declare-fun m!7363918 () Bool)

(assert (=> b!6584703 m!7363918))

(assert (=> b!6584083 d!2065751))

(declare-fun bs!1684773 () Bool)

(declare-fun d!2065753 () Bool)

(assert (= bs!1684773 (and d!2065753 d!2065679)))

(declare-fun lambda!366844 () Int)

(assert (=> bs!1684773 (= (= (head!13361 (t!379313 s!2326)) (head!13361 s!2326)) (= lambda!366844 lambda!366814))))

(declare-fun bs!1684774 () Bool)

(assert (= bs!1684774 (and d!2065753 d!2065645)))

(assert (=> bs!1684774 (= lambda!366844 lambda!366808)))

(declare-fun bs!1684775 () Bool)

(assert (= bs!1684775 (and d!2065753 d!2065431)))

(assert (=> bs!1684775 (= (= (head!13361 (t!379313 s!2326)) (h!71989 s!2326)) (= lambda!366844 lambda!366773))))

(declare-fun bs!1684776 () Bool)

(assert (= bs!1684776 (and d!2065753 d!2065451)))

(assert (=> bs!1684776 (= (= (head!13361 (t!379313 s!2326)) (h!71989 s!2326)) (= lambda!366844 lambda!366780))))

(declare-fun bs!1684777 () Bool)

(assert (= bs!1684777 (and d!2065753 d!2065601)))

(assert (=> bs!1684777 (= (= (head!13361 (t!379313 s!2326)) (head!13361 s!2326)) (= lambda!366844 lambda!366802))))

(declare-fun bs!1684778 () Bool)

(assert (= bs!1684778 (and d!2065753 b!6583173)))

(assert (=> bs!1684778 (= (= (head!13361 (t!379313 s!2326)) (h!71989 s!2326)) (= lambda!366844 lambda!366701))))

(declare-fun bs!1684779 () Bool)

(assert (= bs!1684779 (and d!2065753 d!2065577)))

(assert (=> bs!1684779 (= lambda!366844 lambda!366801)))

(assert (=> d!2065753 true))

(assert (=> d!2065753 (= (derivationStepZipper!2421 lt!2410492 (head!13361 (t!379313 s!2326))) (flatMap!1960 lt!2410492 lambda!366844))))

(declare-fun bs!1684780 () Bool)

(assert (= bs!1684780 d!2065753))

(declare-fun m!7363920 () Bool)

(assert (=> bs!1684780 m!7363920))

(assert (=> b!6584083 d!2065753))

(assert (=> b!6584083 d!2065579))

(assert (=> b!6584083 d!2065581))

(declare-fun bm!574387 () Bool)

(declare-fun call!574394 () Bool)

(declare-fun c!1211635 () Bool)

(assert (=> bm!574387 (= call!574394 (validRegex!8191 (ite c!1211635 (regTwo!33423 lt!2410607) (regTwo!33422 lt!2410607))))))

(declare-fun b!6584706 () Bool)

(declare-fun e!3985033 () Bool)

(declare-fun e!3985036 () Bool)

(assert (=> b!6584706 (= e!3985033 e!3985036)))

(declare-fun c!1211634 () Bool)

(assert (=> b!6584706 (= c!1211634 ((_ is Star!16455) lt!2410607))))

(declare-fun b!6584707 () Bool)

(declare-fun e!3985032 () Bool)

(assert (=> b!6584707 (= e!3985036 e!3985032)))

(assert (=> b!6584707 (= c!1211635 ((_ is Union!16455) lt!2410607))))

(declare-fun b!6584708 () Bool)

(declare-fun e!3985035 () Bool)

(assert (=> b!6584708 (= e!3985035 call!574394)))

(declare-fun b!6584709 () Bool)

(declare-fun e!3985034 () Bool)

(assert (=> b!6584709 (= e!3985036 e!3985034)))

(declare-fun res!2701110 () Bool)

(assert (=> b!6584709 (= res!2701110 (not (nullable!6448 (reg!16784 lt!2410607))))))

(assert (=> b!6584709 (=> (not res!2701110) (not e!3985034))))

(declare-fun call!574392 () Bool)

(declare-fun bm!574388 () Bool)

(assert (=> bm!574388 (= call!574392 (validRegex!8191 (ite c!1211634 (reg!16784 lt!2410607) (ite c!1211635 (regOne!33423 lt!2410607) (regOne!33422 lt!2410607)))))))

(declare-fun b!6584711 () Bool)

(declare-fun e!3985038 () Bool)

(declare-fun e!3985037 () Bool)

(assert (=> b!6584711 (= e!3985038 e!3985037)))

(declare-fun res!2701111 () Bool)

(assert (=> b!6584711 (=> (not res!2701111) (not e!3985037))))

(declare-fun call!574393 () Bool)

(assert (=> b!6584711 (= res!2701111 call!574393)))

(declare-fun b!6584712 () Bool)

(declare-fun res!2701113 () Bool)

(assert (=> b!6584712 (=> (not res!2701113) (not e!3985035))))

(assert (=> b!6584712 (= res!2701113 call!574393)))

(assert (=> b!6584712 (= e!3985032 e!3985035)))

(declare-fun bm!574389 () Bool)

(assert (=> bm!574389 (= call!574393 call!574392)))

(declare-fun b!6584713 () Bool)

(declare-fun res!2701109 () Bool)

(assert (=> b!6584713 (=> res!2701109 e!3985038)))

(assert (=> b!6584713 (= res!2701109 (not ((_ is Concat!25300) lt!2410607)))))

(assert (=> b!6584713 (= e!3985032 e!3985038)))

(declare-fun b!6584714 () Bool)

(assert (=> b!6584714 (= e!3985034 call!574392)))

(declare-fun d!2065755 () Bool)

(declare-fun res!2701112 () Bool)

(assert (=> d!2065755 (=> res!2701112 e!3985033)))

(assert (=> d!2065755 (= res!2701112 ((_ is ElementMatch!16455) lt!2410607))))

(assert (=> d!2065755 (= (validRegex!8191 lt!2410607) e!3985033)))

(declare-fun b!6584710 () Bool)

(assert (=> b!6584710 (= e!3985037 call!574394)))

(assert (= (and d!2065755 (not res!2701112)) b!6584706))

(assert (= (and b!6584706 c!1211634) b!6584709))

(assert (= (and b!6584706 (not c!1211634)) b!6584707))

(assert (= (and b!6584709 res!2701110) b!6584714))

(assert (= (and b!6584707 c!1211635) b!6584712))

(assert (= (and b!6584707 (not c!1211635)) b!6584713))

(assert (= (and b!6584712 res!2701113) b!6584708))

(assert (= (and b!6584713 (not res!2701109)) b!6584711))

(assert (= (and b!6584711 res!2701111) b!6584710))

(assert (= (or b!6584708 b!6584710) bm!574387))

(assert (= (or b!6584712 b!6584711) bm!574389))

(assert (= (or b!6584714 bm!574389) bm!574388))

(declare-fun m!7363922 () Bool)

(assert (=> bm!574387 m!7363922))

(declare-fun m!7363924 () Bool)

(assert (=> b!6584709 m!7363924))

(declare-fun m!7363926 () Bool)

(assert (=> bm!574388 m!7363926))

(assert (=> d!2065405 d!2065755))

(declare-fun bs!1684781 () Bool)

(declare-fun d!2065757 () Bool)

(assert (= bs!1684781 (and d!2065757 d!2065261)))

(declare-fun lambda!366845 () Int)

(assert (=> bs!1684781 (= lambda!366845 lambda!366714)))

(declare-fun bs!1684782 () Bool)

(assert (= bs!1684782 (and d!2065757 d!2065665)))

(assert (=> bs!1684782 (= lambda!366845 lambda!366813)))

(declare-fun bs!1684783 () Bool)

(assert (= bs!1684783 (and d!2065757 b!6584625)))

(assert (=> bs!1684783 (not (= lambda!366845 lambda!366830))))

(declare-fun bs!1684784 () Bool)

(assert (= bs!1684784 (and d!2065757 d!2065477)))

(assert (=> bs!1684784 (= lambda!366845 lambda!366783)))

(declare-fun bs!1684785 () Bool)

(assert (= bs!1684785 (and d!2065757 d!2065619)))

(assert (=> bs!1684785 (= lambda!366845 lambda!366804)))

(declare-fun bs!1684786 () Bool)

(assert (= bs!1684786 (and d!2065757 d!2065623)))

(assert (=> bs!1684786 (= lambda!366845 lambda!366805)))

(declare-fun bs!1684787 () Bool)

(assert (= bs!1684787 (and d!2065757 d!2065439)))

(assert (=> bs!1684787 (= lambda!366845 lambda!366779)))

(declare-fun bs!1684788 () Bool)

(assert (= bs!1684788 (and d!2065757 d!2065727)))

(assert (=> bs!1684788 (= lambda!366845 lambda!366833)))

(declare-fun bs!1684789 () Bool)

(assert (= bs!1684789 (and d!2065757 d!2065401)))

(assert (=> bs!1684789 (= lambda!366845 lambda!366770)))

(declare-fun bs!1684790 () Bool)

(assert (= bs!1684790 (and d!2065757 d!2065515)))

(assert (=> bs!1684790 (= lambda!366845 lambda!366796)))

(declare-fun bs!1684791 () Bool)

(assert (= bs!1684791 (and d!2065757 d!2065379)))

(assert (=> bs!1684791 (= lambda!366845 lambda!366760)))

(declare-fun bs!1684792 () Bool)

(assert (= bs!1684792 (and d!2065757 d!2065729)))

(assert (=> bs!1684792 (= lambda!366845 lambda!366835)))

(declare-fun bs!1684793 () Bool)

(assert (= bs!1684793 (and d!2065757 b!6584627)))

(assert (=> bs!1684793 (not (= lambda!366845 lambda!366831))))

(declare-fun bs!1684794 () Bool)

(assert (= bs!1684794 (and d!2065757 d!2065517)))

(assert (=> bs!1684794 (= lambda!366845 lambda!366797)))

(declare-fun bs!1684795 () Bool)

(assert (= bs!1684795 (and d!2065757 d!2065437)))

(assert (=> bs!1684795 (= lambda!366845 lambda!366776)))

(declare-fun b!6584715 () Bool)

(declare-fun e!3985040 () Bool)

(assert (=> b!6584715 (= e!3985040 (isEmpty!37797 (t!379312 (unfocusZipperList!1876 (Cons!65542 lt!2410465 Nil!65542)))))))

(declare-fun b!6584716 () Bool)

(declare-fun e!3985042 () Regex!16455)

(assert (=> b!6584716 (= e!3985042 (h!71988 (unfocusZipperList!1876 (Cons!65542 lt!2410465 Nil!65542))))))

(declare-fun b!6584717 () Bool)

(declare-fun e!3985043 () Regex!16455)

(assert (=> b!6584717 (= e!3985043 (Union!16455 (h!71988 (unfocusZipperList!1876 (Cons!65542 lt!2410465 Nil!65542))) (generalisedUnion!2299 (t!379312 (unfocusZipperList!1876 (Cons!65542 lt!2410465 Nil!65542))))))))

(declare-fun b!6584718 () Bool)

(declare-fun e!3985044 () Bool)

(declare-fun e!3985039 () Bool)

(assert (=> b!6584718 (= e!3985044 e!3985039)))

(declare-fun c!1211638 () Bool)

(assert (=> b!6584718 (= c!1211638 (isEmpty!37797 (tail!12447 (unfocusZipperList!1876 (Cons!65542 lt!2410465 Nil!65542)))))))

(declare-fun b!6584719 () Bool)

(declare-fun e!3985041 () Bool)

(assert (=> b!6584719 (= e!3985041 e!3985044)))

(declare-fun c!1211636 () Bool)

(assert (=> b!6584719 (= c!1211636 (isEmpty!37797 (unfocusZipperList!1876 (Cons!65542 lt!2410465 Nil!65542))))))

(declare-fun b!6584720 () Bool)

(assert (=> b!6584720 (= e!3985043 EmptyLang!16455)))

(declare-fun b!6584721 () Bool)

(assert (=> b!6584721 (= e!3985042 e!3985043)))

(declare-fun c!1211637 () Bool)

(assert (=> b!6584721 (= c!1211637 ((_ is Cons!65540) (unfocusZipperList!1876 (Cons!65542 lt!2410465 Nil!65542))))))

(declare-fun b!6584723 () Bool)

(declare-fun lt!2410687 () Regex!16455)

(assert (=> b!6584723 (= e!3985039 (isUnion!1272 lt!2410687))))

(declare-fun b!6584724 () Bool)

(assert (=> b!6584724 (= e!3985039 (= lt!2410687 (head!13362 (unfocusZipperList!1876 (Cons!65542 lt!2410465 Nil!65542)))))))

(declare-fun b!6584722 () Bool)

(assert (=> b!6584722 (= e!3985044 (isEmptyLang!1842 lt!2410687))))

(assert (=> d!2065757 e!3985041))

(declare-fun res!2701114 () Bool)

(assert (=> d!2065757 (=> (not res!2701114) (not e!3985041))))

(assert (=> d!2065757 (= res!2701114 (validRegex!8191 lt!2410687))))

(assert (=> d!2065757 (= lt!2410687 e!3985042)))

(declare-fun c!1211639 () Bool)

(assert (=> d!2065757 (= c!1211639 e!3985040)))

(declare-fun res!2701115 () Bool)

(assert (=> d!2065757 (=> (not res!2701115) (not e!3985040))))

(assert (=> d!2065757 (= res!2701115 ((_ is Cons!65540) (unfocusZipperList!1876 (Cons!65542 lt!2410465 Nil!65542))))))

(assert (=> d!2065757 (forall!15634 (unfocusZipperList!1876 (Cons!65542 lt!2410465 Nil!65542)) lambda!366845)))

(assert (=> d!2065757 (= (generalisedUnion!2299 (unfocusZipperList!1876 (Cons!65542 lt!2410465 Nil!65542))) lt!2410687)))

(assert (= (and d!2065757 res!2701115) b!6584715))

(assert (= (and d!2065757 c!1211639) b!6584716))

(assert (= (and d!2065757 (not c!1211639)) b!6584721))

(assert (= (and b!6584721 c!1211637) b!6584717))

(assert (= (and b!6584721 (not c!1211637)) b!6584720))

(assert (= (and d!2065757 res!2701114) b!6584719))

(assert (= (and b!6584719 c!1211636) b!6584722))

(assert (= (and b!6584719 (not c!1211636)) b!6584718))

(assert (= (and b!6584718 c!1211638) b!6584724))

(assert (= (and b!6584718 (not c!1211638)) b!6584723))

(assert (=> b!6584719 m!7363138))

(declare-fun m!7363928 () Bool)

(assert (=> b!6584719 m!7363928))

(declare-fun m!7363930 () Bool)

(assert (=> b!6584717 m!7363930))

(assert (=> b!6584718 m!7363138))

(declare-fun m!7363932 () Bool)

(assert (=> b!6584718 m!7363932))

(assert (=> b!6584718 m!7363932))

(declare-fun m!7363934 () Bool)

(assert (=> b!6584718 m!7363934))

(assert (=> b!6584724 m!7363138))

(declare-fun m!7363936 () Bool)

(assert (=> b!6584724 m!7363936))

(declare-fun m!7363938 () Bool)

(assert (=> b!6584723 m!7363938))

(declare-fun m!7363940 () Bool)

(assert (=> d!2065757 m!7363940))

(assert (=> d!2065757 m!7363138))

(declare-fun m!7363942 () Bool)

(assert (=> d!2065757 m!7363942))

(declare-fun m!7363944 () Bool)

(assert (=> b!6584715 m!7363944))

(declare-fun m!7363946 () Bool)

(assert (=> b!6584722 m!7363946))

(assert (=> d!2065405 d!2065757))

(declare-fun bs!1684799 () Bool)

(declare-fun d!2065759 () Bool)

(assert (= bs!1684799 (and d!2065759 d!2065261)))

(declare-fun lambda!366847 () Int)

(assert (=> bs!1684799 (= lambda!366847 lambda!366714)))

(declare-fun bs!1684800 () Bool)

(assert (= bs!1684800 (and d!2065759 d!2065665)))

(assert (=> bs!1684800 (= lambda!366847 lambda!366813)))

(declare-fun bs!1684801 () Bool)

(assert (= bs!1684801 (and d!2065759 b!6584625)))

(assert (=> bs!1684801 (not (= lambda!366847 lambda!366830))))

(declare-fun bs!1684803 () Bool)

(assert (= bs!1684803 (and d!2065759 d!2065477)))

(assert (=> bs!1684803 (= lambda!366847 lambda!366783)))

(declare-fun bs!1684804 () Bool)

(assert (= bs!1684804 (and d!2065759 d!2065619)))

(assert (=> bs!1684804 (= lambda!366847 lambda!366804)))

(declare-fun bs!1684805 () Bool)

(assert (= bs!1684805 (and d!2065759 d!2065439)))

(assert (=> bs!1684805 (= lambda!366847 lambda!366779)))

(declare-fun bs!1684807 () Bool)

(assert (= bs!1684807 (and d!2065759 d!2065727)))

(assert (=> bs!1684807 (= lambda!366847 lambda!366833)))

(declare-fun bs!1684808 () Bool)

(assert (= bs!1684808 (and d!2065759 d!2065401)))

(assert (=> bs!1684808 (= lambda!366847 lambda!366770)))

(declare-fun bs!1684809 () Bool)

(assert (= bs!1684809 (and d!2065759 d!2065515)))

(assert (=> bs!1684809 (= lambda!366847 lambda!366796)))

(declare-fun bs!1684810 () Bool)

(assert (= bs!1684810 (and d!2065759 d!2065379)))

(assert (=> bs!1684810 (= lambda!366847 lambda!366760)))

(declare-fun bs!1684811 () Bool)

(assert (= bs!1684811 (and d!2065759 d!2065729)))

(assert (=> bs!1684811 (= lambda!366847 lambda!366835)))

(declare-fun bs!1684812 () Bool)

(assert (= bs!1684812 (and d!2065759 d!2065623)))

(assert (=> bs!1684812 (= lambda!366847 lambda!366805)))

(declare-fun bs!1684813 () Bool)

(assert (= bs!1684813 (and d!2065759 d!2065757)))

(assert (=> bs!1684813 (= lambda!366847 lambda!366845)))

(declare-fun bs!1684815 () Bool)

(assert (= bs!1684815 (and d!2065759 b!6584627)))

(assert (=> bs!1684815 (not (= lambda!366847 lambda!366831))))

(declare-fun bs!1684816 () Bool)

(assert (= bs!1684816 (and d!2065759 d!2065517)))

(assert (=> bs!1684816 (= lambda!366847 lambda!366797)))

(declare-fun bs!1684817 () Bool)

(assert (= bs!1684817 (and d!2065759 d!2065437)))

(assert (=> bs!1684817 (= lambda!366847 lambda!366776)))

(declare-fun lt!2410688 () List!65664)

(assert (=> d!2065759 (forall!15634 lt!2410688 lambda!366847)))

(declare-fun e!3985045 () List!65664)

(assert (=> d!2065759 (= lt!2410688 e!3985045)))

(declare-fun c!1211640 () Bool)

(assert (=> d!2065759 (= c!1211640 ((_ is Cons!65542) (Cons!65542 lt!2410465 Nil!65542)))))

(assert (=> d!2065759 (= (unfocusZipperList!1876 (Cons!65542 lt!2410465 Nil!65542)) lt!2410688)))

(declare-fun b!6584725 () Bool)

(assert (=> b!6584725 (= e!3985045 (Cons!65540 (generalisedConcat!2052 (exprs!6339 (h!71990 (Cons!65542 lt!2410465 Nil!65542)))) (unfocusZipperList!1876 (t!379314 (Cons!65542 lt!2410465 Nil!65542)))))))

(declare-fun b!6584726 () Bool)

(assert (=> b!6584726 (= e!3985045 Nil!65540)))

(assert (= (and d!2065759 c!1211640) b!6584725))

(assert (= (and d!2065759 (not c!1211640)) b!6584726))

(declare-fun m!7363948 () Bool)

(assert (=> d!2065759 m!7363948))

(declare-fun m!7363950 () Bool)

(assert (=> b!6584725 m!7363950))

(declare-fun m!7363952 () Bool)

(assert (=> b!6584725 m!7363952))

(assert (=> d!2065405 d!2065759))

(declare-fun d!2065761 () Bool)

(assert (=> d!2065761 (= (maxBigInt!0 (ite c!1211370 call!574212 call!574216) (ite c!1211370 call!574216 call!574212)) (ite (>= (ite c!1211370 call!574212 call!574216) (ite c!1211370 call!574216 call!574212)) (ite c!1211370 call!574212 call!574216) (ite c!1211370 call!574216 call!574212)))))

(assert (=> bm!574208 d!2065761))

(assert (=> d!2065473 d!2065607))

(assert (=> d!2065473 d!2065383))

(declare-fun d!2065763 () Bool)

(declare-fun res!2701121 () Bool)

(declare-fun e!3985056 () Bool)

(assert (=> d!2065763 (=> res!2701121 e!3985056)))

(assert (=> d!2065763 (= res!2701121 ((_ is Nil!65542) lt!2410621))))

(assert (=> d!2065763 (= (noDuplicate!2260 lt!2410621) e!3985056)))

(declare-fun b!6584742 () Bool)

(declare-fun e!3985057 () Bool)

(assert (=> b!6584742 (= e!3985056 e!3985057)))

(declare-fun res!2701122 () Bool)

(assert (=> b!6584742 (=> (not res!2701122) (not e!3985057))))

(declare-fun contains!20212 (List!65666 Context!11678) Bool)

(assert (=> b!6584742 (= res!2701122 (not (contains!20212 (t!379314 lt!2410621) (h!71990 lt!2410621))))))

(declare-fun b!6584743 () Bool)

(assert (=> b!6584743 (= e!3985057 (noDuplicate!2260 (t!379314 lt!2410621)))))

(assert (= (and d!2065763 (not res!2701121)) b!6584742))

(assert (= (and b!6584742 res!2701122) b!6584743))

(declare-fun m!7363956 () Bool)

(assert (=> b!6584742 m!7363956))

(declare-fun m!7363958 () Bool)

(assert (=> b!6584743 m!7363958))

(assert (=> d!2065457 d!2065763))

(declare-fun d!2065767 () Bool)

(declare-fun e!3985066 () Bool)

(assert (=> d!2065767 e!3985066))

(declare-fun res!2701127 () Bool)

(assert (=> d!2065767 (=> (not res!2701127) (not e!3985066))))

(declare-fun res!2701128 () List!65666)

(assert (=> d!2065767 (= res!2701127 (noDuplicate!2260 res!2701128))))

(declare-fun e!3985065 () Bool)

(assert (=> d!2065767 e!3985065))

(assert (=> d!2065767 (= (choose!49163 z!1189) res!2701128)))

(declare-fun b!6584751 () Bool)

(declare-fun e!3985064 () Bool)

(declare-fun tp!1816690 () Bool)

(assert (=> b!6584751 (= e!3985064 tp!1816690)))

(declare-fun b!6584750 () Bool)

(declare-fun tp!1816691 () Bool)

(assert (=> b!6584750 (= e!3985065 (and (inv!84384 (h!71990 res!2701128)) e!3985064 tp!1816691))))

(declare-fun b!6584752 () Bool)

(assert (=> b!6584752 (= e!3985066 (= (content!12628 res!2701128) z!1189))))

(assert (= b!6584750 b!6584751))

(assert (= (and d!2065767 ((_ is Cons!65542) res!2701128)) b!6584750))

(assert (= (and d!2065767 res!2701127) b!6584752))

(declare-fun m!7363968 () Bool)

(assert (=> d!2065767 m!7363968))

(declare-fun m!7363972 () Bool)

(assert (=> b!6584750 m!7363972))

(declare-fun m!7363974 () Bool)

(assert (=> b!6584752 m!7363974))

(assert (=> d!2065457 d!2065767))

(declare-fun bm!574396 () Bool)

(declare-fun call!574403 () Bool)

(declare-fun c!1211647 () Bool)

(assert (=> bm!574396 (= call!574403 (validRegex!8191 (ite c!1211647 (regTwo!33423 lt!2410613) (regTwo!33422 lt!2410613))))))

(declare-fun b!6584753 () Bool)

(declare-fun e!3985068 () Bool)

(declare-fun e!3985071 () Bool)

(assert (=> b!6584753 (= e!3985068 e!3985071)))

(declare-fun c!1211646 () Bool)

(assert (=> b!6584753 (= c!1211646 ((_ is Star!16455) lt!2410613))))

(declare-fun b!6584754 () Bool)

(declare-fun e!3985067 () Bool)

(assert (=> b!6584754 (= e!3985071 e!3985067)))

(assert (=> b!6584754 (= c!1211647 ((_ is Union!16455) lt!2410613))))

(declare-fun b!6584755 () Bool)

(declare-fun e!3985070 () Bool)

(assert (=> b!6584755 (= e!3985070 call!574403)))

(declare-fun b!6584756 () Bool)

(declare-fun e!3985069 () Bool)

(assert (=> b!6584756 (= e!3985071 e!3985069)))

(declare-fun res!2701130 () Bool)

(assert (=> b!6584756 (= res!2701130 (not (nullable!6448 (reg!16784 lt!2410613))))))

(assert (=> b!6584756 (=> (not res!2701130) (not e!3985069))))

(declare-fun call!574401 () Bool)

(declare-fun bm!574397 () Bool)

(assert (=> bm!574397 (= call!574401 (validRegex!8191 (ite c!1211646 (reg!16784 lt!2410613) (ite c!1211647 (regOne!33423 lt!2410613) (regOne!33422 lt!2410613)))))))

(declare-fun b!6584758 () Bool)

(declare-fun e!3985073 () Bool)

(declare-fun e!3985072 () Bool)

(assert (=> b!6584758 (= e!3985073 e!3985072)))

(declare-fun res!2701131 () Bool)

(assert (=> b!6584758 (=> (not res!2701131) (not e!3985072))))

(declare-fun call!574402 () Bool)

(assert (=> b!6584758 (= res!2701131 call!574402)))

(declare-fun b!6584759 () Bool)

(declare-fun res!2701133 () Bool)

(assert (=> b!6584759 (=> (not res!2701133) (not e!3985070))))

(assert (=> b!6584759 (= res!2701133 call!574402)))

(assert (=> b!6584759 (= e!3985067 e!3985070)))

(declare-fun bm!574398 () Bool)

(assert (=> bm!574398 (= call!574402 call!574401)))

(declare-fun b!6584760 () Bool)

(declare-fun res!2701129 () Bool)

(assert (=> b!6584760 (=> res!2701129 e!3985073)))

(assert (=> b!6584760 (= res!2701129 (not ((_ is Concat!25300) lt!2410613)))))

(assert (=> b!6584760 (= e!3985067 e!3985073)))

(declare-fun b!6584761 () Bool)

(assert (=> b!6584761 (= e!3985069 call!574401)))

(declare-fun d!2065769 () Bool)

(declare-fun res!2701132 () Bool)

(assert (=> d!2065769 (=> res!2701132 e!3985068)))

(assert (=> d!2065769 (= res!2701132 ((_ is ElementMatch!16455) lt!2410613))))

(assert (=> d!2065769 (= (validRegex!8191 lt!2410613) e!3985068)))

(declare-fun b!6584757 () Bool)

(assert (=> b!6584757 (= e!3985072 call!574403)))

(assert (= (and d!2065769 (not res!2701132)) b!6584753))

(assert (= (and b!6584753 c!1211646) b!6584756))

(assert (= (and b!6584753 (not c!1211646)) b!6584754))

(assert (= (and b!6584756 res!2701130) b!6584761))

(assert (= (and b!6584754 c!1211647) b!6584759))

(assert (= (and b!6584754 (not c!1211647)) b!6584760))

(assert (= (and b!6584759 res!2701133) b!6584755))

(assert (= (and b!6584760 (not res!2701129)) b!6584758))

(assert (= (and b!6584758 res!2701131) b!6584757))

(assert (= (or b!6584755 b!6584757) bm!574396))

(assert (= (or b!6584759 b!6584758) bm!574398))

(assert (= (or b!6584761 bm!574398) bm!574397))

(declare-fun m!7363978 () Bool)

(assert (=> bm!574396 m!7363978))

(declare-fun m!7363980 () Bool)

(assert (=> b!6584756 m!7363980))

(declare-fun m!7363982 () Bool)

(assert (=> bm!574397 m!7363982))

(assert (=> d!2065437 d!2065769))

(declare-fun d!2065775 () Bool)

(declare-fun res!2701137 () Bool)

(declare-fun e!3985084 () Bool)

(assert (=> d!2065775 (=> res!2701137 e!3985084)))

(assert (=> d!2065775 (= res!2701137 ((_ is Nil!65540) (unfocusZipperList!1876 zl!343)))))

(assert (=> d!2065775 (= (forall!15634 (unfocusZipperList!1876 zl!343) lambda!366776) e!3985084)))

(declare-fun b!6584779 () Bool)

(declare-fun e!3985085 () Bool)

(assert (=> b!6584779 (= e!3985084 e!3985085)))

(declare-fun res!2701138 () Bool)

(assert (=> b!6584779 (=> (not res!2701138) (not e!3985085))))

(assert (=> b!6584779 (= res!2701138 (dynLambda!26086 lambda!366776 (h!71988 (unfocusZipperList!1876 zl!343))))))

(declare-fun b!6584780 () Bool)

(assert (=> b!6584780 (= e!3985085 (forall!15634 (t!379312 (unfocusZipperList!1876 zl!343)) lambda!366776))))

(assert (= (and d!2065775 (not res!2701137)) b!6584779))

(assert (= (and b!6584779 res!2701138) b!6584780))

(declare-fun b_lambda!249123 () Bool)

(assert (=> (not b_lambda!249123) (not b!6584779)))

(declare-fun m!7363984 () Bool)

(assert (=> b!6584779 m!7363984))

(declare-fun m!7363986 () Bool)

(assert (=> b!6584780 m!7363986))

(assert (=> d!2065437 d!2065775))

(declare-fun bs!1684823 () Bool)

(declare-fun d!2065777 () Bool)

(assert (= bs!1684823 (and d!2065777 b!6584589)))

(declare-fun lambda!366848 () Int)

(assert (=> bs!1684823 (not (= lambda!366848 lambda!366819))))

(declare-fun bs!1684824 () Bool)

(assert (= bs!1684824 (and d!2065777 d!2065659)))

(assert (=> bs!1684824 (= lambda!366848 lambda!366811)))

(declare-fun bs!1684825 () Bool)

(assert (= bs!1684825 (and d!2065777 d!2065693)))

(assert (=> bs!1684825 (not (= lambda!366848 lambda!366817))))

(declare-fun bs!1684826 () Bool)

(assert (= bs!1684826 (and d!2065777 b!6584138)))

(assert (=> bs!1684826 (not (= lambda!366848 lambda!366791))))

(declare-fun bs!1684827 () Bool)

(assert (= bs!1684827 (and d!2065777 b!6584140)))

(assert (=> bs!1684827 (not (= lambda!366848 lambda!366792))))

(declare-fun bs!1684828 () Bool)

(assert (= bs!1684828 (and d!2065777 b!6584143)))

(assert (=> bs!1684828 (not (= lambda!366848 lambda!366794))))

(declare-fun bs!1684829 () Bool)

(assert (= bs!1684829 (and d!2065777 b!6584591)))

(assert (=> bs!1684829 (not (= lambda!366848 lambda!366820))))

(declare-fun bs!1684830 () Bool)

(assert (= bs!1684830 (and d!2065777 b!6584145)))

(assert (=> bs!1684830 (not (= lambda!366848 lambda!366795))))

(assert (=> d!2065777 (= (nullableZipper!2200 lt!2410479) (exists!2647 lt!2410479 lambda!366848))))

(declare-fun bs!1684831 () Bool)

(assert (= bs!1684831 d!2065777))

(declare-fun m!7363988 () Bool)

(assert (=> bs!1684831 m!7363988))

(assert (=> b!6584080 d!2065777))

(declare-fun c!1211655 () Bool)

(declare-fun bm!574407 () Bool)

(declare-fun call!574411 () (InoxSet Context!11678))

(declare-fun call!574413 () List!65664)

(assert (=> bm!574407 (= call!574411 (derivationStepZipperDown!1703 (ite c!1211655 (regOne!33423 (h!71988 (exprs!6339 lt!2410462))) (regOne!33422 (h!71988 (exprs!6339 lt!2410462)))) (ite c!1211655 (Context!11679 (t!379312 (exprs!6339 lt!2410462))) (Context!11679 call!574413)) (h!71989 s!2326)))))

(declare-fun b!6584781 () Bool)

(declare-fun e!3985086 () (InoxSet Context!11678))

(declare-fun call!574415 () (InoxSet Context!11678))

(assert (=> b!6584781 (= e!3985086 ((_ map or) call!574411 call!574415))))

(declare-fun c!1211657 () Bool)

(declare-fun call!574412 () (InoxSet Context!11678))

(declare-fun c!1211656 () Bool)

(declare-fun bm!574408 () Bool)

(declare-fun call!574416 () List!65664)

(assert (=> bm!574408 (= call!574412 (derivationStepZipperDown!1703 (ite c!1211655 (regTwo!33423 (h!71988 (exprs!6339 lt!2410462))) (ite c!1211657 (regTwo!33422 (h!71988 (exprs!6339 lt!2410462))) (ite c!1211656 (regOne!33422 (h!71988 (exprs!6339 lt!2410462))) (reg!16784 (h!71988 (exprs!6339 lt!2410462)))))) (ite (or c!1211655 c!1211657) (Context!11679 (t!379312 (exprs!6339 lt!2410462))) (Context!11679 call!574416)) (h!71989 s!2326)))))

(declare-fun b!6584782 () Bool)

(declare-fun e!3985090 () Bool)

(assert (=> b!6584782 (= c!1211657 e!3985090)))

(declare-fun res!2701139 () Bool)

(assert (=> b!6584782 (=> (not res!2701139) (not e!3985090))))

(assert (=> b!6584782 (= res!2701139 ((_ is Concat!25300) (h!71988 (exprs!6339 lt!2410462))))))

(declare-fun e!3985089 () (InoxSet Context!11678))

(assert (=> b!6584782 (= e!3985089 e!3985086)))

(declare-fun b!6584783 () Bool)

(declare-fun e!3985091 () (InoxSet Context!11678))

(assert (=> b!6584783 (= e!3985086 e!3985091)))

(assert (=> b!6584783 (= c!1211656 ((_ is Concat!25300) (h!71988 (exprs!6339 lt!2410462))))))

(declare-fun b!6584784 () Bool)

(declare-fun c!1211658 () Bool)

(assert (=> b!6584784 (= c!1211658 ((_ is Star!16455) (h!71988 (exprs!6339 lt!2410462))))))

(declare-fun e!3985087 () (InoxSet Context!11678))

(assert (=> b!6584784 (= e!3985091 e!3985087)))

(declare-fun b!6584785 () Bool)

(declare-fun e!3985088 () (InoxSet Context!11678))

(assert (=> b!6584785 (= e!3985088 (store ((as const (Array Context!11678 Bool)) false) (Context!11679 (t!379312 (exprs!6339 lt!2410462))) true))))

(declare-fun bm!574409 () Bool)

(assert (=> bm!574409 (= call!574415 call!574412)))

(declare-fun d!2065779 () Bool)

(declare-fun c!1211659 () Bool)

(assert (=> d!2065779 (= c!1211659 (and ((_ is ElementMatch!16455) (h!71988 (exprs!6339 lt!2410462))) (= (c!1211172 (h!71988 (exprs!6339 lt!2410462))) (h!71989 s!2326))))))

(assert (=> d!2065779 (= (derivationStepZipperDown!1703 (h!71988 (exprs!6339 lt!2410462)) (Context!11679 (t!379312 (exprs!6339 lt!2410462))) (h!71989 s!2326)) e!3985088)))

(declare-fun bm!574406 () Bool)

(assert (=> bm!574406 (= call!574413 ($colon$colon!2296 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410462)))) (ite (or c!1211657 c!1211656) (regTwo!33422 (h!71988 (exprs!6339 lt!2410462))) (h!71988 (exprs!6339 lt!2410462)))))))

(declare-fun b!6584786 () Bool)

(assert (=> b!6584786 (= e!3985087 ((as const (Array Context!11678 Bool)) false))))

(declare-fun b!6584787 () Bool)

(declare-fun call!574414 () (InoxSet Context!11678))

(assert (=> b!6584787 (= e!3985091 call!574414)))

(declare-fun bm!574410 () Bool)

(assert (=> bm!574410 (= call!574416 call!574413)))

(declare-fun b!6584788 () Bool)

(assert (=> b!6584788 (= e!3985088 e!3985089)))

(assert (=> b!6584788 (= c!1211655 ((_ is Union!16455) (h!71988 (exprs!6339 lt!2410462))))))

(declare-fun bm!574411 () Bool)

(assert (=> bm!574411 (= call!574414 call!574415)))

(declare-fun b!6584789 () Bool)

(assert (=> b!6584789 (= e!3985089 ((_ map or) call!574411 call!574412))))

(declare-fun b!6584790 () Bool)

(assert (=> b!6584790 (= e!3985090 (nullable!6448 (regOne!33422 (h!71988 (exprs!6339 lt!2410462)))))))

(declare-fun b!6584791 () Bool)

(assert (=> b!6584791 (= e!3985087 call!574414)))

(assert (= (and d!2065779 c!1211659) b!6584785))

(assert (= (and d!2065779 (not c!1211659)) b!6584788))

(assert (= (and b!6584788 c!1211655) b!6584789))

(assert (= (and b!6584788 (not c!1211655)) b!6584782))

(assert (= (and b!6584782 res!2701139) b!6584790))

(assert (= (and b!6584782 c!1211657) b!6584781))

(assert (= (and b!6584782 (not c!1211657)) b!6584783))

(assert (= (and b!6584783 c!1211656) b!6584787))

(assert (= (and b!6584783 (not c!1211656)) b!6584784))

(assert (= (and b!6584784 c!1211658) b!6584791))

(assert (= (and b!6584784 (not c!1211658)) b!6584786))

(assert (= (or b!6584787 b!6584791) bm!574410))

(assert (= (or b!6584787 b!6584791) bm!574411))

(assert (= (or b!6584781 bm!574410) bm!574406))

(assert (= (or b!6584781 bm!574411) bm!574409))

(assert (= (or b!6584789 bm!574409) bm!574408))

(assert (= (or b!6584789 b!6584781) bm!574407))

(declare-fun m!7363998 () Bool)

(assert (=> b!6584790 m!7363998))

(declare-fun m!7364000 () Bool)

(assert (=> b!6584785 m!7364000))

(declare-fun m!7364004 () Bool)

(assert (=> bm!574407 m!7364004))

(declare-fun m!7364006 () Bool)

(assert (=> bm!574408 m!7364006))

(declare-fun m!7364008 () Bool)

(assert (=> bm!574406 m!7364008))

(assert (=> bm!574252 d!2065779))

(assert (=> b!6584015 d!2065419))

(declare-fun b!6584792 () Bool)

(declare-fun e!3985092 () Bool)

(declare-fun e!3985095 () Bool)

(assert (=> b!6584792 (= e!3985092 e!3985095)))

(declare-fun res!2701142 () Bool)

(assert (=> b!6584792 (=> (not res!2701142) (not e!3985095))))

(declare-fun lt!2410690 () Bool)

(assert (=> b!6584792 (= res!2701142 (not lt!2410690))))

(declare-fun b!6584793 () Bool)

(declare-fun res!2701143 () Bool)

(assert (=> b!6584793 (=> res!2701143 e!3985092)))

(declare-fun e!3985096 () Bool)

(assert (=> b!6584793 (= res!2701143 e!3985096)))

(declare-fun res!2701141 () Bool)

(assert (=> b!6584793 (=> (not res!2701141) (not e!3985096))))

(assert (=> b!6584793 (= res!2701141 lt!2410690)))

(declare-fun b!6584794 () Bool)

(declare-fun res!2701147 () Bool)

(declare-fun e!3985094 () Bool)

(assert (=> b!6584794 (=> res!2701147 e!3985094)))

(assert (=> b!6584794 (= res!2701147 (not (isEmpty!37801 (tail!12446 (tail!12446 s!2326)))))))

(declare-fun b!6584795 () Bool)

(declare-fun e!3985097 () Bool)

(declare-fun call!574417 () Bool)

(assert (=> b!6584795 (= e!3985097 (= lt!2410690 call!574417))))

(declare-fun b!6584796 () Bool)

(declare-fun res!2701140 () Bool)

(assert (=> b!6584796 (=> (not res!2701140) (not e!3985096))))

(assert (=> b!6584796 (= res!2701140 (not call!574417))))

(declare-fun b!6584797 () Bool)

(declare-fun e!3985093 () Bool)

(assert (=> b!6584797 (= e!3985093 (not lt!2410690))))

(declare-fun b!6584798 () Bool)

(assert (=> b!6584798 (= e!3985094 (not (= (head!13361 (tail!12446 s!2326)) (c!1211172 (derivativeStep!5139 lt!2410464 (head!13361 s!2326))))))))

(declare-fun b!6584799 () Bool)

(assert (=> b!6584799 (= e!3985097 e!3985093)))

(declare-fun c!1211662 () Bool)

(assert (=> b!6584799 (= c!1211662 ((_ is EmptyLang!16455) (derivativeStep!5139 lt!2410464 (head!13361 s!2326))))))

(declare-fun b!6584800 () Bool)

(declare-fun e!3985098 () Bool)

(assert (=> b!6584800 (= e!3985098 (nullable!6448 (derivativeStep!5139 lt!2410464 (head!13361 s!2326))))))

(declare-fun b!6584801 () Bool)

(assert (=> b!6584801 (= e!3985095 e!3985094)))

(declare-fun res!2701145 () Bool)

(assert (=> b!6584801 (=> res!2701145 e!3985094)))

(assert (=> b!6584801 (= res!2701145 call!574417)))

(declare-fun b!6584802 () Bool)

(declare-fun res!2701144 () Bool)

(assert (=> b!6584802 (=> (not res!2701144) (not e!3985096))))

(assert (=> b!6584802 (= res!2701144 (isEmpty!37801 (tail!12446 (tail!12446 s!2326))))))

(declare-fun d!2065783 () Bool)

(assert (=> d!2065783 e!3985097))

(declare-fun c!1211660 () Bool)

(assert (=> d!2065783 (= c!1211660 ((_ is EmptyExpr!16455) (derivativeStep!5139 lt!2410464 (head!13361 s!2326))))))

(assert (=> d!2065783 (= lt!2410690 e!3985098)))

(declare-fun c!1211661 () Bool)

(assert (=> d!2065783 (= c!1211661 (isEmpty!37801 (tail!12446 s!2326)))))

(assert (=> d!2065783 (validRegex!8191 (derivativeStep!5139 lt!2410464 (head!13361 s!2326)))))

(assert (=> d!2065783 (= (matchR!8638 (derivativeStep!5139 lt!2410464 (head!13361 s!2326)) (tail!12446 s!2326)) lt!2410690)))

(declare-fun bm!574412 () Bool)

(assert (=> bm!574412 (= call!574417 (isEmpty!37801 (tail!12446 s!2326)))))

(declare-fun b!6584803 () Bool)

(assert (=> b!6584803 (= e!3985098 (matchR!8638 (derivativeStep!5139 (derivativeStep!5139 lt!2410464 (head!13361 s!2326)) (head!13361 (tail!12446 s!2326))) (tail!12446 (tail!12446 s!2326))))))

(declare-fun b!6584804 () Bool)

(assert (=> b!6584804 (= e!3985096 (= (head!13361 (tail!12446 s!2326)) (c!1211172 (derivativeStep!5139 lt!2410464 (head!13361 s!2326)))))))

(declare-fun b!6584805 () Bool)

(declare-fun res!2701146 () Bool)

(assert (=> b!6584805 (=> res!2701146 e!3985092)))

(assert (=> b!6584805 (= res!2701146 (not ((_ is ElementMatch!16455) (derivativeStep!5139 lt!2410464 (head!13361 s!2326)))))))

(assert (=> b!6584805 (= e!3985093 e!3985092)))

(assert (= (and d!2065783 c!1211661) b!6584800))

(assert (= (and d!2065783 (not c!1211661)) b!6584803))

(assert (= (and d!2065783 c!1211660) b!6584795))

(assert (= (and d!2065783 (not c!1211660)) b!6584799))

(assert (= (and b!6584799 c!1211662) b!6584797))

(assert (= (and b!6584799 (not c!1211662)) b!6584805))

(assert (= (and b!6584805 (not res!2701146)) b!6584793))

(assert (= (and b!6584793 res!2701141) b!6584796))

(assert (= (and b!6584796 res!2701140) b!6584802))

(assert (= (and b!6584802 res!2701144) b!6584804))

(assert (= (and b!6584793 (not res!2701143)) b!6584792))

(assert (= (and b!6584792 res!2701142) b!6584801))

(assert (= (and b!6584801 (not res!2701145)) b!6584794))

(assert (= (and b!6584794 (not res!2701147)) b!6584798))

(assert (= (or b!6584795 b!6584796 b!6584801) bm!574412))

(assert (=> bm!574412 m!7362834))

(assert (=> bm!574412 m!7362838))

(assert (=> d!2065783 m!7362834))

(assert (=> d!2065783 m!7362838))

(assert (=> d!2065783 m!7362832))

(declare-fun m!7364010 () Bool)

(assert (=> d!2065783 m!7364010))

(assert (=> b!6584800 m!7362832))

(declare-fun m!7364012 () Bool)

(assert (=> b!6584800 m!7364012))

(assert (=> b!6584804 m!7362834))

(assert (=> b!6584804 m!7363580))

(assert (=> b!6584803 m!7362834))

(assert (=> b!6584803 m!7363580))

(assert (=> b!6584803 m!7362832))

(assert (=> b!6584803 m!7363580))

(declare-fun m!7364014 () Bool)

(assert (=> b!6584803 m!7364014))

(assert (=> b!6584803 m!7362834))

(assert (=> b!6584803 m!7363584))

(assert (=> b!6584803 m!7364014))

(assert (=> b!6584803 m!7363584))

(declare-fun m!7364016 () Bool)

(assert (=> b!6584803 m!7364016))

(assert (=> b!6584798 m!7362834))

(assert (=> b!6584798 m!7363580))

(assert (=> b!6584794 m!7362834))

(assert (=> b!6584794 m!7363584))

(assert (=> b!6584794 m!7363584))

(declare-fun m!7364018 () Bool)

(assert (=> b!6584794 m!7364018))

(assert (=> b!6584802 m!7362834))

(assert (=> b!6584802 m!7363584))

(assert (=> b!6584802 m!7363584))

(assert (=> b!6584802 m!7364018))

(assert (=> b!6583529 d!2065783))

(declare-fun d!2065787 () Bool)

(declare-fun lt!2410695 () Regex!16455)

(assert (=> d!2065787 (validRegex!8191 lt!2410695)))

(declare-fun e!3985131 () Regex!16455)

(assert (=> d!2065787 (= lt!2410695 e!3985131)))

(declare-fun c!1211687 () Bool)

(assert (=> d!2065787 (= c!1211687 (or ((_ is EmptyExpr!16455) lt!2410464) ((_ is EmptyLang!16455) lt!2410464)))))

(assert (=> d!2065787 (validRegex!8191 lt!2410464)))

(assert (=> d!2065787 (= (derivativeStep!5139 lt!2410464 (head!13361 s!2326)) lt!2410695)))

(declare-fun b!6584858 () Bool)

(declare-fun c!1211688 () Bool)

(assert (=> b!6584858 (= c!1211688 ((_ is Union!16455) lt!2410464))))

(declare-fun e!3985134 () Regex!16455)

(declare-fun e!3985130 () Regex!16455)

(assert (=> b!6584858 (= e!3985134 e!3985130)))

(declare-fun call!574434 () Regex!16455)

(declare-fun bm!574426 () Bool)

(declare-fun c!1211684 () Bool)

(assert (=> bm!574426 (= call!574434 (derivativeStep!5139 (ite c!1211688 (regTwo!33423 lt!2410464) (ite c!1211684 (reg!16784 lt!2410464) (regOne!33422 lt!2410464))) (head!13361 s!2326)))))

(declare-fun b!6584859 () Bool)

(assert (=> b!6584859 (= e!3985134 (ite (= (head!13361 s!2326) (c!1211172 lt!2410464)) EmptyExpr!16455 EmptyLang!16455))))

(declare-fun bm!574427 () Bool)

(declare-fun call!574432 () Regex!16455)

(assert (=> bm!574427 (= call!574432 call!574434)))

(declare-fun b!6584860 () Bool)

(declare-fun c!1211686 () Bool)

(assert (=> b!6584860 (= c!1211686 (nullable!6448 (regOne!33422 lt!2410464)))))

(declare-fun e!3985133 () Regex!16455)

(declare-fun e!3985132 () Regex!16455)

(assert (=> b!6584860 (= e!3985133 e!3985132)))

(declare-fun b!6584861 () Bool)

(assert (=> b!6584861 (= e!3985130 e!3985133)))

(assert (=> b!6584861 (= c!1211684 ((_ is Star!16455) lt!2410464))))

(declare-fun b!6584862 () Bool)

(assert (=> b!6584862 (= e!3985133 (Concat!25300 call!574432 lt!2410464))))

(declare-fun b!6584863 () Bool)

(assert (=> b!6584863 (= e!3985131 e!3985134)))

(declare-fun c!1211685 () Bool)

(assert (=> b!6584863 (= c!1211685 ((_ is ElementMatch!16455) lt!2410464))))

(declare-fun b!6584864 () Bool)

(assert (=> b!6584864 (= e!3985131 EmptyLang!16455)))

(declare-fun call!574431 () Regex!16455)

(declare-fun bm!574428 () Bool)

(assert (=> bm!574428 (= call!574431 (derivativeStep!5139 (ite c!1211688 (regOne!33423 lt!2410464) (ite c!1211686 (regTwo!33422 lt!2410464) (regOne!33422 lt!2410464))) (head!13361 s!2326)))))

(declare-fun call!574433 () Regex!16455)

(declare-fun b!6584865 () Bool)

(assert (=> b!6584865 (= e!3985132 (Union!16455 (Concat!25300 call!574432 (regTwo!33422 lt!2410464)) call!574433))))

(declare-fun b!6584866 () Bool)

(assert (=> b!6584866 (= e!3985132 (Union!16455 (Concat!25300 call!574433 (regTwo!33422 lt!2410464)) EmptyLang!16455))))

(declare-fun b!6584867 () Bool)

(assert (=> b!6584867 (= e!3985130 (Union!16455 call!574431 call!574434))))

(declare-fun bm!574429 () Bool)

(assert (=> bm!574429 (= call!574433 call!574431)))

(assert (= (and d!2065787 c!1211687) b!6584864))

(assert (= (and d!2065787 (not c!1211687)) b!6584863))

(assert (= (and b!6584863 c!1211685) b!6584859))

(assert (= (and b!6584863 (not c!1211685)) b!6584858))

(assert (= (and b!6584858 c!1211688) b!6584867))

(assert (= (and b!6584858 (not c!1211688)) b!6584861))

(assert (= (and b!6584861 c!1211684) b!6584862))

(assert (= (and b!6584861 (not c!1211684)) b!6584860))

(assert (= (and b!6584860 c!1211686) b!6584865))

(assert (= (and b!6584860 (not c!1211686)) b!6584866))

(assert (= (or b!6584865 b!6584866) bm!574429))

(assert (= (or b!6584862 b!6584865) bm!574427))

(assert (= (or b!6584867 bm!574427) bm!574426))

(assert (= (or b!6584867 bm!574429) bm!574428))

(declare-fun m!7364052 () Bool)

(assert (=> d!2065787 m!7364052))

(assert (=> d!2065787 m!7362826))

(assert (=> bm!574426 m!7362830))

(declare-fun m!7364054 () Bool)

(assert (=> bm!574426 m!7364054))

(declare-fun m!7364056 () Bool)

(assert (=> b!6584860 m!7364056))

(assert (=> bm!574428 m!7362830))

(declare-fun m!7364058 () Bool)

(assert (=> bm!574428 m!7364058))

(assert (=> b!6583529 d!2065787))

(assert (=> b!6583529 d!2065507))

(assert (=> b!6583529 d!2065499))

(declare-fun d!2065795 () Bool)

(assert (=> d!2065795 (= (nullable!6448 r!7292) (nullableFct!2373 r!7292))))

(declare-fun bs!1684861 () Bool)

(assert (= bs!1684861 d!2065795))

(declare-fun m!7364060 () Bool)

(assert (=> bs!1684861 m!7364060))

(assert (=> b!6584126 d!2065795))

(assert (=> d!2065449 d!2065445))

(declare-fun d!2065797 () Bool)

(assert (=> d!2065797 (= (flatMap!1960 lt!2410479 lambda!366701) (dynLambda!26085 lambda!366701 lt!2410472))))

(assert (=> d!2065797 true))

(declare-fun _$13!3847 () Unit!159155)

(assert (=> d!2065797 (= (choose!49161 lt!2410479 lt!2410472 lambda!366701) _$13!3847)))

(declare-fun b_lambda!249127 () Bool)

(assert (=> (not b_lambda!249127) (not d!2065797)))

(declare-fun bs!1684864 () Bool)

(assert (= bs!1684864 d!2065797))

(assert (=> bs!1684864 m!7362486))

(assert (=> bs!1684864 m!7363248))

(assert (=> d!2065449 d!2065797))

(assert (=> d!2065403 d!2065407))

(declare-fun d!2065799 () Bool)

(assert (=> d!2065799 (= (flatMap!1960 lt!2410489 lambda!366701) (dynLambda!26085 lambda!366701 lt!2410465))))

(assert (=> d!2065799 true))

(declare-fun _$13!3848 () Unit!159155)

(assert (=> d!2065799 (= (choose!49161 lt!2410489 lt!2410465 lambda!366701) _$13!3848)))

(declare-fun b_lambda!249129 () Bool)

(assert (=> (not b_lambda!249129) (not d!2065799)))

(declare-fun bs!1684866 () Bool)

(assert (= bs!1684866 d!2065799))

(assert (=> bs!1684866 m!7362514))

(assert (=> bs!1684866 m!7363132))

(assert (=> d!2065403 d!2065799))

(declare-fun c!1211689 () Bool)

(declare-fun call!574435 () (InoxSet Context!11678))

(declare-fun bm!574431 () Bool)

(declare-fun call!574437 () List!65664)

(assert (=> bm!574431 (= call!574435 (derivationStepZipperDown!1703 (ite c!1211689 (regOne!33423 (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))) (regOne!33422 (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343))))))))) (ite c!1211689 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))) (Context!11679 call!574437)) (h!71989 s!2326)))))

(declare-fun b!6584868 () Bool)

(declare-fun e!3985135 () (InoxSet Context!11678))

(declare-fun call!574439 () (InoxSet Context!11678))

(assert (=> b!6584868 (= e!3985135 ((_ map or) call!574435 call!574439))))

(declare-fun call!574440 () List!65664)

(declare-fun call!574436 () (InoxSet Context!11678))

(declare-fun bm!574432 () Bool)

(declare-fun c!1211691 () Bool)

(declare-fun c!1211690 () Bool)

(assert (=> bm!574432 (= call!574436 (derivationStepZipperDown!1703 (ite c!1211689 (regTwo!33423 (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))) (ite c!1211691 (regTwo!33422 (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))) (ite c!1211690 (regOne!33422 (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))) (reg!16784 (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343))))))))))) (ite (or c!1211689 c!1211691) (Context!11679 (t!379312 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))) (Context!11679 call!574440)) (h!71989 s!2326)))))

(declare-fun b!6584869 () Bool)

(declare-fun e!3985139 () Bool)

(assert (=> b!6584869 (= c!1211691 e!3985139)))

(declare-fun res!2701158 () Bool)

(assert (=> b!6584869 (=> (not res!2701158) (not e!3985139))))

(assert (=> b!6584869 (= res!2701158 ((_ is Concat!25300) (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))))))

(declare-fun e!3985138 () (InoxSet Context!11678))

(assert (=> b!6584869 (= e!3985138 e!3985135)))

(declare-fun b!6584870 () Bool)

(declare-fun e!3985140 () (InoxSet Context!11678))

(assert (=> b!6584870 (= e!3985135 e!3985140)))

(assert (=> b!6584870 (= c!1211690 ((_ is Concat!25300) (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))))))

(declare-fun b!6584871 () Bool)

(declare-fun c!1211692 () Bool)

(assert (=> b!6584871 (= c!1211692 ((_ is Star!16455) (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))))))

(declare-fun e!3985136 () (InoxSet Context!11678))

(assert (=> b!6584871 (= e!3985140 e!3985136)))

(declare-fun b!6584872 () Bool)

(declare-fun e!3985137 () (InoxSet Context!11678))

(assert (=> b!6584872 (= e!3985137 (store ((as const (Array Context!11678 Bool)) false) (Context!11679 (t!379312 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))) true))))

(declare-fun bm!574433 () Bool)

(assert (=> bm!574433 (= call!574439 call!574436)))

(declare-fun d!2065801 () Bool)

(declare-fun c!1211693 () Bool)

(assert (=> d!2065801 (= c!1211693 (and ((_ is ElementMatch!16455) (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))) (= (c!1211172 (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))) (h!71989 s!2326))))))

(assert (=> d!2065801 (= (derivationStepZipperDown!1703 (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343))))))) (Context!11679 (t!379312 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))) (h!71989 s!2326)) e!3985137)))

(declare-fun bm!574430 () Bool)

(assert (=> bm!574430 (= call!574437 ($colon$colon!2296 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343))))))))) (ite (or c!1211691 c!1211690) (regTwo!33422 (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))) (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343))))))))))))

(declare-fun b!6584873 () Bool)

(assert (=> b!6584873 (= e!3985136 ((as const (Array Context!11678 Bool)) false))))

(declare-fun b!6584874 () Bool)

(declare-fun call!574438 () (InoxSet Context!11678))

(assert (=> b!6584874 (= e!3985140 call!574438)))

(declare-fun bm!574434 () Bool)

(assert (=> bm!574434 (= call!574440 call!574437)))

(declare-fun b!6584875 () Bool)

(assert (=> b!6584875 (= e!3985137 e!3985138)))

(assert (=> b!6584875 (= c!1211689 ((_ is Union!16455) (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))))))

(declare-fun bm!574435 () Bool)

(assert (=> bm!574435 (= call!574438 call!574439)))

(declare-fun b!6584876 () Bool)

(assert (=> b!6584876 (= e!3985138 ((_ map or) call!574435 call!574436))))

(declare-fun b!6584877 () Bool)

(assert (=> b!6584877 (= e!3985139 (nullable!6448 (regOne!33422 (h!71988 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343))))))))))))

(declare-fun b!6584878 () Bool)

(assert (=> b!6584878 (= e!3985136 call!574438)))

(assert (= (and d!2065801 c!1211693) b!6584872))

(assert (= (and d!2065801 (not c!1211693)) b!6584875))

(assert (= (and b!6584875 c!1211689) b!6584876))

(assert (= (and b!6584875 (not c!1211689)) b!6584869))

(assert (= (and b!6584869 res!2701158) b!6584877))

(assert (= (and b!6584869 c!1211691) b!6584868))

(assert (= (and b!6584869 (not c!1211691)) b!6584870))

(assert (= (and b!6584870 c!1211690) b!6584874))

(assert (= (and b!6584870 (not c!1211690)) b!6584871))

(assert (= (and b!6584871 c!1211692) b!6584878))

(assert (= (and b!6584871 (not c!1211692)) b!6584873))

(assert (= (or b!6584874 b!6584878) bm!574434))

(assert (= (or b!6584874 b!6584878) bm!574435))

(assert (= (or b!6584868 bm!574434) bm!574430))

(assert (= (or b!6584868 bm!574435) bm!574433))

(assert (= (or b!6584876 bm!574433) bm!574432))

(assert (= (or b!6584876 b!6584868) bm!574431))

(declare-fun m!7364062 () Bool)

(assert (=> b!6584877 m!7364062))

(declare-fun m!7364064 () Bool)

(assert (=> b!6584872 m!7364064))

(declare-fun m!7364066 () Bool)

(assert (=> bm!574431 m!7364066))

(declare-fun m!7364068 () Bool)

(assert (=> bm!574432 m!7364068))

(declare-fun m!7364070 () Bool)

(assert (=> bm!574430 m!7364070))

(assert (=> bm!574253 d!2065801))

(assert (=> b!6583932 d!2065545))

(assert (=> b!6583959 d!2065379))

(assert (=> bs!1684535 d!2065415))

(declare-fun d!2065803 () Bool)

(declare-fun res!2701159 () Bool)

(declare-fun e!3985141 () Bool)

(assert (=> d!2065803 (=> res!2701159 e!3985141)))

(assert (=> d!2065803 (= res!2701159 ((_ is Nil!65540) lt!2410616))))

(assert (=> d!2065803 (= (forall!15634 lt!2410616 lambda!366779) e!3985141)))

(declare-fun b!6584879 () Bool)

(declare-fun e!3985142 () Bool)

(assert (=> b!6584879 (= e!3985141 e!3985142)))

(declare-fun res!2701160 () Bool)

(assert (=> b!6584879 (=> (not res!2701160) (not e!3985142))))

(assert (=> b!6584879 (= res!2701160 (dynLambda!26086 lambda!366779 (h!71988 lt!2410616)))))

(declare-fun b!6584880 () Bool)

(assert (=> b!6584880 (= e!3985142 (forall!15634 (t!379312 lt!2410616) lambda!366779))))

(assert (= (and d!2065803 (not res!2701159)) b!6584879))

(assert (= (and b!6584879 res!2701160) b!6584880))

(declare-fun b_lambda!249131 () Bool)

(assert (=> (not b_lambda!249131) (not b!6584879)))

(declare-fun m!7364072 () Bool)

(assert (=> b!6584879 m!7364072))

(declare-fun m!7364074 () Bool)

(assert (=> b!6584880 m!7364074))

(assert (=> d!2065439 d!2065803))

(declare-fun d!2065805 () Bool)

(declare-fun e!3985144 () Bool)

(assert (=> d!2065805 e!3985144))

(declare-fun res!2701162 () Bool)

(assert (=> d!2065805 (=> (not res!2701162) (not e!3985144))))

(declare-fun lt!2410696 () Int)

(assert (=> d!2065805 (= res!2701162 (> lt!2410696 0))))

(declare-fun e!3985146 () Int)

(assert (=> d!2065805 (= lt!2410696 e!3985146)))

(declare-fun c!1211697 () Bool)

(assert (=> d!2065805 (= c!1211697 ((_ is ElementMatch!16455) (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(assert (=> d!2065805 (= (regexDepth!352 (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))) lt!2410696)))

(declare-fun b!6584881 () Bool)

(declare-fun e!3985147 () Bool)

(assert (=> b!6584881 (= e!3985147 (= lt!2410696 1))))

(declare-fun b!6584882 () Bool)

(declare-fun c!1211699 () Bool)

(assert (=> b!6584882 (= c!1211699 ((_ is Union!16455) (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(declare-fun e!3985151 () Int)

(declare-fun e!3985143 () Int)

(assert (=> b!6584882 (= e!3985151 e!3985143)))

(declare-fun call!574445 () Int)

(declare-fun c!1211694 () Bool)

(declare-fun bm!574436 () Bool)

(assert (=> bm!574436 (= call!574445 (regexDepth!352 (ite c!1211694 (regOne!33423 (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))) (regTwo!33422 (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))))

(declare-fun b!6584883 () Bool)

(declare-fun call!574443 () Int)

(assert (=> b!6584883 (= e!3985147 (> lt!2410696 call!574443))))

(declare-fun b!6584884 () Bool)

(declare-fun e!3985150 () Bool)

(assert (=> b!6584884 (= e!3985144 e!3985150)))

(assert (=> b!6584884 (= c!1211694 ((_ is Union!16455) (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(declare-fun call!574442 () Int)

(declare-fun bm!574437 () Bool)

(assert (=> bm!574437 (= call!574442 (regexDepth!352 (ite c!1211699 (regOne!33423 (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))) (regTwo!33422 (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))))

(declare-fun b!6584885 () Bool)

(declare-fun e!3985152 () Bool)

(assert (=> b!6584885 (= e!3985150 e!3985152)))

(declare-fun res!2701163 () Bool)

(assert (=> b!6584885 (= res!2701163 (> lt!2410696 call!574445))))

(assert (=> b!6584885 (=> (not res!2701163) (not e!3985152))))

(declare-fun b!6584886 () Bool)

(declare-fun e!3985148 () Int)

(assert (=> b!6584886 (= e!3985143 e!3985148)))

(declare-fun c!1211700 () Bool)

(assert (=> b!6584886 (= c!1211700 ((_ is Concat!25300) (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(declare-fun b!6584887 () Bool)

(assert (=> b!6584887 (= e!3985146 1)))

(declare-fun b!6584888 () Bool)

(declare-fun call!574447 () Int)

(assert (=> b!6584888 (= e!3985152 (> lt!2410696 call!574447))))

(declare-fun b!6584889 () Bool)

(declare-fun e!3985149 () Bool)

(assert (=> b!6584889 (= e!3985149 (> lt!2410696 call!574445))))

(declare-fun bm!574438 () Bool)

(declare-fun call!574444 () Int)

(declare-fun call!574446 () Int)

(assert (=> bm!574438 (= call!574444 (maxBigInt!0 (ite c!1211699 call!574442 call!574446) (ite c!1211699 call!574446 call!574442)))))

(declare-fun b!6584890 () Bool)

(assert (=> b!6584890 (= e!3985148 (+ 1 call!574444))))

(declare-fun b!6584891 () Bool)

(declare-fun e!3985145 () Bool)

(assert (=> b!6584891 (= e!3985150 e!3985145)))

(declare-fun c!1211695 () Bool)

(assert (=> b!6584891 (= c!1211695 ((_ is Concat!25300) (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(declare-fun call!574441 () Int)

(declare-fun bm!574439 () Bool)

(declare-fun c!1211698 () Bool)

(assert (=> bm!574439 (= call!574441 (regexDepth!352 (ite c!1211698 (reg!16784 (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))) (ite c!1211699 (regTwo!33423 (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))) (regOne!33422 (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292)))))))))

(declare-fun b!6584892 () Bool)

(assert (=> b!6584892 (= e!3985146 e!3985151)))

(assert (=> b!6584892 (= c!1211698 ((_ is Star!16455) (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(declare-fun b!6584893 () Bool)

(assert (=> b!6584893 (= e!3985143 (+ 1 call!574444))))

(declare-fun b!6584894 () Bool)

(assert (=> b!6584894 (= e!3985151 (+ 1 call!574441))))

(declare-fun bm!574440 () Bool)

(assert (=> bm!574440 (= call!574443 call!574447)))

(declare-fun b!6584895 () Bool)

(assert (=> b!6584895 (= e!3985148 1)))

(declare-fun b!6584896 () Bool)

(declare-fun res!2701161 () Bool)

(assert (=> b!6584896 (=> (not res!2701161) (not e!3985149))))

(assert (=> b!6584896 (= res!2701161 (> lt!2410696 call!574443))))

(assert (=> b!6584896 (= e!3985145 e!3985149)))

(declare-fun b!6584897 () Bool)

(declare-fun c!1211696 () Bool)

(assert (=> b!6584897 (= c!1211696 ((_ is Star!16455) (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(assert (=> b!6584897 (= e!3985145 e!3985147)))

(declare-fun bm!574441 () Bool)

(assert (=> bm!574441 (= call!574446 call!574441)))

(declare-fun bm!574442 () Bool)

(assert (=> bm!574442 (= call!574447 (regexDepth!352 (ite c!1211694 (regTwo!33423 (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))) (ite c!1211695 (regOne!33422 (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292))) (reg!16784 (ite c!1211365 (regOne!33423 r!7292) (regTwo!33422 r!7292)))))))))

(assert (= (and d!2065805 c!1211697) b!6584887))

(assert (= (and d!2065805 (not c!1211697)) b!6584892))

(assert (= (and b!6584892 c!1211698) b!6584894))

(assert (= (and b!6584892 (not c!1211698)) b!6584882))

(assert (= (and b!6584882 c!1211699) b!6584893))

(assert (= (and b!6584882 (not c!1211699)) b!6584886))

(assert (= (and b!6584886 c!1211700) b!6584890))

(assert (= (and b!6584886 (not c!1211700)) b!6584895))

(assert (= (or b!6584893 b!6584890) bm!574441))

(assert (= (or b!6584893 b!6584890) bm!574437))

(assert (= (or b!6584893 b!6584890) bm!574438))

(assert (= (or b!6584894 bm!574441) bm!574439))

(assert (= (and d!2065805 res!2701162) b!6584884))

(assert (= (and b!6584884 c!1211694) b!6584885))

(assert (= (and b!6584884 (not c!1211694)) b!6584891))

(assert (= (and b!6584885 res!2701163) b!6584888))

(assert (= (and b!6584891 c!1211695) b!6584896))

(assert (= (and b!6584891 (not c!1211695)) b!6584897))

(assert (= (and b!6584896 res!2701161) b!6584889))

(assert (= (and b!6584897 c!1211696) b!6584883))

(assert (= (and b!6584897 (not c!1211696)) b!6584881))

(assert (= (or b!6584896 b!6584883) bm!574440))

(assert (= (or b!6584888 bm!574440) bm!574442))

(assert (= (or b!6584885 b!6584889) bm!574436))

(declare-fun m!7364082 () Bool)

(assert (=> bm!574438 m!7364082))

(declare-fun m!7364084 () Bool)

(assert (=> bm!574439 m!7364084))

(declare-fun m!7364086 () Bool)

(assert (=> bm!574442 m!7364086))

(declare-fun m!7364088 () Bool)

(assert (=> bm!574436 m!7364088))

(declare-fun m!7364090 () Bool)

(assert (=> bm!574437 m!7364090))

(assert (=> bm!574206 d!2065805))

(declare-fun d!2065809 () Bool)

(declare-fun e!3985154 () Bool)

(assert (=> d!2065809 e!3985154))

(declare-fun res!2701165 () Bool)

(assert (=> d!2065809 (=> (not res!2701165) (not e!3985154))))

(declare-fun lt!2410697 () Int)

(assert (=> d!2065809 (= res!2701165 (> lt!2410697 0))))

(declare-fun e!3985156 () Int)

(assert (=> d!2065809 (= lt!2410697 e!3985156)))

(declare-fun c!1211704 () Bool)

(assert (=> d!2065809 (= c!1211704 ((_ is ElementMatch!16455) (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))))))

(assert (=> d!2065809 (= (regexDepth!352 (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))) lt!2410697)))

(declare-fun b!6584898 () Bool)

(declare-fun e!3985157 () Bool)

(assert (=> b!6584898 (= e!3985157 (= lt!2410697 1))))

(declare-fun b!6584899 () Bool)

(declare-fun c!1211706 () Bool)

(assert (=> b!6584899 (= c!1211706 ((_ is Union!16455) (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))))))

(declare-fun e!3985161 () Int)

(declare-fun e!3985153 () Int)

(assert (=> b!6584899 (= e!3985161 e!3985153)))

(declare-fun call!574452 () Int)

(declare-fun bm!574443 () Bool)

(declare-fun c!1211701 () Bool)

(assert (=> bm!574443 (= call!574452 (regexDepth!352 (ite c!1211701 (regOne!33423 (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))) (regTwo!33422 (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))))))))

(declare-fun b!6584900 () Bool)

(declare-fun call!574450 () Int)

(assert (=> b!6584900 (= e!3985157 (> lt!2410697 call!574450))))

(declare-fun b!6584901 () Bool)

(declare-fun e!3985160 () Bool)

(assert (=> b!6584901 (= e!3985154 e!3985160)))

(assert (=> b!6584901 (= c!1211701 ((_ is Union!16455) (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))))))

(declare-fun bm!574444 () Bool)

(declare-fun call!574449 () Int)

(assert (=> bm!574444 (= call!574449 (regexDepth!352 (ite c!1211706 (regOne!33423 (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))) (regTwo!33422 (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))))))))

(declare-fun b!6584902 () Bool)

(declare-fun e!3985162 () Bool)

(assert (=> b!6584902 (= e!3985160 e!3985162)))

(declare-fun res!2701166 () Bool)

(assert (=> b!6584902 (= res!2701166 (> lt!2410697 call!574452))))

(assert (=> b!6584902 (=> (not res!2701166) (not e!3985162))))

(declare-fun b!6584903 () Bool)

(declare-fun e!3985158 () Int)

(assert (=> b!6584903 (= e!3985153 e!3985158)))

(declare-fun c!1211707 () Bool)

(assert (=> b!6584903 (= c!1211707 ((_ is Concat!25300) (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))))))

(declare-fun b!6584904 () Bool)

(assert (=> b!6584904 (= e!3985156 1)))

(declare-fun b!6584905 () Bool)

(declare-fun call!574454 () Int)

(assert (=> b!6584905 (= e!3985162 (> lt!2410697 call!574454))))

(declare-fun b!6584906 () Bool)

(declare-fun e!3985159 () Bool)

(assert (=> b!6584906 (= e!3985159 (> lt!2410697 call!574452))))

(declare-fun call!574451 () Int)

(declare-fun call!574453 () Int)

(declare-fun bm!574445 () Bool)

(assert (=> bm!574445 (= call!574451 (maxBigInt!0 (ite c!1211706 call!574449 call!574453) (ite c!1211706 call!574453 call!574449)))))

(declare-fun b!6584907 () Bool)

(assert (=> b!6584907 (= e!3985158 (+ 1 call!574451))))

(declare-fun b!6584908 () Bool)

(declare-fun e!3985155 () Bool)

(assert (=> b!6584908 (= e!3985160 e!3985155)))

(declare-fun c!1211702 () Bool)

(assert (=> b!6584908 (= c!1211702 ((_ is Concat!25300) (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))))))

(declare-fun call!574448 () Int)

(declare-fun c!1211705 () Bool)

(declare-fun bm!574446 () Bool)

(assert (=> bm!574446 (= call!574448 (regexDepth!352 (ite c!1211705 (reg!16784 (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))) (ite c!1211706 (regTwo!33423 (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))) (regOne!33422 (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292))))))))))

(declare-fun b!6584909 () Bool)

(assert (=> b!6584909 (= e!3985156 e!3985161)))

(assert (=> b!6584909 (= c!1211705 ((_ is Star!16455) (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))))))

(declare-fun b!6584910 () Bool)

(assert (=> b!6584910 (= e!3985153 (+ 1 call!574451))))

(declare-fun b!6584911 () Bool)

(assert (=> b!6584911 (= e!3985161 (+ 1 call!574448))))

(declare-fun bm!574447 () Bool)

(assert (=> bm!574447 (= call!574450 call!574454)))

(declare-fun b!6584912 () Bool)

(assert (=> b!6584912 (= e!3985158 1)))

(declare-fun b!6584913 () Bool)

(declare-fun res!2701164 () Bool)

(assert (=> b!6584913 (=> (not res!2701164) (not e!3985159))))

(assert (=> b!6584913 (= res!2701164 (> lt!2410697 call!574450))))

(assert (=> b!6584913 (= e!3985155 e!3985159)))

(declare-fun c!1211703 () Bool)

(declare-fun b!6584914 () Bool)

(assert (=> b!6584914 (= c!1211703 ((_ is Star!16455) (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))))))

(assert (=> b!6584914 (= e!3985155 e!3985157)))

(declare-fun bm!574448 () Bool)

(assert (=> bm!574448 (= call!574453 call!574448)))

(declare-fun bm!574449 () Bool)

(assert (=> bm!574449 (= call!574454 (regexDepth!352 (ite c!1211701 (regTwo!33423 (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))) (ite c!1211702 (regOne!33422 (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292)))) (reg!16784 (ite c!1211365 (regTwo!33423 r!7292) (ite c!1211366 (regOne!33422 r!7292) (reg!16784 r!7292))))))))))

(assert (= (and d!2065809 c!1211704) b!6584904))

(assert (= (and d!2065809 (not c!1211704)) b!6584909))

(assert (= (and b!6584909 c!1211705) b!6584911))

(assert (= (and b!6584909 (not c!1211705)) b!6584899))

(assert (= (and b!6584899 c!1211706) b!6584910))

(assert (= (and b!6584899 (not c!1211706)) b!6584903))

(assert (= (and b!6584903 c!1211707) b!6584907))

(assert (= (and b!6584903 (not c!1211707)) b!6584912))

(assert (= (or b!6584910 b!6584907) bm!574448))

(assert (= (or b!6584910 b!6584907) bm!574444))

(assert (= (or b!6584910 b!6584907) bm!574445))

(assert (= (or b!6584911 bm!574448) bm!574446))

(assert (= (and d!2065809 res!2701165) b!6584901))

(assert (= (and b!6584901 c!1211701) b!6584902))

(assert (= (and b!6584901 (not c!1211701)) b!6584908))

(assert (= (and b!6584902 res!2701166) b!6584905))

(assert (= (and b!6584908 c!1211702) b!6584913))

(assert (= (and b!6584908 (not c!1211702)) b!6584914))

(assert (= (and b!6584913 res!2701164) b!6584906))

(assert (= (and b!6584914 c!1211703) b!6584900))

(assert (= (and b!6584914 (not c!1211703)) b!6584898))

(assert (= (or b!6584913 b!6584900) bm!574447))

(assert (= (or b!6584905 bm!574447) bm!574449))

(assert (= (or b!6584902 b!6584906) bm!574443))

(declare-fun m!7364092 () Bool)

(assert (=> bm!574445 m!7364092))

(declare-fun m!7364094 () Bool)

(assert (=> bm!574446 m!7364094))

(declare-fun m!7364096 () Bool)

(assert (=> bm!574449 m!7364096))

(declare-fun m!7364098 () Bool)

(assert (=> bm!574443 m!7364098))

(declare-fun m!7364100 () Bool)

(assert (=> bm!574444 m!7364100))

(assert (=> bm!574212 d!2065809))

(assert (=> bm!574264 d!2065607))

(declare-fun b!6584915 () Bool)

(declare-fun e!3985163 () Bool)

(declare-fun e!3985166 () Bool)

(assert (=> b!6584915 (= e!3985163 e!3985166)))

(declare-fun res!2701169 () Bool)

(assert (=> b!6584915 (=> (not res!2701169) (not e!3985166))))

(declare-fun lt!2410698 () Bool)

(assert (=> b!6584915 (= res!2701169 (not lt!2410698))))

(declare-fun b!6584916 () Bool)

(declare-fun res!2701170 () Bool)

(assert (=> b!6584916 (=> res!2701170 e!3985163)))

(declare-fun e!3985167 () Bool)

(assert (=> b!6584916 (= res!2701170 e!3985167)))

(declare-fun res!2701168 () Bool)

(assert (=> b!6584916 (=> (not res!2701168) (not e!3985167))))

(assert (=> b!6584916 (= res!2701168 lt!2410698)))

(declare-fun b!6584917 () Bool)

(declare-fun res!2701174 () Bool)

(declare-fun e!3985165 () Bool)

(assert (=> b!6584917 (=> res!2701174 e!3985165)))

(assert (=> b!6584917 (= res!2701174 (not (isEmpty!37801 (tail!12446 (tail!12446 s!2326)))))))

(declare-fun b!6584918 () Bool)

(declare-fun e!3985168 () Bool)

(declare-fun call!574455 () Bool)

(assert (=> b!6584918 (= e!3985168 (= lt!2410698 call!574455))))

(declare-fun b!6584919 () Bool)

(declare-fun res!2701167 () Bool)

(assert (=> b!6584919 (=> (not res!2701167) (not e!3985167))))

(assert (=> b!6584919 (= res!2701167 (not call!574455))))

(declare-fun b!6584920 () Bool)

(declare-fun e!3985164 () Bool)

(assert (=> b!6584920 (= e!3985164 (not lt!2410698))))

(declare-fun b!6584921 () Bool)

(assert (=> b!6584921 (= e!3985165 (not (= (head!13361 (tail!12446 s!2326)) (c!1211172 (derivativeStep!5139 r!7292 (head!13361 s!2326))))))))

(declare-fun b!6584922 () Bool)

(assert (=> b!6584922 (= e!3985168 e!3985164)))

(declare-fun c!1211710 () Bool)

(assert (=> b!6584922 (= c!1211710 ((_ is EmptyLang!16455) (derivativeStep!5139 r!7292 (head!13361 s!2326))))))

(declare-fun b!6584923 () Bool)

(declare-fun e!3985169 () Bool)

(assert (=> b!6584923 (= e!3985169 (nullable!6448 (derivativeStep!5139 r!7292 (head!13361 s!2326))))))

(declare-fun b!6584924 () Bool)

(assert (=> b!6584924 (= e!3985166 e!3985165)))

(declare-fun res!2701172 () Bool)

(assert (=> b!6584924 (=> res!2701172 e!3985165)))

(assert (=> b!6584924 (= res!2701172 call!574455)))

(declare-fun b!6584925 () Bool)

(declare-fun res!2701171 () Bool)

(assert (=> b!6584925 (=> (not res!2701171) (not e!3985167))))

(assert (=> b!6584925 (= res!2701171 (isEmpty!37801 (tail!12446 (tail!12446 s!2326))))))

(declare-fun d!2065811 () Bool)

(assert (=> d!2065811 e!3985168))

(declare-fun c!1211708 () Bool)

(assert (=> d!2065811 (= c!1211708 ((_ is EmptyExpr!16455) (derivativeStep!5139 r!7292 (head!13361 s!2326))))))

(assert (=> d!2065811 (= lt!2410698 e!3985169)))

(declare-fun c!1211709 () Bool)

(assert (=> d!2065811 (= c!1211709 (isEmpty!37801 (tail!12446 s!2326)))))

(assert (=> d!2065811 (validRegex!8191 (derivativeStep!5139 r!7292 (head!13361 s!2326)))))

(assert (=> d!2065811 (= (matchR!8638 (derivativeStep!5139 r!7292 (head!13361 s!2326)) (tail!12446 s!2326)) lt!2410698)))

(declare-fun bm!574450 () Bool)

(assert (=> bm!574450 (= call!574455 (isEmpty!37801 (tail!12446 s!2326)))))

(declare-fun b!6584926 () Bool)

(assert (=> b!6584926 (= e!3985169 (matchR!8638 (derivativeStep!5139 (derivativeStep!5139 r!7292 (head!13361 s!2326)) (head!13361 (tail!12446 s!2326))) (tail!12446 (tail!12446 s!2326))))))

(declare-fun b!6584927 () Bool)

(assert (=> b!6584927 (= e!3985167 (= (head!13361 (tail!12446 s!2326)) (c!1211172 (derivativeStep!5139 r!7292 (head!13361 s!2326)))))))

(declare-fun b!6584928 () Bool)

(declare-fun res!2701173 () Bool)

(assert (=> b!6584928 (=> res!2701173 e!3985163)))

(assert (=> b!6584928 (= res!2701173 (not ((_ is ElementMatch!16455) (derivativeStep!5139 r!7292 (head!13361 s!2326)))))))

(assert (=> b!6584928 (= e!3985164 e!3985163)))

(assert (= (and d!2065811 c!1211709) b!6584923))

(assert (= (and d!2065811 (not c!1211709)) b!6584926))

(assert (= (and d!2065811 c!1211708) b!6584918))

(assert (= (and d!2065811 (not c!1211708)) b!6584922))

(assert (= (and b!6584922 c!1211710) b!6584920))

(assert (= (and b!6584922 (not c!1211710)) b!6584928))

(assert (= (and b!6584928 (not res!2701173)) b!6584916))

(assert (= (and b!6584916 res!2701168) b!6584919))

(assert (= (and b!6584919 res!2701167) b!6584925))

(assert (= (and b!6584925 res!2701171) b!6584927))

(assert (= (and b!6584916 (not res!2701170)) b!6584915))

(assert (= (and b!6584915 res!2701169) b!6584924))

(assert (= (and b!6584924 (not res!2701172)) b!6584917))

(assert (= (and b!6584917 (not res!2701174)) b!6584921))

(assert (= (or b!6584918 b!6584919 b!6584924) bm!574450))

(assert (=> bm!574450 m!7362834))

(assert (=> bm!574450 m!7362838))

(assert (=> d!2065811 m!7362834))

(assert (=> d!2065811 m!7362838))

(assert (=> d!2065811 m!7363310))

(declare-fun m!7364102 () Bool)

(assert (=> d!2065811 m!7364102))

(assert (=> b!6584923 m!7363310))

(declare-fun m!7364104 () Bool)

(assert (=> b!6584923 m!7364104))

(assert (=> b!6584927 m!7362834))

(assert (=> b!6584927 m!7363580))

(assert (=> b!6584926 m!7362834))

(assert (=> b!6584926 m!7363580))

(assert (=> b!6584926 m!7363310))

(assert (=> b!6584926 m!7363580))

(declare-fun m!7364106 () Bool)

(assert (=> b!6584926 m!7364106))

(assert (=> b!6584926 m!7362834))

(assert (=> b!6584926 m!7363584))

(assert (=> b!6584926 m!7364106))

(assert (=> b!6584926 m!7363584))

(declare-fun m!7364108 () Bool)

(assert (=> b!6584926 m!7364108))

(assert (=> b!6584921 m!7362834))

(assert (=> b!6584921 m!7363580))

(assert (=> b!6584917 m!7362834))

(assert (=> b!6584917 m!7363584))

(assert (=> b!6584917 m!7363584))

(assert (=> b!6584917 m!7364018))

(assert (=> b!6584925 m!7362834))

(assert (=> b!6584925 m!7363584))

(assert (=> b!6584925 m!7363584))

(assert (=> b!6584925 m!7364018))

(assert (=> b!6584129 d!2065811))

(declare-fun d!2065813 () Bool)

(declare-fun lt!2410699 () Regex!16455)

(assert (=> d!2065813 (validRegex!8191 lt!2410699)))

(declare-fun e!3985171 () Regex!16455)

(assert (=> d!2065813 (= lt!2410699 e!3985171)))

(declare-fun c!1211714 () Bool)

(assert (=> d!2065813 (= c!1211714 (or ((_ is EmptyExpr!16455) r!7292) ((_ is EmptyLang!16455) r!7292)))))

(assert (=> d!2065813 (validRegex!8191 r!7292)))

(assert (=> d!2065813 (= (derivativeStep!5139 r!7292 (head!13361 s!2326)) lt!2410699)))

(declare-fun b!6584929 () Bool)

(declare-fun c!1211715 () Bool)

(assert (=> b!6584929 (= c!1211715 ((_ is Union!16455) r!7292))))

(declare-fun e!3985174 () Regex!16455)

(declare-fun e!3985170 () Regex!16455)

(assert (=> b!6584929 (= e!3985174 e!3985170)))

(declare-fun c!1211711 () Bool)

(declare-fun bm!574451 () Bool)

(declare-fun call!574459 () Regex!16455)

(assert (=> bm!574451 (= call!574459 (derivativeStep!5139 (ite c!1211715 (regTwo!33423 r!7292) (ite c!1211711 (reg!16784 r!7292) (regOne!33422 r!7292))) (head!13361 s!2326)))))

(declare-fun b!6584930 () Bool)

(assert (=> b!6584930 (= e!3985174 (ite (= (head!13361 s!2326) (c!1211172 r!7292)) EmptyExpr!16455 EmptyLang!16455))))

(declare-fun bm!574452 () Bool)

(declare-fun call!574457 () Regex!16455)

(assert (=> bm!574452 (= call!574457 call!574459)))

(declare-fun b!6584931 () Bool)

(declare-fun c!1211713 () Bool)

(assert (=> b!6584931 (= c!1211713 (nullable!6448 (regOne!33422 r!7292)))))

(declare-fun e!3985173 () Regex!16455)

(declare-fun e!3985172 () Regex!16455)

(assert (=> b!6584931 (= e!3985173 e!3985172)))

(declare-fun b!6584932 () Bool)

(assert (=> b!6584932 (= e!3985170 e!3985173)))

(assert (=> b!6584932 (= c!1211711 ((_ is Star!16455) r!7292))))

(declare-fun b!6584933 () Bool)

(assert (=> b!6584933 (= e!3985173 (Concat!25300 call!574457 r!7292))))

(declare-fun b!6584934 () Bool)

(assert (=> b!6584934 (= e!3985171 e!3985174)))

(declare-fun c!1211712 () Bool)

(assert (=> b!6584934 (= c!1211712 ((_ is ElementMatch!16455) r!7292))))

(declare-fun b!6584935 () Bool)

(assert (=> b!6584935 (= e!3985171 EmptyLang!16455)))

(declare-fun bm!574453 () Bool)

(declare-fun call!574456 () Regex!16455)

(assert (=> bm!574453 (= call!574456 (derivativeStep!5139 (ite c!1211715 (regOne!33423 r!7292) (ite c!1211713 (regTwo!33422 r!7292) (regOne!33422 r!7292))) (head!13361 s!2326)))))

(declare-fun call!574458 () Regex!16455)

(declare-fun b!6584936 () Bool)

(assert (=> b!6584936 (= e!3985172 (Union!16455 (Concat!25300 call!574457 (regTwo!33422 r!7292)) call!574458))))

(declare-fun b!6584937 () Bool)

(assert (=> b!6584937 (= e!3985172 (Union!16455 (Concat!25300 call!574458 (regTwo!33422 r!7292)) EmptyLang!16455))))

(declare-fun b!6584938 () Bool)

(assert (=> b!6584938 (= e!3985170 (Union!16455 call!574456 call!574459))))

(declare-fun bm!574454 () Bool)

(assert (=> bm!574454 (= call!574458 call!574456)))

(assert (= (and d!2065813 c!1211714) b!6584935))

(assert (= (and d!2065813 (not c!1211714)) b!6584934))

(assert (= (and b!6584934 c!1211712) b!6584930))

(assert (= (and b!6584934 (not c!1211712)) b!6584929))

(assert (= (and b!6584929 c!1211715) b!6584938))

(assert (= (and b!6584929 (not c!1211715)) b!6584932))

(assert (= (and b!6584932 c!1211711) b!6584933))

(assert (= (and b!6584932 (not c!1211711)) b!6584931))

(assert (= (and b!6584931 c!1211713) b!6584936))

(assert (= (and b!6584931 (not c!1211713)) b!6584937))

(assert (= (or b!6584936 b!6584937) bm!574454))

(assert (= (or b!6584933 b!6584936) bm!574452))

(assert (= (or b!6584938 bm!574452) bm!574451))

(assert (= (or b!6584938 bm!574454) bm!574453))

(declare-fun m!7364110 () Bool)

(assert (=> d!2065813 m!7364110))

(assert (=> d!2065813 m!7362496))

(assert (=> bm!574451 m!7362830))

(declare-fun m!7364112 () Bool)

(assert (=> bm!574451 m!7364112))

(assert (=> b!6584931 m!7363464))

(assert (=> bm!574453 m!7362830))

(declare-fun m!7364114 () Bool)

(assert (=> bm!574453 m!7364114))

(assert (=> b!6584129 d!2065813))

(assert (=> b!6584129 d!2065507))

(assert (=> b!6584129 d!2065499))

(declare-fun bs!1684874 () Bool)

(declare-fun d!2065815 () Bool)

(assert (= bs!1684874 (and d!2065815 d!2065261)))

(declare-fun lambda!366853 () Int)

(assert (=> bs!1684874 (= lambda!366853 lambda!366714)))

(declare-fun bs!1684875 () Bool)

(assert (= bs!1684875 (and d!2065815 d!2065665)))

(assert (=> bs!1684875 (= lambda!366853 lambda!366813)))

(declare-fun bs!1684876 () Bool)

(assert (= bs!1684876 (and d!2065815 b!6584625)))

(assert (=> bs!1684876 (not (= lambda!366853 lambda!366830))))

(declare-fun bs!1684877 () Bool)

(assert (= bs!1684877 (and d!2065815 d!2065477)))

(assert (=> bs!1684877 (= lambda!366853 lambda!366783)))

(declare-fun bs!1684878 () Bool)

(assert (= bs!1684878 (and d!2065815 d!2065619)))

(assert (=> bs!1684878 (= lambda!366853 lambda!366804)))

(declare-fun bs!1684879 () Bool)

(assert (= bs!1684879 (and d!2065815 d!2065759)))

(assert (=> bs!1684879 (= lambda!366853 lambda!366847)))

(declare-fun bs!1684880 () Bool)

(assert (= bs!1684880 (and d!2065815 d!2065439)))

(assert (=> bs!1684880 (= lambda!366853 lambda!366779)))

(declare-fun bs!1684881 () Bool)

(assert (= bs!1684881 (and d!2065815 d!2065727)))

(assert (=> bs!1684881 (= lambda!366853 lambda!366833)))

(declare-fun bs!1684882 () Bool)

(assert (= bs!1684882 (and d!2065815 d!2065401)))

(assert (=> bs!1684882 (= lambda!366853 lambda!366770)))

(declare-fun bs!1684883 () Bool)

(assert (= bs!1684883 (and d!2065815 d!2065515)))

(assert (=> bs!1684883 (= lambda!366853 lambda!366796)))

(declare-fun bs!1684884 () Bool)

(assert (= bs!1684884 (and d!2065815 d!2065379)))

(assert (=> bs!1684884 (= lambda!366853 lambda!366760)))

(declare-fun bs!1684885 () Bool)

(assert (= bs!1684885 (and d!2065815 d!2065729)))

(assert (=> bs!1684885 (= lambda!366853 lambda!366835)))

(declare-fun bs!1684886 () Bool)

(assert (= bs!1684886 (and d!2065815 d!2065623)))

(assert (=> bs!1684886 (= lambda!366853 lambda!366805)))

(declare-fun bs!1684887 () Bool)

(assert (= bs!1684887 (and d!2065815 d!2065757)))

(assert (=> bs!1684887 (= lambda!366853 lambda!366845)))

(declare-fun bs!1684888 () Bool)

(assert (= bs!1684888 (and d!2065815 b!6584627)))

(assert (=> bs!1684888 (not (= lambda!366853 lambda!366831))))

(declare-fun bs!1684889 () Bool)

(assert (= bs!1684889 (and d!2065815 d!2065517)))

(assert (=> bs!1684889 (= lambda!366853 lambda!366797)))

(declare-fun bs!1684890 () Bool)

(assert (= bs!1684890 (and d!2065815 d!2065437)))

(assert (=> bs!1684890 (= lambda!366853 lambda!366776)))

(declare-fun b!6584939 () Bool)

(declare-fun e!3985180 () Bool)

(declare-fun e!3985179 () Bool)

(assert (=> b!6584939 (= e!3985180 e!3985179)))

(declare-fun c!1211717 () Bool)

(assert (=> b!6584939 (= c!1211717 (isEmpty!37797 (tail!12447 (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343)))))))))

(declare-fun b!6584940 () Bool)

(declare-fun e!3985175 () Regex!16455)

(assert (=> b!6584940 (= e!3985175 EmptyExpr!16455)))

(declare-fun b!6584941 () Bool)

(declare-fun e!3985176 () Bool)

(assert (=> b!6584941 (= e!3985176 e!3985180)))

(declare-fun c!1211716 () Bool)

(assert (=> b!6584941 (= c!1211716 (isEmpty!37797 (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343))))))))

(declare-fun b!6584942 () Bool)

(declare-fun e!3985177 () Bool)

(assert (=> b!6584942 (= e!3985177 (isEmpty!37797 (t!379312 (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343)))))))))

(declare-fun b!6584943 () Bool)

(declare-fun lt!2410700 () Regex!16455)

(assert (=> b!6584943 (= e!3985180 (isEmptyExpr!1833 lt!2410700))))

(assert (=> d!2065815 e!3985176))

(declare-fun res!2701176 () Bool)

(assert (=> d!2065815 (=> (not res!2701176) (not e!3985176))))

(assert (=> d!2065815 (= res!2701176 (validRegex!8191 lt!2410700))))

(declare-fun e!3985178 () Regex!16455)

(assert (=> d!2065815 (= lt!2410700 e!3985178)))

(declare-fun c!1211718 () Bool)

(assert (=> d!2065815 (= c!1211718 e!3985177)))

(declare-fun res!2701175 () Bool)

(assert (=> d!2065815 (=> (not res!2701175) (not e!3985177))))

(assert (=> d!2065815 (= res!2701175 ((_ is Cons!65540) (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343))))))))

(assert (=> d!2065815 (forall!15634 (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343)))) lambda!366853)))

(assert (=> d!2065815 (= (generalisedConcat!2052 (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343))))) lt!2410700)))

(declare-fun b!6584944 () Bool)

(assert (=> b!6584944 (= e!3985178 (h!71988 (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343))))))))

(declare-fun b!6584945 () Bool)

(assert (=> b!6584945 (= e!3985179 (= lt!2410700 (head!13362 (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343)))))))))

(declare-fun b!6584946 () Bool)

(assert (=> b!6584946 (= e!3985178 e!3985175)))

(declare-fun c!1211719 () Bool)

(assert (=> b!6584946 (= c!1211719 ((_ is Cons!65540) (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343))))))))

(declare-fun b!6584947 () Bool)

(assert (=> b!6584947 (= e!3985179 (isConcat!1356 lt!2410700))))

(declare-fun b!6584948 () Bool)

(assert (=> b!6584948 (= e!3985175 (Concat!25300 (h!71988 (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343))))) (generalisedConcat!2052 (t!379312 (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343))))))))))

(assert (= (and d!2065815 res!2701175) b!6584942))

(assert (= (and d!2065815 c!1211718) b!6584944))

(assert (= (and d!2065815 (not c!1211718)) b!6584946))

(assert (= (and b!6584946 c!1211719) b!6584948))

(assert (= (and b!6584946 (not c!1211719)) b!6584940))

(assert (= (and d!2065815 res!2701176) b!6584941))

(assert (= (and b!6584941 c!1211716) b!6584943))

(assert (= (and b!6584941 (not c!1211716)) b!6584939))

(assert (= (and b!6584939 c!1211717) b!6584945))

(assert (= (and b!6584939 (not c!1211717)) b!6584947))

(declare-fun m!7364116 () Bool)

(assert (=> b!6584943 m!7364116))

(declare-fun m!7364118 () Bool)

(assert (=> b!6584947 m!7364118))

(declare-fun m!7364120 () Bool)

(assert (=> b!6584939 m!7364120))

(assert (=> b!6584939 m!7364120))

(declare-fun m!7364122 () Bool)

(assert (=> b!6584939 m!7364122))

(declare-fun m!7364124 () Bool)

(assert (=> d!2065815 m!7364124))

(declare-fun m!7364126 () Bool)

(assert (=> d!2065815 m!7364126))

(declare-fun m!7364128 () Bool)

(assert (=> b!6584948 m!7364128))

(declare-fun m!7364130 () Bool)

(assert (=> b!6584945 m!7364130))

(assert (=> b!6584941 m!7363050))

(declare-fun m!7364132 () Bool)

(assert (=> b!6584942 m!7364132))

(assert (=> b!6583877 d!2065815))

(declare-fun d!2065817 () Bool)

(declare-fun c!1211720 () Bool)

(assert (=> d!2065817 (= c!1211720 (isEmpty!37801 (tail!12446 (t!379313 s!2326))))))

(declare-fun e!3985181 () Bool)

(assert (=> d!2065817 (= (matchZipper!2467 (derivationStepZipper!2421 lt!2410487 (head!13361 (t!379313 s!2326))) (tail!12446 (t!379313 s!2326))) e!3985181)))

(declare-fun b!6584949 () Bool)

(assert (=> b!6584949 (= e!3985181 (nullableZipper!2200 (derivationStepZipper!2421 lt!2410487 (head!13361 (t!379313 s!2326)))))))

(declare-fun b!6584950 () Bool)

(assert (=> b!6584950 (= e!3985181 (matchZipper!2467 (derivationStepZipper!2421 (derivationStepZipper!2421 lt!2410487 (head!13361 (t!379313 s!2326))) (head!13361 (tail!12446 (t!379313 s!2326)))) (tail!12446 (tail!12446 (t!379313 s!2326)))))))

(assert (= (and d!2065817 c!1211720) b!6584949))

(assert (= (and d!2065817 (not c!1211720)) b!6584950))

(assert (=> d!2065817 m!7363072))

(assert (=> d!2065817 m!7363510))

(assert (=> b!6584949 m!7363070))

(declare-fun m!7364134 () Bool)

(assert (=> b!6584949 m!7364134))

(assert (=> b!6584950 m!7363072))

(assert (=> b!6584950 m!7363514))

(assert (=> b!6584950 m!7363070))

(assert (=> b!6584950 m!7363514))

(declare-fun m!7364136 () Bool)

(assert (=> b!6584950 m!7364136))

(assert (=> b!6584950 m!7363072))

(assert (=> b!6584950 m!7363518))

(assert (=> b!6584950 m!7364136))

(assert (=> b!6584950 m!7363518))

(declare-fun m!7364138 () Bool)

(assert (=> b!6584950 m!7364138))

(assert (=> b!6583910 d!2065817))

(declare-fun bs!1684891 () Bool)

(declare-fun d!2065819 () Bool)

(assert (= bs!1684891 (and d!2065819 d!2065679)))

(declare-fun lambda!366854 () Int)

(assert (=> bs!1684891 (= (= (head!13361 (t!379313 s!2326)) (head!13361 s!2326)) (= lambda!366854 lambda!366814))))

(declare-fun bs!1684892 () Bool)

(assert (= bs!1684892 (and d!2065819 d!2065753)))

(assert (=> bs!1684892 (= lambda!366854 lambda!366844)))

(declare-fun bs!1684893 () Bool)

(assert (= bs!1684893 (and d!2065819 d!2065645)))

(assert (=> bs!1684893 (= lambda!366854 lambda!366808)))

(declare-fun bs!1684894 () Bool)

(assert (= bs!1684894 (and d!2065819 d!2065431)))

(assert (=> bs!1684894 (= (= (head!13361 (t!379313 s!2326)) (h!71989 s!2326)) (= lambda!366854 lambda!366773))))

(declare-fun bs!1684895 () Bool)

(assert (= bs!1684895 (and d!2065819 d!2065451)))

(assert (=> bs!1684895 (= (= (head!13361 (t!379313 s!2326)) (h!71989 s!2326)) (= lambda!366854 lambda!366780))))

(declare-fun bs!1684896 () Bool)

(assert (= bs!1684896 (and d!2065819 d!2065601)))

(assert (=> bs!1684896 (= (= (head!13361 (t!379313 s!2326)) (head!13361 s!2326)) (= lambda!366854 lambda!366802))))

(declare-fun bs!1684897 () Bool)

(assert (= bs!1684897 (and d!2065819 b!6583173)))

(assert (=> bs!1684897 (= (= (head!13361 (t!379313 s!2326)) (h!71989 s!2326)) (= lambda!366854 lambda!366701))))

(declare-fun bs!1684898 () Bool)

(assert (= bs!1684898 (and d!2065819 d!2065577)))

(assert (=> bs!1684898 (= lambda!366854 lambda!366801)))

(assert (=> d!2065819 true))

(assert (=> d!2065819 (= (derivationStepZipper!2421 lt!2410487 (head!13361 (t!379313 s!2326))) (flatMap!1960 lt!2410487 lambda!366854))))

(declare-fun bs!1684899 () Bool)

(assert (= bs!1684899 d!2065819))

(declare-fun m!7364140 () Bool)

(assert (=> bs!1684899 m!7364140))

(assert (=> b!6583910 d!2065819))

(assert (=> b!6583910 d!2065579))

(assert (=> b!6583910 d!2065581))

(declare-fun call!574460 () (InoxSet Context!11678))

(declare-fun c!1211721 () Bool)

(declare-fun call!574462 () List!65664)

(declare-fun bm!574456 () Bool)

(assert (=> bm!574456 (= call!574460 (derivationStepZipperDown!1703 (ite c!1211721 (regOne!33423 (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343)))))))) (regOne!33422 (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343))))))))) (ite c!1211721 (ite (or c!1211428 c!1211430) lt!2410462 (Context!11679 call!574255)) (Context!11679 call!574462)) (h!71989 s!2326)))))

(declare-fun b!6584951 () Bool)

(declare-fun e!3985182 () (InoxSet Context!11678))

(declare-fun call!574464 () (InoxSet Context!11678))

(assert (=> b!6584951 (= e!3985182 ((_ map or) call!574460 call!574464))))

(declare-fun call!574465 () List!65664)

(declare-fun c!1211722 () Bool)

(declare-fun call!574461 () (InoxSet Context!11678))

(declare-fun c!1211723 () Bool)

(declare-fun bm!574457 () Bool)

(assert (=> bm!574457 (= call!574461 (derivationStepZipperDown!1703 (ite c!1211721 (regTwo!33423 (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343)))))))) (ite c!1211723 (regTwo!33422 (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343)))))))) (ite c!1211722 (regOne!33422 (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343)))))))) (reg!16784 (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343))))))))))) (ite (or c!1211721 c!1211723) (ite (or c!1211428 c!1211430) lt!2410462 (Context!11679 call!574255)) (Context!11679 call!574465)) (h!71989 s!2326)))))

(declare-fun b!6584952 () Bool)

(declare-fun e!3985186 () Bool)

(assert (=> b!6584952 (= c!1211723 e!3985186)))

(declare-fun res!2701177 () Bool)

(assert (=> b!6584952 (=> (not res!2701177) (not e!3985186))))

(assert (=> b!6584952 (= res!2701177 ((_ is Concat!25300) (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343)))))))))))

(declare-fun e!3985185 () (InoxSet Context!11678))

(assert (=> b!6584952 (= e!3985185 e!3985182)))

(declare-fun b!6584953 () Bool)

(declare-fun e!3985187 () (InoxSet Context!11678))

(assert (=> b!6584953 (= e!3985182 e!3985187)))

(assert (=> b!6584953 (= c!1211722 ((_ is Concat!25300) (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343)))))))))))

(declare-fun b!6584954 () Bool)

(declare-fun c!1211724 () Bool)

(assert (=> b!6584954 (= c!1211724 ((_ is Star!16455) (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343)))))))))))

(declare-fun e!3985183 () (InoxSet Context!11678))

(assert (=> b!6584954 (= e!3985187 e!3985183)))

(declare-fun b!6584955 () Bool)

(declare-fun e!3985184 () (InoxSet Context!11678))

(assert (=> b!6584955 (= e!3985184 (store ((as const (Array Context!11678 Bool)) false) (ite (or c!1211428 c!1211430) lt!2410462 (Context!11679 call!574255)) true))))

(declare-fun bm!574458 () Bool)

(assert (=> bm!574458 (= call!574464 call!574461)))

(declare-fun d!2065821 () Bool)

(declare-fun c!1211725 () Bool)

(assert (=> d!2065821 (= c!1211725 (and ((_ is ElementMatch!16455) (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343)))))))) (= (c!1211172 (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343)))))))) (h!71989 s!2326))))))

(assert (=> d!2065821 (= (derivationStepZipperDown!1703 (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343))))))) (ite (or c!1211428 c!1211430) lt!2410462 (Context!11679 call!574255)) (h!71989 s!2326)) e!3985184)))

(declare-fun bm!574455 () Bool)

(assert (=> bm!574455 (= call!574462 ($colon$colon!2296 (exprs!6339 (ite (or c!1211428 c!1211430) lt!2410462 (Context!11679 call!574255))) (ite (or c!1211723 c!1211722) (regTwo!33422 (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343)))))))) (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343))))))))))))

(declare-fun b!6584956 () Bool)

(assert (=> b!6584956 (= e!3985183 ((as const (Array Context!11678 Bool)) false))))

(declare-fun b!6584957 () Bool)

(declare-fun call!574463 () (InoxSet Context!11678))

(assert (=> b!6584957 (= e!3985187 call!574463)))

(declare-fun bm!574459 () Bool)

(assert (=> bm!574459 (= call!574465 call!574462)))

(declare-fun b!6584958 () Bool)

(assert (=> b!6584958 (= e!3985184 e!3985185)))

(assert (=> b!6584958 (= c!1211721 ((_ is Union!16455) (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343)))))))))))

(declare-fun bm!574460 () Bool)

(assert (=> bm!574460 (= call!574463 call!574464)))

(declare-fun b!6584959 () Bool)

(assert (=> b!6584959 (= e!3985185 ((_ map or) call!574460 call!574461))))

(declare-fun b!6584960 () Bool)

(assert (=> b!6584960 (= e!3985186 (nullable!6448 (regOne!33422 (ite c!1211428 (regTwo!33423 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211430 (regTwo!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (ite c!1211429 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343)))) (reg!16784 (h!71988 (exprs!6339 (h!71990 zl!343))))))))))))

(declare-fun b!6584961 () Bool)

(assert (=> b!6584961 (= e!3985183 call!574463)))

(assert (= (and d!2065821 c!1211725) b!6584955))

(assert (= (and d!2065821 (not c!1211725)) b!6584958))

(assert (= (and b!6584958 c!1211721) b!6584959))

(assert (= (and b!6584958 (not c!1211721)) b!6584952))

(assert (= (and b!6584952 res!2701177) b!6584960))

(assert (= (and b!6584952 c!1211723) b!6584951))

(assert (= (and b!6584952 (not c!1211723)) b!6584953))

(assert (= (and b!6584953 c!1211722) b!6584957))

(assert (= (and b!6584953 (not c!1211722)) b!6584954))

(assert (= (and b!6584954 c!1211724) b!6584961))

(assert (= (and b!6584954 (not c!1211724)) b!6584956))

(assert (= (or b!6584957 b!6584961) bm!574459))

(assert (= (or b!6584957 b!6584961) bm!574460))

(assert (= (or b!6584951 bm!574459) bm!574455))

(assert (= (or b!6584951 bm!574460) bm!574458))

(assert (= (or b!6584959 bm!574458) bm!574457))

(assert (= (or b!6584959 b!6584951) bm!574456))

(declare-fun m!7364142 () Bool)

(assert (=> b!6584960 m!7364142))

(declare-fun m!7364144 () Bool)

(assert (=> b!6584955 m!7364144))

(declare-fun m!7364146 () Bool)

(assert (=> bm!574456 m!7364146))

(declare-fun m!7364148 () Bool)

(assert (=> bm!574457 m!7364148))

(declare-fun m!7364150 () Bool)

(assert (=> bm!574455 m!7364150))

(assert (=> bm!574247 d!2065821))

(declare-fun bs!1684900 () Bool)

(declare-fun d!2065823 () Bool)

(assert (= bs!1684900 (and d!2065823 b!6584589)))

(declare-fun lambda!366855 () Int)

(assert (=> bs!1684900 (not (= lambda!366855 lambda!366819))))

(declare-fun bs!1684901 () Bool)

(assert (= bs!1684901 (and d!2065823 d!2065777)))

(assert (=> bs!1684901 (= lambda!366855 lambda!366848)))

(declare-fun bs!1684902 () Bool)

(assert (= bs!1684902 (and d!2065823 d!2065659)))

(assert (=> bs!1684902 (= lambda!366855 lambda!366811)))

(declare-fun bs!1684903 () Bool)

(assert (= bs!1684903 (and d!2065823 d!2065693)))

(assert (=> bs!1684903 (not (= lambda!366855 lambda!366817))))

(declare-fun bs!1684904 () Bool)

(assert (= bs!1684904 (and d!2065823 b!6584138)))

(assert (=> bs!1684904 (not (= lambda!366855 lambda!366791))))

(declare-fun bs!1684905 () Bool)

(assert (= bs!1684905 (and d!2065823 b!6584140)))

(assert (=> bs!1684905 (not (= lambda!366855 lambda!366792))))

(declare-fun bs!1684906 () Bool)

(assert (= bs!1684906 (and d!2065823 b!6584143)))

(assert (=> bs!1684906 (not (= lambda!366855 lambda!366794))))

(declare-fun bs!1684907 () Bool)

(assert (= bs!1684907 (and d!2065823 b!6584591)))

(assert (=> bs!1684907 (not (= lambda!366855 lambda!366820))))

(declare-fun bs!1684908 () Bool)

(assert (= bs!1684908 (and d!2065823 b!6584145)))

(assert (=> bs!1684908 (not (= lambda!366855 lambda!366795))))

(assert (=> d!2065823 (= (nullableZipper!2200 ((_ map or) lt!2410460 lt!2410487)) (exists!2647 ((_ map or) lt!2410460 lt!2410487) lambda!366855))))

(declare-fun bs!1684909 () Bool)

(assert (= bs!1684909 d!2065823))

(declare-fun m!7364152 () Bool)

(assert (=> bs!1684909 m!7364152))

(assert (=> b!6584092 d!2065823))

(declare-fun bs!1684910 () Bool)

(declare-fun b!6584962 () Bool)

(assert (= bs!1684910 (and b!6584962 d!2065737)))

(declare-fun lambda!366856 () Int)

(assert (=> bs!1684910 (not (= lambda!366856 lambda!366841))))

(declare-fun bs!1684911 () Bool)

(assert (= bs!1684911 (and b!6584962 d!2065535)))

(assert (=> bs!1684911 (not (= lambda!366856 lambda!366800))))

(declare-fun bs!1684912 () Bool)

(assert (= bs!1684912 (and b!6584962 b!6583175)))

(assert (=> bs!1684912 (not (= lambda!366856 lambda!366699))))

(declare-fun bs!1684913 () Bool)

(assert (= bs!1684913 (and b!6584962 b!6583623)))

(assert (=> bs!1684913 (= (and (= (reg!16784 (regOne!33423 lt!2410464)) (reg!16784 lt!2410464)) (= (regOne!33423 lt!2410464) lt!2410464)) (= lambda!366856 lambda!366746))))

(declare-fun bs!1684914 () Bool)

(assert (= bs!1684914 (and b!6584962 b!6584477)))

(assert (=> bs!1684914 (not (= lambda!366856 lambda!366807))))

(declare-fun bs!1684915 () Bool)

(assert (= bs!1684915 (and b!6584962 d!2065397)))

(assert (=> bs!1684915 (not (= lambda!366856 lambda!366768))))

(declare-fun bs!1684916 () Bool)

(assert (= bs!1684916 (and b!6584962 b!6584115)))

(assert (=> bs!1684916 (not (= lambda!366856 lambda!366782))))

(declare-fun bs!1684917 () Bool)

(assert (= bs!1684917 (and b!6584962 d!2065395)))

(assert (=> bs!1684917 (not (= lambda!366856 lambda!366763))))

(assert (=> bs!1684915 (not (= lambda!366856 lambda!366769))))

(assert (=> bs!1684912 (not (= lambda!366856 lambda!366700))))

(assert (=> bs!1684910 (not (= lambda!366856 lambda!366840))))

(declare-fun bs!1684918 () Bool)

(assert (= bs!1684918 (and b!6584962 b!6584469)))

(assert (=> bs!1684918 (= (and (= (reg!16784 (regOne!33423 lt!2410464)) (reg!16784 (regOne!33423 r!7292))) (= (regOne!33423 lt!2410464) (regOne!33423 r!7292))) (= lambda!366856 lambda!366806))))

(declare-fun bs!1684919 () Bool)

(assert (= bs!1684919 (and b!6584962 b!6583631)))

(assert (=> bs!1684919 (not (= lambda!366856 lambda!366747))))

(declare-fun bs!1684920 () Bool)

(assert (= bs!1684920 (and b!6584962 b!6584107)))

(assert (=> bs!1684920 (= (and (= (reg!16784 (regOne!33423 lt!2410464)) (reg!16784 r!7292)) (= (regOne!33423 lt!2410464) r!7292)) (= lambda!366856 lambda!366781))))

(assert (=> b!6584962 true))

(assert (=> b!6584962 true))

(declare-fun bs!1684921 () Bool)

(declare-fun b!6584970 () Bool)

(assert (= bs!1684921 (and b!6584970 d!2065737)))

(declare-fun lambda!366861 () Int)

(assert (=> bs!1684921 (= (and (= (regOne!33422 (regOne!33423 lt!2410464)) (regOne!33422 r!7292)) (= (regTwo!33422 (regOne!33423 lt!2410464)) (regTwo!33422 r!7292))) (= lambda!366861 lambda!366841))))

(declare-fun bs!1684922 () Bool)

(assert (= bs!1684922 (and b!6584970 d!2065535)))

(assert (=> bs!1684922 (not (= lambda!366861 lambda!366800))))

(declare-fun bs!1684923 () Bool)

(assert (= bs!1684923 (and b!6584970 b!6583175)))

(assert (=> bs!1684923 (not (= lambda!366861 lambda!366699))))

(declare-fun bs!1684924 () Bool)

(assert (= bs!1684924 (and b!6584970 b!6584477)))

(assert (=> bs!1684924 (= (and (= (regOne!33422 (regOne!33423 lt!2410464)) (regOne!33422 (regOne!33423 r!7292))) (= (regTwo!33422 (regOne!33423 lt!2410464)) (regTwo!33422 (regOne!33423 r!7292)))) (= lambda!366861 lambda!366807))))

(declare-fun bs!1684925 () Bool)

(assert (= bs!1684925 (and b!6584970 d!2065397)))

(assert (=> bs!1684925 (not (= lambda!366861 lambda!366768))))

(declare-fun bs!1684926 () Bool)

(assert (= bs!1684926 (and b!6584970 b!6584115)))

(assert (=> bs!1684926 (= (and (= (regOne!33422 (regOne!33423 lt!2410464)) (regOne!33422 r!7292)) (= (regTwo!33422 (regOne!33423 lt!2410464)) (regTwo!33422 r!7292))) (= lambda!366861 lambda!366782))))

(declare-fun bs!1684927 () Bool)

(assert (= bs!1684927 (and b!6584970 d!2065395)))

(assert (=> bs!1684927 (not (= lambda!366861 lambda!366763))))

(assert (=> bs!1684925 (= (and (= (regOne!33422 (regOne!33423 lt!2410464)) (regOne!33422 r!7292)) (= (regTwo!33422 (regOne!33423 lt!2410464)) (regTwo!33422 r!7292))) (= lambda!366861 lambda!366769))))

(assert (=> bs!1684923 (= (and (= (regOne!33422 (regOne!33423 lt!2410464)) (regOne!33422 r!7292)) (= (regTwo!33422 (regOne!33423 lt!2410464)) (regTwo!33422 r!7292))) (= lambda!366861 lambda!366700))))

(declare-fun bs!1684928 () Bool)

(assert (= bs!1684928 (and b!6584970 b!6583623)))

(assert (=> bs!1684928 (not (= lambda!366861 lambda!366746))))

(declare-fun bs!1684929 () Bool)

(assert (= bs!1684929 (and b!6584970 b!6584962)))

(assert (=> bs!1684929 (not (= lambda!366861 lambda!366856))))

(assert (=> bs!1684921 (not (= lambda!366861 lambda!366840))))

(declare-fun bs!1684930 () Bool)

(assert (= bs!1684930 (and b!6584970 b!6584469)))

(assert (=> bs!1684930 (not (= lambda!366861 lambda!366806))))

(declare-fun bs!1684931 () Bool)

(assert (= bs!1684931 (and b!6584970 b!6583631)))

(assert (=> bs!1684931 (= (and (= (regOne!33422 (regOne!33423 lt!2410464)) (regOne!33422 lt!2410464)) (= (regTwo!33422 (regOne!33423 lt!2410464)) (regTwo!33422 lt!2410464))) (= lambda!366861 lambda!366747))))

(declare-fun bs!1684932 () Bool)

(assert (= bs!1684932 (and b!6584970 b!6584107)))

(assert (=> bs!1684932 (not (= lambda!366861 lambda!366781))))

(assert (=> b!6584970 true))

(assert (=> b!6584970 true))

(declare-fun e!3985189 () Bool)

(declare-fun call!574466 () Bool)

(assert (=> b!6584962 (= e!3985189 call!574466)))

(declare-fun b!6584963 () Bool)

(declare-fun res!2701180 () Bool)

(assert (=> b!6584963 (=> res!2701180 e!3985189)))

(declare-fun call!574467 () Bool)

(assert (=> b!6584963 (= res!2701180 call!574467)))

(declare-fun e!3985194 () Bool)

(assert (=> b!6584963 (= e!3985194 e!3985189)))

(declare-fun b!6584964 () Bool)

(declare-fun e!3985191 () Bool)

(assert (=> b!6584964 (= e!3985191 call!574467)))

(declare-fun b!6584965 () Bool)

(declare-fun e!3985188 () Bool)

(assert (=> b!6584965 (= e!3985188 (= s!2326 (Cons!65541 (c!1211172 (regOne!33423 lt!2410464)) Nil!65541)))))

(declare-fun d!2065825 () Bool)

(declare-fun c!1211727 () Bool)

(assert (=> d!2065825 (= c!1211727 ((_ is EmptyExpr!16455) (regOne!33423 lt!2410464)))))

(assert (=> d!2065825 (= (matchRSpec!3556 (regOne!33423 lt!2410464) s!2326) e!3985191)))

(declare-fun bm!574461 () Bool)

(assert (=> bm!574461 (= call!574467 (isEmpty!37801 s!2326))))

(declare-fun b!6584966 () Bool)

(declare-fun e!3985193 () Bool)

(declare-fun e!3985190 () Bool)

(assert (=> b!6584966 (= e!3985193 e!3985190)))

(declare-fun res!2701178 () Bool)

(assert (=> b!6584966 (= res!2701178 (matchRSpec!3556 (regOne!33423 (regOne!33423 lt!2410464)) s!2326))))

(assert (=> b!6584966 (=> res!2701178 e!3985190)))

(declare-fun b!6584967 () Bool)

(declare-fun c!1211728 () Bool)

(assert (=> b!6584967 (= c!1211728 ((_ is Union!16455) (regOne!33423 lt!2410464)))))

(assert (=> b!6584967 (= e!3985188 e!3985193)))

(declare-fun b!6584968 () Bool)

(declare-fun c!1211726 () Bool)

(assert (=> b!6584968 (= c!1211726 ((_ is ElementMatch!16455) (regOne!33423 lt!2410464)))))

(declare-fun e!3985192 () Bool)

(assert (=> b!6584968 (= e!3985192 e!3985188)))

(declare-fun b!6584969 () Bool)

(assert (=> b!6584969 (= e!3985190 (matchRSpec!3556 (regTwo!33423 (regOne!33423 lt!2410464)) s!2326))))

(assert (=> b!6584970 (= e!3985194 call!574466)))

(declare-fun b!6584971 () Bool)

(assert (=> b!6584971 (= e!3985193 e!3985194)))

(declare-fun c!1211729 () Bool)

(assert (=> b!6584971 (= c!1211729 ((_ is Star!16455) (regOne!33423 lt!2410464)))))

(declare-fun b!6584972 () Bool)

(assert (=> b!6584972 (= e!3985191 e!3985192)))

(declare-fun res!2701179 () Bool)

(assert (=> b!6584972 (= res!2701179 (not ((_ is EmptyLang!16455) (regOne!33423 lt!2410464))))))

(assert (=> b!6584972 (=> (not res!2701179) (not e!3985192))))

(declare-fun bm!574462 () Bool)

(assert (=> bm!574462 (= call!574466 (Exists!3525 (ite c!1211729 lambda!366856 lambda!366861)))))

(assert (= (and d!2065825 c!1211727) b!6584964))

(assert (= (and d!2065825 (not c!1211727)) b!6584972))

(assert (= (and b!6584972 res!2701179) b!6584968))

(assert (= (and b!6584968 c!1211726) b!6584965))

(assert (= (and b!6584968 (not c!1211726)) b!6584967))

(assert (= (and b!6584967 c!1211728) b!6584966))

(assert (= (and b!6584967 (not c!1211728)) b!6584971))

(assert (= (and b!6584966 (not res!2701178)) b!6584969))

(assert (= (and b!6584971 c!1211729) b!6584963))

(assert (= (and b!6584971 (not c!1211729)) b!6584970))

(assert (= (and b!6584963 (not res!2701180)) b!6584962))

(assert (= (or b!6584962 b!6584970) bm!574462))

(assert (= (or b!6584964 b!6584963) bm!574461))

(assert (=> bm!574461 m!7362824))

(declare-fun m!7364154 () Bool)

(assert (=> b!6584966 m!7364154))

(declare-fun m!7364156 () Bool)

(assert (=> b!6584969 m!7364156))

(declare-fun m!7364158 () Bool)

(assert (=> bm!574462 m!7364158))

(assert (=> b!6583627 d!2065825))

(declare-fun d!2065827 () Bool)

(assert (=> d!2065827 (= (nullable!6448 (h!71988 (exprs!6339 lt!2410469))) (nullableFct!2373 (h!71988 (exprs!6339 lt!2410469))))))

(declare-fun bs!1684938 () Bool)

(assert (= bs!1684938 d!2065827))

(declare-fun m!7364160 () Bool)

(assert (=> bs!1684938 m!7364160))

(assert (=> b!6583977 d!2065827))

(declare-fun bs!1684942 () Bool)

(declare-fun d!2065829 () Bool)

(assert (= bs!1684942 (and d!2065829 d!2065261)))

(declare-fun lambda!366863 () Int)

(assert (=> bs!1684942 (= lambda!366863 lambda!366714)))

(declare-fun bs!1684945 () Bool)

(assert (= bs!1684945 (and d!2065829 d!2065665)))

(assert (=> bs!1684945 (= lambda!366863 lambda!366813)))

(declare-fun bs!1684946 () Bool)

(assert (= bs!1684946 (and d!2065829 b!6584625)))

(assert (=> bs!1684946 (not (= lambda!366863 lambda!366830))))

(declare-fun bs!1684947 () Bool)

(assert (= bs!1684947 (and d!2065829 d!2065477)))

(assert (=> bs!1684947 (= lambda!366863 lambda!366783)))

(declare-fun bs!1684948 () Bool)

(assert (= bs!1684948 (and d!2065829 d!2065619)))

(assert (=> bs!1684948 (= lambda!366863 lambda!366804)))

(declare-fun bs!1684951 () Bool)

(assert (= bs!1684951 (and d!2065829 d!2065759)))

(assert (=> bs!1684951 (= lambda!366863 lambda!366847)))

(declare-fun bs!1684953 () Bool)

(assert (= bs!1684953 (and d!2065829 d!2065439)))

(assert (=> bs!1684953 (= lambda!366863 lambda!366779)))

(declare-fun bs!1684955 () Bool)

(assert (= bs!1684955 (and d!2065829 d!2065815)))

(assert (=> bs!1684955 (= lambda!366863 lambda!366853)))

(declare-fun bs!1684957 () Bool)

(assert (= bs!1684957 (and d!2065829 d!2065727)))

(assert (=> bs!1684957 (= lambda!366863 lambda!366833)))

(declare-fun bs!1684959 () Bool)

(assert (= bs!1684959 (and d!2065829 d!2065401)))

(assert (=> bs!1684959 (= lambda!366863 lambda!366770)))

(declare-fun bs!1684961 () Bool)

(assert (= bs!1684961 (and d!2065829 d!2065515)))

(assert (=> bs!1684961 (= lambda!366863 lambda!366796)))

(declare-fun bs!1684962 () Bool)

(assert (= bs!1684962 (and d!2065829 d!2065379)))

(assert (=> bs!1684962 (= lambda!366863 lambda!366760)))

(declare-fun bs!1684964 () Bool)

(assert (= bs!1684964 (and d!2065829 d!2065729)))

(assert (=> bs!1684964 (= lambda!366863 lambda!366835)))

(declare-fun bs!1684966 () Bool)

(assert (= bs!1684966 (and d!2065829 d!2065623)))

(assert (=> bs!1684966 (= lambda!366863 lambda!366805)))

(declare-fun bs!1684968 () Bool)

(assert (= bs!1684968 (and d!2065829 d!2065757)))

(assert (=> bs!1684968 (= lambda!366863 lambda!366845)))

(declare-fun bs!1684970 () Bool)

(assert (= bs!1684970 (and d!2065829 b!6584627)))

(assert (=> bs!1684970 (not (= lambda!366863 lambda!366831))))

(declare-fun bs!1684971 () Bool)

(assert (= bs!1684971 (and d!2065829 d!2065517)))

(assert (=> bs!1684971 (= lambda!366863 lambda!366797)))

(declare-fun bs!1684972 () Bool)

(assert (= bs!1684972 (and d!2065829 d!2065437)))

(assert (=> bs!1684972 (= lambda!366863 lambda!366776)))

(assert (=> d!2065829 (= (inv!84384 setElem!44958) (forall!15634 (exprs!6339 setElem!44958) lambda!366863))))

(declare-fun bs!1684973 () Bool)

(assert (= bs!1684973 d!2065829))

(declare-fun m!7364162 () Bool)

(assert (=> bs!1684973 m!7364162))

(assert (=> setNonEmpty!44958 d!2065829))

(declare-fun c!1211735 () Bool)

(declare-fun bm!574463 () Bool)

(declare-fun call!574470 () Bool)

(assert (=> bm!574463 (= call!574470 (validRegex!8191 (ite c!1211735 (regTwo!33423 (ite c!1211396 (regTwo!33423 r!7292) (regTwo!33422 r!7292))) (regTwo!33422 (ite c!1211396 (regTwo!33423 r!7292) (regTwo!33422 r!7292))))))))

(declare-fun b!6584984 () Bool)

(declare-fun e!3985202 () Bool)

(declare-fun e!3985205 () Bool)

(assert (=> b!6584984 (= e!3985202 e!3985205)))

(declare-fun c!1211734 () Bool)

(assert (=> b!6584984 (= c!1211734 ((_ is Star!16455) (ite c!1211396 (regTwo!33423 r!7292) (regTwo!33422 r!7292))))))

(declare-fun b!6584985 () Bool)

(declare-fun e!3985201 () Bool)

(assert (=> b!6584985 (= e!3985205 e!3985201)))

(assert (=> b!6584985 (= c!1211735 ((_ is Union!16455) (ite c!1211396 (regTwo!33423 r!7292) (regTwo!33422 r!7292))))))

(declare-fun b!6584986 () Bool)

(declare-fun e!3985204 () Bool)

(assert (=> b!6584986 (= e!3985204 call!574470)))

(declare-fun b!6584987 () Bool)

(declare-fun e!3985203 () Bool)

(assert (=> b!6584987 (= e!3985205 e!3985203)))

(declare-fun res!2701185 () Bool)

(assert (=> b!6584987 (= res!2701185 (not (nullable!6448 (reg!16784 (ite c!1211396 (regTwo!33423 r!7292) (regTwo!33422 r!7292))))))))

(assert (=> b!6584987 (=> (not res!2701185) (not e!3985203))))

(declare-fun call!574468 () Bool)

(declare-fun bm!574464 () Bool)

(assert (=> bm!574464 (= call!574468 (validRegex!8191 (ite c!1211734 (reg!16784 (ite c!1211396 (regTwo!33423 r!7292) (regTwo!33422 r!7292))) (ite c!1211735 (regOne!33423 (ite c!1211396 (regTwo!33423 r!7292) (regTwo!33422 r!7292))) (regOne!33422 (ite c!1211396 (regTwo!33423 r!7292) (regTwo!33422 r!7292)))))))))

(declare-fun b!6584989 () Bool)

(declare-fun e!3985207 () Bool)

(declare-fun e!3985206 () Bool)

(assert (=> b!6584989 (= e!3985207 e!3985206)))

(declare-fun res!2701186 () Bool)

(assert (=> b!6584989 (=> (not res!2701186) (not e!3985206))))

(declare-fun call!574469 () Bool)

(assert (=> b!6584989 (= res!2701186 call!574469)))

(declare-fun b!6584990 () Bool)

(declare-fun res!2701188 () Bool)

(assert (=> b!6584990 (=> (not res!2701188) (not e!3985204))))

(assert (=> b!6584990 (= res!2701188 call!574469)))

(assert (=> b!6584990 (= e!3985201 e!3985204)))

(declare-fun bm!574465 () Bool)

(assert (=> bm!574465 (= call!574469 call!574468)))

(declare-fun b!6584991 () Bool)

(declare-fun res!2701184 () Bool)

(assert (=> b!6584991 (=> res!2701184 e!3985207)))

(assert (=> b!6584991 (= res!2701184 (not ((_ is Concat!25300) (ite c!1211396 (regTwo!33423 r!7292) (regTwo!33422 r!7292)))))))

(assert (=> b!6584991 (= e!3985201 e!3985207)))

(declare-fun b!6584992 () Bool)

(assert (=> b!6584992 (= e!3985203 call!574468)))

(declare-fun d!2065831 () Bool)

(declare-fun res!2701187 () Bool)

(assert (=> d!2065831 (=> res!2701187 e!3985202)))

(assert (=> d!2065831 (= res!2701187 ((_ is ElementMatch!16455) (ite c!1211396 (regTwo!33423 r!7292) (regTwo!33422 r!7292))))))

(assert (=> d!2065831 (= (validRegex!8191 (ite c!1211396 (regTwo!33423 r!7292) (regTwo!33422 r!7292))) e!3985202)))

(declare-fun b!6584988 () Bool)

(assert (=> b!6584988 (= e!3985206 call!574470)))

(assert (= (and d!2065831 (not res!2701187)) b!6584984))

(assert (= (and b!6584984 c!1211734) b!6584987))

(assert (= (and b!6584984 (not c!1211734)) b!6584985))

(assert (= (and b!6584987 res!2701185) b!6584992))

(assert (= (and b!6584985 c!1211735) b!6584990))

(assert (= (and b!6584985 (not c!1211735)) b!6584991))

(assert (= (and b!6584990 res!2701188) b!6584986))

(assert (= (and b!6584991 (not res!2701184)) b!6584989))

(assert (= (and b!6584989 res!2701186) b!6584988))

(assert (= (or b!6584986 b!6584988) bm!574463))

(assert (= (or b!6584990 b!6584989) bm!574465))

(assert (= (or b!6584992 bm!574465) bm!574464))

(declare-fun m!7364176 () Bool)

(assert (=> bm!574463 m!7364176))

(declare-fun m!7364178 () Bool)

(assert (=> b!6584987 m!7364178))

(declare-fun m!7364180 () Bool)

(assert (=> bm!574464 m!7364180))

(assert (=> bm!574226 d!2065831))

(declare-fun d!2065835 () Bool)

(assert (=> d!2065835 (= (isEmpty!37797 (tail!12447 (exprs!6339 (h!71990 zl!343)))) ((_ is Nil!65540) (tail!12447 (exprs!6339 (h!71990 zl!343)))))))

(assert (=> b!6583950 d!2065835))

(declare-fun d!2065837 () Bool)

(assert (=> d!2065837 (= (tail!12447 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343))))))

(assert (=> b!6583950 d!2065837))

(declare-fun bs!1684979 () Bool)

(declare-fun d!2065839 () Bool)

(assert (= bs!1684979 (and d!2065839 b!6584589)))

(declare-fun lambda!366867 () Int)

(assert (=> bs!1684979 (not (= lambda!366867 lambda!366819))))

(declare-fun bs!1684980 () Bool)

(assert (= bs!1684980 (and d!2065839 d!2065777)))

(assert (=> bs!1684980 (= lambda!366867 lambda!366848)))

(declare-fun bs!1684982 () Bool)

(assert (= bs!1684982 (and d!2065839 d!2065659)))

(assert (=> bs!1684982 (= lambda!366867 lambda!366811)))

(declare-fun bs!1684983 () Bool)

(assert (= bs!1684983 (and d!2065839 d!2065693)))

(assert (=> bs!1684983 (not (= lambda!366867 lambda!366817))))

(declare-fun bs!1684984 () Bool)

(assert (= bs!1684984 (and d!2065839 d!2065823)))

(assert (=> bs!1684984 (= lambda!366867 lambda!366855)))

(declare-fun bs!1684985 () Bool)

(assert (= bs!1684985 (and d!2065839 b!6584138)))

(assert (=> bs!1684985 (not (= lambda!366867 lambda!366791))))

(declare-fun bs!1684986 () Bool)

(assert (= bs!1684986 (and d!2065839 b!6584140)))

(assert (=> bs!1684986 (not (= lambda!366867 lambda!366792))))

(declare-fun bs!1684988 () Bool)

(assert (= bs!1684988 (and d!2065839 b!6584143)))

(assert (=> bs!1684988 (not (= lambda!366867 lambda!366794))))

(declare-fun bs!1684990 () Bool)

(assert (= bs!1684990 (and d!2065839 b!6584591)))

(assert (=> bs!1684990 (not (= lambda!366867 lambda!366820))))

(declare-fun bs!1684991 () Bool)

(assert (= bs!1684991 (and d!2065839 b!6584145)))

(assert (=> bs!1684991 (not (= lambda!366867 lambda!366795))))

(assert (=> d!2065839 (= (nullableZipper!2200 lt!2410492) (exists!2647 lt!2410492 lambda!366867))))

(declare-fun bs!1684995 () Bool)

(assert (= bs!1684995 d!2065839))

(declare-fun m!7364182 () Bool)

(assert (=> bs!1684995 m!7364182))

(assert (=> b!6584082 d!2065839))

(assert (=> bs!1684532 d!2065447))

(declare-fun d!2065841 () Bool)

(assert (=> d!2065841 (= (maxBigInt!0 (ite c!1211377 call!574219 call!574223) (ite c!1211377 call!574223 call!574219)) (ite (>= (ite c!1211377 call!574219 call!574223) (ite c!1211377 call!574223 call!574219)) (ite c!1211377 call!574219 call!574223) (ite c!1211377 call!574223 call!574219)))))

(assert (=> bm!574215 d!2065841))

(declare-fun bs!1684998 () Bool)

(declare-fun b!6584996 () Bool)

(assert (= bs!1684998 (and b!6584996 d!2065737)))

(declare-fun lambda!366869 () Int)

(assert (=> bs!1684998 (not (= lambda!366869 lambda!366841))))

(declare-fun bs!1684999 () Bool)

(assert (= bs!1684999 (and b!6584996 d!2065535)))

(assert (=> bs!1684999 (not (= lambda!366869 lambda!366800))))

(declare-fun bs!1685000 () Bool)

(assert (= bs!1685000 (and b!6584996 b!6583175)))

(assert (=> bs!1685000 (not (= lambda!366869 lambda!366699))))

(declare-fun bs!1685001 () Bool)

(assert (= bs!1685001 (and b!6584996 b!6584477)))

(assert (=> bs!1685001 (not (= lambda!366869 lambda!366807))))

(declare-fun bs!1685002 () Bool)

(assert (= bs!1685002 (and b!6584996 b!6584115)))

(assert (=> bs!1685002 (not (= lambda!366869 lambda!366782))))

(declare-fun bs!1685003 () Bool)

(assert (= bs!1685003 (and b!6584996 d!2065395)))

(assert (=> bs!1685003 (not (= lambda!366869 lambda!366763))))

(declare-fun bs!1685004 () Bool)

(assert (= bs!1685004 (and b!6584996 d!2065397)))

(assert (=> bs!1685004 (not (= lambda!366869 lambda!366769))))

(assert (=> bs!1685000 (not (= lambda!366869 lambda!366700))))

(declare-fun bs!1685005 () Bool)

(assert (= bs!1685005 (and b!6584996 b!6583623)))

(assert (=> bs!1685005 (= (and (= (reg!16784 (regTwo!33423 r!7292)) (reg!16784 lt!2410464)) (= (regTwo!33423 r!7292) lt!2410464)) (= lambda!366869 lambda!366746))))

(declare-fun bs!1685006 () Bool)

(assert (= bs!1685006 (and b!6584996 b!6584962)))

(assert (=> bs!1685006 (= (and (= (reg!16784 (regTwo!33423 r!7292)) (reg!16784 (regOne!33423 lt!2410464))) (= (regTwo!33423 r!7292) (regOne!33423 lt!2410464))) (= lambda!366869 lambda!366856))))

(declare-fun bs!1685007 () Bool)

(assert (= bs!1685007 (and b!6584996 b!6584970)))

(assert (=> bs!1685007 (not (= lambda!366869 lambda!366861))))

(assert (=> bs!1685004 (not (= lambda!366869 lambda!366768))))

(assert (=> bs!1684998 (not (= lambda!366869 lambda!366840))))

(declare-fun bs!1685008 () Bool)

(assert (= bs!1685008 (and b!6584996 b!6584469)))

(assert (=> bs!1685008 (= (and (= (reg!16784 (regTwo!33423 r!7292)) (reg!16784 (regOne!33423 r!7292))) (= (regTwo!33423 r!7292) (regOne!33423 r!7292))) (= lambda!366869 lambda!366806))))

(declare-fun bs!1685009 () Bool)

(assert (= bs!1685009 (and b!6584996 b!6583631)))

(assert (=> bs!1685009 (not (= lambda!366869 lambda!366747))))

(declare-fun bs!1685010 () Bool)

(assert (= bs!1685010 (and b!6584996 b!6584107)))

(assert (=> bs!1685010 (= (and (= (reg!16784 (regTwo!33423 r!7292)) (reg!16784 r!7292)) (= (regTwo!33423 r!7292) r!7292)) (= lambda!366869 lambda!366781))))

(assert (=> b!6584996 true))

(assert (=> b!6584996 true))

(declare-fun bs!1685011 () Bool)

(declare-fun b!6585004 () Bool)

(assert (= bs!1685011 (and b!6585004 b!6584996)))

(declare-fun lambda!366870 () Int)

(assert (=> bs!1685011 (not (= lambda!366870 lambda!366869))))

(declare-fun bs!1685012 () Bool)

(assert (= bs!1685012 (and b!6585004 d!2065737)))

(assert (=> bs!1685012 (= (and (= (regOne!33422 (regTwo!33423 r!7292)) (regOne!33422 r!7292)) (= (regTwo!33422 (regTwo!33423 r!7292)) (regTwo!33422 r!7292))) (= lambda!366870 lambda!366841))))

(declare-fun bs!1685013 () Bool)

(assert (= bs!1685013 (and b!6585004 d!2065535)))

(assert (=> bs!1685013 (not (= lambda!366870 lambda!366800))))

(declare-fun bs!1685014 () Bool)

(assert (= bs!1685014 (and b!6585004 b!6583175)))

(assert (=> bs!1685014 (not (= lambda!366870 lambda!366699))))

(declare-fun bs!1685015 () Bool)

(assert (= bs!1685015 (and b!6585004 b!6584477)))

(assert (=> bs!1685015 (= (and (= (regOne!33422 (regTwo!33423 r!7292)) (regOne!33422 (regOne!33423 r!7292))) (= (regTwo!33422 (regTwo!33423 r!7292)) (regTwo!33422 (regOne!33423 r!7292)))) (= lambda!366870 lambda!366807))))

(declare-fun bs!1685016 () Bool)

(assert (= bs!1685016 (and b!6585004 b!6584115)))

(assert (=> bs!1685016 (= (and (= (regOne!33422 (regTwo!33423 r!7292)) (regOne!33422 r!7292)) (= (regTwo!33422 (regTwo!33423 r!7292)) (regTwo!33422 r!7292))) (= lambda!366870 lambda!366782))))

(declare-fun bs!1685017 () Bool)

(assert (= bs!1685017 (and b!6585004 d!2065395)))

(assert (=> bs!1685017 (not (= lambda!366870 lambda!366763))))

(declare-fun bs!1685018 () Bool)

(assert (= bs!1685018 (and b!6585004 d!2065397)))

(assert (=> bs!1685018 (= (and (= (regOne!33422 (regTwo!33423 r!7292)) (regOne!33422 r!7292)) (= (regTwo!33422 (regTwo!33423 r!7292)) (regTwo!33422 r!7292))) (= lambda!366870 lambda!366769))))

(assert (=> bs!1685014 (= (and (= (regOne!33422 (regTwo!33423 r!7292)) (regOne!33422 r!7292)) (= (regTwo!33422 (regTwo!33423 r!7292)) (regTwo!33422 r!7292))) (= lambda!366870 lambda!366700))))

(declare-fun bs!1685019 () Bool)

(assert (= bs!1685019 (and b!6585004 b!6583623)))

(assert (=> bs!1685019 (not (= lambda!366870 lambda!366746))))

(declare-fun bs!1685020 () Bool)

(assert (= bs!1685020 (and b!6585004 b!6584962)))

(assert (=> bs!1685020 (not (= lambda!366870 lambda!366856))))

(declare-fun bs!1685021 () Bool)

(assert (= bs!1685021 (and b!6585004 b!6584970)))

(assert (=> bs!1685021 (= (and (= (regOne!33422 (regTwo!33423 r!7292)) (regOne!33422 (regOne!33423 lt!2410464))) (= (regTwo!33422 (regTwo!33423 r!7292)) (regTwo!33422 (regOne!33423 lt!2410464)))) (= lambda!366870 lambda!366861))))

(assert (=> bs!1685018 (not (= lambda!366870 lambda!366768))))

(assert (=> bs!1685012 (not (= lambda!366870 lambda!366840))))

(declare-fun bs!1685022 () Bool)

(assert (= bs!1685022 (and b!6585004 b!6584469)))

(assert (=> bs!1685022 (not (= lambda!366870 lambda!366806))))

(declare-fun bs!1685023 () Bool)

(assert (= bs!1685023 (and b!6585004 b!6583631)))

(assert (=> bs!1685023 (= (and (= (regOne!33422 (regTwo!33423 r!7292)) (regOne!33422 lt!2410464)) (= (regTwo!33422 (regTwo!33423 r!7292)) (regTwo!33422 lt!2410464))) (= lambda!366870 lambda!366747))))

(declare-fun bs!1685024 () Bool)

(assert (= bs!1685024 (and b!6585004 b!6584107)))

(assert (=> bs!1685024 (not (= lambda!366870 lambda!366781))))

(assert (=> b!6585004 true))

(assert (=> b!6585004 true))

(declare-fun e!3985211 () Bool)

(declare-fun call!574471 () Bool)

(assert (=> b!6584996 (= e!3985211 call!574471)))

(declare-fun b!6584997 () Bool)

(declare-fun res!2701192 () Bool)

(assert (=> b!6584997 (=> res!2701192 e!3985211)))

(declare-fun call!574472 () Bool)

(assert (=> b!6584997 (= res!2701192 call!574472)))

(declare-fun e!3985216 () Bool)

(assert (=> b!6584997 (= e!3985216 e!3985211)))

(declare-fun b!6584998 () Bool)

(declare-fun e!3985213 () Bool)

(assert (=> b!6584998 (= e!3985213 call!574472)))

(declare-fun b!6584999 () Bool)

(declare-fun e!3985210 () Bool)

(assert (=> b!6584999 (= e!3985210 (= s!2326 (Cons!65541 (c!1211172 (regTwo!33423 r!7292)) Nil!65541)))))

(declare-fun d!2065843 () Bool)

(declare-fun c!1211738 () Bool)

(assert (=> d!2065843 (= c!1211738 ((_ is EmptyExpr!16455) (regTwo!33423 r!7292)))))

(assert (=> d!2065843 (= (matchRSpec!3556 (regTwo!33423 r!7292) s!2326) e!3985213)))

(declare-fun bm!574466 () Bool)

(assert (=> bm!574466 (= call!574472 (isEmpty!37801 s!2326))))

(declare-fun b!6585000 () Bool)

(declare-fun e!3985215 () Bool)

(declare-fun e!3985212 () Bool)

(assert (=> b!6585000 (= e!3985215 e!3985212)))

(declare-fun res!2701190 () Bool)

(assert (=> b!6585000 (= res!2701190 (matchRSpec!3556 (regOne!33423 (regTwo!33423 r!7292)) s!2326))))

(assert (=> b!6585000 (=> res!2701190 e!3985212)))

(declare-fun b!6585001 () Bool)

(declare-fun c!1211739 () Bool)

(assert (=> b!6585001 (= c!1211739 ((_ is Union!16455) (regTwo!33423 r!7292)))))

(assert (=> b!6585001 (= e!3985210 e!3985215)))

(declare-fun b!6585002 () Bool)

(declare-fun c!1211737 () Bool)

(assert (=> b!6585002 (= c!1211737 ((_ is ElementMatch!16455) (regTwo!33423 r!7292)))))

(declare-fun e!3985214 () Bool)

(assert (=> b!6585002 (= e!3985214 e!3985210)))

(declare-fun b!6585003 () Bool)

(assert (=> b!6585003 (= e!3985212 (matchRSpec!3556 (regTwo!33423 (regTwo!33423 r!7292)) s!2326))))

(assert (=> b!6585004 (= e!3985216 call!574471)))

(declare-fun b!6585005 () Bool)

(assert (=> b!6585005 (= e!3985215 e!3985216)))

(declare-fun c!1211740 () Bool)

(assert (=> b!6585005 (= c!1211740 ((_ is Star!16455) (regTwo!33423 r!7292)))))

(declare-fun b!6585006 () Bool)

(assert (=> b!6585006 (= e!3985213 e!3985214)))

(declare-fun res!2701191 () Bool)

(assert (=> b!6585006 (= res!2701191 (not ((_ is EmptyLang!16455) (regTwo!33423 r!7292))))))

(assert (=> b!6585006 (=> (not res!2701191) (not e!3985214))))

(declare-fun bm!574467 () Bool)

(assert (=> bm!574467 (= call!574471 (Exists!3525 (ite c!1211740 lambda!366869 lambda!366870)))))

(assert (= (and d!2065843 c!1211738) b!6584998))

(assert (= (and d!2065843 (not c!1211738)) b!6585006))

(assert (= (and b!6585006 res!2701191) b!6585002))

(assert (= (and b!6585002 c!1211737) b!6584999))

(assert (= (and b!6585002 (not c!1211737)) b!6585001))

(assert (= (and b!6585001 c!1211739) b!6585000))

(assert (= (and b!6585001 (not c!1211739)) b!6585005))

(assert (= (and b!6585000 (not res!2701190)) b!6585003))

(assert (= (and b!6585005 c!1211740) b!6584997))

(assert (= (and b!6585005 (not c!1211740)) b!6585004))

(assert (= (and b!6584997 (not res!2701192)) b!6584996))

(assert (= (or b!6584996 b!6585004) bm!574467))

(assert (= (or b!6584998 b!6584997) bm!574466))

(assert (=> bm!574466 m!7362824))

(declare-fun m!7364200 () Bool)

(assert (=> b!6585000 m!7364200))

(declare-fun m!7364202 () Bool)

(assert (=> b!6585003 m!7364202))

(declare-fun m!7364204 () Bool)

(assert (=> bm!574467 m!7364204))

(assert (=> b!6584114 d!2065843))

(declare-fun d!2065851 () Bool)

(declare-fun c!1211745 () Bool)

(assert (=> d!2065851 (= c!1211745 ((_ is Nil!65542) lt!2410621))))

(declare-fun e!3985225 () (InoxSet Context!11678))

(assert (=> d!2065851 (= (content!12628 lt!2410621) e!3985225)))

(declare-fun b!6585020 () Bool)

(assert (=> b!6585020 (= e!3985225 ((as const (Array Context!11678 Bool)) false))))

(declare-fun b!6585021 () Bool)

(assert (=> b!6585021 (= e!3985225 ((_ map or) (store ((as const (Array Context!11678 Bool)) false) (h!71990 lt!2410621) true) (content!12628 (t!379314 lt!2410621))))))

(assert (= (and d!2065851 c!1211745) b!6585020))

(assert (= (and d!2065851 (not c!1211745)) b!6585021))

(declare-fun m!7364210 () Bool)

(assert (=> b!6585021 m!7364210))

(declare-fun m!7364212 () Bool)

(assert (=> b!6585021 m!7364212))

(assert (=> b!6584086 d!2065851))

(declare-fun d!2065855 () Bool)

(declare-fun e!3985227 () Bool)

(assert (=> d!2065855 e!3985227))

(declare-fun res!2701200 () Bool)

(assert (=> d!2065855 (=> (not res!2701200) (not e!3985227))))

(declare-fun lt!2410720 () Int)

(assert (=> d!2065855 (= res!2701200 (> lt!2410720 0))))

(declare-fun e!3985229 () Int)

(assert (=> d!2065855 (= lt!2410720 e!3985229)))

(declare-fun c!1211749 () Bool)

(assert (=> d!2065855 (= c!1211749 ((_ is ElementMatch!16455) (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))))))

(assert (=> d!2065855 (= (regexDepth!352 (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))) lt!2410720)))

(declare-fun b!6585022 () Bool)

(declare-fun e!3985230 () Bool)

(assert (=> b!6585022 (= e!3985230 (= lt!2410720 1))))

(declare-fun c!1211751 () Bool)

(declare-fun b!6585023 () Bool)

(assert (=> b!6585023 (= c!1211751 ((_ is Union!16455) (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))))))

(declare-fun e!3985234 () Int)

(declare-fun e!3985226 () Int)

(assert (=> b!6585023 (= e!3985234 e!3985226)))

(declare-fun c!1211746 () Bool)

(declare-fun bm!574468 () Bool)

(declare-fun call!574477 () Int)

(assert (=> bm!574468 (= call!574477 (regexDepth!352 (ite c!1211746 (regOne!33423 (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))) (regTwo!33422 (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))))))))

(declare-fun b!6585024 () Bool)

(declare-fun call!574475 () Int)

(assert (=> b!6585024 (= e!3985230 (> lt!2410720 call!574475))))

(declare-fun b!6585025 () Bool)

(declare-fun e!3985233 () Bool)

(assert (=> b!6585025 (= e!3985227 e!3985233)))

(assert (=> b!6585025 (= c!1211746 ((_ is Union!16455) (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))))))

(declare-fun call!574474 () Int)

(declare-fun bm!574469 () Bool)

(assert (=> bm!574469 (= call!574474 (regexDepth!352 (ite c!1211751 (regOne!33423 (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))) (regTwo!33422 (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))))))))

(declare-fun b!6585026 () Bool)

(declare-fun e!3985235 () Bool)

(assert (=> b!6585026 (= e!3985233 e!3985235)))

(declare-fun res!2701201 () Bool)

(assert (=> b!6585026 (= res!2701201 (> lt!2410720 call!574477))))

(assert (=> b!6585026 (=> (not res!2701201) (not e!3985235))))

(declare-fun b!6585027 () Bool)

(declare-fun e!3985231 () Int)

(assert (=> b!6585027 (= e!3985226 e!3985231)))

(declare-fun c!1211752 () Bool)

(assert (=> b!6585027 (= c!1211752 ((_ is Concat!25300) (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))))))

(declare-fun b!6585028 () Bool)

(assert (=> b!6585028 (= e!3985229 1)))

(declare-fun b!6585029 () Bool)

(declare-fun call!574479 () Int)

(assert (=> b!6585029 (= e!3985235 (> lt!2410720 call!574479))))

(declare-fun b!6585030 () Bool)

(declare-fun e!3985232 () Bool)

(assert (=> b!6585030 (= e!3985232 (> lt!2410720 call!574477))))

(declare-fun call!574476 () Int)

(declare-fun bm!574470 () Bool)

(declare-fun call!574478 () Int)

(assert (=> bm!574470 (= call!574476 (maxBigInt!0 (ite c!1211751 call!574474 call!574478) (ite c!1211751 call!574478 call!574474)))))

(declare-fun b!6585031 () Bool)

(assert (=> b!6585031 (= e!3985231 (+ 1 call!574476))))

(declare-fun b!6585032 () Bool)

(declare-fun e!3985228 () Bool)

(assert (=> b!6585032 (= e!3985233 e!3985228)))

(declare-fun c!1211747 () Bool)

(assert (=> b!6585032 (= c!1211747 ((_ is Concat!25300) (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))))))

(declare-fun call!574473 () Int)

(declare-fun c!1211750 () Bool)

(declare-fun bm!574471 () Bool)

(assert (=> bm!574471 (= call!574473 (regexDepth!352 (ite c!1211750 (reg!16784 (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))) (ite c!1211751 (regTwo!33423 (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))) (regOne!33422 (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292))))))))))

(declare-fun b!6585033 () Bool)

(assert (=> b!6585033 (= e!3985229 e!3985234)))

(assert (=> b!6585033 (= c!1211750 ((_ is Star!16455) (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))))))

(declare-fun b!6585034 () Bool)

(assert (=> b!6585034 (= e!3985226 (+ 1 call!574476))))

(declare-fun b!6585035 () Bool)

(assert (=> b!6585035 (= e!3985234 (+ 1 call!574473))))

(declare-fun bm!574472 () Bool)

(assert (=> bm!574472 (= call!574475 call!574479)))

(declare-fun b!6585036 () Bool)

(assert (=> b!6585036 (= e!3985231 1)))

(declare-fun b!6585037 () Bool)

(declare-fun res!2701199 () Bool)

(assert (=> b!6585037 (=> (not res!2701199) (not e!3985232))))

(assert (=> b!6585037 (= res!2701199 (> lt!2410720 call!574475))))

(assert (=> b!6585037 (= e!3985228 e!3985232)))

(declare-fun b!6585038 () Bool)

(declare-fun c!1211748 () Bool)

(assert (=> b!6585038 (= c!1211748 ((_ is Star!16455) (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))))))

(assert (=> b!6585038 (= e!3985228 e!3985230)))

(declare-fun bm!574473 () Bool)

(assert (=> bm!574473 (= call!574478 call!574473)))

(declare-fun bm!574474 () Bool)

(assert (=> bm!574474 (= call!574479 (regexDepth!352 (ite c!1211746 (regTwo!33423 (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))) (ite c!1211747 (regOne!33422 (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292)))) (reg!16784 (ite c!1211369 (reg!16784 r!7292) (ite c!1211370 (regTwo!33423 r!7292) (regOne!33422 r!7292))))))))))

(assert (= (and d!2065855 c!1211749) b!6585028))

(assert (= (and d!2065855 (not c!1211749)) b!6585033))

(assert (= (and b!6585033 c!1211750) b!6585035))

(assert (= (and b!6585033 (not c!1211750)) b!6585023))

(assert (= (and b!6585023 c!1211751) b!6585034))

(assert (= (and b!6585023 (not c!1211751)) b!6585027))

(assert (= (and b!6585027 c!1211752) b!6585031))

(assert (= (and b!6585027 (not c!1211752)) b!6585036))

(assert (= (or b!6585034 b!6585031) bm!574473))

(assert (= (or b!6585034 b!6585031) bm!574469))

(assert (= (or b!6585034 b!6585031) bm!574470))

(assert (= (or b!6585035 bm!574473) bm!574471))

(assert (= (and d!2065855 res!2701200) b!6585025))

(assert (= (and b!6585025 c!1211746) b!6585026))

(assert (= (and b!6585025 (not c!1211746)) b!6585032))

(assert (= (and b!6585026 res!2701201) b!6585029))

(assert (= (and b!6585032 c!1211747) b!6585037))

(assert (= (and b!6585032 (not c!1211747)) b!6585038))

(assert (= (and b!6585037 res!2701199) b!6585030))

(assert (= (and b!6585038 c!1211748) b!6585024))

(assert (= (and b!6585038 (not c!1211748)) b!6585022))

(assert (= (or b!6585037 b!6585024) bm!574472))

(assert (= (or b!6585029 bm!574472) bm!574474))

(assert (= (or b!6585026 b!6585030) bm!574468))

(declare-fun m!7364214 () Bool)

(assert (=> bm!574470 m!7364214))

(declare-fun m!7364216 () Bool)

(assert (=> bm!574471 m!7364216))

(declare-fun m!7364218 () Bool)

(assert (=> bm!574474 m!7364218))

(declare-fun m!7364220 () Bool)

(assert (=> bm!574468 m!7364220))

(declare-fun m!7364222 () Bool)

(assert (=> bm!574469 m!7364222))

(assert (=> bm!574209 d!2065855))

(declare-fun d!2065857 () Bool)

(assert (=> d!2065857 true))

(declare-fun setRes!44964 () Bool)

(assert (=> d!2065857 setRes!44964))

(declare-fun condSetEmpty!44964 () Bool)

(declare-fun res!2701202 () (InoxSet Context!11678))

(assert (=> d!2065857 (= condSetEmpty!44964 (= res!2701202 ((as const (Array Context!11678 Bool)) false)))))

(assert (=> d!2065857 (= (choose!49162 lt!2410479 lambda!366701) res!2701202)))

(declare-fun setIsEmpty!44964 () Bool)

(assert (=> setIsEmpty!44964 setRes!44964))

(declare-fun setNonEmpty!44964 () Bool)

(declare-fun tp!1816692 () Bool)

(declare-fun e!3985236 () Bool)

(declare-fun setElem!44964 () Context!11678)

(assert (=> setNonEmpty!44964 (= setRes!44964 (and tp!1816692 (inv!84384 setElem!44964) e!3985236))))

(declare-fun setRest!44964 () (InoxSet Context!11678))

(assert (=> setNonEmpty!44964 (= res!2701202 ((_ map or) (store ((as const (Array Context!11678 Bool)) false) setElem!44964 true) setRest!44964))))

(declare-fun b!6585039 () Bool)

(declare-fun tp!1816693 () Bool)

(assert (=> b!6585039 (= e!3985236 tp!1816693)))

(assert (= (and d!2065857 condSetEmpty!44964) setIsEmpty!44964))

(assert (= (and d!2065857 (not condSetEmpty!44964)) setNonEmpty!44964))

(assert (= setNonEmpty!44964 b!6585039))

(declare-fun m!7364224 () Bool)

(assert (=> setNonEmpty!44964 m!7364224))

(assert (=> d!2065445 d!2065857))

(declare-fun b!6585044 () Bool)

(declare-fun e!3985239 () Bool)

(declare-fun e!3985242 () Bool)

(assert (=> b!6585044 (= e!3985239 e!3985242)))

(declare-fun res!2701205 () Bool)

(assert (=> b!6585044 (=> (not res!2701205) (not e!3985242))))

(declare-fun lt!2410723 () Bool)

(assert (=> b!6585044 (= res!2701205 (not lt!2410723))))

(declare-fun b!6585045 () Bool)

(declare-fun res!2701206 () Bool)

(assert (=> b!6585045 (=> res!2701206 e!3985239)))

(declare-fun e!3985243 () Bool)

(assert (=> b!6585045 (= res!2701206 e!3985243)))

(declare-fun res!2701204 () Bool)

(assert (=> b!6585045 (=> (not res!2701204) (not e!3985243))))

(assert (=> b!6585045 (= res!2701204 lt!2410723)))

(declare-fun b!6585046 () Bool)

(declare-fun res!2701210 () Bool)

(declare-fun e!3985241 () Bool)

(assert (=> b!6585046 (=> res!2701210 e!3985241)))

(assert (=> b!6585046 (= res!2701210 (not (isEmpty!37801 (tail!12446 (_1!36737 (get!22764 lt!2410595))))))))

(declare-fun b!6585047 () Bool)

(declare-fun e!3985244 () Bool)

(declare-fun call!574480 () Bool)

(assert (=> b!6585047 (= e!3985244 (= lt!2410723 call!574480))))

(declare-fun b!6585048 () Bool)

(declare-fun res!2701203 () Bool)

(assert (=> b!6585048 (=> (not res!2701203) (not e!3985243))))

(assert (=> b!6585048 (= res!2701203 (not call!574480))))

(declare-fun b!6585049 () Bool)

(declare-fun e!3985240 () Bool)

(assert (=> b!6585049 (= e!3985240 (not lt!2410723))))

(declare-fun b!6585050 () Bool)

(assert (=> b!6585050 (= e!3985241 (not (= (head!13361 (_1!36737 (get!22764 lt!2410595))) (c!1211172 (regOne!33422 r!7292)))))))

(declare-fun b!6585051 () Bool)

(assert (=> b!6585051 (= e!3985244 e!3985240)))

(declare-fun c!1211757 () Bool)

(assert (=> b!6585051 (= c!1211757 ((_ is EmptyLang!16455) (regOne!33422 r!7292)))))

(declare-fun b!6585052 () Bool)

(declare-fun e!3985245 () Bool)

(assert (=> b!6585052 (= e!3985245 (nullable!6448 (regOne!33422 r!7292)))))

(declare-fun b!6585053 () Bool)

(assert (=> b!6585053 (= e!3985242 e!3985241)))

(declare-fun res!2701208 () Bool)

(assert (=> b!6585053 (=> res!2701208 e!3985241)))

(assert (=> b!6585053 (= res!2701208 call!574480)))

(declare-fun b!6585054 () Bool)

(declare-fun res!2701207 () Bool)

(assert (=> b!6585054 (=> (not res!2701207) (not e!3985243))))

(assert (=> b!6585054 (= res!2701207 (isEmpty!37801 (tail!12446 (_1!36737 (get!22764 lt!2410595)))))))

(declare-fun d!2065859 () Bool)

(assert (=> d!2065859 e!3985244))

(declare-fun c!1211755 () Bool)

(assert (=> d!2065859 (= c!1211755 ((_ is EmptyExpr!16455) (regOne!33422 r!7292)))))

(assert (=> d!2065859 (= lt!2410723 e!3985245)))

(declare-fun c!1211756 () Bool)

(assert (=> d!2065859 (= c!1211756 (isEmpty!37801 (_1!36737 (get!22764 lt!2410595))))))

(assert (=> d!2065859 (validRegex!8191 (regOne!33422 r!7292))))

(assert (=> d!2065859 (= (matchR!8638 (regOne!33422 r!7292) (_1!36737 (get!22764 lt!2410595))) lt!2410723)))

(declare-fun bm!574475 () Bool)

(assert (=> bm!574475 (= call!574480 (isEmpty!37801 (_1!36737 (get!22764 lt!2410595))))))

(declare-fun b!6585055 () Bool)

(assert (=> b!6585055 (= e!3985245 (matchR!8638 (derivativeStep!5139 (regOne!33422 r!7292) (head!13361 (_1!36737 (get!22764 lt!2410595)))) (tail!12446 (_1!36737 (get!22764 lt!2410595)))))))

(declare-fun b!6585056 () Bool)

(assert (=> b!6585056 (= e!3985243 (= (head!13361 (_1!36737 (get!22764 lt!2410595))) (c!1211172 (regOne!33422 r!7292))))))

(declare-fun b!6585057 () Bool)

(declare-fun res!2701209 () Bool)

(assert (=> b!6585057 (=> res!2701209 e!3985239)))

(assert (=> b!6585057 (= res!2701209 (not ((_ is ElementMatch!16455) (regOne!33422 r!7292))))))

(assert (=> b!6585057 (= e!3985240 e!3985239)))

(assert (= (and d!2065859 c!1211756) b!6585052))

(assert (= (and d!2065859 (not c!1211756)) b!6585055))

(assert (= (and d!2065859 c!1211755) b!6585047))

(assert (= (and d!2065859 (not c!1211755)) b!6585051))

(assert (= (and b!6585051 c!1211757) b!6585049))

(assert (= (and b!6585051 (not c!1211757)) b!6585057))

(assert (= (and b!6585057 (not res!2701209)) b!6585045))

(assert (= (and b!6585045 res!2701204) b!6585048))

(assert (= (and b!6585048 res!2701203) b!6585054))

(assert (= (and b!6585054 res!2701207) b!6585056))

(assert (= (and b!6585045 (not res!2701206)) b!6585044))

(assert (= (and b!6585044 res!2701205) b!6585053))

(assert (= (and b!6585053 (not res!2701208)) b!6585046))

(assert (= (and b!6585046 (not res!2701210)) b!6585050))

(assert (= (or b!6585047 b!6585048 b!6585053) bm!574475))

(declare-fun m!7364226 () Bool)

(assert (=> bm!574475 m!7364226))

(assert (=> d!2065859 m!7364226))

(assert (=> d!2065859 m!7363098))

(assert (=> b!6585052 m!7363464))

(declare-fun m!7364228 () Bool)

(assert (=> b!6585056 m!7364228))

(assert (=> b!6585055 m!7364228))

(assert (=> b!6585055 m!7364228))

(declare-fun m!7364230 () Bool)

(assert (=> b!6585055 m!7364230))

(declare-fun m!7364232 () Bool)

(assert (=> b!6585055 m!7364232))

(assert (=> b!6585055 m!7364230))

(assert (=> b!6585055 m!7364232))

(declare-fun m!7364234 () Bool)

(assert (=> b!6585055 m!7364234))

(assert (=> b!6585050 m!7364228))

(assert (=> b!6585046 m!7364232))

(assert (=> b!6585046 m!7364232))

(declare-fun m!7364236 () Bool)

(assert (=> b!6585046 m!7364236))

(assert (=> b!6585054 m!7364232))

(assert (=> b!6585054 m!7364232))

(assert (=> b!6585054 m!7364236))

(assert (=> b!6583931 d!2065859))

(assert (=> b!6583931 d!2065503))

(declare-fun d!2065861 () Bool)

(assert (=> d!2065861 (= (isEmpty!37797 (tail!12447 (t!379312 (exprs!6339 (h!71990 zl!343))))) ((_ is Nil!65540) (tail!12447 (t!379312 (exprs!6339 (h!71990 zl!343))))))))

(assert (=> b!6583868 d!2065861))

(declare-fun d!2065863 () Bool)

(assert (=> d!2065863 (= (tail!12447 (t!379312 (exprs!6339 (h!71990 zl!343)))) (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343)))))))

(assert (=> b!6583868 d!2065863))

(declare-fun b!6585062 () Bool)

(declare-fun e!3985250 () (InoxSet Context!11678))

(declare-fun e!3985248 () (InoxSet Context!11678))

(assert (=> b!6585062 (= e!3985250 e!3985248)))

(declare-fun c!1211758 () Bool)

(assert (=> b!6585062 (= c!1211758 ((_ is Cons!65540) (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410465))))))))

(declare-fun b!6585063 () Bool)

(declare-fun call!574481 () (InoxSet Context!11678))

(assert (=> b!6585063 (= e!3985248 call!574481)))

(declare-fun b!6585064 () Bool)

(declare-fun e!3985249 () Bool)

(assert (=> b!6585064 (= e!3985249 (nullable!6448 (h!71988 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410465)))))))))

(declare-fun d!2065865 () Bool)

(declare-fun c!1211759 () Bool)

(assert (=> d!2065865 (= c!1211759 e!3985249)))

(declare-fun res!2701215 () Bool)

(assert (=> d!2065865 (=> (not res!2701215) (not e!3985249))))

(assert (=> d!2065865 (= res!2701215 ((_ is Cons!65540) (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410465))))))))

(assert (=> d!2065865 (= (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 lt!2410465))) (h!71989 s!2326)) e!3985250)))

(declare-fun b!6585065 () Bool)

(assert (=> b!6585065 (= e!3985250 ((_ map or) call!574481 (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410465)))))) (h!71989 s!2326))))))

(declare-fun bm!574476 () Bool)

(assert (=> bm!574476 (= call!574481 (derivationStepZipperDown!1703 (h!71988 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410465))))) (Context!11679 (t!379312 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410465)))))) (h!71989 s!2326)))))

(declare-fun b!6585066 () Bool)

(assert (=> b!6585066 (= e!3985248 ((as const (Array Context!11678 Bool)) false))))

(assert (= (and d!2065865 res!2701215) b!6585064))

(assert (= (and d!2065865 c!1211759) b!6585065))

(assert (= (and d!2065865 (not c!1211759)) b!6585062))

(assert (= (and b!6585062 c!1211758) b!6585063))

(assert (= (and b!6585062 (not c!1211758)) b!6585066))

(assert (= (or b!6585065 b!6585063) bm!574476))

(declare-fun m!7364238 () Bool)

(assert (=> b!6585064 m!7364238))

(declare-fun m!7364240 () Bool)

(assert (=> b!6585065 m!7364240))

(declare-fun m!7364242 () Bool)

(assert (=> bm!574476 m!7364242))

(assert (=> b!6583973 d!2065865))

(declare-fun b!6585071 () Bool)

(declare-fun e!3985255 () (InoxSet Context!11678))

(declare-fun e!3985253 () (InoxSet Context!11678))

(assert (=> b!6585071 (= e!3985255 e!3985253)))

(declare-fun c!1211761 () Bool)

(assert (=> b!6585071 (= c!1211761 ((_ is Cons!65540) (exprs!6339 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))))))))

(declare-fun b!6585072 () Bool)

(declare-fun call!574482 () (InoxSet Context!11678))

(assert (=> b!6585072 (= e!3985253 call!574482)))

(declare-fun b!6585073 () Bool)

(declare-fun e!3985254 () Bool)

(assert (=> b!6585073 (= e!3985254 (nullable!6448 (h!71988 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343))))))))))))))

(declare-fun d!2065867 () Bool)

(declare-fun c!1211762 () Bool)

(assert (=> d!2065867 (= c!1211762 e!3985254)))

(declare-fun res!2701218 () Bool)

(assert (=> d!2065867 (=> (not res!2701218) (not e!3985254))))

(assert (=> d!2065867 (= res!2701218 ((_ is Cons!65540) (exprs!6339 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))))))))

(assert (=> d!2065867 (= (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))) (h!71989 s!2326)) e!3985255)))

(declare-fun b!6585074 () Bool)

(assert (=> b!6585074 (= e!3985255 ((_ map or) call!574482 (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343))))))))))) (h!71989 s!2326))))))

(declare-fun bm!574477 () Bool)

(assert (=> bm!574477 (= call!574482 (derivationStepZipperDown!1703 (h!71988 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343)))))))))) (Context!11679 (t!379312 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (Cons!65540 (h!71988 (exprs!6339 (h!71990 zl!343))) (t!379312 (exprs!6339 (h!71990 zl!343))))))))))) (h!71989 s!2326)))))

(declare-fun b!6585075 () Bool)

(assert (=> b!6585075 (= e!3985253 ((as const (Array Context!11678 Bool)) false))))

(assert (= (and d!2065867 res!2701218) b!6585073))

(assert (= (and d!2065867 c!1211762) b!6585074))

(assert (= (and d!2065867 (not c!1211762)) b!6585071))

(assert (= (and b!6585071 c!1211761) b!6585072))

(assert (= (and b!6585071 (not c!1211761)) b!6585075))

(assert (= (or b!6585074 b!6585072) bm!574477))

(declare-fun m!7364258 () Bool)

(assert (=> b!6585073 m!7364258))

(declare-fun m!7364260 () Bool)

(assert (=> b!6585074 m!7364260))

(declare-fun m!7364262 () Bool)

(assert (=> bm!574477 m!7364262))

(assert (=> b!6584026 d!2065867))

(declare-fun d!2065871 () Bool)

(assert (=> d!2065871 (= (Exists!3525 (ite c!1211473 lambda!366781 lambda!366782)) (choose!49158 (ite c!1211473 lambda!366781 lambda!366782)))))

(declare-fun bs!1685034 () Bool)

(assert (= bs!1685034 d!2065871))

(declare-fun m!7364264 () Bool)

(assert (=> bs!1685034 m!7364264))

(assert (=> bm!574265 d!2065871))

(declare-fun c!1211764 () Bool)

(declare-fun call!574485 () List!65664)

(declare-fun call!574483 () (InoxSet Context!11678))

(declare-fun bm!574479 () Bool)

(assert (=> bm!574479 (= call!574483 (derivationStepZipperDown!1703 (ite c!1211764 (regOne!33423 (h!71988 (exprs!6339 lt!2410472))) (regOne!33422 (h!71988 (exprs!6339 lt!2410472)))) (ite c!1211764 (Context!11679 (t!379312 (exprs!6339 lt!2410472))) (Context!11679 call!574485)) (h!71989 s!2326)))))

(declare-fun b!6585080 () Bool)

(declare-fun e!3985258 () (InoxSet Context!11678))

(declare-fun call!574487 () (InoxSet Context!11678))

(assert (=> b!6585080 (= e!3985258 ((_ map or) call!574483 call!574487))))

(declare-fun call!574488 () List!65664)

(declare-fun call!574484 () (InoxSet Context!11678))

(declare-fun c!1211766 () Bool)

(declare-fun bm!574480 () Bool)

(declare-fun c!1211765 () Bool)

(assert (=> bm!574480 (= call!574484 (derivationStepZipperDown!1703 (ite c!1211764 (regTwo!33423 (h!71988 (exprs!6339 lt!2410472))) (ite c!1211766 (regTwo!33422 (h!71988 (exprs!6339 lt!2410472))) (ite c!1211765 (regOne!33422 (h!71988 (exprs!6339 lt!2410472))) (reg!16784 (h!71988 (exprs!6339 lt!2410472)))))) (ite (or c!1211764 c!1211766) (Context!11679 (t!379312 (exprs!6339 lt!2410472))) (Context!11679 call!574488)) (h!71989 s!2326)))))

(declare-fun b!6585081 () Bool)

(declare-fun e!3985262 () Bool)

(assert (=> b!6585081 (= c!1211766 e!3985262)))

(declare-fun res!2701221 () Bool)

(assert (=> b!6585081 (=> (not res!2701221) (not e!3985262))))

(assert (=> b!6585081 (= res!2701221 ((_ is Concat!25300) (h!71988 (exprs!6339 lt!2410472))))))

(declare-fun e!3985261 () (InoxSet Context!11678))

(assert (=> b!6585081 (= e!3985261 e!3985258)))

(declare-fun b!6585082 () Bool)

(declare-fun e!3985263 () (InoxSet Context!11678))

(assert (=> b!6585082 (= e!3985258 e!3985263)))

(assert (=> b!6585082 (= c!1211765 ((_ is Concat!25300) (h!71988 (exprs!6339 lt!2410472))))))

(declare-fun b!6585083 () Bool)

(declare-fun c!1211767 () Bool)

(assert (=> b!6585083 (= c!1211767 ((_ is Star!16455) (h!71988 (exprs!6339 lt!2410472))))))

(declare-fun e!3985259 () (InoxSet Context!11678))

(assert (=> b!6585083 (= e!3985263 e!3985259)))

(declare-fun b!6585084 () Bool)

(declare-fun e!3985260 () (InoxSet Context!11678))

(assert (=> b!6585084 (= e!3985260 (store ((as const (Array Context!11678 Bool)) false) (Context!11679 (t!379312 (exprs!6339 lt!2410472))) true))))

(declare-fun bm!574481 () Bool)

(assert (=> bm!574481 (= call!574487 call!574484)))

(declare-fun d!2065873 () Bool)

(declare-fun c!1211768 () Bool)

(assert (=> d!2065873 (= c!1211768 (and ((_ is ElementMatch!16455) (h!71988 (exprs!6339 lt!2410472))) (= (c!1211172 (h!71988 (exprs!6339 lt!2410472))) (h!71989 s!2326))))))

(assert (=> d!2065873 (= (derivationStepZipperDown!1703 (h!71988 (exprs!6339 lt!2410472)) (Context!11679 (t!379312 (exprs!6339 lt!2410472))) (h!71989 s!2326)) e!3985260)))

(declare-fun bm!574478 () Bool)

(assert (=> bm!574478 (= call!574485 ($colon$colon!2296 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410472)))) (ite (or c!1211766 c!1211765) (regTwo!33422 (h!71988 (exprs!6339 lt!2410472))) (h!71988 (exprs!6339 lt!2410472)))))))

(declare-fun b!6585085 () Bool)

(assert (=> b!6585085 (= e!3985259 ((as const (Array Context!11678 Bool)) false))))

(declare-fun b!6585086 () Bool)

(declare-fun call!574486 () (InoxSet Context!11678))

(assert (=> b!6585086 (= e!3985263 call!574486)))

(declare-fun bm!574482 () Bool)

(assert (=> bm!574482 (= call!574488 call!574485)))

(declare-fun b!6585087 () Bool)

(assert (=> b!6585087 (= e!3985260 e!3985261)))

(assert (=> b!6585087 (= c!1211764 ((_ is Union!16455) (h!71988 (exprs!6339 lt!2410472))))))

(declare-fun bm!574483 () Bool)

(assert (=> bm!574483 (= call!574486 call!574487)))

(declare-fun b!6585088 () Bool)

(assert (=> b!6585088 (= e!3985261 ((_ map or) call!574483 call!574484))))

(declare-fun b!6585089 () Bool)

(assert (=> b!6585089 (= e!3985262 (nullable!6448 (regOne!33422 (h!71988 (exprs!6339 lt!2410472)))))))

(declare-fun b!6585090 () Bool)

(assert (=> b!6585090 (= e!3985259 call!574486)))

(assert (= (and d!2065873 c!1211768) b!6585084))

(assert (= (and d!2065873 (not c!1211768)) b!6585087))

(assert (= (and b!6585087 c!1211764) b!6585088))

(assert (= (and b!6585087 (not c!1211764)) b!6585081))

(assert (= (and b!6585081 res!2701221) b!6585089))

(assert (= (and b!6585081 c!1211766) b!6585080))

(assert (= (and b!6585081 (not c!1211766)) b!6585082))

(assert (= (and b!6585082 c!1211765) b!6585086))

(assert (= (and b!6585082 (not c!1211765)) b!6585083))

(assert (= (and b!6585083 c!1211767) b!6585090))

(assert (= (and b!6585083 (not c!1211767)) b!6585085))

(assert (= (or b!6585086 b!6585090) bm!574482))

(assert (= (or b!6585086 b!6585090) bm!574483))

(assert (= (or b!6585080 bm!574482) bm!574478))

(assert (= (or b!6585080 bm!574483) bm!574481))

(assert (= (or b!6585088 bm!574481) bm!574480))

(assert (= (or b!6585088 b!6585080) bm!574479))

(declare-fun m!7364280 () Bool)

(assert (=> b!6585089 m!7364280))

(declare-fun m!7364282 () Bool)

(assert (=> b!6585084 m!7364282))

(declare-fun m!7364284 () Bool)

(assert (=> bm!574479 m!7364284))

(declare-fun m!7364286 () Bool)

(assert (=> bm!574480 m!7364286))

(declare-fun m!7364288 () Bool)

(assert (=> bm!574478 m!7364288))

(assert (=> bm!574257 d!2065873))

(declare-fun d!2065877 () Bool)

(assert (=> d!2065877 (= (nullable!6448 (reg!16784 r!7292)) (nullableFct!2373 (reg!16784 r!7292)))))

(declare-fun bs!1685035 () Bool)

(assert (= bs!1685035 d!2065877))

(declare-fun m!7364290 () Bool)

(assert (=> bs!1685035 m!7364290))

(assert (=> b!6583899 d!2065877))

(declare-fun bs!1685036 () Bool)

(declare-fun d!2065879 () Bool)

(assert (= bs!1685036 (and d!2065879 b!6584589)))

(declare-fun lambda!366874 () Int)

(assert (=> bs!1685036 (not (= lambda!366874 lambda!366819))))

(declare-fun bs!1685037 () Bool)

(assert (= bs!1685037 (and d!2065879 d!2065777)))

(assert (=> bs!1685037 (= lambda!366874 lambda!366848)))

(declare-fun bs!1685038 () Bool)

(assert (= bs!1685038 (and d!2065879 d!2065659)))

(assert (=> bs!1685038 (= lambda!366874 lambda!366811)))

(declare-fun bs!1685039 () Bool)

(assert (= bs!1685039 (and d!2065879 d!2065693)))

(assert (=> bs!1685039 (not (= lambda!366874 lambda!366817))))

(declare-fun bs!1685040 () Bool)

(assert (= bs!1685040 (and d!2065879 d!2065823)))

(assert (=> bs!1685040 (= lambda!366874 lambda!366855)))

(declare-fun bs!1685041 () Bool)

(assert (= bs!1685041 (and d!2065879 b!6584138)))

(assert (=> bs!1685041 (not (= lambda!366874 lambda!366791))))

(declare-fun bs!1685042 () Bool)

(assert (= bs!1685042 (and d!2065879 b!6584140)))

(assert (=> bs!1685042 (not (= lambda!366874 lambda!366792))))

(declare-fun bs!1685043 () Bool)

(assert (= bs!1685043 (and d!2065879 d!2065839)))

(assert (=> bs!1685043 (= lambda!366874 lambda!366867)))

(declare-fun bs!1685044 () Bool)

(assert (= bs!1685044 (and d!2065879 b!6584143)))

(assert (=> bs!1685044 (not (= lambda!366874 lambda!366794))))

(declare-fun bs!1685045 () Bool)

(assert (= bs!1685045 (and d!2065879 b!6584591)))

(assert (=> bs!1685045 (not (= lambda!366874 lambda!366820))))

(declare-fun bs!1685046 () Bool)

(assert (= bs!1685046 (and d!2065879 b!6584145)))

(assert (=> bs!1685046 (not (= lambda!366874 lambda!366795))))

(assert (=> d!2065879 (= (nullableZipper!2200 z!1189) (exists!2647 z!1189 lambda!366874))))

(declare-fun bs!1685047 () Bool)

(assert (= bs!1685047 d!2065879))

(declare-fun m!7364292 () Bool)

(assert (=> bs!1685047 m!7364292))

(assert (=> b!6584094 d!2065879))

(declare-fun d!2065881 () Bool)

(assert (=> d!2065881 (= (head!13362 (unfocusZipperList!1876 zl!343)) (h!71988 (unfocusZipperList!1876 zl!343)))))

(assert (=> b!6584059 d!2065881))

(declare-fun bm!574484 () Bool)

(declare-fun call!574491 () Bool)

(declare-fun c!1211770 () Bool)

(assert (=> bm!574484 (= call!574491 (validRegex!8191 (ite c!1211770 (regTwo!33423 lt!2410586) (regTwo!33422 lt!2410586))))))

(declare-fun b!6585091 () Bool)

(declare-fun e!3985265 () Bool)

(declare-fun e!3985268 () Bool)

(assert (=> b!6585091 (= e!3985265 e!3985268)))

(declare-fun c!1211769 () Bool)

(assert (=> b!6585091 (= c!1211769 ((_ is Star!16455) lt!2410586))))

(declare-fun b!6585092 () Bool)

(declare-fun e!3985264 () Bool)

(assert (=> b!6585092 (= e!3985268 e!3985264)))

(assert (=> b!6585092 (= c!1211770 ((_ is Union!16455) lt!2410586))))

(declare-fun b!6585093 () Bool)

(declare-fun e!3985267 () Bool)

(assert (=> b!6585093 (= e!3985267 call!574491)))

(declare-fun b!6585094 () Bool)

(declare-fun e!3985266 () Bool)

(assert (=> b!6585094 (= e!3985268 e!3985266)))

(declare-fun res!2701223 () Bool)

(assert (=> b!6585094 (= res!2701223 (not (nullable!6448 (reg!16784 lt!2410586))))))

(assert (=> b!6585094 (=> (not res!2701223) (not e!3985266))))

(declare-fun bm!574485 () Bool)

(declare-fun call!574489 () Bool)

(assert (=> bm!574485 (= call!574489 (validRegex!8191 (ite c!1211769 (reg!16784 lt!2410586) (ite c!1211770 (regOne!33423 lt!2410586) (regOne!33422 lt!2410586)))))))

(declare-fun b!6585096 () Bool)

(declare-fun e!3985270 () Bool)

(declare-fun e!3985269 () Bool)

(assert (=> b!6585096 (= e!3985270 e!3985269)))

(declare-fun res!2701224 () Bool)

(assert (=> b!6585096 (=> (not res!2701224) (not e!3985269))))

(declare-fun call!574490 () Bool)

(assert (=> b!6585096 (= res!2701224 call!574490)))

(declare-fun b!6585097 () Bool)

(declare-fun res!2701226 () Bool)

(assert (=> b!6585097 (=> (not res!2701226) (not e!3985267))))

(assert (=> b!6585097 (= res!2701226 call!574490)))

(assert (=> b!6585097 (= e!3985264 e!3985267)))

(declare-fun bm!574486 () Bool)

(assert (=> bm!574486 (= call!574490 call!574489)))

(declare-fun b!6585098 () Bool)

(declare-fun res!2701222 () Bool)

(assert (=> b!6585098 (=> res!2701222 e!3985270)))

(assert (=> b!6585098 (= res!2701222 (not ((_ is Concat!25300) lt!2410586)))))

(assert (=> b!6585098 (= e!3985264 e!3985270)))

(declare-fun b!6585099 () Bool)

(assert (=> b!6585099 (= e!3985266 call!574489)))

(declare-fun d!2065883 () Bool)

(declare-fun res!2701225 () Bool)

(assert (=> d!2065883 (=> res!2701225 e!3985265)))

(assert (=> d!2065883 (= res!2701225 ((_ is ElementMatch!16455) lt!2410586))))

(assert (=> d!2065883 (= (validRegex!8191 lt!2410586) e!3985265)))

(declare-fun b!6585095 () Bool)

(assert (=> b!6585095 (= e!3985269 call!574491)))

(assert (= (and d!2065883 (not res!2701225)) b!6585091))

(assert (= (and b!6585091 c!1211769) b!6585094))

(assert (= (and b!6585091 (not c!1211769)) b!6585092))

(assert (= (and b!6585094 res!2701223) b!6585099))

(assert (= (and b!6585092 c!1211770) b!6585097))

(assert (= (and b!6585092 (not c!1211770)) b!6585098))

(assert (= (and b!6585097 res!2701226) b!6585093))

(assert (= (and b!6585098 (not res!2701222)) b!6585096))

(assert (= (and b!6585096 res!2701224) b!6585095))

(assert (= (or b!6585093 b!6585095) bm!574484))

(assert (= (or b!6585097 b!6585096) bm!574486))

(assert (= (or b!6585099 bm!574486) bm!574485))

(declare-fun m!7364294 () Bool)

(assert (=> bm!574484 m!7364294))

(declare-fun m!7364296 () Bool)

(assert (=> b!6585094 m!7364296))

(declare-fun m!7364298 () Bool)

(assert (=> bm!574485 m!7364298))

(assert (=> d!2065379 d!2065883))

(declare-fun d!2065885 () Bool)

(declare-fun res!2701227 () Bool)

(declare-fun e!3985271 () Bool)

(assert (=> d!2065885 (=> res!2701227 e!3985271)))

(assert (=> d!2065885 (= res!2701227 ((_ is Nil!65540) (t!379312 (exprs!6339 (h!71990 zl!343)))))))

(assert (=> d!2065885 (= (forall!15634 (t!379312 (exprs!6339 (h!71990 zl!343))) lambda!366760) e!3985271)))

(declare-fun b!6585100 () Bool)

(declare-fun e!3985272 () Bool)

(assert (=> b!6585100 (= e!3985271 e!3985272)))

(declare-fun res!2701228 () Bool)

(assert (=> b!6585100 (=> (not res!2701228) (not e!3985272))))

(assert (=> b!6585100 (= res!2701228 (dynLambda!26086 lambda!366760 (h!71988 (t!379312 (exprs!6339 (h!71990 zl!343))))))))

(declare-fun b!6585101 () Bool)

(assert (=> b!6585101 (= e!3985272 (forall!15634 (t!379312 (t!379312 (exprs!6339 (h!71990 zl!343)))) lambda!366760))))

(assert (= (and d!2065885 (not res!2701227)) b!6585100))

(assert (= (and b!6585100 res!2701228) b!6585101))

(declare-fun b_lambda!249135 () Bool)

(assert (=> (not b_lambda!249135) (not b!6585100)))

(declare-fun m!7364304 () Bool)

(assert (=> b!6585100 m!7364304))

(declare-fun m!7364306 () Bool)

(assert (=> b!6585101 m!7364306))

(assert (=> d!2065379 d!2065885))

(declare-fun d!2065889 () Bool)

(assert (=> d!2065889 (= (isEmptyExpr!1833 lt!2410603) ((_ is EmptyExpr!16455) lt!2410603))))

(assert (=> b!6583954 d!2065889))

(declare-fun b!6585111 () Bool)

(declare-fun e!3985280 () (InoxSet Context!11678))

(declare-fun e!3985278 () (InoxSet Context!11678))

(assert (=> b!6585111 (= e!3985280 e!3985278)))

(declare-fun c!1211773 () Bool)

(assert (=> b!6585111 (= c!1211773 ((_ is Cons!65540) (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410462))))))))

(declare-fun b!6585112 () Bool)

(declare-fun call!574492 () (InoxSet Context!11678))

(assert (=> b!6585112 (= e!3985278 call!574492)))

(declare-fun b!6585113 () Bool)

(declare-fun e!3985279 () Bool)

(assert (=> b!6585113 (= e!3985279 (nullable!6448 (h!71988 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410462)))))))))

(declare-fun d!2065891 () Bool)

(declare-fun c!1211774 () Bool)

(assert (=> d!2065891 (= c!1211774 e!3985279)))

(declare-fun res!2701234 () Bool)

(assert (=> d!2065891 (=> (not res!2701234) (not e!3985279))))

(assert (=> d!2065891 (= res!2701234 ((_ is Cons!65540) (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410462))))))))

(assert (=> d!2065891 (= (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 lt!2410462))) (h!71989 s!2326)) e!3985280)))

(declare-fun b!6585114 () Bool)

(assert (=> b!6585114 (= e!3985280 ((_ map or) call!574492 (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410462)))))) (h!71989 s!2326))))))

(declare-fun bm!574487 () Bool)

(assert (=> bm!574487 (= call!574492 (derivationStepZipperDown!1703 (h!71988 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410462))))) (Context!11679 (t!379312 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410462)))))) (h!71989 s!2326)))))

(declare-fun b!6585115 () Bool)

(assert (=> b!6585115 (= e!3985278 ((as const (Array Context!11678 Bool)) false))))

(assert (= (and d!2065891 res!2701234) b!6585113))

(assert (= (and d!2065891 c!1211774) b!6585114))

(assert (= (and d!2065891 (not c!1211774)) b!6585111))

(assert (= (and b!6585111 c!1211773) b!6585112))

(assert (= (and b!6585111 (not c!1211773)) b!6585115))

(assert (= (or b!6585114 b!6585112) bm!574487))

(declare-fun m!7364308 () Bool)

(assert (=> b!6585113 m!7364308))

(declare-fun m!7364310 () Bool)

(assert (=> b!6585114 m!7364310))

(declare-fun m!7364312 () Bool)

(assert (=> bm!574487 m!7364312))

(assert (=> b!6584021 d!2065891))

(declare-fun b!6585116 () Bool)

(declare-fun e!3985281 () Bool)

(declare-fun e!3985284 () Bool)

(assert (=> b!6585116 (= e!3985281 e!3985284)))

(declare-fun res!2701237 () Bool)

(assert (=> b!6585116 (=> (not res!2701237) (not e!3985284))))

(declare-fun lt!2410732 () Bool)

(assert (=> b!6585116 (= res!2701237 (not lt!2410732))))

(declare-fun b!6585117 () Bool)

(declare-fun res!2701238 () Bool)

(assert (=> b!6585117 (=> res!2701238 e!3985281)))

(declare-fun e!3985285 () Bool)

(assert (=> b!6585117 (= res!2701238 e!3985285)))

(declare-fun res!2701236 () Bool)

(assert (=> b!6585117 (=> (not res!2701236) (not e!3985285))))

(assert (=> b!6585117 (= res!2701236 lt!2410732)))

(declare-fun b!6585118 () Bool)

(declare-fun res!2701242 () Bool)

(declare-fun e!3985283 () Bool)

(assert (=> b!6585118 (=> res!2701242 e!3985283)))

(assert (=> b!6585118 (= res!2701242 (not (isEmpty!37801 (tail!12446 (_2!36737 (get!22764 lt!2410595))))))))

(declare-fun b!6585119 () Bool)

(declare-fun e!3985286 () Bool)

(declare-fun call!574493 () Bool)

(assert (=> b!6585119 (= e!3985286 (= lt!2410732 call!574493))))

(declare-fun b!6585120 () Bool)

(declare-fun res!2701235 () Bool)

(assert (=> b!6585120 (=> (not res!2701235) (not e!3985285))))

(assert (=> b!6585120 (= res!2701235 (not call!574493))))

(declare-fun b!6585121 () Bool)

(declare-fun e!3985282 () Bool)

(assert (=> b!6585121 (= e!3985282 (not lt!2410732))))

(declare-fun b!6585122 () Bool)

(assert (=> b!6585122 (= e!3985283 (not (= (head!13361 (_2!36737 (get!22764 lt!2410595))) (c!1211172 (regTwo!33422 r!7292)))))))

(declare-fun b!6585123 () Bool)

(assert (=> b!6585123 (= e!3985286 e!3985282)))

(declare-fun c!1211777 () Bool)

(assert (=> b!6585123 (= c!1211777 ((_ is EmptyLang!16455) (regTwo!33422 r!7292)))))

(declare-fun b!6585124 () Bool)

(declare-fun e!3985287 () Bool)

(assert (=> b!6585124 (= e!3985287 (nullable!6448 (regTwo!33422 r!7292)))))

(declare-fun b!6585125 () Bool)

(assert (=> b!6585125 (= e!3985284 e!3985283)))

(declare-fun res!2701240 () Bool)

(assert (=> b!6585125 (=> res!2701240 e!3985283)))

(assert (=> b!6585125 (= res!2701240 call!574493)))

(declare-fun b!6585126 () Bool)

(declare-fun res!2701239 () Bool)

(assert (=> b!6585126 (=> (not res!2701239) (not e!3985285))))

(assert (=> b!6585126 (= res!2701239 (isEmpty!37801 (tail!12446 (_2!36737 (get!22764 lt!2410595)))))))

(declare-fun d!2065893 () Bool)

(assert (=> d!2065893 e!3985286))

(declare-fun c!1211775 () Bool)

(assert (=> d!2065893 (= c!1211775 ((_ is EmptyExpr!16455) (regTwo!33422 r!7292)))))

(assert (=> d!2065893 (= lt!2410732 e!3985287)))

(declare-fun c!1211776 () Bool)

(assert (=> d!2065893 (= c!1211776 (isEmpty!37801 (_2!36737 (get!22764 lt!2410595))))))

(assert (=> d!2065893 (validRegex!8191 (regTwo!33422 r!7292))))

(assert (=> d!2065893 (= (matchR!8638 (regTwo!33422 r!7292) (_2!36737 (get!22764 lt!2410595))) lt!2410732)))

(declare-fun bm!574488 () Bool)

(assert (=> bm!574488 (= call!574493 (isEmpty!37801 (_2!36737 (get!22764 lt!2410595))))))

(declare-fun b!6585127 () Bool)

(assert (=> b!6585127 (= e!3985287 (matchR!8638 (derivativeStep!5139 (regTwo!33422 r!7292) (head!13361 (_2!36737 (get!22764 lt!2410595)))) (tail!12446 (_2!36737 (get!22764 lt!2410595)))))))

(declare-fun b!6585128 () Bool)

(assert (=> b!6585128 (= e!3985285 (= (head!13361 (_2!36737 (get!22764 lt!2410595))) (c!1211172 (regTwo!33422 r!7292))))))

(declare-fun b!6585129 () Bool)

(declare-fun res!2701241 () Bool)

(assert (=> b!6585129 (=> res!2701241 e!3985281)))

(assert (=> b!6585129 (= res!2701241 (not ((_ is ElementMatch!16455) (regTwo!33422 r!7292))))))

(assert (=> b!6585129 (= e!3985282 e!3985281)))

(assert (= (and d!2065893 c!1211776) b!6585124))

(assert (= (and d!2065893 (not c!1211776)) b!6585127))

(assert (= (and d!2065893 c!1211775) b!6585119))

(assert (= (and d!2065893 (not c!1211775)) b!6585123))

(assert (= (and b!6585123 c!1211777) b!6585121))

(assert (= (and b!6585123 (not c!1211777)) b!6585129))

(assert (= (and b!6585129 (not res!2701241)) b!6585117))

(assert (= (and b!6585117 res!2701236) b!6585120))

(assert (= (and b!6585120 res!2701235) b!6585126))

(assert (= (and b!6585126 res!2701239) b!6585128))

(assert (= (and b!6585117 (not res!2701238)) b!6585116))

(assert (= (and b!6585116 res!2701237) b!6585125))

(assert (= (and b!6585125 (not res!2701240)) b!6585118))

(assert (= (and b!6585118 (not res!2701242)) b!6585122))

(assert (= (or b!6585119 b!6585120 b!6585125) bm!574488))

(declare-fun m!7364336 () Bool)

(assert (=> bm!574488 m!7364336))

(assert (=> d!2065893 m!7364336))

(assert (=> d!2065893 m!7363590))

(assert (=> b!6585124 m!7363592))

(declare-fun m!7364338 () Bool)

(assert (=> b!6585128 m!7364338))

(assert (=> b!6585127 m!7364338))

(assert (=> b!6585127 m!7364338))

(declare-fun m!7364340 () Bool)

(assert (=> b!6585127 m!7364340))

(declare-fun m!7364342 () Bool)

(assert (=> b!6585127 m!7364342))

(assert (=> b!6585127 m!7364340))

(assert (=> b!6585127 m!7364342))

(declare-fun m!7364344 () Bool)

(assert (=> b!6585127 m!7364344))

(assert (=> b!6585122 m!7364338))

(assert (=> b!6585118 m!7364342))

(assert (=> b!6585118 m!7364342))

(declare-fun m!7364348 () Bool)

(assert (=> b!6585118 m!7364348))

(assert (=> b!6585126 m!7364342))

(assert (=> b!6585126 m!7364342))

(assert (=> b!6585126 m!7364348))

(assert (=> b!6583935 d!2065893))

(assert (=> b!6583935 d!2065503))

(declare-fun d!2065901 () Bool)

(assert (=> d!2065901 (= (isEmptyExpr!1833 lt!2410586) ((_ is EmptyExpr!16455) lt!2410586))))

(assert (=> b!6583872 d!2065901))

(declare-fun d!2065903 () Bool)

(declare-fun res!2701243 () Bool)

(declare-fun e!3985288 () Bool)

(assert (=> d!2065903 (=> res!2701243 e!3985288)))

(assert (=> d!2065903 (= res!2701243 ((_ is Nil!65540) (exprs!6339 setElem!44952)))))

(assert (=> d!2065903 (= (forall!15634 (exprs!6339 setElem!44952) lambda!366783) e!3985288)))

(declare-fun b!6585130 () Bool)

(declare-fun e!3985289 () Bool)

(assert (=> b!6585130 (= e!3985288 e!3985289)))

(declare-fun res!2701244 () Bool)

(assert (=> b!6585130 (=> (not res!2701244) (not e!3985289))))

(assert (=> b!6585130 (= res!2701244 (dynLambda!26086 lambda!366783 (h!71988 (exprs!6339 setElem!44952))))))

(declare-fun b!6585131 () Bool)

(assert (=> b!6585131 (= e!3985289 (forall!15634 (t!379312 (exprs!6339 setElem!44952)) lambda!366783))))

(assert (= (and d!2065903 (not res!2701243)) b!6585130))

(assert (= (and b!6585130 res!2701244) b!6585131))

(declare-fun b_lambda!249139 () Bool)

(assert (=> (not b_lambda!249139) (not b!6585130)))

(declare-fun m!7364350 () Bool)

(assert (=> b!6585130 m!7364350))

(declare-fun m!7364352 () Bool)

(assert (=> b!6585131 m!7364352))

(assert (=> d!2065477 d!2065903))

(declare-fun c!1211780 () Bool)

(declare-fun bm!574493 () Bool)

(declare-fun call!574497 () (InoxSet Context!11678))

(declare-fun call!574499 () List!65664)

(assert (=> bm!574493 (= call!574497 (derivationStepZipperDown!1703 (ite c!1211780 (regOne!33423 (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292))))) (regOne!33422 (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292)))))) (ite c!1211780 (ite c!1211465 lt!2410469 (Context!11679 call!574265)) (Context!11679 call!574499)) (h!71989 s!2326)))))

(declare-fun b!6585141 () Bool)

(declare-fun e!3985297 () (InoxSet Context!11678))

(declare-fun call!574501 () (InoxSet Context!11678))

(assert (=> b!6585141 (= e!3985297 ((_ map or) call!574497 call!574501))))

(declare-fun bm!574494 () Bool)

(declare-fun c!1211781 () Bool)

(declare-fun c!1211782 () Bool)

(declare-fun call!574502 () List!65664)

(declare-fun call!574498 () (InoxSet Context!11678))

(assert (=> bm!574494 (= call!574498 (derivationStepZipperDown!1703 (ite c!1211780 (regTwo!33423 (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292))))) (ite c!1211782 (regTwo!33422 (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292))))) (ite c!1211781 (regOne!33422 (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292))))) (reg!16784 (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292)))))))) (ite (or c!1211780 c!1211782) (ite c!1211465 lt!2410469 (Context!11679 call!574265)) (Context!11679 call!574502)) (h!71989 s!2326)))))

(declare-fun b!6585142 () Bool)

(declare-fun e!3985301 () Bool)

(assert (=> b!6585142 (= c!1211782 e!3985301)))

(declare-fun res!2701250 () Bool)

(assert (=> b!6585142 (=> (not res!2701250) (not e!3985301))))

(assert (=> b!6585142 (= res!2701250 ((_ is Concat!25300) (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292))))))))

(declare-fun e!3985300 () (InoxSet Context!11678))

(assert (=> b!6585142 (= e!3985300 e!3985297)))

(declare-fun b!6585143 () Bool)

(declare-fun e!3985302 () (InoxSet Context!11678))

(assert (=> b!6585143 (= e!3985297 e!3985302)))

(assert (=> b!6585143 (= c!1211781 ((_ is Concat!25300) (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292))))))))

(declare-fun b!6585144 () Bool)

(declare-fun c!1211783 () Bool)

(assert (=> b!6585144 (= c!1211783 ((_ is Star!16455) (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292))))))))

(declare-fun e!3985298 () (InoxSet Context!11678))

(assert (=> b!6585144 (= e!3985302 e!3985298)))

(declare-fun e!3985299 () (InoxSet Context!11678))

(declare-fun b!6585145 () Bool)

(assert (=> b!6585145 (= e!3985299 (store ((as const (Array Context!11678 Bool)) false) (ite c!1211465 lt!2410469 (Context!11679 call!574265)) true))))

(declare-fun bm!574495 () Bool)

(assert (=> bm!574495 (= call!574501 call!574498)))

(declare-fun c!1211784 () Bool)

(declare-fun d!2065907 () Bool)

(assert (=> d!2065907 (= c!1211784 (and ((_ is ElementMatch!16455) (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292))))) (= (c!1211172 (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292))))) (h!71989 s!2326))))))

(assert (=> d!2065907 (= (derivationStepZipperDown!1703 (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292)))) (ite c!1211465 lt!2410469 (Context!11679 call!574265)) (h!71989 s!2326)) e!3985299)))

(declare-fun bm!574492 () Bool)

(assert (=> bm!574492 (= call!574499 ($colon$colon!2296 (exprs!6339 (ite c!1211465 lt!2410469 (Context!11679 call!574265))) (ite (or c!1211782 c!1211781) (regTwo!33422 (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292))))) (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292)))))))))

(declare-fun b!6585146 () Bool)

(assert (=> b!6585146 (= e!3985298 ((as const (Array Context!11678 Bool)) false))))

(declare-fun b!6585147 () Bool)

(declare-fun call!574500 () (InoxSet Context!11678))

(assert (=> b!6585147 (= e!3985302 call!574500)))

(declare-fun bm!574496 () Bool)

(assert (=> bm!574496 (= call!574502 call!574499)))

(declare-fun b!6585148 () Bool)

(assert (=> b!6585148 (= e!3985299 e!3985300)))

(assert (=> b!6585148 (= c!1211780 ((_ is Union!16455) (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292))))))))

(declare-fun bm!574497 () Bool)

(assert (=> bm!574497 (= call!574500 call!574501)))

(declare-fun b!6585149 () Bool)

(assert (=> b!6585149 (= e!3985300 ((_ map or) call!574497 call!574498))))

(declare-fun b!6585150 () Bool)

(assert (=> b!6585150 (= e!3985301 (nullable!6448 (regOne!33422 (ite c!1211465 (regOne!33423 (reg!16784 (regOne!33422 r!7292))) (regOne!33422 (reg!16784 (regOne!33422 r!7292)))))))))

(declare-fun b!6585151 () Bool)

(assert (=> b!6585151 (= e!3985298 call!574500)))

(assert (= (and d!2065907 c!1211784) b!6585145))

(assert (= (and d!2065907 (not c!1211784)) b!6585148))

(assert (= (and b!6585148 c!1211780) b!6585149))

(assert (= (and b!6585148 (not c!1211780)) b!6585142))

(assert (= (and b!6585142 res!2701250) b!6585150))

(assert (= (and b!6585142 c!1211782) b!6585141))

(assert (= (and b!6585142 (not c!1211782)) b!6585143))

(assert (= (and b!6585143 c!1211781) b!6585147))

(assert (= (and b!6585143 (not c!1211781)) b!6585144))

(assert (= (and b!6585144 c!1211783) b!6585151))

(assert (= (and b!6585144 (not c!1211783)) b!6585146))

(assert (= (or b!6585147 b!6585151) bm!574496))

(assert (= (or b!6585147 b!6585151) bm!574497))

(assert (= (or b!6585141 bm!574496) bm!574492))

(assert (= (or b!6585141 bm!574497) bm!574495))

(assert (= (or b!6585149 bm!574495) bm!574494))

(assert (= (or b!6585149 b!6585141) bm!574493))

(declare-fun m!7364360 () Bool)

(assert (=> b!6585150 m!7364360))

(declare-fun m!7364362 () Bool)

(assert (=> b!6585145 m!7364362))

(declare-fun m!7364364 () Bool)

(assert (=> bm!574493 m!7364364))

(declare-fun m!7364366 () Bool)

(assert (=> bm!574494 m!7364366))

(declare-fun m!7364368 () Bool)

(assert (=> bm!574492 m!7364368))

(assert (=> bm!574259 d!2065907))

(assert (=> b!6584064 d!2065401))

(declare-fun bs!1685051 () Bool)

(declare-fun d!2065911 () Bool)

(assert (= bs!1685051 (and d!2065911 d!2065261)))

(declare-fun lambda!366875 () Int)

(assert (=> bs!1685051 (= lambda!366875 lambda!366714)))

(declare-fun bs!1685052 () Bool)

(assert (= bs!1685052 (and d!2065911 d!2065665)))

(assert (=> bs!1685052 (= lambda!366875 lambda!366813)))

(declare-fun bs!1685053 () Bool)

(assert (= bs!1685053 (and d!2065911 b!6584625)))

(assert (=> bs!1685053 (not (= lambda!366875 lambda!366830))))

(declare-fun bs!1685054 () Bool)

(assert (= bs!1685054 (and d!2065911 d!2065477)))

(assert (=> bs!1685054 (= lambda!366875 lambda!366783)))

(declare-fun bs!1685056 () Bool)

(assert (= bs!1685056 (and d!2065911 d!2065829)))

(assert (=> bs!1685056 (= lambda!366875 lambda!366863)))

(declare-fun bs!1685057 () Bool)

(assert (= bs!1685057 (and d!2065911 d!2065619)))

(assert (=> bs!1685057 (= lambda!366875 lambda!366804)))

(declare-fun bs!1685059 () Bool)

(assert (= bs!1685059 (and d!2065911 d!2065759)))

(assert (=> bs!1685059 (= lambda!366875 lambda!366847)))

(declare-fun bs!1685060 () Bool)

(assert (= bs!1685060 (and d!2065911 d!2065439)))

(assert (=> bs!1685060 (= lambda!366875 lambda!366779)))

(declare-fun bs!1685061 () Bool)

(assert (= bs!1685061 (and d!2065911 d!2065815)))

(assert (=> bs!1685061 (= lambda!366875 lambda!366853)))

(declare-fun bs!1685062 () Bool)

(assert (= bs!1685062 (and d!2065911 d!2065727)))

(assert (=> bs!1685062 (= lambda!366875 lambda!366833)))

(declare-fun bs!1685063 () Bool)

(assert (= bs!1685063 (and d!2065911 d!2065401)))

(assert (=> bs!1685063 (= lambda!366875 lambda!366770)))

(declare-fun bs!1685064 () Bool)

(assert (= bs!1685064 (and d!2065911 d!2065515)))

(assert (=> bs!1685064 (= lambda!366875 lambda!366796)))

(declare-fun bs!1685065 () Bool)

(assert (= bs!1685065 (and d!2065911 d!2065379)))

(assert (=> bs!1685065 (= lambda!366875 lambda!366760)))

(declare-fun bs!1685066 () Bool)

(assert (= bs!1685066 (and d!2065911 d!2065729)))

(assert (=> bs!1685066 (= lambda!366875 lambda!366835)))

(declare-fun bs!1685067 () Bool)

(assert (= bs!1685067 (and d!2065911 d!2065623)))

(assert (=> bs!1685067 (= lambda!366875 lambda!366805)))

(declare-fun bs!1685068 () Bool)

(assert (= bs!1685068 (and d!2065911 d!2065757)))

(assert (=> bs!1685068 (= lambda!366875 lambda!366845)))

(declare-fun bs!1685069 () Bool)

(assert (= bs!1685069 (and d!2065911 b!6584627)))

(assert (=> bs!1685069 (not (= lambda!366875 lambda!366831))))

(declare-fun bs!1685070 () Bool)

(assert (= bs!1685070 (and d!2065911 d!2065517)))

(assert (=> bs!1685070 (= lambda!366875 lambda!366797)))

(declare-fun bs!1685071 () Bool)

(assert (= bs!1685071 (and d!2065911 d!2065437)))

(assert (=> bs!1685071 (= lambda!366875 lambda!366776)))

(declare-fun lt!2410733 () List!65664)

(assert (=> d!2065911 (forall!15634 lt!2410733 lambda!366875)))

(declare-fun e!3985303 () List!65664)

(assert (=> d!2065911 (= lt!2410733 e!3985303)))

(declare-fun c!1211785 () Bool)

(assert (=> d!2065911 (= c!1211785 ((_ is Cons!65542) (t!379314 zl!343)))))

(assert (=> d!2065911 (= (unfocusZipperList!1876 (t!379314 zl!343)) lt!2410733)))

(declare-fun b!6585152 () Bool)

(assert (=> b!6585152 (= e!3985303 (Cons!65540 (generalisedConcat!2052 (exprs!6339 (h!71990 (t!379314 zl!343)))) (unfocusZipperList!1876 (t!379314 (t!379314 zl!343)))))))

(declare-fun b!6585153 () Bool)

(assert (=> b!6585153 (= e!3985303 Nil!65540)))

(assert (= (and d!2065911 c!1211785) b!6585152))

(assert (= (and d!2065911 (not c!1211785)) b!6585153))

(declare-fun m!7364374 () Bool)

(assert (=> d!2065911 m!7364374))

(declare-fun m!7364376 () Bool)

(assert (=> b!6585152 m!7364376))

(declare-fun m!7364378 () Bool)

(assert (=> b!6585152 m!7364378))

(assert (=> b!6584064 d!2065911))

(declare-fun d!2065919 () Bool)

(declare-fun c!1211786 () Bool)

(assert (=> d!2065919 (= c!1211786 ((_ is Nil!65542) lt!2410644))))

(declare-fun e!3985304 () (InoxSet Context!11678))

(assert (=> d!2065919 (= (content!12628 lt!2410644) e!3985304)))

(declare-fun b!6585154 () Bool)

(assert (=> b!6585154 (= e!3985304 ((as const (Array Context!11678 Bool)) false))))

(declare-fun b!6585155 () Bool)

(assert (=> b!6585155 (= e!3985304 ((_ map or) (store ((as const (Array Context!11678 Bool)) false) (h!71990 lt!2410644) true) (content!12628 (t!379314 lt!2410644))))))

(assert (= (and d!2065919 c!1211786) b!6585154))

(assert (= (and d!2065919 (not c!1211786)) b!6585155))

(declare-fun m!7364380 () Bool)

(assert (=> b!6585155 m!7364380))

(declare-fun m!7364382 () Bool)

(assert (=> b!6585155 m!7364382))

(assert (=> b!6584146 d!2065919))

(assert (=> bm!574161 d!2065607))

(declare-fun d!2065921 () Bool)

(assert (=> d!2065921 (= (nullable!6448 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343))))) (nullableFct!2373 (regOne!33422 (h!71988 (exprs!6339 (h!71990 zl!343))))))))

(declare-fun bs!1685072 () Bool)

(assert (= bs!1685072 d!2065921))

(declare-fun m!7364384 () Bool)

(assert (=> bs!1685072 m!7364384))

(assert (=> b!6584011 d!2065921))

(declare-fun d!2065923 () Bool)

(assert (=> d!2065923 (= (isConcat!1356 lt!2410603) ((_ is Concat!25300) lt!2410603))))

(assert (=> b!6583958 d!2065923))

(declare-fun d!2065925 () Bool)

(declare-fun res!2701254 () Bool)

(declare-fun e!3985305 () Bool)

(assert (=> d!2065925 (=> res!2701254 e!3985305)))

(assert (=> d!2065925 (= res!2701254 ((_ is Nil!65542) lt!2410644))))

(assert (=> d!2065925 (= (noDuplicate!2260 lt!2410644) e!3985305)))

(declare-fun b!6585156 () Bool)

(declare-fun e!3985306 () Bool)

(assert (=> b!6585156 (= e!3985305 e!3985306)))

(declare-fun res!2701255 () Bool)

(assert (=> b!6585156 (=> (not res!2701255) (not e!3985306))))

(assert (=> b!6585156 (= res!2701255 (not (contains!20212 (t!379314 lt!2410644) (h!71990 lt!2410644))))))

(declare-fun b!6585157 () Bool)

(assert (=> b!6585157 (= e!3985306 (noDuplicate!2260 (t!379314 lt!2410644)))))

(assert (= (and d!2065925 (not res!2701254)) b!6585156))

(assert (= (and b!6585156 res!2701255) b!6585157))

(declare-fun m!7364386 () Bool)

(assert (=> b!6585156 m!7364386))

(declare-fun m!7364388 () Bool)

(assert (=> b!6585157 m!7364388))

(assert (=> d!2065483 d!2065925))

(declare-fun d!2065927 () Bool)

(declare-fun e!3985309 () Bool)

(assert (=> d!2065927 e!3985309))

(declare-fun res!2701256 () Bool)

(assert (=> d!2065927 (=> (not res!2701256) (not e!3985309))))

(declare-fun res!2701257 () List!65666)

(assert (=> d!2065927 (= res!2701256 (noDuplicate!2260 res!2701257))))

(declare-fun e!3985308 () Bool)

(assert (=> d!2065927 e!3985308))

(assert (=> d!2065927 (= (choose!49163 lt!2410482) res!2701257)))

(declare-fun b!6585159 () Bool)

(declare-fun e!3985307 () Bool)

(declare-fun tp!1816694 () Bool)

(assert (=> b!6585159 (= e!3985307 tp!1816694)))

(declare-fun b!6585158 () Bool)

(declare-fun tp!1816695 () Bool)

(assert (=> b!6585158 (= e!3985308 (and (inv!84384 (h!71990 res!2701257)) e!3985307 tp!1816695))))

(declare-fun b!6585160 () Bool)

(assert (=> b!6585160 (= e!3985309 (= (content!12628 res!2701257) lt!2410482))))

(assert (= b!6585158 b!6585159))

(assert (= (and d!2065927 ((_ is Cons!65542) res!2701257)) b!6585158))

(assert (= (and d!2065927 res!2701256) b!6585160))

(declare-fun m!7364390 () Bool)

(assert (=> d!2065927 m!7364390))

(declare-fun m!7364392 () Bool)

(assert (=> b!6585158 m!7364392))

(declare-fun m!7364394 () Bool)

(assert (=> b!6585160 m!7364394))

(assert (=> d!2065483 d!2065927))

(declare-fun bs!1685073 () Bool)

(declare-fun d!2065929 () Bool)

(assert (= bs!1685073 (and d!2065929 b!6584589)))

(declare-fun lambda!366876 () Int)

(assert (=> bs!1685073 (not (= lambda!366876 lambda!366819))))

(declare-fun bs!1685074 () Bool)

(assert (= bs!1685074 (and d!2065929 d!2065777)))

(assert (=> bs!1685074 (= lambda!366876 lambda!366848)))

(declare-fun bs!1685075 () Bool)

(assert (= bs!1685075 (and d!2065929 d!2065659)))

(assert (=> bs!1685075 (= lambda!366876 lambda!366811)))

(declare-fun bs!1685076 () Bool)

(assert (= bs!1685076 (and d!2065929 d!2065693)))

(assert (=> bs!1685076 (not (= lambda!366876 lambda!366817))))

(declare-fun bs!1685077 () Bool)

(assert (= bs!1685077 (and d!2065929 d!2065823)))

(assert (=> bs!1685077 (= lambda!366876 lambda!366855)))

(declare-fun bs!1685078 () Bool)

(assert (= bs!1685078 (and d!2065929 d!2065879)))

(assert (=> bs!1685078 (= lambda!366876 lambda!366874)))

(declare-fun bs!1685079 () Bool)

(assert (= bs!1685079 (and d!2065929 b!6584138)))

(assert (=> bs!1685079 (not (= lambda!366876 lambda!366791))))

(declare-fun bs!1685080 () Bool)

(assert (= bs!1685080 (and d!2065929 b!6584140)))

(assert (=> bs!1685080 (not (= lambda!366876 lambda!366792))))

(declare-fun bs!1685081 () Bool)

(assert (= bs!1685081 (and d!2065929 d!2065839)))

(assert (=> bs!1685081 (= lambda!366876 lambda!366867)))

(declare-fun bs!1685082 () Bool)

(assert (= bs!1685082 (and d!2065929 b!6584143)))

(assert (=> bs!1685082 (not (= lambda!366876 lambda!366794))))

(declare-fun bs!1685083 () Bool)

(assert (= bs!1685083 (and d!2065929 b!6584591)))

(assert (=> bs!1685083 (not (= lambda!366876 lambda!366820))))

(declare-fun bs!1685084 () Bool)

(assert (= bs!1685084 (and d!2065929 b!6584145)))

(assert (=> bs!1685084 (not (= lambda!366876 lambda!366795))))

(assert (=> d!2065929 (= (nullableZipper!2200 lt!2410487) (exists!2647 lt!2410487 lambda!366876))))

(declare-fun bs!1685085 () Bool)

(assert (= bs!1685085 d!2065929))

(declare-fun m!7364396 () Bool)

(assert (=> bs!1685085 m!7364396))

(assert (=> b!6583909 d!2065929))

(assert (=> d!2065293 d!2065607))

(assert (=> d!2065293 d!2065649))

(declare-fun d!2065931 () Bool)

(assert (=> d!2065931 (= (isEmpty!37797 (t!379312 (unfocusZipperList!1876 zl!343))) ((_ is Nil!65540) (t!379312 (unfocusZipperList!1876 zl!343))))))

(assert (=> b!6584050 d!2065931))

(assert (=> bm!574178 d!2065607))

(declare-fun bm!574498 () Bool)

(declare-fun call!574505 () Bool)

(declare-fun c!1211788 () Bool)

(assert (=> bm!574498 (= call!574505 (validRegex!8191 (ite c!1211788 (regTwo!33423 lt!2410622) (regTwo!33422 lt!2410622))))))

(declare-fun b!6585161 () Bool)

(declare-fun e!3985311 () Bool)

(declare-fun e!3985314 () Bool)

(assert (=> b!6585161 (= e!3985311 e!3985314)))

(declare-fun c!1211787 () Bool)

(assert (=> b!6585161 (= c!1211787 ((_ is Star!16455) lt!2410622))))

(declare-fun b!6585162 () Bool)

(declare-fun e!3985310 () Bool)

(assert (=> b!6585162 (= e!3985314 e!3985310)))

(assert (=> b!6585162 (= c!1211788 ((_ is Union!16455) lt!2410622))))

(declare-fun b!6585163 () Bool)

(declare-fun e!3985313 () Bool)

(assert (=> b!6585163 (= e!3985313 call!574505)))

(declare-fun b!6585164 () Bool)

(declare-fun e!3985312 () Bool)

(assert (=> b!6585164 (= e!3985314 e!3985312)))

(declare-fun res!2701259 () Bool)

(assert (=> b!6585164 (= res!2701259 (not (nullable!6448 (reg!16784 lt!2410622))))))

(assert (=> b!6585164 (=> (not res!2701259) (not e!3985312))))

(declare-fun bm!574499 () Bool)

(declare-fun call!574503 () Bool)

(assert (=> bm!574499 (= call!574503 (validRegex!8191 (ite c!1211787 (reg!16784 lt!2410622) (ite c!1211788 (regOne!33423 lt!2410622) (regOne!33422 lt!2410622)))))))

(declare-fun b!6585166 () Bool)

(declare-fun e!3985316 () Bool)

(declare-fun e!3985315 () Bool)

(assert (=> b!6585166 (= e!3985316 e!3985315)))

(declare-fun res!2701260 () Bool)

(assert (=> b!6585166 (=> (not res!2701260) (not e!3985315))))

(declare-fun call!574504 () Bool)

(assert (=> b!6585166 (= res!2701260 call!574504)))

(declare-fun b!6585167 () Bool)

(declare-fun res!2701262 () Bool)

(assert (=> b!6585167 (=> (not res!2701262) (not e!3985313))))

(assert (=> b!6585167 (= res!2701262 call!574504)))

(assert (=> b!6585167 (= e!3985310 e!3985313)))

(declare-fun bm!574500 () Bool)

(assert (=> bm!574500 (= call!574504 call!574503)))

(declare-fun b!6585168 () Bool)

(declare-fun res!2701258 () Bool)

(assert (=> b!6585168 (=> res!2701258 e!3985316)))

(assert (=> b!6585168 (= res!2701258 (not ((_ is Concat!25300) lt!2410622)))))

(assert (=> b!6585168 (= e!3985310 e!3985316)))

(declare-fun b!6585169 () Bool)

(assert (=> b!6585169 (= e!3985312 call!574503)))

(declare-fun d!2065933 () Bool)

(declare-fun res!2701261 () Bool)

(assert (=> d!2065933 (=> res!2701261 e!3985311)))

(assert (=> d!2065933 (= res!2701261 ((_ is ElementMatch!16455) lt!2410622))))

(assert (=> d!2065933 (= (validRegex!8191 lt!2410622) e!3985311)))

(declare-fun b!6585165 () Bool)

(assert (=> b!6585165 (= e!3985315 call!574505)))

(assert (= (and d!2065933 (not res!2701261)) b!6585161))

(assert (= (and b!6585161 c!1211787) b!6585164))

(assert (= (and b!6585161 (not c!1211787)) b!6585162))

(assert (= (and b!6585164 res!2701259) b!6585169))

(assert (= (and b!6585162 c!1211788) b!6585167))

(assert (= (and b!6585162 (not c!1211788)) b!6585168))

(assert (= (and b!6585167 res!2701262) b!6585163))

(assert (= (and b!6585168 (not res!2701258)) b!6585166))

(assert (= (and b!6585166 res!2701260) b!6585165))

(assert (= (or b!6585163 b!6585165) bm!574498))

(assert (= (or b!6585167 b!6585166) bm!574500))

(assert (= (or b!6585169 bm!574500) bm!574499))

(declare-fun m!7364398 () Bool)

(assert (=> bm!574498 m!7364398))

(declare-fun m!7364400 () Bool)

(assert (=> b!6585164 m!7364400))

(declare-fun m!7364402 () Bool)

(assert (=> bm!574499 m!7364402))

(assert (=> d!2065459 d!2065933))

(assert (=> d!2065459 d!2065437))

(assert (=> d!2065459 d!2065439))

(declare-fun bs!1685086 () Bool)

(declare-fun b!6585174 () Bool)

(assert (= bs!1685086 (and b!6585174 d!2065261)))

(declare-fun lambda!366879 () Int)

(assert (=> bs!1685086 (not (= lambda!366879 lambda!366714))))

(declare-fun bs!1685087 () Bool)

(assert (= bs!1685087 (and b!6585174 d!2065665)))

(assert (=> bs!1685087 (not (= lambda!366879 lambda!366813))))

(declare-fun bs!1685088 () Bool)

(assert (= bs!1685088 (and b!6585174 b!6584625)))

(declare-fun lt!2410737 () Int)

(assert (=> bs!1685088 (= (= lt!2410737 lt!2410684) (= lambda!366879 lambda!366830))))

(declare-fun bs!1685089 () Bool)

(assert (= bs!1685089 (and b!6585174 d!2065911)))

(assert (=> bs!1685089 (not (= lambda!366879 lambda!366875))))

(declare-fun bs!1685090 () Bool)

(assert (= bs!1685090 (and b!6585174 d!2065477)))

(assert (=> bs!1685090 (not (= lambda!366879 lambda!366783))))

(declare-fun bs!1685091 () Bool)

(assert (= bs!1685091 (and b!6585174 d!2065829)))

(assert (=> bs!1685091 (not (= lambda!366879 lambda!366863))))

(declare-fun bs!1685092 () Bool)

(assert (= bs!1685092 (and b!6585174 d!2065619)))

(assert (=> bs!1685092 (not (= lambda!366879 lambda!366804))))

(declare-fun bs!1685093 () Bool)

(assert (= bs!1685093 (and b!6585174 d!2065759)))

(assert (=> bs!1685093 (not (= lambda!366879 lambda!366847))))

(declare-fun bs!1685094 () Bool)

(assert (= bs!1685094 (and b!6585174 d!2065439)))

(assert (=> bs!1685094 (not (= lambda!366879 lambda!366779))))

(declare-fun bs!1685095 () Bool)

(assert (= bs!1685095 (and b!6585174 d!2065815)))

(assert (=> bs!1685095 (not (= lambda!366879 lambda!366853))))

(declare-fun bs!1685096 () Bool)

(assert (= bs!1685096 (and b!6585174 d!2065727)))

(assert (=> bs!1685096 (not (= lambda!366879 lambda!366833))))

(declare-fun bs!1685097 () Bool)

(assert (= bs!1685097 (and b!6585174 d!2065401)))

(assert (=> bs!1685097 (not (= lambda!366879 lambda!366770))))

(declare-fun bs!1685098 () Bool)

(assert (= bs!1685098 (and b!6585174 d!2065515)))

(assert (=> bs!1685098 (not (= lambda!366879 lambda!366796))))

(declare-fun bs!1685099 () Bool)

(assert (= bs!1685099 (and b!6585174 d!2065379)))

(assert (=> bs!1685099 (not (= lambda!366879 lambda!366760))))

(declare-fun bs!1685100 () Bool)

(assert (= bs!1685100 (and b!6585174 d!2065729)))

(assert (=> bs!1685100 (not (= lambda!366879 lambda!366835))))

(declare-fun bs!1685101 () Bool)

(assert (= bs!1685101 (and b!6585174 d!2065623)))

(assert (=> bs!1685101 (not (= lambda!366879 lambda!366805))))

(declare-fun bs!1685102 () Bool)

(assert (= bs!1685102 (and b!6585174 d!2065757)))

(assert (=> bs!1685102 (not (= lambda!366879 lambda!366845))))

(declare-fun bs!1685103 () Bool)

(assert (= bs!1685103 (and b!6585174 b!6584627)))

(assert (=> bs!1685103 (= (= lt!2410737 lt!2410682) (= lambda!366879 lambda!366831))))

(declare-fun bs!1685104 () Bool)

(assert (= bs!1685104 (and b!6585174 d!2065517)))

(assert (=> bs!1685104 (not (= lambda!366879 lambda!366797))))

(declare-fun bs!1685105 () Bool)

(assert (= bs!1685105 (and b!6585174 d!2065437)))

(assert (=> bs!1685105 (not (= lambda!366879 lambda!366776))))

(assert (=> b!6585174 true))

(declare-fun bs!1685106 () Bool)

(declare-fun b!6585176 () Bool)

(assert (= bs!1685106 (and b!6585176 d!2065261)))

(declare-fun lambda!366882 () Int)

(assert (=> bs!1685106 (not (= lambda!366882 lambda!366714))))

(declare-fun bs!1685107 () Bool)

(assert (= bs!1685107 (and b!6585176 d!2065665)))

(assert (=> bs!1685107 (not (= lambda!366882 lambda!366813))))

(declare-fun bs!1685108 () Bool)

(assert (= bs!1685108 (and b!6585176 b!6584625)))

(declare-fun lt!2410735 () Int)

(assert (=> bs!1685108 (= (= lt!2410735 lt!2410684) (= lambda!366882 lambda!366830))))

(declare-fun bs!1685109 () Bool)

(assert (= bs!1685109 (and b!6585176 d!2065911)))

(assert (=> bs!1685109 (not (= lambda!366882 lambda!366875))))

(declare-fun bs!1685110 () Bool)

(assert (= bs!1685110 (and b!6585176 d!2065477)))

(assert (=> bs!1685110 (not (= lambda!366882 lambda!366783))))

(declare-fun bs!1685111 () Bool)

(assert (= bs!1685111 (and b!6585176 d!2065829)))

(assert (=> bs!1685111 (not (= lambda!366882 lambda!366863))))

(declare-fun bs!1685112 () Bool)

(assert (= bs!1685112 (and b!6585176 b!6585174)))

(assert (=> bs!1685112 (= (= lt!2410735 lt!2410737) (= lambda!366882 lambda!366879))))

(declare-fun bs!1685113 () Bool)

(assert (= bs!1685113 (and b!6585176 d!2065619)))

(assert (=> bs!1685113 (not (= lambda!366882 lambda!366804))))

(declare-fun bs!1685114 () Bool)

(assert (= bs!1685114 (and b!6585176 d!2065759)))

(assert (=> bs!1685114 (not (= lambda!366882 lambda!366847))))

(declare-fun bs!1685115 () Bool)

(assert (= bs!1685115 (and b!6585176 d!2065439)))

(assert (=> bs!1685115 (not (= lambda!366882 lambda!366779))))

(declare-fun bs!1685116 () Bool)

(assert (= bs!1685116 (and b!6585176 d!2065815)))

(assert (=> bs!1685116 (not (= lambda!366882 lambda!366853))))

(declare-fun bs!1685117 () Bool)

(assert (= bs!1685117 (and b!6585176 d!2065727)))

(assert (=> bs!1685117 (not (= lambda!366882 lambda!366833))))

(declare-fun bs!1685118 () Bool)

(assert (= bs!1685118 (and b!6585176 d!2065401)))

(assert (=> bs!1685118 (not (= lambda!366882 lambda!366770))))

(declare-fun bs!1685119 () Bool)

(assert (= bs!1685119 (and b!6585176 d!2065515)))

(assert (=> bs!1685119 (not (= lambda!366882 lambda!366796))))

(declare-fun bs!1685120 () Bool)

(assert (= bs!1685120 (and b!6585176 d!2065379)))

(assert (=> bs!1685120 (not (= lambda!366882 lambda!366760))))

(declare-fun bs!1685121 () Bool)

(assert (= bs!1685121 (and b!6585176 d!2065729)))

(assert (=> bs!1685121 (not (= lambda!366882 lambda!366835))))

(declare-fun bs!1685122 () Bool)

(assert (= bs!1685122 (and b!6585176 d!2065623)))

(assert (=> bs!1685122 (not (= lambda!366882 lambda!366805))))

(declare-fun bs!1685123 () Bool)

(assert (= bs!1685123 (and b!6585176 d!2065757)))

(assert (=> bs!1685123 (not (= lambda!366882 lambda!366845))))

(declare-fun bs!1685124 () Bool)

(assert (= bs!1685124 (and b!6585176 b!6584627)))

(assert (=> bs!1685124 (= (= lt!2410735 lt!2410682) (= lambda!366882 lambda!366831))))

(declare-fun bs!1685125 () Bool)

(assert (= bs!1685125 (and b!6585176 d!2065517)))

(assert (=> bs!1685125 (not (= lambda!366882 lambda!366797))))

(declare-fun bs!1685126 () Bool)

(assert (= bs!1685126 (and b!6585176 d!2065437)))

(assert (=> bs!1685126 (not (= lambda!366882 lambda!366776))))

(assert (=> b!6585176 true))

(declare-fun d!2065935 () Bool)

(declare-fun e!3985319 () Bool)

(assert (=> d!2065935 e!3985319))

(declare-fun res!2701267 () Bool)

(assert (=> d!2065935 (=> (not res!2701267) (not e!3985319))))

(assert (=> d!2065935 (= res!2701267 (>= lt!2410735 0))))

(declare-fun e!3985320 () Int)

(assert (=> d!2065935 (= lt!2410735 e!3985320)))

(declare-fun c!1211789 () Bool)

(assert (=> d!2065935 (= c!1211789 ((_ is Cons!65540) (exprs!6339 (h!71990 zl!343))))))

(assert (=> d!2065935 (= (contextDepth!281 (h!71990 zl!343)) lt!2410735)))

(assert (=> b!6585174 (= e!3985320 lt!2410737)))

(assert (=> b!6585174 (= lt!2410737 (maxBigInt!0 (regexDepth!352 (h!71988 (exprs!6339 (h!71990 zl!343)))) (contextDepth!281 (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343)))))))))

(declare-fun lt!2410734 () Unit!159155)

(assert (=> b!6585174 (= lt!2410734 (lemmaForallRegexDepthBiggerThanTransitive!130 (t!379312 (exprs!6339 (h!71990 zl!343))) lt!2410737 (contextDepth!281 (Context!11679 (t!379312 (exprs!6339 (h!71990 zl!343)))))))))

(assert (=> b!6585174 (forall!15634 (t!379312 (exprs!6339 (h!71990 zl!343))) lambda!366879)))

(declare-fun lt!2410736 () Unit!159155)

(assert (=> b!6585174 (= lt!2410736 lt!2410734)))

(declare-fun b!6585175 () Bool)

(assert (=> b!6585175 (= e!3985320 0)))

(assert (=> b!6585176 (= e!3985319 (forall!15634 (exprs!6339 (h!71990 zl!343)) lambda!366882))))

(assert (= (and d!2065935 c!1211789) b!6585174))

(assert (= (and d!2065935 (not c!1211789)) b!6585175))

(assert (= (and d!2065935 res!2701267) b!6585176))

(declare-fun m!7364404 () Bool)

(assert (=> b!6585174 m!7364404))

(declare-fun m!7364406 () Bool)

(assert (=> b!6585174 m!7364406))

(assert (=> b!6585174 m!7364406))

(assert (=> b!6585174 m!7364404))

(declare-fun m!7364408 () Bool)

(assert (=> b!6585174 m!7364408))

(declare-fun m!7364410 () Bool)

(assert (=> b!6585174 m!7364410))

(assert (=> b!6585174 m!7364404))

(declare-fun m!7364412 () Bool)

(assert (=> b!6585174 m!7364412))

(declare-fun m!7364414 () Bool)

(assert (=> b!6585176 m!7364414))

(assert (=> b!6584138 d!2065935))

(declare-fun bs!1685136 () Bool)

(declare-fun d!2065937 () Bool)

(assert (= bs!1685136 (and d!2065937 b!6584589)))

(declare-fun lambda!366884 () Int)

(assert (=> bs!1685136 (not (= lambda!366884 lambda!366819))))

(declare-fun bs!1685137 () Bool)

(assert (= bs!1685137 (and d!2065937 d!2065777)))

(assert (=> bs!1685137 (not (= lambda!366884 lambda!366848))))

(declare-fun bs!1685139 () Bool)

(assert (= bs!1685139 (and d!2065937 d!2065659)))

(assert (=> bs!1685139 (not (= lambda!366884 lambda!366811))))

(declare-fun bs!1685141 () Bool)

(assert (= bs!1685141 (and d!2065937 d!2065693)))

(assert (=> bs!1685141 (= (and (= lt!2410637 lt!2410641) (= lambda!366790 lambda!366793)) (= lambda!366884 lambda!366817))))

(declare-fun bs!1685142 () Bool)

(assert (= bs!1685142 (and d!2065937 d!2065823)))

(assert (=> bs!1685142 (not (= lambda!366884 lambda!366855))))

(declare-fun bs!1685143 () Bool)

(assert (= bs!1685143 (and d!2065937 d!2065879)))

(assert (=> bs!1685143 (not (= lambda!366884 lambda!366874))))

(declare-fun bs!1685145 () Bool)

(assert (= bs!1685145 (and d!2065937 d!2065929)))

(assert (=> bs!1685145 (not (= lambda!366884 lambda!366876))))

(declare-fun bs!1685146 () Bool)

(assert (= bs!1685146 (and d!2065937 b!6584138)))

(assert (=> bs!1685146 (not (= lambda!366884 lambda!366791))))

(declare-fun bs!1685147 () Bool)

(assert (= bs!1685147 (and d!2065937 b!6584140)))

(assert (=> bs!1685147 (not (= lambda!366884 lambda!366792))))

(declare-fun bs!1685148 () Bool)

(assert (= bs!1685148 (and d!2065937 d!2065839)))

(assert (=> bs!1685148 (not (= lambda!366884 lambda!366867))))

(declare-fun bs!1685149 () Bool)

(assert (= bs!1685149 (and d!2065937 b!6584143)))

(assert (=> bs!1685149 (not (= lambda!366884 lambda!366794))))

(declare-fun bs!1685150 () Bool)

(assert (= bs!1685150 (and d!2065937 b!6584591)))

(assert (=> bs!1685150 (not (= lambda!366884 lambda!366820))))

(declare-fun bs!1685151 () Bool)

(assert (= bs!1685151 (and d!2065937 b!6584145)))

(assert (=> bs!1685151 (not (= lambda!366884 lambda!366795))))

(assert (=> d!2065937 true))

(assert (=> d!2065937 true))

(assert (=> d!2065937 (< (dynLambda!26092 order!27577 lambda!366790) (dynLambda!26093 order!27579 lambda!366884))))

(assert (=> d!2065937 (forall!15635 (t!379314 zl!343) lambda!366884)))

(declare-fun lt!2410738 () Unit!159155)

(assert (=> d!2065937 (= lt!2410738 (choose!49168 (t!379314 zl!343) lt!2410637 (zipperDepth!392 (t!379314 zl!343)) lambda!366790))))

(assert (=> d!2065937 (>= lt!2410637 (zipperDepth!392 (t!379314 zl!343)))))

(assert (=> d!2065937 (= (lemmaForallContextDepthBiggerThanTransitive!265 (t!379314 zl!343) lt!2410637 (zipperDepth!392 (t!379314 zl!343)) lambda!366790) lt!2410738)))

(declare-fun bs!1685152 () Bool)

(assert (= bs!1685152 d!2065937))

(declare-fun m!7364416 () Bool)

(assert (=> bs!1685152 m!7364416))

(assert (=> bs!1685152 m!7363318))

(declare-fun m!7364418 () Bool)

(assert (=> bs!1685152 m!7364418))

(assert (=> b!6584138 d!2065937))

(declare-fun bs!1685153 () Bool)

(declare-fun b!6585181 () Bool)

(assert (= bs!1685153 (and b!6585181 b!6584138)))

(declare-fun lambda!366886 () Int)

(assert (=> bs!1685153 (= lambda!366886 lambda!366790)))

(declare-fun bs!1685155 () Bool)

(assert (= bs!1685155 (and b!6585181 b!6584143)))

(assert (=> bs!1685155 (= lambda!366886 lambda!366793)))

(declare-fun bs!1685156 () Bool)

(assert (= bs!1685156 (and b!6585181 b!6584589)))

(assert (=> bs!1685156 (= lambda!366886 lambda!366818)))

(declare-fun bs!1685157 () Bool)

(assert (= bs!1685157 (and b!6585181 d!2065937)))

(declare-fun lambda!366887 () Int)

(assert (=> bs!1685157 (not (= lambda!366887 lambda!366884))))

(declare-fun lt!2410740 () Int)

(assert (=> bs!1685156 (= (= lt!2410740 lt!2410669) (= lambda!366887 lambda!366819))))

(declare-fun bs!1685158 () Bool)

(assert (= bs!1685158 (and b!6585181 d!2065777)))

(assert (=> bs!1685158 (not (= lambda!366887 lambda!366848))))

(declare-fun bs!1685159 () Bool)

(assert (= bs!1685159 (and b!6585181 d!2065659)))

(assert (=> bs!1685159 (not (= lambda!366887 lambda!366811))))

(declare-fun bs!1685160 () Bool)

(assert (= bs!1685160 (and b!6585181 d!2065693)))

(assert (=> bs!1685160 (not (= lambda!366887 lambda!366817))))

(declare-fun bs!1685161 () Bool)

(assert (= bs!1685161 (and b!6585181 d!2065823)))

(assert (=> bs!1685161 (not (= lambda!366887 lambda!366855))))

(declare-fun bs!1685162 () Bool)

(assert (= bs!1685162 (and b!6585181 d!2065879)))

(assert (=> bs!1685162 (not (= lambda!366887 lambda!366874))))

(declare-fun bs!1685163 () Bool)

(assert (= bs!1685163 (and b!6585181 d!2065929)))

(assert (=> bs!1685163 (not (= lambda!366887 lambda!366876))))

(assert (=> bs!1685153 (= (= lt!2410740 lt!2410637) (= lambda!366887 lambda!366791))))

(declare-fun bs!1685164 () Bool)

(assert (= bs!1685164 (and b!6585181 b!6584140)))

(assert (=> bs!1685164 (= (= lt!2410740 lt!2410636) (= lambda!366887 lambda!366792))))

(declare-fun bs!1685165 () Bool)

(assert (= bs!1685165 (and b!6585181 d!2065839)))

(assert (=> bs!1685165 (not (= lambda!366887 lambda!366867))))

(assert (=> bs!1685155 (= (= lt!2410740 lt!2410641) (= lambda!366887 lambda!366794))))

(declare-fun bs!1685166 () Bool)

(assert (= bs!1685166 (and b!6585181 b!6584591)))

(assert (=> bs!1685166 (= (= lt!2410740 lt!2410668) (= lambda!366887 lambda!366820))))

(declare-fun bs!1685167 () Bool)

(assert (= bs!1685167 (and b!6585181 b!6584145)))

(assert (=> bs!1685167 (= (= lt!2410740 lt!2410640) (= lambda!366887 lambda!366795))))

(assert (=> b!6585181 true))

(declare-fun bs!1685168 () Bool)

(declare-fun b!6585183 () Bool)

(assert (= bs!1685168 (and b!6585183 d!2065937)))

(declare-fun lambda!366888 () Int)

(assert (=> bs!1685168 (not (= lambda!366888 lambda!366884))))

(declare-fun bs!1685169 () Bool)

(assert (= bs!1685169 (and b!6585183 b!6584589)))

(declare-fun lt!2410739 () Int)

(assert (=> bs!1685169 (= (= lt!2410739 lt!2410669) (= lambda!366888 lambda!366819))))

(declare-fun bs!1685170 () Bool)

(assert (= bs!1685170 (and b!6585183 d!2065777)))

(assert (=> bs!1685170 (not (= lambda!366888 lambda!366848))))

(declare-fun bs!1685171 () Bool)

(assert (= bs!1685171 (and b!6585183 d!2065659)))

(assert (=> bs!1685171 (not (= lambda!366888 lambda!366811))))

(declare-fun bs!1685172 () Bool)

(assert (= bs!1685172 (and b!6585183 d!2065693)))

(assert (=> bs!1685172 (not (= lambda!366888 lambda!366817))))

(declare-fun bs!1685173 () Bool)

(assert (= bs!1685173 (and b!6585183 b!6585181)))

(assert (=> bs!1685173 (= (= lt!2410739 lt!2410740) (= lambda!366888 lambda!366887))))

(declare-fun bs!1685174 () Bool)

(assert (= bs!1685174 (and b!6585183 d!2065823)))

(assert (=> bs!1685174 (not (= lambda!366888 lambda!366855))))

(declare-fun bs!1685175 () Bool)

(assert (= bs!1685175 (and b!6585183 d!2065879)))

(assert (=> bs!1685175 (not (= lambda!366888 lambda!366874))))

(declare-fun bs!1685176 () Bool)

(assert (= bs!1685176 (and b!6585183 d!2065929)))

(assert (=> bs!1685176 (not (= lambda!366888 lambda!366876))))

(declare-fun bs!1685177 () Bool)

(assert (= bs!1685177 (and b!6585183 b!6584138)))

(assert (=> bs!1685177 (= (= lt!2410739 lt!2410637) (= lambda!366888 lambda!366791))))

(declare-fun bs!1685178 () Bool)

(assert (= bs!1685178 (and b!6585183 b!6584140)))

(assert (=> bs!1685178 (= (= lt!2410739 lt!2410636) (= lambda!366888 lambda!366792))))

(declare-fun bs!1685179 () Bool)

(assert (= bs!1685179 (and b!6585183 d!2065839)))

(assert (=> bs!1685179 (not (= lambda!366888 lambda!366867))))

(declare-fun bs!1685180 () Bool)

(assert (= bs!1685180 (and b!6585183 b!6584143)))

(assert (=> bs!1685180 (= (= lt!2410739 lt!2410641) (= lambda!366888 lambda!366794))))

(declare-fun bs!1685181 () Bool)

(assert (= bs!1685181 (and b!6585183 b!6584591)))

(assert (=> bs!1685181 (= (= lt!2410739 lt!2410668) (= lambda!366888 lambda!366820))))

(declare-fun bs!1685183 () Bool)

(assert (= bs!1685183 (and b!6585183 b!6584145)))

(assert (=> bs!1685183 (= (= lt!2410739 lt!2410640) (= lambda!366888 lambda!366795))))

(assert (=> b!6585183 true))

(declare-fun d!2065939 () Bool)

(declare-fun e!3985323 () Bool)

(assert (=> d!2065939 e!3985323))

(declare-fun res!2701272 () Bool)

(assert (=> d!2065939 (=> (not res!2701272) (not e!3985323))))

(assert (=> d!2065939 (= res!2701272 (>= lt!2410739 0))))

(declare-fun e!3985324 () Int)

(assert (=> d!2065939 (= lt!2410739 e!3985324)))

(declare-fun c!1211790 () Bool)

(assert (=> d!2065939 (= c!1211790 ((_ is Cons!65542) (t!379314 zl!343)))))

(assert (=> d!2065939 (= (zipperDepth!392 (t!379314 zl!343)) lt!2410739)))

(assert (=> b!6585181 (= e!3985324 lt!2410740)))

(assert (=> b!6585181 (= lt!2410740 (maxBigInt!0 (contextDepth!281 (h!71990 (t!379314 zl!343))) (zipperDepth!392 (t!379314 (t!379314 zl!343)))))))

(declare-fun lt!2410741 () Unit!159155)

(assert (=> b!6585181 (= lt!2410741 (lemmaForallContextDepthBiggerThanTransitive!265 (t!379314 (t!379314 zl!343)) lt!2410740 (zipperDepth!392 (t!379314 (t!379314 zl!343))) lambda!366886))))

(assert (=> b!6585181 (forall!15635 (t!379314 (t!379314 zl!343)) lambda!366887)))

(declare-fun lt!2410742 () Unit!159155)

(assert (=> b!6585181 (= lt!2410742 lt!2410741)))

(declare-fun b!6585182 () Bool)

(assert (=> b!6585182 (= e!3985324 0)))

(assert (=> b!6585183 (= e!3985323 (forall!15635 (t!379314 zl!343) lambda!366888))))

(assert (= (and d!2065939 c!1211790) b!6585181))

(assert (= (and d!2065939 (not c!1211790)) b!6585182))

(assert (= (and d!2065939 res!2701272) b!6585183))

(declare-fun m!7364428 () Bool)

(assert (=> b!6585181 m!7364428))

(declare-fun m!7364430 () Bool)

(assert (=> b!6585181 m!7364430))

(declare-fun m!7364432 () Bool)

(assert (=> b!6585181 m!7364432))

(assert (=> b!6585181 m!7364432))

(assert (=> b!6585181 m!7364428))

(declare-fun m!7364434 () Bool)

(assert (=> b!6585181 m!7364434))

(assert (=> b!6585181 m!7364428))

(declare-fun m!7364436 () Bool)

(assert (=> b!6585181 m!7364436))

(declare-fun m!7364438 () Bool)

(assert (=> b!6585183 m!7364438))

(assert (=> b!6584138 d!2065939))

(declare-fun d!2065945 () Bool)

(assert (=> d!2065945 (= (maxBigInt!0 (contextDepth!281 (h!71990 zl!343)) (zipperDepth!392 (t!379314 zl!343))) (ite (>= (contextDepth!281 (h!71990 zl!343)) (zipperDepth!392 (t!379314 zl!343))) (contextDepth!281 (h!71990 zl!343)) (zipperDepth!392 (t!379314 zl!343))))))

(assert (=> b!6584138 d!2065945))

(declare-fun d!2065949 () Bool)

(declare-fun res!2701278 () Bool)

(declare-fun e!3985337 () Bool)

(assert (=> d!2065949 (=> res!2701278 e!3985337)))

(assert (=> d!2065949 (= res!2701278 ((_ is Nil!65542) (t!379314 zl!343)))))

(assert (=> d!2065949 (= (forall!15635 (t!379314 zl!343) lambda!366791) e!3985337)))

(declare-fun b!6585196 () Bool)

(declare-fun e!3985338 () Bool)

(assert (=> b!6585196 (= e!3985337 e!3985338)))

(declare-fun res!2701279 () Bool)

(assert (=> b!6585196 (=> (not res!2701279) (not e!3985338))))

(assert (=> b!6585196 (= res!2701279 (dynLambda!26087 lambda!366791 (h!71990 (t!379314 zl!343))))))

(declare-fun b!6585197 () Bool)

(assert (=> b!6585197 (= e!3985338 (forall!15635 (t!379314 (t!379314 zl!343)) lambda!366791))))

(assert (= (and d!2065949 (not res!2701278)) b!6585196))

(assert (= (and b!6585196 res!2701279) b!6585197))

(declare-fun b_lambda!249143 () Bool)

(assert (=> (not b_lambda!249143) (not b!6585196)))

(declare-fun m!7364442 () Bool)

(assert (=> b!6585196 m!7364442))

(declare-fun m!7364444 () Bool)

(assert (=> b!6585197 m!7364444))

(assert (=> b!6584138 d!2065949))

(declare-fun d!2065951 () Bool)

(declare-fun e!3985340 () Bool)

(assert (=> d!2065951 e!3985340))

(declare-fun res!2701281 () Bool)

(assert (=> d!2065951 (=> (not res!2701281) (not e!3985340))))

(declare-fun lt!2410744 () Int)

(assert (=> d!2065951 (= res!2701281 (> lt!2410744 0))))

(declare-fun e!3985342 () Int)

(assert (=> d!2065951 (= lt!2410744 e!3985342)))

(declare-fun c!1211801 () Bool)

(assert (=> d!2065951 (= c!1211801 ((_ is ElementMatch!16455) (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(assert (=> d!2065951 (= (regexDepth!352 (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))) lt!2410744)))

(declare-fun b!6585205 () Bool)

(declare-fun e!3985343 () Bool)

(assert (=> b!6585205 (= e!3985343 (= lt!2410744 1))))

(declare-fun b!6585206 () Bool)

(declare-fun c!1211803 () Bool)

(assert (=> b!6585206 (= c!1211803 ((_ is Union!16455) (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(declare-fun e!3985347 () Int)

(declare-fun e!3985339 () Int)

(assert (=> b!6585206 (= e!3985347 e!3985339)))

(declare-fun c!1211798 () Bool)

(declare-fun call!574517 () Int)

(declare-fun bm!574508 () Bool)

(assert (=> bm!574508 (= call!574517 (regexDepth!352 (ite c!1211798 (regOne!33423 (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))) (regTwo!33422 (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))))

(declare-fun b!6585207 () Bool)

(declare-fun call!574515 () Int)

(assert (=> b!6585207 (= e!3985343 (> lt!2410744 call!574515))))

(declare-fun b!6585208 () Bool)

(declare-fun e!3985346 () Bool)

(assert (=> b!6585208 (= e!3985340 e!3985346)))

(assert (=> b!6585208 (= c!1211798 ((_ is Union!16455) (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(declare-fun call!574514 () Int)

(declare-fun bm!574509 () Bool)

(assert (=> bm!574509 (= call!574514 (regexDepth!352 (ite c!1211803 (regOne!33423 (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))) (regTwo!33422 (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))))

(declare-fun b!6585209 () Bool)

(declare-fun e!3985348 () Bool)

(assert (=> b!6585209 (= e!3985346 e!3985348)))

(declare-fun res!2701282 () Bool)

(assert (=> b!6585209 (= res!2701282 (> lt!2410744 call!574517))))

(assert (=> b!6585209 (=> (not res!2701282) (not e!3985348))))

(declare-fun b!6585210 () Bool)

(declare-fun e!3985344 () Int)

(assert (=> b!6585210 (= e!3985339 e!3985344)))

(declare-fun c!1211804 () Bool)

(assert (=> b!6585210 (= c!1211804 ((_ is Concat!25300) (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(declare-fun b!6585211 () Bool)

(assert (=> b!6585211 (= e!3985342 1)))

(declare-fun b!6585212 () Bool)

(declare-fun call!574519 () Int)

(assert (=> b!6585212 (= e!3985348 (> lt!2410744 call!574519))))

(declare-fun b!6585213 () Bool)

(declare-fun e!3985345 () Bool)

(assert (=> b!6585213 (= e!3985345 (> lt!2410744 call!574517))))

(declare-fun call!574518 () Int)

(declare-fun bm!574510 () Bool)

(declare-fun call!574516 () Int)

(assert (=> bm!574510 (= call!574516 (maxBigInt!0 (ite c!1211803 call!574514 call!574518) (ite c!1211803 call!574518 call!574514)))))

(declare-fun b!6585214 () Bool)

(assert (=> b!6585214 (= e!3985344 (+ 1 call!574516))))

(declare-fun b!6585215 () Bool)

(declare-fun e!3985341 () Bool)

(assert (=> b!6585215 (= e!3985346 e!3985341)))

(declare-fun c!1211799 () Bool)

(assert (=> b!6585215 (= c!1211799 ((_ is Concat!25300) (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(declare-fun c!1211802 () Bool)

(declare-fun bm!574511 () Bool)

(declare-fun call!574513 () Int)

(assert (=> bm!574511 (= call!574513 (regexDepth!352 (ite c!1211802 (reg!16784 (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))) (ite c!1211803 (regTwo!33423 (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))) (regOne!33422 (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486)))))))))

(declare-fun b!6585216 () Bool)

(assert (=> b!6585216 (= e!3985342 e!3985347)))

(assert (=> b!6585216 (= c!1211802 ((_ is Star!16455) (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(declare-fun b!6585217 () Bool)

(assert (=> b!6585217 (= e!3985339 (+ 1 call!574516))))

(declare-fun b!6585218 () Bool)

(assert (=> b!6585218 (= e!3985347 (+ 1 call!574513))))

(declare-fun bm!574512 () Bool)

(assert (=> bm!574512 (= call!574515 call!574519)))

(declare-fun b!6585219 () Bool)

(assert (=> b!6585219 (= e!3985344 1)))

(declare-fun b!6585220 () Bool)

(declare-fun res!2701280 () Bool)

(assert (=> b!6585220 (=> (not res!2701280) (not e!3985345))))

(assert (=> b!6585220 (= res!2701280 (> lt!2410744 call!574515))))

(assert (=> b!6585220 (= e!3985341 e!3985345)))

(declare-fun b!6585221 () Bool)

(declare-fun c!1211800 () Bool)

(assert (=> b!6585221 (= c!1211800 ((_ is Star!16455) (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))))))

(assert (=> b!6585221 (= e!3985341 e!3985343)))

(declare-fun bm!574513 () Bool)

(assert (=> bm!574513 (= call!574518 call!574513)))

(declare-fun bm!574514 () Bool)

(assert (=> bm!574514 (= call!574519 (regexDepth!352 (ite c!1211798 (regTwo!33423 (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))) (ite c!1211799 (regOne!33422 (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486))) (reg!16784 (ite c!1211372 (regOne!33423 lt!2410486) (regTwo!33422 lt!2410486)))))))))

(assert (= (and d!2065951 c!1211801) b!6585211))

(assert (= (and d!2065951 (not c!1211801)) b!6585216))

(assert (= (and b!6585216 c!1211802) b!6585218))

(assert (= (and b!6585216 (not c!1211802)) b!6585206))

(assert (= (and b!6585206 c!1211803) b!6585217))

(assert (= (and b!6585206 (not c!1211803)) b!6585210))

(assert (= (and b!6585210 c!1211804) b!6585214))

(assert (= (and b!6585210 (not c!1211804)) b!6585219))

(assert (= (or b!6585217 b!6585214) bm!574513))

(assert (= (or b!6585217 b!6585214) bm!574509))

(assert (= (or b!6585217 b!6585214) bm!574510))

(assert (= (or b!6585218 bm!574513) bm!574511))

(assert (= (and d!2065951 res!2701281) b!6585208))

(assert (= (and b!6585208 c!1211798) b!6585209))

(assert (= (and b!6585208 (not c!1211798)) b!6585215))

(assert (= (and b!6585209 res!2701282) b!6585212))

(assert (= (and b!6585215 c!1211799) b!6585220))

(assert (= (and b!6585215 (not c!1211799)) b!6585221))

(assert (= (and b!6585220 res!2701280) b!6585213))

(assert (= (and b!6585221 c!1211800) b!6585207))

(assert (= (and b!6585221 (not c!1211800)) b!6585205))

(assert (= (or b!6585220 b!6585207) bm!574512))

(assert (= (or b!6585212 bm!574512) bm!574514))

(assert (= (or b!6585209 b!6585213) bm!574508))

(declare-fun m!7364456 () Bool)

(assert (=> bm!574510 m!7364456))

(declare-fun m!7364458 () Bool)

(assert (=> bm!574511 m!7364458))

(declare-fun m!7364460 () Bool)

(assert (=> bm!574514 m!7364460))

(declare-fun m!7364462 () Bool)

(assert (=> bm!574508 m!7364462))

(declare-fun m!7364464 () Bool)

(assert (=> bm!574509 m!7364464))

(assert (=> bm!574213 d!2065951))

(declare-fun d!2065955 () Bool)

(declare-fun e!3985357 () Bool)

(assert (=> d!2065955 e!3985357))

(declare-fun res!2701292 () Bool)

(assert (=> d!2065955 (=> (not res!2701292) (not e!3985357))))

(declare-fun lt!2410746 () Int)

(assert (=> d!2065955 (= res!2701292 (> lt!2410746 0))))

(declare-fun e!3985359 () Int)

(assert (=> d!2065955 (= lt!2410746 e!3985359)))

(declare-fun c!1211811 () Bool)

(assert (=> d!2065955 (= c!1211811 ((_ is ElementMatch!16455) (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))))))

(assert (=> d!2065955 (= (regexDepth!352 (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))) lt!2410746)))

(declare-fun b!6585236 () Bool)

(declare-fun e!3985360 () Bool)

(assert (=> b!6585236 (= e!3985360 (= lt!2410746 1))))

(declare-fun c!1211813 () Bool)

(declare-fun b!6585237 () Bool)

(assert (=> b!6585237 (= c!1211813 ((_ is Union!16455) (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))))))

(declare-fun e!3985364 () Int)

(declare-fun e!3985356 () Int)

(assert (=> b!6585237 (= e!3985364 e!3985356)))

(declare-fun call!574525 () Int)

(declare-fun bm!574516 () Bool)

(declare-fun c!1211808 () Bool)

(assert (=> bm!574516 (= call!574525 (regexDepth!352 (ite c!1211808 (regOne!33423 (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))) (regTwo!33422 (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))))))))

(declare-fun b!6585238 () Bool)

(declare-fun call!574523 () Int)

(assert (=> b!6585238 (= e!3985360 (> lt!2410746 call!574523))))

(declare-fun b!6585239 () Bool)

(declare-fun e!3985363 () Bool)

(assert (=> b!6585239 (= e!3985357 e!3985363)))

(assert (=> b!6585239 (= c!1211808 ((_ is Union!16455) (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))))))

(declare-fun call!574522 () Int)

(declare-fun bm!574517 () Bool)

(assert (=> bm!574517 (= call!574522 (regexDepth!352 (ite c!1211813 (regOne!33423 (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))) (regTwo!33422 (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))))))))

(declare-fun b!6585240 () Bool)

(declare-fun e!3985365 () Bool)

(assert (=> b!6585240 (= e!3985363 e!3985365)))

(declare-fun res!2701293 () Bool)

(assert (=> b!6585240 (= res!2701293 (> lt!2410746 call!574525))))

(assert (=> b!6585240 (=> (not res!2701293) (not e!3985365))))

(declare-fun b!6585241 () Bool)

(declare-fun e!3985361 () Int)

(assert (=> b!6585241 (= e!3985356 e!3985361)))

(declare-fun c!1211814 () Bool)

(assert (=> b!6585241 (= c!1211814 ((_ is Concat!25300) (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))))))

(declare-fun b!6585242 () Bool)

(assert (=> b!6585242 (= e!3985359 1)))

(declare-fun b!6585243 () Bool)

(declare-fun call!574527 () Int)

(assert (=> b!6585243 (= e!3985365 (> lt!2410746 call!574527))))

(declare-fun b!6585244 () Bool)

(declare-fun e!3985362 () Bool)

(assert (=> b!6585244 (= e!3985362 (> lt!2410746 call!574525))))

(declare-fun bm!574518 () Bool)

(declare-fun call!574526 () Int)

(declare-fun call!574524 () Int)

(assert (=> bm!574518 (= call!574524 (maxBigInt!0 (ite c!1211813 call!574522 call!574526) (ite c!1211813 call!574526 call!574522)))))

(declare-fun b!6585245 () Bool)

(assert (=> b!6585245 (= e!3985361 (+ 1 call!574524))))

(declare-fun b!6585246 () Bool)

(declare-fun e!3985358 () Bool)

(assert (=> b!6585246 (= e!3985363 e!3985358)))

(declare-fun c!1211809 () Bool)

(assert (=> b!6585246 (= c!1211809 ((_ is Concat!25300) (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))))))

(declare-fun c!1211812 () Bool)

(declare-fun call!574521 () Int)

(declare-fun bm!574519 () Bool)

(assert (=> bm!574519 (= call!574521 (regexDepth!352 (ite c!1211812 (reg!16784 (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))) (ite c!1211813 (regTwo!33423 (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))) (regOne!33422 (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486))))))))))

(declare-fun b!6585247 () Bool)

(assert (=> b!6585247 (= e!3985359 e!3985364)))

(assert (=> b!6585247 (= c!1211812 ((_ is Star!16455) (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))))))

(declare-fun b!6585248 () Bool)

(assert (=> b!6585248 (= e!3985356 (+ 1 call!574524))))

(declare-fun b!6585249 () Bool)

(assert (=> b!6585249 (= e!3985364 (+ 1 call!574521))))

(declare-fun bm!574520 () Bool)

(assert (=> bm!574520 (= call!574523 call!574527)))

(declare-fun b!6585250 () Bool)

(assert (=> b!6585250 (= e!3985361 1)))

(declare-fun b!6585251 () Bool)

(declare-fun res!2701291 () Bool)

(assert (=> b!6585251 (=> (not res!2701291) (not e!3985362))))

(assert (=> b!6585251 (= res!2701291 (> lt!2410746 call!574523))))

(assert (=> b!6585251 (= e!3985358 e!3985362)))

(declare-fun b!6585252 () Bool)

(declare-fun c!1211810 () Bool)

(assert (=> b!6585252 (= c!1211810 ((_ is Star!16455) (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))))))

(assert (=> b!6585252 (= e!3985358 e!3985360)))

(declare-fun bm!574521 () Bool)

(assert (=> bm!574521 (= call!574526 call!574521)))

(declare-fun bm!574522 () Bool)

(assert (=> bm!574522 (= call!574527 (regexDepth!352 (ite c!1211808 (regTwo!33423 (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))) (ite c!1211809 (regOne!33422 (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486)))) (reg!16784 (ite c!1211372 (regTwo!33423 lt!2410486) (ite c!1211373 (regOne!33422 lt!2410486) (reg!16784 lt!2410486))))))))))

(assert (= (and d!2065955 c!1211811) b!6585242))

(assert (= (and d!2065955 (not c!1211811)) b!6585247))

(assert (= (and b!6585247 c!1211812) b!6585249))

(assert (= (and b!6585247 (not c!1211812)) b!6585237))

(assert (= (and b!6585237 c!1211813) b!6585248))

(assert (= (and b!6585237 (not c!1211813)) b!6585241))

(assert (= (and b!6585241 c!1211814) b!6585245))

(assert (= (and b!6585241 (not c!1211814)) b!6585250))

(assert (= (or b!6585248 b!6585245) bm!574521))

(assert (= (or b!6585248 b!6585245) bm!574517))

(assert (= (or b!6585248 b!6585245) bm!574518))

(assert (= (or b!6585249 bm!574521) bm!574519))

(assert (= (and d!2065955 res!2701292) b!6585239))

(assert (= (and b!6585239 c!1211808) b!6585240))

(assert (= (and b!6585239 (not c!1211808)) b!6585246))

(assert (= (and b!6585240 res!2701293) b!6585243))

(assert (= (and b!6585246 c!1211809) b!6585251))

(assert (= (and b!6585246 (not c!1211809)) b!6585252))

(assert (= (and b!6585251 res!2701291) b!6585244))

(assert (= (and b!6585252 c!1211810) b!6585238))

(assert (= (and b!6585252 (not c!1211810)) b!6585236))

(assert (= (or b!6585251 b!6585238) bm!574520))

(assert (= (or b!6585243 bm!574520) bm!574522))

(assert (= (or b!6585240 b!6585244) bm!574516))

(declare-fun m!7364476 () Bool)

(assert (=> bm!574518 m!7364476))

(declare-fun m!7364480 () Bool)

(assert (=> bm!574519 m!7364480))

(declare-fun m!7364484 () Bool)

(assert (=> bm!574522 m!7364484))

(declare-fun m!7364486 () Bool)

(assert (=> bm!574516 m!7364486))

(declare-fun m!7364488 () Bool)

(assert (=> bm!574517 m!7364488))

(assert (=> bm!574219 d!2065955))

(declare-fun d!2065959 () Bool)

(assert (=> d!2065959 (= (isConcat!1356 lt!2410586) ((_ is Concat!25300) lt!2410586))))

(assert (=> b!6583876 d!2065959))

(declare-fun d!2065961 () Bool)

(declare-fun res!2701294 () Bool)

(declare-fun e!3985366 () Bool)

(assert (=> d!2065961 (=> res!2701294 e!3985366)))

(assert (=> d!2065961 (= res!2701294 ((_ is Nil!65540) (exprs!6339 (h!71990 zl!343))))))

(assert (=> d!2065961 (= (forall!15634 (exprs!6339 (h!71990 zl!343)) lambda!366714) e!3985366)))

(declare-fun b!6585253 () Bool)

(declare-fun e!3985367 () Bool)

(assert (=> b!6585253 (= e!3985366 e!3985367)))

(declare-fun res!2701295 () Bool)

(assert (=> b!6585253 (=> (not res!2701295) (not e!3985367))))

(assert (=> b!6585253 (= res!2701295 (dynLambda!26086 lambda!366714 (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun b!6585254 () Bool)

(assert (=> b!6585254 (= e!3985367 (forall!15634 (t!379312 (exprs!6339 (h!71990 zl!343))) lambda!366714))))

(assert (= (and d!2065961 (not res!2701294)) b!6585253))

(assert (= (and b!6585253 res!2701295) b!6585254))

(declare-fun b_lambda!249145 () Bool)

(assert (=> (not b_lambda!249145) (not b!6585253)))

(declare-fun m!7364490 () Bool)

(assert (=> b!6585253 m!7364490))

(declare-fun m!7364492 () Bool)

(assert (=> b!6585254 m!7364492))

(assert (=> d!2065261 d!2065961))

(assert (=> bm!574266 d!2065607))

(assert (=> b!6583520 d!2065497))

(assert (=> b!6583520 d!2065499))

(declare-fun d!2065963 () Bool)

(assert (=> d!2065963 (= (Exists!3525 (ite c!1211316 lambda!366746 lambda!366747)) (choose!49158 (ite c!1211316 lambda!366746 lambda!366747)))))

(declare-fun bs!1685193 () Bool)

(assert (= bs!1685193 d!2065963))

(declare-fun m!7364494 () Bool)

(assert (=> bs!1685193 m!7364494))

(assert (=> bm!574179 d!2065963))

(declare-fun d!2065965 () Bool)

(assert (=> d!2065965 (= (isEmpty!37797 (unfocusZipperList!1876 zl!343)) ((_ is Nil!65540) (unfocusZipperList!1876 zl!343)))))

(assert (=> b!6584054 d!2065965))

(declare-fun b!6585255 () Bool)

(declare-fun e!3985370 () (InoxSet Context!11678))

(declare-fun e!3985368 () (InoxSet Context!11678))

(assert (=> b!6585255 (= e!3985370 e!3985368)))

(declare-fun c!1211815 () Bool)

(assert (=> b!6585255 (= c!1211815 ((_ is Cons!65540) (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410472))))))))

(declare-fun b!6585256 () Bool)

(declare-fun call!574528 () (InoxSet Context!11678))

(assert (=> b!6585256 (= e!3985368 call!574528)))

(declare-fun b!6585257 () Bool)

(declare-fun e!3985369 () Bool)

(assert (=> b!6585257 (= e!3985369 (nullable!6448 (h!71988 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410472)))))))))

(declare-fun d!2065967 () Bool)

(declare-fun c!1211816 () Bool)

(assert (=> d!2065967 (= c!1211816 e!3985369)))

(declare-fun res!2701296 () Bool)

(assert (=> d!2065967 (=> (not res!2701296) (not e!3985369))))

(assert (=> d!2065967 (= res!2701296 ((_ is Cons!65540) (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410472))))))))

(assert (=> d!2065967 (= (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 lt!2410472))) (h!71989 s!2326)) e!3985370)))

(declare-fun b!6585258 () Bool)

(assert (=> b!6585258 (= e!3985370 ((_ map or) call!574528 (derivationStepZipperUp!1629 (Context!11679 (t!379312 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410472)))))) (h!71989 s!2326))))))

(declare-fun bm!574523 () Bool)

(assert (=> bm!574523 (= call!574528 (derivationStepZipperDown!1703 (h!71988 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410472))))) (Context!11679 (t!379312 (exprs!6339 (Context!11679 (t!379312 (exprs!6339 lt!2410472)))))) (h!71989 s!2326)))))

(declare-fun b!6585259 () Bool)

(assert (=> b!6585259 (= e!3985368 ((as const (Array Context!11678 Bool)) false))))

(assert (= (and d!2065967 res!2701296) b!6585257))

(assert (= (and d!2065967 c!1211816) b!6585258))

(assert (= (and d!2065967 (not c!1211816)) b!6585255))

(assert (= (and b!6585255 c!1211815) b!6585256))

(assert (= (and b!6585255 (not c!1211815)) b!6585259))

(assert (= (or b!6585258 b!6585256) bm!574523))

(declare-fun m!7364496 () Bool)

(assert (=> b!6585257 m!7364496))

(declare-fun m!7364498 () Bool)

(assert (=> b!6585258 m!7364498))

(declare-fun m!7364500 () Bool)

(assert (=> bm!574523 m!7364500))

(assert (=> b!6584078 d!2065967))

(declare-fun d!2065969 () Bool)

(assert (=> d!2065969 true))

(declare-fun setRes!44965 () Bool)

(assert (=> d!2065969 setRes!44965))

(declare-fun condSetEmpty!44965 () Bool)

(declare-fun res!2701297 () (InoxSet Context!11678))

(assert (=> d!2065969 (= condSetEmpty!44965 (= res!2701297 ((as const (Array Context!11678 Bool)) false)))))

(assert (=> d!2065969 (= (choose!49162 lt!2410491 lambda!366701) res!2701297)))

(declare-fun setIsEmpty!44965 () Bool)

(assert (=> setIsEmpty!44965 setRes!44965))

(declare-fun setElem!44965 () Context!11678)

(declare-fun tp!1816696 () Bool)

(declare-fun setNonEmpty!44965 () Bool)

(declare-fun e!3985371 () Bool)

(assert (=> setNonEmpty!44965 (= setRes!44965 (and tp!1816696 (inv!84384 setElem!44965) e!3985371))))

(declare-fun setRest!44965 () (InoxSet Context!11678))

(assert (=> setNonEmpty!44965 (= res!2701297 ((_ map or) (store ((as const (Array Context!11678 Bool)) false) setElem!44965 true) setRest!44965))))

(declare-fun b!6585260 () Bool)

(declare-fun tp!1816697 () Bool)

(assert (=> b!6585260 (= e!3985371 tp!1816697)))

(assert (= (and d!2065969 condSetEmpty!44965) setIsEmpty!44965))

(assert (= (and d!2065969 (not condSetEmpty!44965)) setNonEmpty!44965))

(assert (= setNonEmpty!44965 b!6585260))

(declare-fun m!7364502 () Bool)

(assert (=> setNonEmpty!44965 m!7364502))

(assert (=> d!2065409 d!2065969))

(assert (=> d!2065435 d!2065433))

(declare-fun d!2065971 () Bool)

(assert (=> d!2065971 (= (flatMap!1960 lt!2410482 lambda!366701) (dynLambda!26085 lambda!366701 lt!2410462))))

(assert (=> d!2065971 true))

(declare-fun _$13!3850 () Unit!159155)

(assert (=> d!2065971 (= (choose!49161 lt!2410482 lt!2410462 lambda!366701) _$13!3850)))

(declare-fun b_lambda!249147 () Bool)

(assert (=> (not b_lambda!249147) (not d!2065971)))

(declare-fun bs!1685194 () Bool)

(assert (= bs!1685194 d!2065971))

(assert (=> bs!1685194 m!7362582))

(assert (=> bs!1685194 m!7363200))

(assert (=> d!2065435 d!2065971))

(declare-fun bs!1685195 () Bool)

(declare-fun b!6585261 () Bool)

(assert (= bs!1685195 (and b!6585261 b!6584996)))

(declare-fun lambda!366890 () Int)

(assert (=> bs!1685195 (= (and (= (reg!16784 (regTwo!33423 lt!2410464)) (reg!16784 (regTwo!33423 r!7292))) (= (regTwo!33423 lt!2410464) (regTwo!33423 r!7292))) (= lambda!366890 lambda!366869))))

(declare-fun bs!1685196 () Bool)

(assert (= bs!1685196 (and b!6585261 d!2065737)))

(assert (=> bs!1685196 (not (= lambda!366890 lambda!366841))))

(declare-fun bs!1685197 () Bool)

(assert (= bs!1685197 (and b!6585261 d!2065535)))

(assert (=> bs!1685197 (not (= lambda!366890 lambda!366800))))

(declare-fun bs!1685198 () Bool)

(assert (= bs!1685198 (and b!6585261 b!6583175)))

(assert (=> bs!1685198 (not (= lambda!366890 lambda!366699))))

(declare-fun bs!1685199 () Bool)

(assert (= bs!1685199 (and b!6585261 b!6584477)))

(assert (=> bs!1685199 (not (= lambda!366890 lambda!366807))))

(declare-fun bs!1685200 () Bool)

(assert (= bs!1685200 (and b!6585261 b!6584115)))

(assert (=> bs!1685200 (not (= lambda!366890 lambda!366782))))

(declare-fun bs!1685201 () Bool)

(assert (= bs!1685201 (and b!6585261 d!2065395)))

(assert (=> bs!1685201 (not (= lambda!366890 lambda!366763))))

(declare-fun bs!1685202 () Bool)

(assert (= bs!1685202 (and b!6585261 d!2065397)))

(assert (=> bs!1685202 (not (= lambda!366890 lambda!366769))))

(assert (=> bs!1685198 (not (= lambda!366890 lambda!366700))))

(declare-fun bs!1685203 () Bool)

(assert (= bs!1685203 (and b!6585261 b!6583623)))

(assert (=> bs!1685203 (= (and (= (reg!16784 (regTwo!33423 lt!2410464)) (reg!16784 lt!2410464)) (= (regTwo!33423 lt!2410464) lt!2410464)) (= lambda!366890 lambda!366746))))

(declare-fun bs!1685204 () Bool)

(assert (= bs!1685204 (and b!6585261 b!6584962)))

(assert (=> bs!1685204 (= (and (= (reg!16784 (regTwo!33423 lt!2410464)) (reg!16784 (regOne!33423 lt!2410464))) (= (regTwo!33423 lt!2410464) (regOne!33423 lt!2410464))) (= lambda!366890 lambda!366856))))

(declare-fun bs!1685205 () Bool)

(assert (= bs!1685205 (and b!6585261 b!6584970)))

(assert (=> bs!1685205 (not (= lambda!366890 lambda!366861))))

(assert (=> bs!1685202 (not (= lambda!366890 lambda!366768))))

(declare-fun bs!1685206 () Bool)

(assert (= bs!1685206 (and b!6585261 b!6585004)))

(assert (=> bs!1685206 (not (= lambda!366890 lambda!366870))))

(assert (=> bs!1685196 (not (= lambda!366890 lambda!366840))))

(declare-fun bs!1685207 () Bool)

(assert (= bs!1685207 (and b!6585261 b!6584469)))

(assert (=> bs!1685207 (= (and (= (reg!16784 (regTwo!33423 lt!2410464)) (reg!16784 (regOne!33423 r!7292))) (= (regTwo!33423 lt!2410464) (regOne!33423 r!7292))) (= lambda!366890 lambda!366806))))

(declare-fun bs!1685208 () Bool)

(assert (= bs!1685208 (and b!6585261 b!6583631)))

(assert (=> bs!1685208 (not (= lambda!366890 lambda!366747))))

(declare-fun bs!1685209 () Bool)

(assert (= bs!1685209 (and b!6585261 b!6584107)))

(assert (=> bs!1685209 (= (and (= (reg!16784 (regTwo!33423 lt!2410464)) (reg!16784 r!7292)) (= (regTwo!33423 lt!2410464) r!7292)) (= lambda!366890 lambda!366781))))

(assert (=> b!6585261 true))

(assert (=> b!6585261 true))

(declare-fun bs!1685210 () Bool)

(declare-fun b!6585269 () Bool)

(assert (= bs!1685210 (and b!6585269 b!6585261)))

(declare-fun lambda!366891 () Int)

(assert (=> bs!1685210 (not (= lambda!366891 lambda!366890))))

(declare-fun bs!1685211 () Bool)

(assert (= bs!1685211 (and b!6585269 b!6584996)))

(assert (=> bs!1685211 (not (= lambda!366891 lambda!366869))))

(declare-fun bs!1685212 () Bool)

(assert (= bs!1685212 (and b!6585269 d!2065737)))

(assert (=> bs!1685212 (= (and (= (regOne!33422 (regTwo!33423 lt!2410464)) (regOne!33422 r!7292)) (= (regTwo!33422 (regTwo!33423 lt!2410464)) (regTwo!33422 r!7292))) (= lambda!366891 lambda!366841))))

(declare-fun bs!1685213 () Bool)

(assert (= bs!1685213 (and b!6585269 d!2065535)))

(assert (=> bs!1685213 (not (= lambda!366891 lambda!366800))))

(declare-fun bs!1685214 () Bool)

(assert (= bs!1685214 (and b!6585269 b!6583175)))

(assert (=> bs!1685214 (not (= lambda!366891 lambda!366699))))

(declare-fun bs!1685215 () Bool)

(assert (= bs!1685215 (and b!6585269 b!6584477)))

(assert (=> bs!1685215 (= (and (= (regOne!33422 (regTwo!33423 lt!2410464)) (regOne!33422 (regOne!33423 r!7292))) (= (regTwo!33422 (regTwo!33423 lt!2410464)) (regTwo!33422 (regOne!33423 r!7292)))) (= lambda!366891 lambda!366807))))

(declare-fun bs!1685216 () Bool)

(assert (= bs!1685216 (and b!6585269 b!6584115)))

(assert (=> bs!1685216 (= (and (= (regOne!33422 (regTwo!33423 lt!2410464)) (regOne!33422 r!7292)) (= (regTwo!33422 (regTwo!33423 lt!2410464)) (regTwo!33422 r!7292))) (= lambda!366891 lambda!366782))))

(declare-fun bs!1685217 () Bool)

(assert (= bs!1685217 (and b!6585269 d!2065395)))

(assert (=> bs!1685217 (not (= lambda!366891 lambda!366763))))

(declare-fun bs!1685218 () Bool)

(assert (= bs!1685218 (and b!6585269 d!2065397)))

(assert (=> bs!1685218 (= (and (= (regOne!33422 (regTwo!33423 lt!2410464)) (regOne!33422 r!7292)) (= (regTwo!33422 (regTwo!33423 lt!2410464)) (regTwo!33422 r!7292))) (= lambda!366891 lambda!366769))))

(assert (=> bs!1685214 (= (and (= (regOne!33422 (regTwo!33423 lt!2410464)) (regOne!33422 r!7292)) (= (regTwo!33422 (regTwo!33423 lt!2410464)) (regTwo!33422 r!7292))) (= lambda!366891 lambda!366700))))

(declare-fun bs!1685219 () Bool)

(assert (= bs!1685219 (and b!6585269 b!6583623)))

(assert (=> bs!1685219 (not (= lambda!366891 lambda!366746))))

(declare-fun bs!1685220 () Bool)

(assert (= bs!1685220 (and b!6585269 b!6584962)))

(assert (=> bs!1685220 (not (= lambda!366891 lambda!366856))))

(declare-fun bs!1685221 () Bool)

(assert (= bs!1685221 (and b!6585269 b!6584970)))

(assert (=> bs!1685221 (= (and (= (regOne!33422 (regTwo!33423 lt!2410464)) (regOne!33422 (regOne!33423 lt!2410464))) (= (regTwo!33422 (regTwo!33423 lt!2410464)) (regTwo!33422 (regOne!33423 lt!2410464)))) (= lambda!366891 lambda!366861))))

(assert (=> bs!1685218 (not (= lambda!366891 lambda!366768))))

(declare-fun bs!1685222 () Bool)

(assert (= bs!1685222 (and b!6585269 b!6585004)))

(assert (=> bs!1685222 (= (and (= (regOne!33422 (regTwo!33423 lt!2410464)) (regOne!33422 (regTwo!33423 r!7292))) (= (regTwo!33422 (regTwo!33423 lt!2410464)) (regTwo!33422 (regTwo!33423 r!7292)))) (= lambda!366891 lambda!366870))))

(assert (=> bs!1685212 (not (= lambda!366891 lambda!366840))))

(declare-fun bs!1685223 () Bool)

(assert (= bs!1685223 (and b!6585269 b!6584469)))

(assert (=> bs!1685223 (not (= lambda!366891 lambda!366806))))

(declare-fun bs!1685224 () Bool)

(assert (= bs!1685224 (and b!6585269 b!6583631)))

(assert (=> bs!1685224 (= (and (= (regOne!33422 (regTwo!33423 lt!2410464)) (regOne!33422 lt!2410464)) (= (regTwo!33422 (regTwo!33423 lt!2410464)) (regTwo!33422 lt!2410464))) (= lambda!366891 lambda!366747))))

(declare-fun bs!1685225 () Bool)

(assert (= bs!1685225 (and b!6585269 b!6584107)))

(assert (=> bs!1685225 (not (= lambda!366891 lambda!366781))))

(assert (=> b!6585269 true))

(assert (=> b!6585269 true))

(declare-fun e!3985373 () Bool)

(declare-fun call!574529 () Bool)

(assert (=> b!6585261 (= e!3985373 call!574529)))

(declare-fun b!6585262 () Bool)

(declare-fun res!2701300 () Bool)

(assert (=> b!6585262 (=> res!2701300 e!3985373)))

(declare-fun call!574530 () Bool)

(assert (=> b!6585262 (= res!2701300 call!574530)))

(declare-fun e!3985378 () Bool)

(assert (=> b!6585262 (= e!3985378 e!3985373)))

(declare-fun b!6585263 () Bool)

(declare-fun e!3985375 () Bool)

(assert (=> b!6585263 (= e!3985375 call!574530)))

(declare-fun b!6585264 () Bool)

(declare-fun e!3985372 () Bool)

(assert (=> b!6585264 (= e!3985372 (= s!2326 (Cons!65541 (c!1211172 (regTwo!33423 lt!2410464)) Nil!65541)))))

(declare-fun d!2065973 () Bool)

(declare-fun c!1211818 () Bool)

(assert (=> d!2065973 (= c!1211818 ((_ is EmptyExpr!16455) (regTwo!33423 lt!2410464)))))

(assert (=> d!2065973 (= (matchRSpec!3556 (regTwo!33423 lt!2410464) s!2326) e!3985375)))

(declare-fun bm!574524 () Bool)

(assert (=> bm!574524 (= call!574530 (isEmpty!37801 s!2326))))

(declare-fun b!6585265 () Bool)

(declare-fun e!3985377 () Bool)

(declare-fun e!3985374 () Bool)

(assert (=> b!6585265 (= e!3985377 e!3985374)))

(declare-fun res!2701298 () Bool)

(assert (=> b!6585265 (= res!2701298 (matchRSpec!3556 (regOne!33423 (regTwo!33423 lt!2410464)) s!2326))))

(assert (=> b!6585265 (=> res!2701298 e!3985374)))

(declare-fun b!6585266 () Bool)

(declare-fun c!1211819 () Bool)

(assert (=> b!6585266 (= c!1211819 ((_ is Union!16455) (regTwo!33423 lt!2410464)))))

(assert (=> b!6585266 (= e!3985372 e!3985377)))

(declare-fun b!6585267 () Bool)

(declare-fun c!1211817 () Bool)

(assert (=> b!6585267 (= c!1211817 ((_ is ElementMatch!16455) (regTwo!33423 lt!2410464)))))

(declare-fun e!3985376 () Bool)

(assert (=> b!6585267 (= e!3985376 e!3985372)))

(declare-fun b!6585268 () Bool)

(assert (=> b!6585268 (= e!3985374 (matchRSpec!3556 (regTwo!33423 (regTwo!33423 lt!2410464)) s!2326))))

(assert (=> b!6585269 (= e!3985378 call!574529)))

(declare-fun b!6585270 () Bool)

(assert (=> b!6585270 (= e!3985377 e!3985378)))

(declare-fun c!1211820 () Bool)

(assert (=> b!6585270 (= c!1211820 ((_ is Star!16455) (regTwo!33423 lt!2410464)))))

(declare-fun b!6585271 () Bool)

(assert (=> b!6585271 (= e!3985375 e!3985376)))

(declare-fun res!2701299 () Bool)

(assert (=> b!6585271 (= res!2701299 (not ((_ is EmptyLang!16455) (regTwo!33423 lt!2410464))))))

(assert (=> b!6585271 (=> (not res!2701299) (not e!3985376))))

(declare-fun bm!574525 () Bool)

(assert (=> bm!574525 (= call!574529 (Exists!3525 (ite c!1211820 lambda!366890 lambda!366891)))))

(assert (= (and d!2065973 c!1211818) b!6585263))

(assert (= (and d!2065973 (not c!1211818)) b!6585271))

(assert (= (and b!6585271 res!2701299) b!6585267))

(assert (= (and b!6585267 c!1211817) b!6585264))

(assert (= (and b!6585267 (not c!1211817)) b!6585266))

(assert (= (and b!6585266 c!1211819) b!6585265))

(assert (= (and b!6585266 (not c!1211819)) b!6585270))

(assert (= (and b!6585265 (not res!2701298)) b!6585268))

(assert (= (and b!6585270 c!1211820) b!6585262))

(assert (= (and b!6585270 (not c!1211820)) b!6585269))

(assert (= (and b!6585262 (not res!2701300)) b!6585261))

(assert (= (or b!6585261 b!6585269) bm!574525))

(assert (= (or b!6585263 b!6585262) bm!574524))

(assert (=> bm!574524 m!7362824))

(declare-fun m!7364504 () Bool)

(assert (=> b!6585265 m!7364504))

(declare-fun m!7364506 () Bool)

(assert (=> b!6585268 m!7364506))

(declare-fun m!7364508 () Bool)

(assert (=> bm!574525 m!7364508))

(assert (=> b!6583630 d!2065973))

(assert (=> d!2065385 d!2065565))

(declare-fun bs!1685226 () Bool)

(declare-fun d!2065975 () Bool)

(assert (= bs!1685226 (and d!2065975 d!2065261)))

(declare-fun lambda!366892 () Int)

(assert (=> bs!1685226 (= lambda!366892 lambda!366714)))

(declare-fun bs!1685227 () Bool)

(assert (= bs!1685227 (and d!2065975 d!2065665)))

(assert (=> bs!1685227 (= lambda!366892 lambda!366813)))

(declare-fun bs!1685228 () Bool)

(assert (= bs!1685228 (and d!2065975 b!6584625)))

(assert (=> bs!1685228 (not (= lambda!366892 lambda!366830))))

(declare-fun bs!1685229 () Bool)

(assert (= bs!1685229 (and d!2065975 d!2065911)))

(assert (=> bs!1685229 (= lambda!366892 lambda!366875)))

(declare-fun bs!1685230 () Bool)

(assert (= bs!1685230 (and d!2065975 d!2065477)))

(assert (=> bs!1685230 (= lambda!366892 lambda!366783)))

(declare-fun bs!1685231 () Bool)

(assert (= bs!1685231 (and d!2065975 d!2065829)))

(assert (=> bs!1685231 (= lambda!366892 lambda!366863)))

(declare-fun bs!1685232 () Bool)

(assert (= bs!1685232 (and d!2065975 b!6585174)))

(assert (=> bs!1685232 (not (= lambda!366892 lambda!366879))))

(declare-fun bs!1685233 () Bool)

(assert (= bs!1685233 (and d!2065975 b!6585176)))

(assert (=> bs!1685233 (not (= lambda!366892 lambda!366882))))

(declare-fun bs!1685234 () Bool)

(assert (= bs!1685234 (and d!2065975 d!2065619)))

(assert (=> bs!1685234 (= lambda!366892 lambda!366804)))

(declare-fun bs!1685235 () Bool)

(assert (= bs!1685235 (and d!2065975 d!2065759)))

(assert (=> bs!1685235 (= lambda!366892 lambda!366847)))

(declare-fun bs!1685236 () Bool)

(assert (= bs!1685236 (and d!2065975 d!2065439)))

(assert (=> bs!1685236 (= lambda!366892 lambda!366779)))

(declare-fun bs!1685237 () Bool)

(assert (= bs!1685237 (and d!2065975 d!2065815)))

(assert (=> bs!1685237 (= lambda!366892 lambda!366853)))

(declare-fun bs!1685238 () Bool)

(assert (= bs!1685238 (and d!2065975 d!2065727)))

(assert (=> bs!1685238 (= lambda!366892 lambda!366833)))

(declare-fun bs!1685239 () Bool)

(assert (= bs!1685239 (and d!2065975 d!2065401)))

(assert (=> bs!1685239 (= lambda!366892 lambda!366770)))

(declare-fun bs!1685240 () Bool)

(assert (= bs!1685240 (and d!2065975 d!2065515)))

(assert (=> bs!1685240 (= lambda!366892 lambda!366796)))

(declare-fun bs!1685241 () Bool)

(assert (= bs!1685241 (and d!2065975 d!2065379)))

(assert (=> bs!1685241 (= lambda!366892 lambda!366760)))

(declare-fun bs!1685242 () Bool)

(assert (= bs!1685242 (and d!2065975 d!2065729)))

(assert (=> bs!1685242 (= lambda!366892 lambda!366835)))

(declare-fun bs!1685243 () Bool)

(assert (= bs!1685243 (and d!2065975 d!2065623)))

(assert (=> bs!1685243 (= lambda!366892 lambda!366805)))

(declare-fun bs!1685244 () Bool)

(assert (= bs!1685244 (and d!2065975 d!2065757)))

(assert (=> bs!1685244 (= lambda!366892 lambda!366845)))

(declare-fun bs!1685245 () Bool)

(assert (= bs!1685245 (and d!2065975 b!6584627)))

(assert (=> bs!1685245 (not (= lambda!366892 lambda!366831))))

(declare-fun bs!1685246 () Bool)

(assert (= bs!1685246 (and d!2065975 d!2065517)))

(assert (=> bs!1685246 (= lambda!366892 lambda!366797)))

(declare-fun bs!1685247 () Bool)

(assert (= bs!1685247 (and d!2065975 d!2065437)))

(assert (=> bs!1685247 (= lambda!366892 lambda!366776)))

(assert (=> d!2065975 (= (inv!84384 (h!71990 (t!379314 zl!343))) (forall!15634 (exprs!6339 (h!71990 (t!379314 zl!343))) lambda!366892))))

(declare-fun bs!1685248 () Bool)

(assert (= bs!1685248 d!2065975))

(declare-fun m!7364510 () Bool)

(assert (=> bs!1685248 m!7364510))

(assert (=> b!6584153 d!2065975))

(declare-fun d!2065977 () Bool)

(assert (=> d!2065977 (= (isEmpty!37802 (findConcatSeparation!2760 (regOne!33422 r!7292) (regTwo!33422 r!7292) Nil!65541 s!2326 s!2326)) (not ((_ is Some!16345) (findConcatSeparation!2760 (regOne!33422 r!7292) (regTwo!33422 r!7292) Nil!65541 s!2326 s!2326))))))

(assert (=> d!2065399 d!2065977))

(declare-fun d!2065981 () Bool)

(declare-fun e!3985395 () Bool)

(assert (=> d!2065981 e!3985395))

(declare-fun res!2701302 () Bool)

(assert (=> d!2065981 (=> (not res!2701302) (not e!3985395))))

(declare-fun lt!2410750 () Int)

(assert (=> d!2065981 (= res!2701302 (> lt!2410750 0))))

(declare-fun e!3985397 () Int)

(assert (=> d!2065981 (= lt!2410750 e!3985397)))

(declare-fun c!1211839 () Bool)

(assert (=> d!2065981 (= c!1211839 ((_ is ElementMatch!16455) (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(assert (=> d!2065981 (= (regexDepth!352 (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))) lt!2410750)))

(declare-fun b!6585302 () Bool)

(declare-fun e!3985398 () Bool)

(assert (=> b!6585302 (= e!3985398 (= lt!2410750 1))))

(declare-fun b!6585303 () Bool)

(declare-fun c!1211841 () Bool)

(assert (=> b!6585303 (= c!1211841 ((_ is Union!16455) (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(declare-fun e!3985402 () Int)

(declare-fun e!3985394 () Int)

(assert (=> b!6585303 (= e!3985402 e!3985394)))

(declare-fun c!1211836 () Bool)

(declare-fun bm!574538 () Bool)

(declare-fun call!574547 () Int)

(assert (=> bm!574538 (= call!574547 (regexDepth!352 (ite c!1211836 (regOne!33423 (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))) (regTwo!33422 (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))))

(declare-fun b!6585304 () Bool)

(declare-fun call!574545 () Int)

(assert (=> b!6585304 (= e!3985398 (> lt!2410750 call!574545))))

(declare-fun b!6585305 () Bool)

(declare-fun e!3985401 () Bool)

(assert (=> b!6585305 (= e!3985395 e!3985401)))

(assert (=> b!6585305 (= c!1211836 ((_ is Union!16455) (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(declare-fun bm!574539 () Bool)

(declare-fun call!574544 () Int)

(assert (=> bm!574539 (= call!574544 (regexDepth!352 (ite c!1211841 (regOne!33423 (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))) (regTwo!33422 (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))))

(declare-fun b!6585306 () Bool)

(declare-fun e!3985403 () Bool)

(assert (=> b!6585306 (= e!3985401 e!3985403)))

(declare-fun res!2701303 () Bool)

(assert (=> b!6585306 (= res!2701303 (> lt!2410750 call!574547))))

(assert (=> b!6585306 (=> (not res!2701303) (not e!3985403))))

(declare-fun b!6585307 () Bool)

(declare-fun e!3985399 () Int)

(assert (=> b!6585307 (= e!3985394 e!3985399)))

(declare-fun c!1211842 () Bool)

(assert (=> b!6585307 (= c!1211842 ((_ is Concat!25300) (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(declare-fun b!6585308 () Bool)

(assert (=> b!6585308 (= e!3985397 1)))

(declare-fun b!6585309 () Bool)

(declare-fun call!574549 () Int)

(assert (=> b!6585309 (= e!3985403 (> lt!2410750 call!574549))))

(declare-fun b!6585310 () Bool)

(declare-fun e!3985400 () Bool)

(assert (=> b!6585310 (= e!3985400 (> lt!2410750 call!574547))))

(declare-fun call!574546 () Int)

(declare-fun call!574548 () Int)

(declare-fun bm!574540 () Bool)

(assert (=> bm!574540 (= call!574546 (maxBigInt!0 (ite c!1211841 call!574544 call!574548) (ite c!1211841 call!574548 call!574544)))))

(declare-fun b!6585311 () Bool)

(assert (=> b!6585311 (= e!3985399 (+ 1 call!574546))))

(declare-fun b!6585312 () Bool)

(declare-fun e!3985396 () Bool)

(assert (=> b!6585312 (= e!3985401 e!3985396)))

(declare-fun c!1211837 () Bool)

(assert (=> b!6585312 (= c!1211837 ((_ is Concat!25300) (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(declare-fun c!1211840 () Bool)

(declare-fun bm!574541 () Bool)

(declare-fun call!574543 () Int)

(assert (=> bm!574541 (= call!574543 (regexDepth!352 (ite c!1211840 (reg!16784 (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))) (ite c!1211841 (regTwo!33423 (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))) (regOne!33422 (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292)))))))))

(declare-fun b!6585313 () Bool)

(assert (=> b!6585313 (= e!3985397 e!3985402)))

(assert (=> b!6585313 (= c!1211840 ((_ is Star!16455) (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(declare-fun b!6585314 () Bool)

(assert (=> b!6585314 (= e!3985394 (+ 1 call!574546))))

(declare-fun b!6585315 () Bool)

(assert (=> b!6585315 (= e!3985402 (+ 1 call!574543))))

(declare-fun bm!574542 () Bool)

(assert (=> bm!574542 (= call!574545 call!574549)))

(declare-fun b!6585316 () Bool)

(assert (=> b!6585316 (= e!3985399 1)))

(declare-fun b!6585317 () Bool)

(declare-fun res!2701301 () Bool)

(assert (=> b!6585317 (=> (not res!2701301) (not e!3985400))))

(assert (=> b!6585317 (= res!2701301 (> lt!2410750 call!574545))))

(assert (=> b!6585317 (= e!3985396 e!3985400)))

(declare-fun b!6585318 () Bool)

(declare-fun c!1211838 () Bool)

(assert (=> b!6585318 (= c!1211838 ((_ is Star!16455) (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))))))

(assert (=> b!6585318 (= e!3985396 e!3985398)))

(declare-fun bm!574543 () Bool)

(assert (=> bm!574543 (= call!574548 call!574543)))

(declare-fun bm!574544 () Bool)

(assert (=> bm!574544 (= call!574549 (regexDepth!352 (ite c!1211836 (regTwo!33423 (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))) (ite c!1211837 (regOne!33422 (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292))) (reg!16784 (ite c!1211370 (regOne!33423 r!7292) (regTwo!33422 r!7292)))))))))

(assert (= (and d!2065981 c!1211839) b!6585308))

(assert (= (and d!2065981 (not c!1211839)) b!6585313))

(assert (= (and b!6585313 c!1211840) b!6585315))

(assert (= (and b!6585313 (not c!1211840)) b!6585303))

(assert (= (and b!6585303 c!1211841) b!6585314))

(assert (= (and b!6585303 (not c!1211841)) b!6585307))

(assert (= (and b!6585307 c!1211842) b!6585311))

(assert (= (and b!6585307 (not c!1211842)) b!6585316))

(assert (= (or b!6585314 b!6585311) bm!574543))

(assert (= (or b!6585314 b!6585311) bm!574539))

(assert (= (or b!6585314 b!6585311) bm!574540))

(assert (= (or b!6585315 bm!574543) bm!574541))

(assert (= (and d!2065981 res!2701302) b!6585305))

(assert (= (and b!6585305 c!1211836) b!6585306))

(assert (= (and b!6585305 (not c!1211836)) b!6585312))

(assert (= (and b!6585306 res!2701303) b!6585309))

(assert (= (and b!6585312 c!1211837) b!6585317))

(assert (= (and b!6585312 (not c!1211837)) b!6585318))

(assert (= (and b!6585317 res!2701301) b!6585310))

(assert (= (and b!6585318 c!1211838) b!6585304))

(assert (= (and b!6585318 (not c!1211838)) b!6585302))

(assert (= (or b!6585317 b!6585304) bm!574542))

(assert (= (or b!6585309 bm!574542) bm!574544))

(assert (= (or b!6585306 b!6585310) bm!574538))

(declare-fun m!7364520 () Bool)

(assert (=> bm!574540 m!7364520))

(declare-fun m!7364522 () Bool)

(assert (=> bm!574541 m!7364522))

(declare-fun m!7364526 () Bool)

(assert (=> bm!574544 m!7364526))

(declare-fun m!7364528 () Bool)

(assert (=> bm!574538 m!7364528))

(declare-fun m!7364532 () Bool)

(assert (=> bm!574539 m!7364532))

(assert (=> bm!574207 d!2065981))

(declare-fun b!6585330 () Bool)

(declare-fun e!3985411 () Bool)

(declare-fun tp!1816700 () Bool)

(assert (=> b!6585330 (= e!3985411 tp!1816700)))

(declare-fun b!6585328 () Bool)

(assert (=> b!6585328 (= e!3985411 tp_is_empty!42163)))

(assert (=> b!6584199 (= tp!1816673 e!3985411)))

(declare-fun b!6585329 () Bool)

(declare-fun tp!1816698 () Bool)

(declare-fun tp!1816701 () Bool)

(assert (=> b!6585329 (= e!3985411 (and tp!1816698 tp!1816701))))

(declare-fun b!6585331 () Bool)

(declare-fun tp!1816702 () Bool)

(declare-fun tp!1816699 () Bool)

(assert (=> b!6585331 (= e!3985411 (and tp!1816702 tp!1816699))))

(assert (= (and b!6584199 ((_ is ElementMatch!16455) (reg!16784 (regTwo!33422 r!7292)))) b!6585328))

(assert (= (and b!6584199 ((_ is Concat!25300) (reg!16784 (regTwo!33422 r!7292)))) b!6585329))

(assert (= (and b!6584199 ((_ is Star!16455) (reg!16784 (regTwo!33422 r!7292)))) b!6585330))

(assert (= (and b!6584199 ((_ is Union!16455) (reg!16784 (regTwo!33422 r!7292)))) b!6585331))

(declare-fun b!6585336 () Bool)

(declare-fun e!3985414 () Bool)

(declare-fun tp!1816709 () Bool)

(assert (=> b!6585336 (= e!3985414 tp!1816709)))

(declare-fun b!6585334 () Bool)

(assert (=> b!6585334 (= e!3985414 tp_is_empty!42163)))

(assert (=> b!6584172 (= tp!1816643 e!3985414)))

(declare-fun b!6585335 () Bool)

(declare-fun tp!1816707 () Bool)

(declare-fun tp!1816710 () Bool)

(assert (=> b!6585335 (= e!3985414 (and tp!1816707 tp!1816710))))

(declare-fun b!6585337 () Bool)

(declare-fun tp!1816711 () Bool)

(declare-fun tp!1816708 () Bool)

(assert (=> b!6585337 (= e!3985414 (and tp!1816711 tp!1816708))))

(assert (= (and b!6584172 ((_ is ElementMatch!16455) (regOne!33423 (regTwo!33423 r!7292)))) b!6585334))

(assert (= (and b!6584172 ((_ is Concat!25300) (regOne!33423 (regTwo!33423 r!7292)))) b!6585335))

(assert (= (and b!6584172 ((_ is Star!16455) (regOne!33423 (regTwo!33423 r!7292)))) b!6585336))

(assert (= (and b!6584172 ((_ is Union!16455) (regOne!33423 (regTwo!33423 r!7292)))) b!6585337))

(declare-fun b!6585340 () Bool)

(declare-fun e!3985415 () Bool)

(declare-fun tp!1816714 () Bool)

(assert (=> b!6585340 (= e!3985415 tp!1816714)))

(declare-fun b!6585338 () Bool)

(assert (=> b!6585338 (= e!3985415 tp_is_empty!42163)))

(assert (=> b!6584172 (= tp!1816640 e!3985415)))

(declare-fun b!6585339 () Bool)

(declare-fun tp!1816712 () Bool)

(declare-fun tp!1816715 () Bool)

(assert (=> b!6585339 (= e!3985415 (and tp!1816712 tp!1816715))))

(declare-fun b!6585341 () Bool)

(declare-fun tp!1816716 () Bool)

(declare-fun tp!1816713 () Bool)

(assert (=> b!6585341 (= e!3985415 (and tp!1816716 tp!1816713))))

(assert (= (and b!6584172 ((_ is ElementMatch!16455) (regTwo!33423 (regTwo!33423 r!7292)))) b!6585338))

(assert (= (and b!6584172 ((_ is Concat!25300) (regTwo!33423 (regTwo!33423 r!7292)))) b!6585339))

(assert (= (and b!6584172 ((_ is Star!16455) (regTwo!33423 (regTwo!33423 r!7292)))) b!6585340))

(assert (= (and b!6584172 ((_ is Union!16455) (regTwo!33423 (regTwo!33423 r!7292)))) b!6585341))

(declare-fun b!6585344 () Bool)

(declare-fun e!3985416 () Bool)

(declare-fun tp!1816719 () Bool)

(assert (=> b!6585344 (= e!3985416 tp!1816719)))

(declare-fun b!6585342 () Bool)

(assert (=> b!6585342 (= e!3985416 tp_is_empty!42163)))

(assert (=> b!6584184 (= tp!1816656 e!3985416)))

(declare-fun b!6585343 () Bool)

(declare-fun tp!1816717 () Bool)

(declare-fun tp!1816720 () Bool)

(assert (=> b!6585343 (= e!3985416 (and tp!1816717 tp!1816720))))

(declare-fun b!6585345 () Bool)

(declare-fun tp!1816721 () Bool)

(declare-fun tp!1816718 () Bool)

(assert (=> b!6585345 (= e!3985416 (and tp!1816721 tp!1816718))))

(assert (= (and b!6584184 ((_ is ElementMatch!16455) (regOne!33422 (reg!16784 r!7292)))) b!6585342))

(assert (= (and b!6584184 ((_ is Concat!25300) (regOne!33422 (reg!16784 r!7292)))) b!6585343))

(assert (= (and b!6584184 ((_ is Star!16455) (regOne!33422 (reg!16784 r!7292)))) b!6585344))

(assert (= (and b!6584184 ((_ is Union!16455) (regOne!33422 (reg!16784 r!7292)))) b!6585345))

(declare-fun b!6585348 () Bool)

(declare-fun e!3985417 () Bool)

(declare-fun tp!1816724 () Bool)

(assert (=> b!6585348 (= e!3985417 tp!1816724)))

(declare-fun b!6585346 () Bool)

(assert (=> b!6585346 (= e!3985417 tp_is_empty!42163)))

(assert (=> b!6584184 (= tp!1816659 e!3985417)))

(declare-fun b!6585347 () Bool)

(declare-fun tp!1816722 () Bool)

(declare-fun tp!1816725 () Bool)

(assert (=> b!6585347 (= e!3985417 (and tp!1816722 tp!1816725))))

(declare-fun b!6585349 () Bool)

(declare-fun tp!1816726 () Bool)

(declare-fun tp!1816723 () Bool)

(assert (=> b!6585349 (= e!3985417 (and tp!1816726 tp!1816723))))

(assert (= (and b!6584184 ((_ is ElementMatch!16455) (regTwo!33422 (reg!16784 r!7292)))) b!6585346))

(assert (= (and b!6584184 ((_ is Concat!25300) (regTwo!33422 (reg!16784 r!7292)))) b!6585347))

(assert (= (and b!6584184 ((_ is Star!16455) (regTwo!33422 (reg!16784 r!7292)))) b!6585348))

(assert (= (and b!6584184 ((_ is Union!16455) (regTwo!33422 (reg!16784 r!7292)))) b!6585349))

(declare-fun b!6585352 () Bool)

(declare-fun e!3985418 () Bool)

(declare-fun tp!1816729 () Bool)

(assert (=> b!6585352 (= e!3985418 tp!1816729)))

(declare-fun b!6585350 () Bool)

(assert (=> b!6585350 (= e!3985418 tp_is_empty!42163)))

(assert (=> b!6584200 (= tp!1816675 e!3985418)))

(declare-fun b!6585351 () Bool)

(declare-fun tp!1816727 () Bool)

(declare-fun tp!1816730 () Bool)

(assert (=> b!6585351 (= e!3985418 (and tp!1816727 tp!1816730))))

(declare-fun b!6585353 () Bool)

(declare-fun tp!1816731 () Bool)

(declare-fun tp!1816728 () Bool)

(assert (=> b!6585353 (= e!3985418 (and tp!1816731 tp!1816728))))

(assert (= (and b!6584200 ((_ is ElementMatch!16455) (regOne!33423 (regTwo!33422 r!7292)))) b!6585350))

(assert (= (and b!6584200 ((_ is Concat!25300) (regOne!33423 (regTwo!33422 r!7292)))) b!6585351))

(assert (= (and b!6584200 ((_ is Star!16455) (regOne!33423 (regTwo!33422 r!7292)))) b!6585352))

(assert (= (and b!6584200 ((_ is Union!16455) (regOne!33423 (regTwo!33422 r!7292)))) b!6585353))

(declare-fun b!6585356 () Bool)

(declare-fun e!3985419 () Bool)

(declare-fun tp!1816734 () Bool)

(assert (=> b!6585356 (= e!3985419 tp!1816734)))

(declare-fun b!6585354 () Bool)

(assert (=> b!6585354 (= e!3985419 tp_is_empty!42163)))

(assert (=> b!6584200 (= tp!1816672 e!3985419)))

(declare-fun b!6585355 () Bool)

(declare-fun tp!1816732 () Bool)

(declare-fun tp!1816735 () Bool)

(assert (=> b!6585355 (= e!3985419 (and tp!1816732 tp!1816735))))

(declare-fun b!6585357 () Bool)

(declare-fun tp!1816736 () Bool)

(declare-fun tp!1816733 () Bool)

(assert (=> b!6585357 (= e!3985419 (and tp!1816736 tp!1816733))))

(assert (= (and b!6584200 ((_ is ElementMatch!16455) (regTwo!33423 (regTwo!33422 r!7292)))) b!6585354))

(assert (= (and b!6584200 ((_ is Concat!25300) (regTwo!33423 (regTwo!33422 r!7292)))) b!6585355))

(assert (= (and b!6584200 ((_ is Star!16455) (regTwo!33423 (regTwo!33422 r!7292)))) b!6585356))

(assert (= (and b!6584200 ((_ is Union!16455) (regTwo!33423 (regTwo!33422 r!7292)))) b!6585357))

(declare-fun b!6585361 () Bool)

(declare-fun e!3985421 () Bool)

(declare-fun tp!1816741 () Bool)

(assert (=> b!6585361 (= e!3985421 tp!1816741)))

(declare-fun b!6585359 () Bool)

(assert (=> b!6585359 (= e!3985421 tp_is_empty!42163)))

(assert (=> b!6584185 (= tp!1816658 e!3985421)))

(declare-fun b!6585360 () Bool)

(declare-fun tp!1816739 () Bool)

(declare-fun tp!1816742 () Bool)

(assert (=> b!6585360 (= e!3985421 (and tp!1816739 tp!1816742))))

(declare-fun b!6585362 () Bool)

(declare-fun tp!1816743 () Bool)

(declare-fun tp!1816740 () Bool)

(assert (=> b!6585362 (= e!3985421 (and tp!1816743 tp!1816740))))

(assert (= (and b!6584185 ((_ is ElementMatch!16455) (reg!16784 (reg!16784 r!7292)))) b!6585359))

(assert (= (and b!6584185 ((_ is Concat!25300) (reg!16784 (reg!16784 r!7292)))) b!6585360))

(assert (= (and b!6584185 ((_ is Star!16455) (reg!16784 (reg!16784 r!7292)))) b!6585361))

(assert (= (and b!6584185 ((_ is Union!16455) (reg!16784 (reg!16784 r!7292)))) b!6585362))

(declare-fun b!6585365 () Bool)

(declare-fun e!3985422 () Bool)

(declare-fun tp!1816746 () Bool)

(assert (=> b!6585365 (= e!3985422 tp!1816746)))

(declare-fun b!6585363 () Bool)

(assert (=> b!6585363 (= e!3985422 tp_is_empty!42163)))

(assert (=> b!6584170 (= tp!1816639 e!3985422)))

(declare-fun b!6585364 () Bool)

(declare-fun tp!1816744 () Bool)

(declare-fun tp!1816747 () Bool)

(assert (=> b!6585364 (= e!3985422 (and tp!1816744 tp!1816747))))

(declare-fun b!6585366 () Bool)

(declare-fun tp!1816748 () Bool)

(declare-fun tp!1816745 () Bool)

(assert (=> b!6585366 (= e!3985422 (and tp!1816748 tp!1816745))))

(assert (= (and b!6584170 ((_ is ElementMatch!16455) (regOne!33422 (regTwo!33423 r!7292)))) b!6585363))

(assert (= (and b!6584170 ((_ is Concat!25300) (regOne!33422 (regTwo!33423 r!7292)))) b!6585364))

(assert (= (and b!6584170 ((_ is Star!16455) (regOne!33422 (regTwo!33423 r!7292)))) b!6585365))

(assert (= (and b!6584170 ((_ is Union!16455) (regOne!33422 (regTwo!33423 r!7292)))) b!6585366))

(declare-fun b!6585369 () Bool)

(declare-fun e!3985423 () Bool)

(declare-fun tp!1816752 () Bool)

(assert (=> b!6585369 (= e!3985423 tp!1816752)))

(declare-fun b!6585367 () Bool)

(assert (=> b!6585367 (= e!3985423 tp_is_empty!42163)))

(assert (=> b!6584170 (= tp!1816642 e!3985423)))

(declare-fun b!6585368 () Bool)

(declare-fun tp!1816750 () Bool)

(declare-fun tp!1816753 () Bool)

(assert (=> b!6585368 (= e!3985423 (and tp!1816750 tp!1816753))))

(declare-fun b!6585370 () Bool)

(declare-fun tp!1816754 () Bool)

(declare-fun tp!1816751 () Bool)

(assert (=> b!6585370 (= e!3985423 (and tp!1816754 tp!1816751))))

(assert (= (and b!6584170 ((_ is ElementMatch!16455) (regTwo!33422 (regTwo!33423 r!7292)))) b!6585367))

(assert (= (and b!6584170 ((_ is Concat!25300) (regTwo!33422 (regTwo!33423 r!7292)))) b!6585368))

(assert (= (and b!6584170 ((_ is Star!16455) (regTwo!33422 (regTwo!33423 r!7292)))) b!6585369))

(assert (= (and b!6584170 ((_ is Union!16455) (regTwo!33422 (regTwo!33423 r!7292)))) b!6585370))

(declare-fun b!6585374 () Bool)

(declare-fun e!3985425 () Bool)

(declare-fun tp!1816758 () Bool)

(assert (=> b!6585374 (= e!3985425 tp!1816758)))

(declare-fun b!6585372 () Bool)

(assert (=> b!6585372 (= e!3985425 tp_is_empty!42163)))

(assert (=> b!6584171 (= tp!1816641 e!3985425)))

(declare-fun b!6585373 () Bool)

(declare-fun tp!1816756 () Bool)

(declare-fun tp!1816759 () Bool)

(assert (=> b!6585373 (= e!3985425 (and tp!1816756 tp!1816759))))

(declare-fun b!6585375 () Bool)

(declare-fun tp!1816760 () Bool)

(declare-fun tp!1816757 () Bool)

(assert (=> b!6585375 (= e!3985425 (and tp!1816760 tp!1816757))))

(assert (= (and b!6584171 ((_ is ElementMatch!16455) (reg!16784 (regTwo!33423 r!7292)))) b!6585372))

(assert (= (and b!6584171 ((_ is Concat!25300) (reg!16784 (regTwo!33423 r!7292)))) b!6585373))

(assert (= (and b!6584171 ((_ is Star!16455) (reg!16784 (regTwo!33423 r!7292)))) b!6585374))

(assert (= (and b!6584171 ((_ is Union!16455) (reg!16784 (regTwo!33423 r!7292)))) b!6585375))

(declare-fun b!6585380 () Bool)

(declare-fun e!3985429 () Bool)

(declare-fun tp!1816763 () Bool)

(assert (=> b!6585380 (= e!3985429 tp!1816763)))

(declare-fun b!6585377 () Bool)

(assert (=> b!6585377 (= e!3985429 tp_is_empty!42163)))

(assert (=> b!6584198 (= tp!1816671 e!3985429)))

(declare-fun b!6585378 () Bool)

(declare-fun tp!1816761 () Bool)

(declare-fun tp!1816764 () Bool)

(assert (=> b!6585378 (= e!3985429 (and tp!1816761 tp!1816764))))

(declare-fun b!6585381 () Bool)

(declare-fun tp!1816765 () Bool)

(declare-fun tp!1816762 () Bool)

(assert (=> b!6585381 (= e!3985429 (and tp!1816765 tp!1816762))))

(assert (= (and b!6584198 ((_ is ElementMatch!16455) (regOne!33422 (regTwo!33422 r!7292)))) b!6585377))

(assert (= (and b!6584198 ((_ is Concat!25300) (regOne!33422 (regTwo!33422 r!7292)))) b!6585378))

(assert (= (and b!6584198 ((_ is Star!16455) (regOne!33422 (regTwo!33422 r!7292)))) b!6585380))

(assert (= (and b!6584198 ((_ is Union!16455) (regOne!33422 (regTwo!33422 r!7292)))) b!6585381))

(declare-fun b!6585387 () Bool)

(declare-fun e!3985430 () Bool)

(declare-fun tp!1816768 () Bool)

(assert (=> b!6585387 (= e!3985430 tp!1816768)))

(declare-fun b!6585385 () Bool)

(assert (=> b!6585385 (= e!3985430 tp_is_empty!42163)))

(assert (=> b!6584198 (= tp!1816674 e!3985430)))

(declare-fun b!6585386 () Bool)

(declare-fun tp!1816766 () Bool)

(declare-fun tp!1816769 () Bool)

(assert (=> b!6585386 (= e!3985430 (and tp!1816766 tp!1816769))))

(declare-fun b!6585388 () Bool)

(declare-fun tp!1816770 () Bool)

(declare-fun tp!1816767 () Bool)

(assert (=> b!6585388 (= e!3985430 (and tp!1816770 tp!1816767))))

(assert (= (and b!6584198 ((_ is ElementMatch!16455) (regTwo!33422 (regTwo!33422 r!7292)))) b!6585385))

(assert (= (and b!6584198 ((_ is Concat!25300) (regTwo!33422 (regTwo!33422 r!7292)))) b!6585386))

(assert (= (and b!6584198 ((_ is Star!16455) (regTwo!33422 (regTwo!33422 r!7292)))) b!6585387))

(assert (= (and b!6584198 ((_ is Union!16455) (regTwo!33422 (regTwo!33422 r!7292)))) b!6585388))

(declare-fun b!6585391 () Bool)

(declare-fun e!3985431 () Bool)

(declare-fun tp!1816773 () Bool)

(assert (=> b!6585391 (= e!3985431 tp!1816773)))

(declare-fun b!6585389 () Bool)

(assert (=> b!6585389 (= e!3985431 tp_is_empty!42163)))

(assert (=> b!6584186 (= tp!1816660 e!3985431)))

(declare-fun b!6585390 () Bool)

(declare-fun tp!1816771 () Bool)

(declare-fun tp!1816774 () Bool)

(assert (=> b!6585390 (= e!3985431 (and tp!1816771 tp!1816774))))

(declare-fun b!6585392 () Bool)

(declare-fun tp!1816775 () Bool)

(declare-fun tp!1816772 () Bool)

(assert (=> b!6585392 (= e!3985431 (and tp!1816775 tp!1816772))))

(assert (= (and b!6584186 ((_ is ElementMatch!16455) (regOne!33423 (reg!16784 r!7292)))) b!6585389))

(assert (= (and b!6584186 ((_ is Concat!25300) (regOne!33423 (reg!16784 r!7292)))) b!6585390))

(assert (= (and b!6584186 ((_ is Star!16455) (regOne!33423 (reg!16784 r!7292)))) b!6585391))

(assert (= (and b!6584186 ((_ is Union!16455) (regOne!33423 (reg!16784 r!7292)))) b!6585392))

(declare-fun b!6585395 () Bool)

(declare-fun e!3985432 () Bool)

(declare-fun tp!1816778 () Bool)

(assert (=> b!6585395 (= e!3985432 tp!1816778)))

(declare-fun b!6585393 () Bool)

(assert (=> b!6585393 (= e!3985432 tp_is_empty!42163)))

(assert (=> b!6584186 (= tp!1816657 e!3985432)))

(declare-fun b!6585394 () Bool)

(declare-fun tp!1816776 () Bool)

(declare-fun tp!1816779 () Bool)

(assert (=> b!6585394 (= e!3985432 (and tp!1816776 tp!1816779))))

(declare-fun b!6585396 () Bool)

(declare-fun tp!1816780 () Bool)

(declare-fun tp!1816777 () Bool)

(assert (=> b!6585396 (= e!3985432 (and tp!1816780 tp!1816777))))

(assert (= (and b!6584186 ((_ is ElementMatch!16455) (regTwo!33423 (reg!16784 r!7292)))) b!6585393))

(assert (= (and b!6584186 ((_ is Concat!25300) (regTwo!33423 (reg!16784 r!7292)))) b!6585394))

(assert (= (and b!6584186 ((_ is Star!16455) (regTwo!33423 (reg!16784 r!7292)))) b!6585395))

(assert (= (and b!6584186 ((_ is Union!16455) (regTwo!33423 (reg!16784 r!7292)))) b!6585396))

(declare-fun b!6585397 () Bool)

(declare-fun e!3985433 () Bool)

(declare-fun tp!1816781 () Bool)

(assert (=> b!6585397 (= e!3985433 (and tp_is_empty!42163 tp!1816781))))

(assert (=> b!6584192 (= tp!1816665 e!3985433)))

(assert (= (and b!6584192 ((_ is Cons!65541) (t!379313 (t!379313 s!2326)))) b!6585397))

(declare-fun b!6585400 () Bool)

(declare-fun e!3985434 () Bool)

(declare-fun tp!1816784 () Bool)

(assert (=> b!6585400 (= e!3985434 tp!1816784)))

(declare-fun b!6585398 () Bool)

(assert (=> b!6585398 (= e!3985434 tp_is_empty!42163)))

(assert (=> b!6584194 (= tp!1816666 e!3985434)))

(declare-fun b!6585399 () Bool)

(declare-fun tp!1816782 () Bool)

(declare-fun tp!1816785 () Bool)

(assert (=> b!6585399 (= e!3985434 (and tp!1816782 tp!1816785))))

(declare-fun b!6585401 () Bool)

(declare-fun tp!1816786 () Bool)

(declare-fun tp!1816783 () Bool)

(assert (=> b!6585401 (= e!3985434 (and tp!1816786 tp!1816783))))

(assert (= (and b!6584194 ((_ is ElementMatch!16455) (regOne!33422 (regOne!33422 r!7292)))) b!6585398))

(assert (= (and b!6584194 ((_ is Concat!25300) (regOne!33422 (regOne!33422 r!7292)))) b!6585399))

(assert (= (and b!6584194 ((_ is Star!16455) (regOne!33422 (regOne!33422 r!7292)))) b!6585400))

(assert (= (and b!6584194 ((_ is Union!16455) (regOne!33422 (regOne!33422 r!7292)))) b!6585401))

(declare-fun b!6585404 () Bool)

(declare-fun e!3985435 () Bool)

(declare-fun tp!1816789 () Bool)

(assert (=> b!6585404 (= e!3985435 tp!1816789)))

(declare-fun b!6585402 () Bool)

(assert (=> b!6585402 (= e!3985435 tp_is_empty!42163)))

(assert (=> b!6584194 (= tp!1816669 e!3985435)))

(declare-fun b!6585403 () Bool)

(declare-fun tp!1816787 () Bool)

(declare-fun tp!1816790 () Bool)

(assert (=> b!6585403 (= e!3985435 (and tp!1816787 tp!1816790))))

(declare-fun b!6585405 () Bool)

(declare-fun tp!1816791 () Bool)

(declare-fun tp!1816788 () Bool)

(assert (=> b!6585405 (= e!3985435 (and tp!1816791 tp!1816788))))

(assert (= (and b!6584194 ((_ is ElementMatch!16455) (regTwo!33422 (regOne!33422 r!7292)))) b!6585402))

(assert (= (and b!6584194 ((_ is Concat!25300) (regTwo!33422 (regOne!33422 r!7292)))) b!6585403))

(assert (= (and b!6584194 ((_ is Star!16455) (regTwo!33422 (regOne!33422 r!7292)))) b!6585404))

(assert (= (and b!6584194 ((_ is Union!16455) (regTwo!33422 (regOne!33422 r!7292)))) b!6585405))

(declare-fun b!6585408 () Bool)

(declare-fun e!3985436 () Bool)

(declare-fun tp!1816794 () Bool)

(assert (=> b!6585408 (= e!3985436 tp!1816794)))

(declare-fun b!6585406 () Bool)

(assert (=> b!6585406 (= e!3985436 tp_is_empty!42163)))

(assert (=> b!6584195 (= tp!1816668 e!3985436)))

(declare-fun b!6585407 () Bool)

(declare-fun tp!1816792 () Bool)

(declare-fun tp!1816795 () Bool)

(assert (=> b!6585407 (= e!3985436 (and tp!1816792 tp!1816795))))

(declare-fun b!6585409 () Bool)

(declare-fun tp!1816796 () Bool)

(declare-fun tp!1816793 () Bool)

(assert (=> b!6585409 (= e!3985436 (and tp!1816796 tp!1816793))))

(assert (= (and b!6584195 ((_ is ElementMatch!16455) (reg!16784 (regOne!33422 r!7292)))) b!6585406))

(assert (= (and b!6584195 ((_ is Concat!25300) (reg!16784 (regOne!33422 r!7292)))) b!6585407))

(assert (= (and b!6584195 ((_ is Star!16455) (reg!16784 (regOne!33422 r!7292)))) b!6585408))

(assert (= (and b!6584195 ((_ is Union!16455) (reg!16784 (regOne!33422 r!7292)))) b!6585409))

(declare-fun b!6585410 () Bool)

(declare-fun e!3985437 () Bool)

(declare-fun tp!1816797 () Bool)

(declare-fun tp!1816798 () Bool)

(assert (=> b!6585410 (= e!3985437 (and tp!1816797 tp!1816798))))

(assert (=> b!6584182 (= tp!1816654 e!3985437)))

(assert (= (and b!6584182 ((_ is Cons!65540) (exprs!6339 setElem!44958))) b!6585410))

(declare-fun b!6585413 () Bool)

(declare-fun e!3985438 () Bool)

(declare-fun tp!1816801 () Bool)

(assert (=> b!6585413 (= e!3985438 tp!1816801)))

(declare-fun b!6585411 () Bool)

(assert (=> b!6585411 (= e!3985438 tp_is_empty!42163)))

(assert (=> b!6584168 (= tp!1816638 e!3985438)))

(declare-fun b!6585412 () Bool)

(declare-fun tp!1816799 () Bool)

(declare-fun tp!1816802 () Bool)

(assert (=> b!6585412 (= e!3985438 (and tp!1816799 tp!1816802))))

(declare-fun b!6585414 () Bool)

(declare-fun tp!1816803 () Bool)

(declare-fun tp!1816800 () Bool)

(assert (=> b!6585414 (= e!3985438 (and tp!1816803 tp!1816800))))

(assert (= (and b!6584168 ((_ is ElementMatch!16455) (regOne!33423 (regOne!33423 r!7292)))) b!6585411))

(assert (= (and b!6584168 ((_ is Concat!25300) (regOne!33423 (regOne!33423 r!7292)))) b!6585412))

(assert (= (and b!6584168 ((_ is Star!16455) (regOne!33423 (regOne!33423 r!7292)))) b!6585413))

(assert (= (and b!6584168 ((_ is Union!16455) (regOne!33423 (regOne!33423 r!7292)))) b!6585414))

(declare-fun b!6585417 () Bool)

(declare-fun e!3985439 () Bool)

(declare-fun tp!1816806 () Bool)

(assert (=> b!6585417 (= e!3985439 tp!1816806)))

(declare-fun b!6585415 () Bool)

(assert (=> b!6585415 (= e!3985439 tp_is_empty!42163)))

(assert (=> b!6584168 (= tp!1816635 e!3985439)))

(declare-fun b!6585416 () Bool)

(declare-fun tp!1816804 () Bool)

(declare-fun tp!1816807 () Bool)

(assert (=> b!6585416 (= e!3985439 (and tp!1816804 tp!1816807))))

(declare-fun b!6585418 () Bool)

(declare-fun tp!1816808 () Bool)

(declare-fun tp!1816805 () Bool)

(assert (=> b!6585418 (= e!3985439 (and tp!1816808 tp!1816805))))

(assert (= (and b!6584168 ((_ is ElementMatch!16455) (regTwo!33423 (regOne!33423 r!7292)))) b!6585415))

(assert (= (and b!6584168 ((_ is Concat!25300) (regTwo!33423 (regOne!33423 r!7292)))) b!6585416))

(assert (= (and b!6584168 ((_ is Star!16455) (regTwo!33423 (regOne!33423 r!7292)))) b!6585417))

(assert (= (and b!6584168 ((_ is Union!16455) (regTwo!33423 (regOne!33423 r!7292)))) b!6585418))

(declare-fun b!6585425 () Bool)

(declare-fun e!3985442 () Bool)

(declare-fun tp!1816811 () Bool)

(assert (=> b!6585425 (= e!3985442 tp!1816811)))

(declare-fun b!6585423 () Bool)

(assert (=> b!6585423 (= e!3985442 tp_is_empty!42163)))

(assert (=> b!6584196 (= tp!1816670 e!3985442)))

(declare-fun b!6585424 () Bool)

(declare-fun tp!1816809 () Bool)

(declare-fun tp!1816812 () Bool)

(assert (=> b!6585424 (= e!3985442 (and tp!1816809 tp!1816812))))

(declare-fun b!6585426 () Bool)

(declare-fun tp!1816813 () Bool)

(declare-fun tp!1816810 () Bool)

(assert (=> b!6585426 (= e!3985442 (and tp!1816813 tp!1816810))))

(assert (= (and b!6584196 ((_ is ElementMatch!16455) (regOne!33423 (regOne!33422 r!7292)))) b!6585423))

(assert (= (and b!6584196 ((_ is Concat!25300) (regOne!33423 (regOne!33422 r!7292)))) b!6585424))

(assert (= (and b!6584196 ((_ is Star!16455) (regOne!33423 (regOne!33422 r!7292)))) b!6585425))

(assert (= (and b!6584196 ((_ is Union!16455) (regOne!33423 (regOne!33422 r!7292)))) b!6585426))

(declare-fun b!6585429 () Bool)

(declare-fun e!3985443 () Bool)

(declare-fun tp!1816816 () Bool)

(assert (=> b!6585429 (= e!3985443 tp!1816816)))

(declare-fun b!6585427 () Bool)

(assert (=> b!6585427 (= e!3985443 tp_is_empty!42163)))

(assert (=> b!6584196 (= tp!1816667 e!3985443)))

(declare-fun b!6585428 () Bool)

(declare-fun tp!1816814 () Bool)

(declare-fun tp!1816817 () Bool)

(assert (=> b!6585428 (= e!3985443 (and tp!1816814 tp!1816817))))

(declare-fun b!6585430 () Bool)

(declare-fun tp!1816818 () Bool)

(declare-fun tp!1816815 () Bool)

(assert (=> b!6585430 (= e!3985443 (and tp!1816818 tp!1816815))))

(assert (= (and b!6584196 ((_ is ElementMatch!16455) (regTwo!33423 (regOne!33422 r!7292)))) b!6585427))

(assert (= (and b!6584196 ((_ is Concat!25300) (regTwo!33423 (regOne!33422 r!7292)))) b!6585428))

(assert (= (and b!6584196 ((_ is Star!16455) (regTwo!33423 (regOne!33422 r!7292)))) b!6585429))

(assert (= (and b!6584196 ((_ is Union!16455) (regTwo!33423 (regOne!33422 r!7292)))) b!6585430))

(declare-fun b!6585433 () Bool)

(declare-fun e!3985444 () Bool)

(declare-fun tp!1816821 () Bool)

(assert (=> b!6585433 (= e!3985444 tp!1816821)))

(declare-fun b!6585431 () Bool)

(assert (=> b!6585431 (= e!3985444 tp_is_empty!42163)))

(assert (=> b!6584187 (= tp!1816661 e!3985444)))

(declare-fun b!6585432 () Bool)

(declare-fun tp!1816819 () Bool)

(declare-fun tp!1816822 () Bool)

(assert (=> b!6585432 (= e!3985444 (and tp!1816819 tp!1816822))))

(declare-fun b!6585434 () Bool)

(declare-fun tp!1816823 () Bool)

(declare-fun tp!1816820 () Bool)

(assert (=> b!6585434 (= e!3985444 (and tp!1816823 tp!1816820))))

(assert (= (and b!6584187 ((_ is ElementMatch!16455) (h!71988 (exprs!6339 (h!71990 zl!343))))) b!6585431))

(assert (= (and b!6584187 ((_ is Concat!25300) (h!71988 (exprs!6339 (h!71990 zl!343))))) b!6585432))

(assert (= (and b!6584187 ((_ is Star!16455) (h!71988 (exprs!6339 (h!71990 zl!343))))) b!6585433))

(assert (= (and b!6584187 ((_ is Union!16455) (h!71988 (exprs!6339 (h!71990 zl!343))))) b!6585434))

(declare-fun b!6585435 () Bool)

(declare-fun e!3985445 () Bool)

(declare-fun tp!1816824 () Bool)

(declare-fun tp!1816825 () Bool)

(assert (=> b!6585435 (= e!3985445 (and tp!1816824 tp!1816825))))

(assert (=> b!6584187 (= tp!1816662 e!3985445)))

(assert (= (and b!6584187 ((_ is Cons!65540) (t!379312 (exprs!6339 (h!71990 zl!343))))) b!6585435))

(declare-fun b!6585438 () Bool)

(declare-fun e!3985446 () Bool)

(declare-fun tp!1816828 () Bool)

(assert (=> b!6585438 (= e!3985446 tp!1816828)))

(declare-fun b!6585436 () Bool)

(assert (=> b!6585436 (= e!3985446 tp_is_empty!42163)))

(assert (=> b!6584166 (= tp!1816634 e!3985446)))

(declare-fun b!6585437 () Bool)

(declare-fun tp!1816826 () Bool)

(declare-fun tp!1816829 () Bool)

(assert (=> b!6585437 (= e!3985446 (and tp!1816826 tp!1816829))))

(declare-fun b!6585439 () Bool)

(declare-fun tp!1816830 () Bool)

(declare-fun tp!1816827 () Bool)

(assert (=> b!6585439 (= e!3985446 (and tp!1816830 tp!1816827))))

(assert (= (and b!6584166 ((_ is ElementMatch!16455) (regOne!33422 (regOne!33423 r!7292)))) b!6585436))

(assert (= (and b!6584166 ((_ is Concat!25300) (regOne!33422 (regOne!33423 r!7292)))) b!6585437))

(assert (= (and b!6584166 ((_ is Star!16455) (regOne!33422 (regOne!33423 r!7292)))) b!6585438))

(assert (= (and b!6584166 ((_ is Union!16455) (regOne!33422 (regOne!33423 r!7292)))) b!6585439))

(declare-fun b!6585444 () Bool)

(declare-fun e!3985448 () Bool)

(declare-fun tp!1816833 () Bool)

(assert (=> b!6585444 (= e!3985448 tp!1816833)))

(declare-fun b!6585442 () Bool)

(assert (=> b!6585442 (= e!3985448 tp_is_empty!42163)))

(assert (=> b!6584166 (= tp!1816637 e!3985448)))

(declare-fun b!6585443 () Bool)

(declare-fun tp!1816831 () Bool)

(declare-fun tp!1816834 () Bool)

(assert (=> b!6585443 (= e!3985448 (and tp!1816831 tp!1816834))))

(declare-fun b!6585445 () Bool)

(declare-fun tp!1816835 () Bool)

(declare-fun tp!1816832 () Bool)

(assert (=> b!6585445 (= e!3985448 (and tp!1816835 tp!1816832))))

(assert (= (and b!6584166 ((_ is ElementMatch!16455) (regTwo!33422 (regOne!33423 r!7292)))) b!6585442))

(assert (= (and b!6584166 ((_ is Concat!25300) (regTwo!33422 (regOne!33423 r!7292)))) b!6585443))

(assert (= (and b!6584166 ((_ is Star!16455) (regTwo!33422 (regOne!33423 r!7292)))) b!6585444))

(assert (= (and b!6584166 ((_ is Union!16455) (regTwo!33422 (regOne!33423 r!7292)))) b!6585445))

(declare-fun condSetEmpty!44970 () Bool)

(assert (=> setNonEmpty!44958 (= condSetEmpty!44970 (= setRest!44958 ((as const (Array Context!11678 Bool)) false)))))

(declare-fun setRes!44970 () Bool)

(assert (=> setNonEmpty!44958 (= tp!1816655 setRes!44970)))

(declare-fun setIsEmpty!44970 () Bool)

(assert (=> setIsEmpty!44970 setRes!44970))

(declare-fun setElem!44970 () Context!11678)

(declare-fun tp!1816837 () Bool)

(declare-fun setNonEmpty!44970 () Bool)

(declare-fun e!3985449 () Bool)

(assert (=> setNonEmpty!44970 (= setRes!44970 (and tp!1816837 (inv!84384 setElem!44970) e!3985449))))

(declare-fun setRest!44970 () (InoxSet Context!11678))

(assert (=> setNonEmpty!44970 (= setRest!44958 ((_ map or) (store ((as const (Array Context!11678 Bool)) false) setElem!44970 true) setRest!44970))))

(declare-fun b!6585446 () Bool)

(declare-fun tp!1816836 () Bool)

(assert (=> b!6585446 (= e!3985449 tp!1816836)))

(assert (= (and setNonEmpty!44958 condSetEmpty!44970) setIsEmpty!44970))

(assert (= (and setNonEmpty!44958 (not condSetEmpty!44970)) setNonEmpty!44970))

(assert (= setNonEmpty!44970 b!6585446))

(declare-fun m!7364550 () Bool)

(assert (=> setNonEmpty!44970 m!7364550))

(declare-fun b!6585459 () Bool)

(declare-fun e!3985456 () Bool)

(declare-fun tp!1816840 () Bool)

(assert (=> b!6585459 (= e!3985456 tp!1816840)))

(declare-fun b!6585457 () Bool)

(assert (=> b!6585457 (= e!3985456 tp_is_empty!42163)))

(assert (=> b!6584167 (= tp!1816636 e!3985456)))

(declare-fun b!6585458 () Bool)

(declare-fun tp!1816838 () Bool)

(declare-fun tp!1816841 () Bool)

(assert (=> b!6585458 (= e!3985456 (and tp!1816838 tp!1816841))))

(declare-fun b!6585460 () Bool)

(declare-fun tp!1816842 () Bool)

(declare-fun tp!1816839 () Bool)

(assert (=> b!6585460 (= e!3985456 (and tp!1816842 tp!1816839))))

(assert (= (and b!6584167 ((_ is ElementMatch!16455) (reg!16784 (regOne!33423 r!7292)))) b!6585457))

(assert (= (and b!6584167 ((_ is Concat!25300) (reg!16784 (regOne!33423 r!7292)))) b!6585458))

(assert (= (and b!6584167 ((_ is Star!16455) (reg!16784 (regOne!33423 r!7292)))) b!6585459))

(assert (= (and b!6584167 ((_ is Union!16455) (reg!16784 (regOne!33423 r!7292)))) b!6585460))

(declare-fun b!6585461 () Bool)

(declare-fun e!3985457 () Bool)

(declare-fun tp!1816843 () Bool)

(declare-fun tp!1816844 () Bool)

(assert (=> b!6585461 (= e!3985457 (and tp!1816843 tp!1816844))))

(assert (=> b!6584154 (= tp!1816622 e!3985457)))

(assert (= (and b!6584154 ((_ is Cons!65540) (exprs!6339 (h!71990 (t!379314 zl!343))))) b!6585461))

(declare-fun b!6585464 () Bool)

(declare-fun e!3985458 () Bool)

(declare-fun tp!1816847 () Bool)

(assert (=> b!6585464 (= e!3985458 tp!1816847)))

(declare-fun b!6585462 () Bool)

(assert (=> b!6585462 (= e!3985458 tp_is_empty!42163)))

(assert (=> b!6584177 (= tp!1816648 e!3985458)))

(declare-fun b!6585463 () Bool)

(declare-fun tp!1816845 () Bool)

(declare-fun tp!1816848 () Bool)

(assert (=> b!6585463 (= e!3985458 (and tp!1816845 tp!1816848))))

(declare-fun b!6585465 () Bool)

(declare-fun tp!1816849 () Bool)

(declare-fun tp!1816846 () Bool)

(assert (=> b!6585465 (= e!3985458 (and tp!1816849 tp!1816846))))

(assert (= (and b!6584177 ((_ is ElementMatch!16455) (h!71988 (exprs!6339 setElem!44952)))) b!6585462))

(assert (= (and b!6584177 ((_ is Concat!25300) (h!71988 (exprs!6339 setElem!44952)))) b!6585463))

(assert (= (and b!6584177 ((_ is Star!16455) (h!71988 (exprs!6339 setElem!44952)))) b!6585464))

(assert (= (and b!6584177 ((_ is Union!16455) (h!71988 (exprs!6339 setElem!44952)))) b!6585465))

(declare-fun b!6585466 () Bool)

(declare-fun e!3985459 () Bool)

(declare-fun tp!1816850 () Bool)

(declare-fun tp!1816851 () Bool)

(assert (=> b!6585466 (= e!3985459 (and tp!1816850 tp!1816851))))

(assert (=> b!6584177 (= tp!1816649 e!3985459)))

(assert (= (and b!6584177 ((_ is Cons!65540) (t!379312 (exprs!6339 setElem!44952)))) b!6585466))

(declare-fun b!6585468 () Bool)

(declare-fun e!3985461 () Bool)

(declare-fun tp!1816852 () Bool)

(assert (=> b!6585468 (= e!3985461 tp!1816852)))

(declare-fun tp!1816853 () Bool)

(declare-fun b!6585467 () Bool)

(declare-fun e!3985460 () Bool)

(assert (=> b!6585467 (= e!3985460 (and (inv!84384 (h!71990 (t!379314 (t!379314 zl!343)))) e!3985461 tp!1816853))))

(assert (=> b!6584153 (= tp!1816623 e!3985460)))

(assert (= b!6585467 b!6585468))

(assert (= (and b!6584153 ((_ is Cons!65542) (t!379314 (t!379314 zl!343)))) b!6585467))

(declare-fun m!7364552 () Bool)

(assert (=> b!6585467 m!7364552))

(declare-fun b_lambda!249149 () Bool)

(assert (= b_lambda!249127 (or b!6583173 b_lambda!249149)))

(assert (=> d!2065797 d!2065487))

(declare-fun b_lambda!249151 () Bool)

(assert (= b_lambda!249109 (or b!6583173 b_lambda!249151)))

(assert (=> d!2065573 d!2065491))

(declare-fun b_lambda!249153 () Bool)

(assert (= b_lambda!249111 (or b!6583173 b_lambda!249153)))

(assert (=> d!2065611 d!2065493))

(declare-fun b_lambda!249155 () Bool)

(assert (= b_lambda!249145 (or d!2065261 b_lambda!249155)))

(declare-fun bs!1685261 () Bool)

(declare-fun d!2066001 () Bool)

(assert (= bs!1685261 (and d!2066001 d!2065261)))

(assert (=> bs!1685261 (= (dynLambda!26086 lambda!366714 (h!71988 (exprs!6339 (h!71990 zl!343)))) (validRegex!8191 (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(declare-fun m!7364556 () Bool)

(assert (=> bs!1685261 m!7364556))

(assert (=> b!6585253 d!2066001))

(declare-fun b_lambda!249157 () Bool)

(assert (= b_lambda!249131 (or d!2065439 b_lambda!249157)))

(declare-fun bs!1685262 () Bool)

(declare-fun d!2066003 () Bool)

(assert (= bs!1685262 (and d!2066003 d!2065439)))

(assert (=> bs!1685262 (= (dynLambda!26086 lambda!366779 (h!71988 lt!2410616)) (validRegex!8191 (h!71988 lt!2410616)))))

(declare-fun m!7364566 () Bool)

(assert (=> bs!1685262 m!7364566))

(assert (=> b!6584879 d!2066003))

(declare-fun b_lambda!249159 () Bool)

(assert (= b_lambda!249129 (or b!6583173 b_lambda!249159)))

(assert (=> d!2065799 d!2065485))

(declare-fun b_lambda!249161 () Bool)

(assert (= b_lambda!249143 (or b!6584138 b_lambda!249161)))

(declare-fun bs!1685263 () Bool)

(declare-fun d!2066005 () Bool)

(assert (= bs!1685263 (and d!2066005 b!6584138)))

(assert (=> bs!1685263 (= (dynLambda!26087 lambda!366791 (h!71990 (t!379314 zl!343))) (>= lt!2410637 (contextDepth!281 (h!71990 (t!379314 zl!343)))))))

(assert (=> bs!1685263 m!7364432))

(assert (=> b!6585196 d!2066005))

(declare-fun b_lambda!249163 () Bool)

(assert (= b_lambda!249147 (or b!6583173 b_lambda!249163)))

(assert (=> d!2065971 d!2065489))

(declare-fun b_lambda!249165 () Bool)

(assert (= b_lambda!249107 (or b!6584145 b_lambda!249165)))

(declare-fun bs!1685264 () Bool)

(declare-fun d!2066009 () Bool)

(assert (= bs!1685264 (and d!2066009 b!6584145)))

(assert (=> bs!1685264 (= (dynLambda!26087 lambda!366795 (h!71990 lt!2410483)) (>= lt!2410640 (contextDepth!281 (h!71990 lt!2410483))))))

(assert (=> bs!1685264 m!7363334))

(assert (=> b!6584270 d!2066009))

(declare-fun b_lambda!249167 () Bool)

(assert (= b_lambda!249105 (or d!2065401 b_lambda!249167)))

(declare-fun bs!1685265 () Bool)

(declare-fun d!2066011 () Bool)

(assert (= bs!1685265 (and d!2066011 d!2065401)))

(assert (=> bs!1685265 (= (dynLambda!26086 lambda!366770 (h!71988 (exprs!6339 (h!71990 zl!343)))) (validRegex!8191 (h!71988 (exprs!6339 (h!71990 zl!343)))))))

(assert (=> bs!1685265 m!7364556))

(assert (=> b!6584226 d!2066011))

(declare-fun b_lambda!249169 () Bool)

(assert (= b_lambda!249135 (or d!2065379 b_lambda!249169)))

(declare-fun bs!1685266 () Bool)

(declare-fun d!2066013 () Bool)

(assert (= bs!1685266 (and d!2066013 d!2065379)))

(assert (=> bs!1685266 (= (dynLambda!26086 lambda!366760 (h!71988 (t!379312 (exprs!6339 (h!71990 zl!343))))) (validRegex!8191 (h!71988 (t!379312 (exprs!6339 (h!71990 zl!343))))))))

(declare-fun m!7364576 () Bool)

(assert (=> bs!1685266 m!7364576))

(assert (=> b!6585100 d!2066013))

(declare-fun b_lambda!249171 () Bool)

(assert (= b_lambda!249139 (or d!2065477 b_lambda!249171)))

(declare-fun bs!1685267 () Bool)

(declare-fun d!2066015 () Bool)

(assert (= bs!1685267 (and d!2066015 d!2065477)))

(assert (=> bs!1685267 (= (dynLambda!26086 lambda!366783 (h!71988 (exprs!6339 setElem!44952))) (validRegex!8191 (h!71988 (exprs!6339 setElem!44952))))))

(declare-fun m!7364578 () Bool)

(assert (=> bs!1685267 m!7364578))

(assert (=> b!6585130 d!2066015))

(declare-fun b_lambda!249173 () Bool)

(assert (= b_lambda!249121 (or b!6584143 b_lambda!249173)))

(declare-fun bs!1685268 () Bool)

(declare-fun d!2066017 () Bool)

(assert (= bs!1685268 (and d!2066017 b!6584143)))

(assert (=> bs!1685268 (= (dynLambda!26087 lambda!366794 (h!71990 (t!379314 lt!2410483))) (>= lt!2410641 (contextDepth!281 (h!71990 (t!379314 lt!2410483)))))))

(assert (=> bs!1685268 m!7363792))

(assert (=> b!6584641 d!2066017))

(declare-fun b_lambda!249175 () Bool)

(assert (= b_lambda!249123 (or d!2065437 b_lambda!249175)))

(declare-fun bs!1685269 () Bool)

(declare-fun d!2066019 () Bool)

(assert (= bs!1685269 (and d!2066019 d!2065437)))

(assert (=> bs!1685269 (= (dynLambda!26086 lambda!366776 (h!71988 (unfocusZipperList!1876 zl!343))) (validRegex!8191 (h!71988 (unfocusZipperList!1876 zl!343))))))

(declare-fun m!7364580 () Bool)

(assert (=> bs!1685269 m!7364580))

(assert (=> b!6584779 d!2066019))

(declare-fun b_lambda!249177 () Bool)

(assert (= b_lambda!249113 (or b!6584140 b_lambda!249177)))

(declare-fun bs!1685270 () Bool)

(declare-fun d!2066021 () Bool)

(assert (= bs!1685270 (and d!2066021 b!6584140)))

(assert (=> bs!1685270 (= (dynLambda!26087 lambda!366792 (h!71990 zl!343)) (>= lt!2410636 (contextDepth!281 (h!71990 zl!343))))))

(assert (=> bs!1685270 m!7363322))

(assert (=> b!6584528 d!2066021))

(check-sat (not bm!574374) (not b!6584393) (not b!6585118) (not d!2065767) (not b!6584947) (not bs!1685261) (not b!6585160) (not b!6585396) (not b!6584547) (not bm!574428) (not bm!574508) (not bm!574541) (not bm!574436) (not d!2065545) (not b!6584451) (not bm!574467) (not bm!574478) (not b!6584949) (not b_lambda!249173) (not b!6585046) (not bm!574298) (not b!6584318) (not b!6585330) (not bm!574516) (not bm!574335) (not b_lambda!249175) (not b_lambda!249099) (not b!6584311) (not b!6585413) (not bm!574461) (not b!6585410) (not bm!574407) (not b!6585065) (not b!6584391) (not d!2065759) (not d!2065689) (not b!6585370) (not bm!574280) (not b!6584703) (not b!6585150) (not d!2065629) (not b!6585388) (not bm!574471) (not d!2065823) (not b!6584315) (not d!2065599) (not bm!574316) (not bm!574457) (not bm!574388) (not b!6584530) (not b!6584511) (not b!6584247) (not d!2065929) (not bm!574397) (not bm!574498) (not b!6585197) (not b!6584926) (not d!2065547) (not d!2065517) (not b!6585425) (not d!2065795) (not b!6585437) (not bm!574444) (not bm!574439) (not d!2065827) (not bm!574462) (not b!6585348) (not d!2065693) (not b_lambda!249095) (not b!6585176) (not b!6584341) (not b!6584455) (not bm!574477) (not b!6585368) (not bm!574322) (not b!6584800) (not b!6584406) (not b!6584655) (not d!2065641) (not b!6584548) (not b!6585052) (not b!6585122) (not b!6584275) (not bm!574517) (not b!6585126) (not d!2065501) (not d!2065677) (not b_lambda!249097) (not bm!574487) (not b!6584529) (not b!6585254) (not bm!574538) (not bs!1685262) (not b!6585181) (not b!6584324) (not d!2065665) (not bm!574343) (not b_lambda!249177) (not bm!574479) (not bm!574475) (not b!6585128) (not bm!574468) (not b!6584654) (not bm!574396) (not d!2065911) (not bm!574499) (not d!2065603) (not bm!574306) (not d!2065619) (not b!6585361) (not b!6584430) (not bm!574406) (not b!6584627) (not bm!574426) (not b!6585331) (not b!6584396) (not b!6584659) (not b!6585467) (not d!2065753) (not d!2065839) (not bm!574445) (not b!6584725) (not b!6585446) (not bm!574319) (not d!2065777) (not setNonEmpty!44970) (not b!6584917) (not b!6585345) (not bm!574431) (not b!6585405) (not b!6584724) (not b!6584445) (not d!2065587) (not b!6584216) (not b_lambda!249151) (not b!6584646) (not b!6584339) (not b!6584860) (not b!6584384) (not b!6584943) (not d!2065623) (not b!6584880) (not bm!574408) (not b!6584661) (not bm!574289) (not b!6584921) (not b!6585352) (not bm!574509) (not d!2065733) (not bm!574464) (not b!6585159) (not b!6585416) (not b!6584723) (not b!6584326) (not d!2065727) (not b!6585349) (not b!6584798) (not b!6585064) (not bm!574346) (not d!2065799) (not b!6584414) (not b!6585339) (not b!6585414) (not bm!574387) (not b!6585432) (not bs!1685265) (not bm!574488) (not bm!574446) (not bm!574284) (not b!6584722) (not bm!574273) (not b!6584950) (not d!2065577) (not b!6585386) (not d!2065575) (not bm!574307) (not d!2065797) (not b!6585381) (not b!6585056) (not b!6584987) (not b!6585391) (not bs!1685269) (not b!6584931) (not b!6584960) (not b!6584227) (not b!6585158) (not b!6584660) (not d!2065535) (not b!6585054) (not bm!574323) (not b!6585343) (not bm!574523) (not bm!574519) (not b!6585458) (not d!2065893) (not b!6585369) (not b!6585164) (not b!6585347) (not b!6584945) (not b!6585341) (not d!2065505) (not bm!574443) (not b!6585258) (not b_lambda!249155) (not b!6585351) (not b!6585329) (not b!6584476) (not b!6584390) (not b!6584436) (not d!2065671) (not b!6585418) (not b!6585113) (not b!6585355) (not b!6584709) (not b!6584941) (not d!2065643) (not d!2065817) (not d!2065593) (not b!6584211) (not b!6584489) (not b!6585101) (not bm!574484) (not b!6584923) (not b_lambda!249149) (not b!6585439) (not b!6585417) (not b!6584244) (not bm!574514) (not bm!574290) (not b!6584403) (not bm!574336) (not bm!574318) (not b!6585435) (not b!6585360) (not bm!574333) (not bs!1685264) (not bm!574438) (not b!6584360) (not b!6585445) (not b!6584543) (not d!2065937) (not b!6585404) (not bm!574357) (not d!2065679) (not b!6584410) (not b!6584231) (not b!6584383) (not d!2065515) (not b!6584239) (not b!6585397) (not b_lambda!249171) (not b!6584662) (not d!2065877) (not b!6585039) (not b!6584399) (not b!6585344) (not b!6584567) (not b!6585374) (not b!6584506) (not b!6584752) (not b!6584246) (not b!6584540) (not bm!574480) (not bm!574275) (not b!6584804) (not b!6584245) (not b!6584327) (not b!6585390) (not b!6585357) (not bm!574268) (not b!6585412) (not b!6585438) (not b!6584526) (not bm!574450) (not b!6584715) (not b!6585408) (not b!6584969) (not bm!574303) (not b!6585401) (not b!6584673) (not b_lambda!249153) (not b!6584591) (not d!2065647) (not d!2065757) (not b!6585460) (not setNonEmpty!44964) (not b!6585400) (not b!6585124) (not b!6584561) (not b!6584719) (not d!2065589) (not bm!574376) (not d!2065645) (not b!6585366) (not b!6585407) (not b!6585155) (not b!6585434) (not bm!574285) (not bm!574540) (not b!6584241) (not b!6585000) (not bm!574304) (not bm!574449) (not bm!574412) (not d!2065787) (not b!6585268) (not bm!574297) (not d!2065495) (not bm!574377) (not bm!574522) (not d!2065591) (not d!2065557) (not bm!574455) (not b!6584412) (not b!6584794) (not bm!574267) (not b!6585337) (not b!6585340) (not b!6584473) (not b!6585183) (not b!6585424) (not d!2065737) (not d!2065533) (not bm!574337) (not b!6584939) (not bm!574430) (not b!6585114) (not d!2065921) (not b_lambda!249161) (not bm!574373) (not d!2065601) (not b!6585373) (not bs!1685270) (not b!6584328) (not b_lambda!249165) (not b!6585443) (not b!6584387) (not b!6584589) (not bm!574476) (not bs!1685268) (not b!6584237) (not b!6584718) (not d!2065783) (not d!2065813) (not bm!574469) (not b!6584563) (not bm!574466) (not b!6584507) (not b!6584345) (not bm!574291) (not b!6584642) (not bm!574317) (not b_lambda!249159) (not b!6584751) (not b!6585127) (not b!6584802) (not bm!574518) (not bm!574274) (not b!6584625) (not b!6585468) (not b_lambda!249157) (not d!2065927) (not b!6585429) (not bm!574485) (not b!6585356) (not b!6584210) (not d!2065611) (not d!2065879) (not bs!1685266) (not bm!574511) (not b!6585430) (not bm!574356) (not b!6585364) (not b!6584271) (not b!6585336) (not b!6585353) (not b!6585089) (not d!2065735) (not b!6585395) (not b!6584790) (not b!6584756) (not b!6585380) (not bm!574492) (not bm!574279) (not b!6585003) (not b!6584927) (not d!2065525) (not b!6584925) (not b!6585465) (not b_lambda!249167) (not b!6584942) (not bm!574378) (not bm!574470) (not b!6584415) (not d!2065659) (not d!2065829) (not b!6584421) (not b!6585094) (not b!6584877) (not bm!574347) (not b!6584438) (not b!6585387) (not bm!574494) (not b!6585409) (not b!6584780) (not d!2065859) (not bm!574442) (not b!6584443) (not d!2065687) (not b!6585461) (not b!6584656) (not b!6584549) (not b!6585362) (not bm!574276) (not bm!574432) (not bm!574451) (not b!6584544) (not b_lambda!249101) (not b_lambda!249163) (not b!6585021) (not b!6584322) (not b!6584652) (not bm!574342) (not bm!574544) (not b!6584416) (not b!6584394) (not b!6584440) (not b!6584743) (not d!2065963) (not bm!574320) (not bs!1685263) (not b!6584386) (not bm!574299) (not d!2065811) (not b!6584702) (not b!6585335) (not b_lambda!249103) (not d!2065729) (not b!6585428) (not d!2065585) (not b!6585257) (not bm!574308) (not bm!574334) (not d!2065971) (not bm!574493) (not bm!574345) (not b!6584402) (not b!6585157) (not setNonEmpty!44961) (not bm!574286) (not d!2065559) (not bm!574539) (not bm!574474) (not setNonEmpty!44965) (not bm!574463) (not b!6585394) (not b!6584456) (not b!6585459) (not b!6585156) (not bm!574524) (not b!6585378) (not b!6585403) (not b!6584395) (not b!6585260) (not setNonEmpty!44963) (not d!2065871) (not b!6584240) (not b!6585074) (not b!6585050) (not b!6584717) (not b!6585131) (not setNonEmpty!44962) (not b!6585426) (not b!6585152) (not b!6585265) (not b!6585375) (not b!6585073) (not b!6584439) (not b!6584542) (not b!6585365) (not b!6584490) (not b!6584966) (not b!6584444) (not bm!574326) (not d!2065975) (not bm!574296) (not b!6584948) (not b_lambda!249169) (not bm!574281) (not b!6585466) (not bm!574283) (not b!6585433) tp_is_empty!42163 (not b!6585463) (not bm!574292) (not bm!574271) (not b!6584397) (not bm!574456) (not b!6584803) (not b!6584750) (not b!6585444) (not bm!574510) (not b!6585055) (not d!2065815) (not bm!574270) (not bm!574453) (not d!2065573) (not bm!574437) (not d!2065751) (not bs!1685267) (not b!6585464) (not b!6584562) (not b!6585392) (not b!6584742) (not b!6585399) (not d!2065819) (not bm!574525) (not b!6585174))
(check-sat)

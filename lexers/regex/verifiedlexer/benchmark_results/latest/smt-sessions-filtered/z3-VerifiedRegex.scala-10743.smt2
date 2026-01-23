; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549550 () Bool)

(assert start!549550)

(declare-fun b!5192405 () Bool)

(assert (=> b!5192405 true))

(declare-fun b!5192399 () Bool)

(declare-fun e!3234211 () Bool)

(declare-fun tp!1456527 () Bool)

(assert (=> b!5192399 (= e!3234211 tp!1456527)))

(declare-fun res!2205404 () Bool)

(declare-fun e!3234212 () Bool)

(assert (=> start!549550 (=> (not res!2205404) (not e!3234212))))

(declare-datatypes ((C!29736 0))(
  ( (C!29737 (val!24570 Int)) )
))
(declare-datatypes ((Regex!14733 0))(
  ( (ElementMatch!14733 (c!895098 C!29736)) (Concat!23578 (regOne!29978 Regex!14733) (regTwo!29978 Regex!14733)) (EmptyExpr!14733) (Star!14733 (reg!15062 Regex!14733)) (EmptyLang!14733) (Union!14733 (regOne!29979 Regex!14733) (regTwo!29979 Regex!14733)) )
))
(declare-fun r!7292 () Regex!14733)

(declare-fun validRegex!6469 (Regex!14733) Bool)

(assert (=> start!549550 (= res!2205404 (validRegex!6469 r!7292))))

(assert (=> start!549550 e!3234212))

(declare-fun e!3234221 () Bool)

(assert (=> start!549550 e!3234221))

(declare-fun condSetEmpty!32794 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!60498 0))(
  ( (Nil!60374) (Cons!60374 (h!66822 Regex!14733) (t!373651 List!60498)) )
))
(declare-datatypes ((Context!8234 0))(
  ( (Context!8235 (exprs!4617 List!60498)) )
))
(declare-fun z!1189 () (InoxSet Context!8234))

(assert (=> start!549550 (= condSetEmpty!32794 (= z!1189 ((as const (Array Context!8234 Bool)) false)))))

(declare-fun setRes!32794 () Bool)

(assert (=> start!549550 setRes!32794))

(declare-fun e!3234217 () Bool)

(assert (=> start!549550 e!3234217))

(declare-fun e!3234222 () Bool)

(assert (=> start!549550 e!3234222))

(declare-fun b!5192400 () Bool)

(declare-fun e!3234216 () Bool)

(declare-fun e!3234225 () Bool)

(assert (=> b!5192400 (= e!3234216 e!3234225)))

(declare-fun res!2205392 () Bool)

(assert (=> b!5192400 (=> res!2205392 e!3234225)))

(declare-fun lt!2138120 () Bool)

(declare-fun lt!2138103 () Bool)

(assert (=> b!5192400 (= res!2205392 (not (= lt!2138120 lt!2138103)))))

(declare-fun lt!2138096 () (InoxSet Context!8234))

(declare-datatypes ((List!60499 0))(
  ( (Nil!60375) (Cons!60375 (h!66823 C!29736) (t!373652 List!60499)) )
))
(declare-fun s!2326 () List!60499)

(declare-fun matchZipper!1013 ((InoxSet Context!8234) List!60499) Bool)

(assert (=> b!5192400 (= lt!2138120 (matchZipper!1013 lt!2138096 s!2326))))

(declare-fun lt!2138105 () (InoxSet Context!8234))

(declare-fun lt!2138104 () Context!8234)

(declare-fun lambda!259647 () Int)

(declare-fun flatMap!486 ((InoxSet Context!8234) Int) (InoxSet Context!8234))

(declare-fun derivationStepZipperUp!123 (Context!8234 C!29736) (InoxSet Context!8234))

(assert (=> b!5192400 (= (flatMap!486 lt!2138105 lambda!259647) (derivationStepZipperUp!123 lt!2138104 (h!66823 s!2326)))))

(declare-datatypes ((Unit!152300 0))(
  ( (Unit!152301) )
))
(declare-fun lt!2138112 () Unit!152300)

(declare-fun lemmaFlatMapOnSingletonSet!18 ((InoxSet Context!8234) Context!8234 Int) Unit!152300)

(assert (=> b!5192400 (= lt!2138112 (lemmaFlatMapOnSingletonSet!18 lt!2138105 lt!2138104 lambda!259647))))

(declare-fun lt!2138109 () Context!8234)

(assert (=> b!5192400 (= (flatMap!486 lt!2138096 lambda!259647) (derivationStepZipperUp!123 lt!2138109 (h!66823 s!2326)))))

(declare-fun lt!2138123 () Unit!152300)

(assert (=> b!5192400 (= lt!2138123 (lemmaFlatMapOnSingletonSet!18 lt!2138096 lt!2138109 lambda!259647))))

(declare-fun lt!2138095 () (InoxSet Context!8234))

(assert (=> b!5192400 (= lt!2138095 (derivationStepZipperUp!123 lt!2138104 (h!66823 s!2326)))))

(declare-fun lt!2138115 () (InoxSet Context!8234))

(assert (=> b!5192400 (= lt!2138115 (derivationStepZipperUp!123 lt!2138109 (h!66823 s!2326)))))

(assert (=> b!5192400 (= lt!2138105 (store ((as const (Array Context!8234 Bool)) false) lt!2138104 true))))

(assert (=> b!5192400 (= lt!2138104 (Context!8235 (Cons!60374 (regTwo!29979 r!7292) Nil!60374)))))

(assert (=> b!5192400 (= lt!2138096 (store ((as const (Array Context!8234 Bool)) false) lt!2138109 true))))

(assert (=> b!5192400 (= lt!2138109 (Context!8235 (Cons!60374 (regOne!29979 r!7292) Nil!60374)))))

(declare-fun b!5192401 () Bool)

(declare-fun res!2205410 () Bool)

(declare-fun e!3234226 () Bool)

(assert (=> b!5192401 (=> res!2205410 e!3234226)))

(declare-datatypes ((List!60500 0))(
  ( (Nil!60376) (Cons!60376 (h!66824 Context!8234) (t!373653 List!60500)) )
))
(declare-fun zl!343 () List!60500)

(declare-fun isEmpty!32322 (List!60500) Bool)

(assert (=> b!5192401 (= res!2205410 (not (isEmpty!32322 (t!373653 zl!343))))))

(declare-fun b!5192402 () Bool)

(declare-fun e!3234215 () Bool)

(declare-fun tp!1456524 () Bool)

(assert (=> b!5192402 (= e!3234215 tp!1456524)))

(declare-fun b!5192403 () Bool)

(declare-fun res!2205402 () Bool)

(declare-fun e!3234214 () Bool)

(assert (=> b!5192403 (=> res!2205402 e!3234214)))

(declare-fun lt!2138114 () List!60500)

(declare-fun toList!8517 ((InoxSet Context!8234)) List!60500)

(assert (=> b!5192403 (= res!2205402 (not (= (toList!8517 lt!2138105) lt!2138114)))))

(declare-fun b!5192404 () Bool)

(declare-fun res!2205409 () Bool)

(declare-fun e!3234213 () Bool)

(assert (=> b!5192404 (=> res!2205409 e!3234213)))

(declare-fun lt!2138116 () Bool)

(declare-fun lt!2138121 () Bool)

(assert (=> b!5192404 (= res!2205409 (not (= (or lt!2138120 lt!2138116) lt!2138121)))))

(declare-fun e!3234219 () Bool)

(declare-fun e!3234224 () Bool)

(assert (=> b!5192405 (= e!3234219 e!3234224)))

(declare-fun res!2205398 () Bool)

(assert (=> b!5192405 (=> res!2205398 e!3234224)))

(declare-fun lt!2138108 () (InoxSet Context!8234))

(declare-fun derivationStepZipper!1035 ((InoxSet Context!8234) C!29736) (InoxSet Context!8234))

(assert (=> b!5192405 (= res!2205398 (not (= (derivationStepZipper!1035 z!1189 (h!66823 s!2326)) lt!2138108)))))

(assert (=> b!5192405 (= (flatMap!486 z!1189 lambda!259647) (derivationStepZipperUp!123 (h!66824 zl!343) (h!66823 s!2326)))))

(declare-fun lt!2138097 () Unit!152300)

(assert (=> b!5192405 (= lt!2138097 (lemmaFlatMapOnSingletonSet!18 z!1189 (h!66824 zl!343) lambda!259647))))

(declare-fun b!5192406 () Bool)

(declare-fun e!3234223 () Bool)

(assert (=> b!5192406 (= e!3234223 e!3234219)))

(declare-fun res!2205399 () Bool)

(assert (=> b!5192406 (=> res!2205399 e!3234219)))

(declare-fun lt!2138111 () (InoxSet Context!8234))

(assert (=> b!5192406 (= res!2205399 (not (= lt!2138111 lt!2138108)))))

(declare-fun lt!2138113 () (InoxSet Context!8234))

(declare-fun lt!2138124 () (InoxSet Context!8234))

(assert (=> b!5192406 (= lt!2138108 ((_ map or) lt!2138113 lt!2138124))))

(declare-fun lt!2138102 () Context!8234)

(declare-fun derivationStepZipperDown!202 (Regex!14733 Context!8234 C!29736) (InoxSet Context!8234))

(assert (=> b!5192406 (= lt!2138124 (derivationStepZipperDown!202 (regTwo!29979 r!7292) lt!2138102 (h!66823 s!2326)))))

(assert (=> b!5192406 (= lt!2138113 (derivationStepZipperDown!202 (regOne!29979 r!7292) lt!2138102 (h!66823 s!2326)))))

(declare-fun b!5192407 () Bool)

(assert (=> b!5192407 (= e!3234225 e!3234213)))

(declare-fun res!2205395 () Bool)

(assert (=> b!5192407 (=> res!2205395 e!3234213)))

(assert (=> b!5192407 (= res!2205395 (not (= lt!2138116 (matchZipper!1013 lt!2138124 (t!373652 s!2326)))))))

(assert (=> b!5192407 (= lt!2138116 (matchZipper!1013 lt!2138105 s!2326))))

(declare-fun b!5192408 () Bool)

(declare-fun tp_is_empty!38719 () Bool)

(declare-fun tp!1456532 () Bool)

(assert (=> b!5192408 (= e!3234222 (and tp_is_empty!38719 tp!1456532))))

(declare-fun tp!1456526 () Bool)

(declare-fun b!5192409 () Bool)

(declare-fun inv!80079 (Context!8234) Bool)

(assert (=> b!5192409 (= e!3234217 (and (inv!80079 (h!66824 zl!343)) e!3234215 tp!1456526))))

(declare-fun b!5192410 () Bool)

(declare-fun res!2205400 () Bool)

(assert (=> b!5192410 (=> res!2205400 e!3234226)))

(get-info :version)

(assert (=> b!5192410 (= res!2205400 (or ((_ is EmptyExpr!14733) r!7292) ((_ is EmptyLang!14733) r!7292) ((_ is ElementMatch!14733) r!7292) (not ((_ is Union!14733) r!7292))))))

(declare-fun setElem!32794 () Context!8234)

(declare-fun setNonEmpty!32794 () Bool)

(declare-fun tp!1456529 () Bool)

(assert (=> setNonEmpty!32794 (= setRes!32794 (and tp!1456529 (inv!80079 setElem!32794) e!3234211))))

(declare-fun setRest!32794 () (InoxSet Context!8234))

(assert (=> setNonEmpty!32794 (= z!1189 ((_ map or) (store ((as const (Array Context!8234 Bool)) false) setElem!32794 true) setRest!32794))))

(declare-fun b!5192411 () Bool)

(declare-fun res!2205391 () Bool)

(assert (=> b!5192411 (=> res!2205391 e!3234226)))

(declare-fun generalisedConcat!402 (List!60498) Regex!14733)

(assert (=> b!5192411 (= res!2205391 (not (= r!7292 (generalisedConcat!402 (exprs!4617 (h!66824 zl!343))))))))

(declare-fun b!5192412 () Bool)

(declare-fun e!3234218 () Bool)

(assert (=> b!5192412 (= e!3234218 e!3234216)))

(declare-fun res!2205403 () Bool)

(assert (=> b!5192412 (=> res!2205403 e!3234216)))

(declare-fun lt!2138122 () Bool)

(declare-fun lt!2138107 () Bool)

(assert (=> b!5192412 (= res!2205403 (or (not (= lt!2138107 lt!2138122)) (not (= lt!2138107 lt!2138121))))))

(assert (=> b!5192412 (= lt!2138122 lt!2138107)))

(declare-fun e!3234227 () Bool)

(assert (=> b!5192412 (= lt!2138107 e!3234227)))

(declare-fun res!2205408 () Bool)

(assert (=> b!5192412 (=> res!2205408 e!3234227)))

(assert (=> b!5192412 (= res!2205408 lt!2138103)))

(assert (=> b!5192412 (= lt!2138103 (matchZipper!1013 lt!2138113 (t!373652 s!2326)))))

(declare-fun lt!2138106 () Unit!152300)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!12 ((InoxSet Context!8234) (InoxSet Context!8234) List!60499) Unit!152300)

(assert (=> b!5192412 (= lt!2138106 (lemmaZipperConcatMatchesSameAsBothZippers!12 lt!2138113 lt!2138124 (t!373652 s!2326)))))

(declare-fun b!5192413 () Bool)

(declare-fun e!3234220 () Bool)

(assert (=> b!5192413 (= e!3234226 e!3234220)))

(declare-fun res!2205393 () Bool)

(assert (=> b!5192413 (=> res!2205393 e!3234220)))

(declare-fun lt!2138110 () Bool)

(declare-fun lt!2138125 () Bool)

(declare-fun lt!2138119 () Bool)

(assert (=> b!5192413 (= res!2205393 (or (not (= lt!2138119 (or lt!2138125 lt!2138110))) ((_ is Nil!60375) s!2326)))))

(declare-fun matchRSpec!1836 (Regex!14733 List!60499) Bool)

(assert (=> b!5192413 (= lt!2138110 (matchRSpec!1836 (regTwo!29979 r!7292) s!2326))))

(declare-fun matchR!6918 (Regex!14733 List!60499) Bool)

(assert (=> b!5192413 (= lt!2138110 (matchR!6918 (regTwo!29979 r!7292) s!2326))))

(declare-fun lt!2138100 () Unit!152300)

(declare-fun mainMatchTheorem!1836 (Regex!14733 List!60499) Unit!152300)

(assert (=> b!5192413 (= lt!2138100 (mainMatchTheorem!1836 (regTwo!29979 r!7292) s!2326))))

(assert (=> b!5192413 (= lt!2138125 (matchRSpec!1836 (regOne!29979 r!7292) s!2326))))

(assert (=> b!5192413 (= lt!2138125 (matchR!6918 (regOne!29979 r!7292) s!2326))))

(declare-fun lt!2138101 () Unit!152300)

(assert (=> b!5192413 (= lt!2138101 (mainMatchTheorem!1836 (regOne!29979 r!7292) s!2326))))

(declare-fun b!5192414 () Bool)

(declare-fun res!2205397 () Bool)

(assert (=> b!5192414 (=> (not res!2205397) (not e!3234212))))

(declare-fun unfocusZipper!475 (List!60500) Regex!14733)

(assert (=> b!5192414 (= res!2205397 (= r!7292 (unfocusZipper!475 zl!343)))))

(declare-fun b!5192415 () Bool)

(declare-fun res!2205406 () Bool)

(assert (=> b!5192415 (=> res!2205406 e!3234226)))

(assert (=> b!5192415 (= res!2205406 (not ((_ is Cons!60374) (exprs!4617 (h!66824 zl!343)))))))

(declare-fun setIsEmpty!32794 () Bool)

(assert (=> setIsEmpty!32794 setRes!32794))

(declare-fun b!5192416 () Bool)

(assert (=> b!5192416 (= e!3234212 (not e!3234226))))

(declare-fun res!2205390 () Bool)

(assert (=> b!5192416 (=> res!2205390 e!3234226)))

(assert (=> b!5192416 (= res!2205390 (not ((_ is Cons!60376) zl!343)))))

(assert (=> b!5192416 (= lt!2138119 (matchRSpec!1836 r!7292 s!2326))))

(assert (=> b!5192416 (= lt!2138119 (matchR!6918 r!7292 s!2326))))

(declare-fun lt!2138099 () Unit!152300)

(assert (=> b!5192416 (= lt!2138099 (mainMatchTheorem!1836 r!7292 s!2326))))

(declare-fun b!5192417 () Bool)

(assert (=> b!5192417 (= e!3234213 e!3234214)))

(declare-fun res!2205407 () Bool)

(assert (=> b!5192417 (=> res!2205407 e!3234214)))

(assert (=> b!5192417 (= res!2205407 (not (validRegex!6469 (regTwo!29979 r!7292))))))

(assert (=> b!5192417 (= lt!2138114 (Cons!60376 lt!2138104 Nil!60376))))

(assert (=> b!5192417 (= lt!2138125 lt!2138120)))

(declare-fun lt!2138117 () Unit!152300)

(declare-fun theoremZipperRegexEquiv!245 ((InoxSet Context!8234) List!60500 Regex!14733 List!60499) Unit!152300)

(assert (=> b!5192417 (= lt!2138117 (theoremZipperRegexEquiv!245 lt!2138096 (Cons!60376 lt!2138109 Nil!60376) (regOne!29979 r!7292) s!2326))))

(declare-fun b!5192418 () Bool)

(declare-fun res!2205394 () Bool)

(assert (=> b!5192418 (=> (not res!2205394) (not e!3234212))))

(assert (=> b!5192418 (= res!2205394 (= (toList!8517 z!1189) zl!343))))

(declare-fun b!5192419 () Bool)

(assert (=> b!5192419 (= e!3234221 tp_is_empty!38719)))

(declare-fun b!5192420 () Bool)

(declare-fun tp!1456531 () Bool)

(assert (=> b!5192420 (= e!3234221 tp!1456531)))

(declare-fun b!5192421 () Bool)

(declare-fun res!2205405 () Bool)

(assert (=> b!5192421 (=> res!2205405 e!3234226)))

(declare-fun generalisedUnion!662 (List!60498) Regex!14733)

(declare-fun unfocusZipperList!175 (List!60500) List!60498)

(assert (=> b!5192421 (= res!2205405 (not (= r!7292 (generalisedUnion!662 (unfocusZipperList!175 zl!343)))))))

(declare-fun b!5192422 () Bool)

(declare-fun tp!1456533 () Bool)

(declare-fun tp!1456530 () Bool)

(assert (=> b!5192422 (= e!3234221 (and tp!1456533 tp!1456530))))

(declare-fun b!5192423 () Bool)

(assert (=> b!5192423 (= e!3234220 e!3234223)))

(declare-fun res!2205396 () Bool)

(assert (=> b!5192423 (=> res!2205396 e!3234223)))

(declare-fun lt!2138098 () (InoxSet Context!8234))

(assert (=> b!5192423 (= res!2205396 (not (= lt!2138098 lt!2138111)))))

(assert (=> b!5192423 (= lt!2138111 (derivationStepZipperDown!202 r!7292 lt!2138102 (h!66823 s!2326)))))

(assert (=> b!5192423 (= lt!2138102 (Context!8235 Nil!60374))))

(assert (=> b!5192423 (= lt!2138098 (derivationStepZipperUp!123 (Context!8235 (Cons!60374 r!7292 Nil!60374)) (h!66823 s!2326)))))

(declare-fun b!5192424 () Bool)

(declare-fun tp!1456525 () Bool)

(declare-fun tp!1456528 () Bool)

(assert (=> b!5192424 (= e!3234221 (and tp!1456525 tp!1456528))))

(declare-fun b!5192425 () Bool)

(assert (=> b!5192425 (= e!3234214 true)))

(declare-fun lt!2138118 () Regex!14733)

(assert (=> b!5192425 (= lt!2138118 (unfocusZipper!475 lt!2138114))))

(declare-fun b!5192426 () Bool)

(assert (=> b!5192426 (= e!3234227 (matchZipper!1013 lt!2138124 (t!373652 s!2326)))))

(declare-fun b!5192427 () Bool)

(assert (=> b!5192427 (= e!3234224 e!3234218)))

(declare-fun res!2205401 () Bool)

(assert (=> b!5192427 (=> res!2205401 e!3234218)))

(assert (=> b!5192427 (= res!2205401 (not (= lt!2138122 lt!2138121)))))

(assert (=> b!5192427 (= lt!2138121 (matchZipper!1013 z!1189 s!2326))))

(assert (=> b!5192427 (= lt!2138122 (matchZipper!1013 lt!2138108 (t!373652 s!2326)))))

(assert (= (and start!549550 res!2205404) b!5192418))

(assert (= (and b!5192418 res!2205394) b!5192414))

(assert (= (and b!5192414 res!2205397) b!5192416))

(assert (= (and b!5192416 (not res!2205390)) b!5192401))

(assert (= (and b!5192401 (not res!2205410)) b!5192411))

(assert (= (and b!5192411 (not res!2205391)) b!5192415))

(assert (= (and b!5192415 (not res!2205406)) b!5192421))

(assert (= (and b!5192421 (not res!2205405)) b!5192410))

(assert (= (and b!5192410 (not res!2205400)) b!5192413))

(assert (= (and b!5192413 (not res!2205393)) b!5192423))

(assert (= (and b!5192423 (not res!2205396)) b!5192406))

(assert (= (and b!5192406 (not res!2205399)) b!5192405))

(assert (= (and b!5192405 (not res!2205398)) b!5192427))

(assert (= (and b!5192427 (not res!2205401)) b!5192412))

(assert (= (and b!5192412 (not res!2205408)) b!5192426))

(assert (= (and b!5192412 (not res!2205403)) b!5192400))

(assert (= (and b!5192400 (not res!2205392)) b!5192407))

(assert (= (and b!5192407 (not res!2205395)) b!5192404))

(assert (= (and b!5192404 (not res!2205409)) b!5192417))

(assert (= (and b!5192417 (not res!2205407)) b!5192403))

(assert (= (and b!5192403 (not res!2205402)) b!5192425))

(assert (= (and start!549550 ((_ is ElementMatch!14733) r!7292)) b!5192419))

(assert (= (and start!549550 ((_ is Concat!23578) r!7292)) b!5192422))

(assert (= (and start!549550 ((_ is Star!14733) r!7292)) b!5192420))

(assert (= (and start!549550 ((_ is Union!14733) r!7292)) b!5192424))

(assert (= (and start!549550 condSetEmpty!32794) setIsEmpty!32794))

(assert (= (and start!549550 (not condSetEmpty!32794)) setNonEmpty!32794))

(assert (= setNonEmpty!32794 b!5192399))

(assert (= b!5192409 b!5192402))

(assert (= (and start!549550 ((_ is Cons!60376) zl!343)) b!5192409))

(assert (= (and start!549550 ((_ is Cons!60375) s!2326)) b!5192408))

(declare-fun m!6248080 () Bool)

(assert (=> b!5192418 m!6248080))

(declare-fun m!6248082 () Bool)

(assert (=> b!5192405 m!6248082))

(declare-fun m!6248084 () Bool)

(assert (=> b!5192405 m!6248084))

(declare-fun m!6248086 () Bool)

(assert (=> b!5192405 m!6248086))

(declare-fun m!6248088 () Bool)

(assert (=> b!5192405 m!6248088))

(declare-fun m!6248090 () Bool)

(assert (=> start!549550 m!6248090))

(declare-fun m!6248092 () Bool)

(assert (=> setNonEmpty!32794 m!6248092))

(declare-fun m!6248094 () Bool)

(assert (=> b!5192423 m!6248094))

(declare-fun m!6248096 () Bool)

(assert (=> b!5192423 m!6248096))

(declare-fun m!6248098 () Bool)

(assert (=> b!5192409 m!6248098))

(declare-fun m!6248100 () Bool)

(assert (=> b!5192426 m!6248100))

(declare-fun m!6248102 () Bool)

(assert (=> b!5192400 m!6248102))

(declare-fun m!6248104 () Bool)

(assert (=> b!5192400 m!6248104))

(declare-fun m!6248106 () Bool)

(assert (=> b!5192400 m!6248106))

(declare-fun m!6248108 () Bool)

(assert (=> b!5192400 m!6248108))

(declare-fun m!6248110 () Bool)

(assert (=> b!5192400 m!6248110))

(declare-fun m!6248112 () Bool)

(assert (=> b!5192400 m!6248112))

(declare-fun m!6248114 () Bool)

(assert (=> b!5192400 m!6248114))

(declare-fun m!6248116 () Bool)

(assert (=> b!5192400 m!6248116))

(declare-fun m!6248118 () Bool)

(assert (=> b!5192400 m!6248118))

(declare-fun m!6248120 () Bool)

(assert (=> b!5192414 m!6248120))

(declare-fun m!6248122 () Bool)

(assert (=> b!5192417 m!6248122))

(declare-fun m!6248124 () Bool)

(assert (=> b!5192417 m!6248124))

(declare-fun m!6248126 () Bool)

(assert (=> b!5192401 m!6248126))

(declare-fun m!6248128 () Bool)

(assert (=> b!5192427 m!6248128))

(declare-fun m!6248130 () Bool)

(assert (=> b!5192427 m!6248130))

(declare-fun m!6248132 () Bool)

(assert (=> b!5192406 m!6248132))

(declare-fun m!6248134 () Bool)

(assert (=> b!5192406 m!6248134))

(assert (=> b!5192407 m!6248100))

(declare-fun m!6248136 () Bool)

(assert (=> b!5192407 m!6248136))

(declare-fun m!6248138 () Bool)

(assert (=> b!5192416 m!6248138))

(declare-fun m!6248140 () Bool)

(assert (=> b!5192416 m!6248140))

(declare-fun m!6248142 () Bool)

(assert (=> b!5192416 m!6248142))

(declare-fun m!6248144 () Bool)

(assert (=> b!5192413 m!6248144))

(declare-fun m!6248146 () Bool)

(assert (=> b!5192413 m!6248146))

(declare-fun m!6248148 () Bool)

(assert (=> b!5192413 m!6248148))

(declare-fun m!6248150 () Bool)

(assert (=> b!5192413 m!6248150))

(declare-fun m!6248152 () Bool)

(assert (=> b!5192413 m!6248152))

(declare-fun m!6248154 () Bool)

(assert (=> b!5192413 m!6248154))

(declare-fun m!6248156 () Bool)

(assert (=> b!5192425 m!6248156))

(declare-fun m!6248158 () Bool)

(assert (=> b!5192403 m!6248158))

(declare-fun m!6248160 () Bool)

(assert (=> b!5192412 m!6248160))

(declare-fun m!6248162 () Bool)

(assert (=> b!5192412 m!6248162))

(declare-fun m!6248164 () Bool)

(assert (=> b!5192421 m!6248164))

(assert (=> b!5192421 m!6248164))

(declare-fun m!6248166 () Bool)

(assert (=> b!5192421 m!6248166))

(declare-fun m!6248168 () Bool)

(assert (=> b!5192411 m!6248168))

(check-sat (not b!5192423) (not setNonEmpty!32794) (not b!5192402) (not b!5192414) (not b!5192409) (not b!5192405) (not b!5192408) (not b!5192413) (not b!5192425) (not b!5192418) (not b!5192399) (not b!5192417) tp_is_empty!38719 (not b!5192403) (not b!5192400) (not b!5192412) (not b!5192422) (not b!5192426) (not b!5192420) (not b!5192401) (not b!5192406) (not start!549550) (not b!5192416) (not b!5192424) (not b!5192421) (not b!5192411) (not b!5192407) (not b!5192427))
(check-sat)

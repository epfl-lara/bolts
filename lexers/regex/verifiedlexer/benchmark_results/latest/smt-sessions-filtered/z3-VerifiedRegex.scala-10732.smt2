; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549154 () Bool)

(assert start!549154)

(declare-fun b!5186426 () Bool)

(declare-fun e!3230928 () Bool)

(declare-fun tp!1455173 () Bool)

(declare-fun tp!1455176 () Bool)

(assert (=> b!5186426 (= e!3230928 (and tp!1455173 tp!1455176))))

(declare-fun b!5186427 () Bool)

(declare-fun e!3230933 () Bool)

(declare-fun tp!1455174 () Bool)

(assert (=> b!5186427 (= e!3230933 tp!1455174)))

(declare-fun b!5186428 () Bool)

(declare-fun res!2203119 () Bool)

(declare-fun e!3230931 () Bool)

(assert (=> b!5186428 (=> (not res!2203119) (not e!3230931))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29692 0))(
  ( (C!29693 (val!24548 Int)) )
))
(declare-datatypes ((Regex!14711 0))(
  ( (ElementMatch!14711 (c!893776 C!29692)) (Concat!23556 (regOne!29934 Regex!14711) (regTwo!29934 Regex!14711)) (EmptyExpr!14711) (Star!14711 (reg!15040 Regex!14711)) (EmptyLang!14711) (Union!14711 (regOne!29935 Regex!14711) (regTwo!29935 Regex!14711)) )
))
(declare-datatypes ((List!60432 0))(
  ( (Nil!60308) (Cons!60308 (h!66756 Regex!14711) (t!373585 List!60432)) )
))
(declare-datatypes ((Context!8190 0))(
  ( (Context!8191 (exprs!4595 List!60432)) )
))
(declare-fun z!1189 () (InoxSet Context!8190))

(declare-datatypes ((List!60433 0))(
  ( (Nil!60309) (Cons!60309 (h!66757 Context!8190) (t!373586 List!60433)) )
))
(declare-fun zl!343 () List!60433)

(declare-fun toList!8495 ((InoxSet Context!8190)) List!60433)

(assert (=> b!5186428 (= res!2203119 (= (toList!8495 z!1189) zl!343))))

(declare-fun res!2203112 () Bool)

(assert (=> start!549154 (=> (not res!2203112) (not e!3230931))))

(declare-fun r!7292 () Regex!14711)

(declare-fun validRegex!6447 (Regex!14711) Bool)

(assert (=> start!549154 (= res!2203112 (validRegex!6447 r!7292))))

(assert (=> start!549154 e!3230931))

(assert (=> start!549154 e!3230928))

(declare-fun condSetEmpty!32692 () Bool)

(assert (=> start!549154 (= condSetEmpty!32692 (= z!1189 ((as const (Array Context!8190 Bool)) false)))))

(declare-fun setRes!32692 () Bool)

(assert (=> start!549154 setRes!32692))

(declare-fun e!3230932 () Bool)

(assert (=> start!549154 e!3230932))

(declare-fun e!3230930 () Bool)

(assert (=> start!549154 e!3230930))

(declare-fun tp!1455170 () Bool)

(declare-fun setNonEmpty!32692 () Bool)

(declare-fun setElem!32692 () Context!8190)

(declare-fun inv!80024 (Context!8190) Bool)

(assert (=> setNonEmpty!32692 (= setRes!32692 (and tp!1455170 (inv!80024 setElem!32692) e!3230933))))

(declare-fun setRest!32692 () (InoxSet Context!8190))

(assert (=> setNonEmpty!32692 (= z!1189 ((_ map or) (store ((as const (Array Context!8190 Bool)) false) setElem!32692 true) setRest!32692))))

(declare-fun b!5186429 () Bool)

(declare-fun res!2203115 () Bool)

(declare-fun e!3230926 () Bool)

(assert (=> b!5186429 (=> res!2203115 e!3230926)))

(declare-fun generalisedConcat!380 (List!60432) Regex!14711)

(assert (=> b!5186429 (= res!2203115 (not (= r!7292 (generalisedConcat!380 (exprs!4595 (h!66757 zl!343))))))))

(declare-fun e!3230929 () Bool)

(declare-fun b!5186430 () Bool)

(declare-fun tp!1455168 () Bool)

(assert (=> b!5186430 (= e!3230932 (and (inv!80024 (h!66757 zl!343)) e!3230929 tp!1455168))))

(declare-fun b!5186431 () Bool)

(declare-fun tp!1455171 () Bool)

(assert (=> b!5186431 (= e!3230928 tp!1455171)))

(declare-fun b!5186432 () Bool)

(declare-fun tp!1455172 () Bool)

(declare-fun tp!1455175 () Bool)

(assert (=> b!5186432 (= e!3230928 (and tp!1455172 tp!1455175))))

(declare-fun b!5186433 () Bool)

(declare-fun res!2203118 () Bool)

(assert (=> b!5186433 (=> (not res!2203118) (not e!3230931))))

(declare-fun unfocusZipper!453 (List!60433) Regex!14711)

(assert (=> b!5186433 (= res!2203118 (= r!7292 (unfocusZipper!453 zl!343)))))

(declare-fun b!5186434 () Bool)

(declare-fun tp_is_empty!38675 () Bool)

(assert (=> b!5186434 (= e!3230928 tp_is_empty!38675)))

(declare-fun b!5186435 () Bool)

(declare-fun tp!1455169 () Bool)

(assert (=> b!5186435 (= e!3230929 tp!1455169)))

(declare-fun b!5186436 () Bool)

(declare-fun e!3230927 () Bool)

(assert (=> b!5186436 (= e!3230926 e!3230927)))

(declare-fun res!2203120 () Bool)

(assert (=> b!5186436 (=> res!2203120 e!3230927)))

(declare-datatypes ((List!60434 0))(
  ( (Nil!60310) (Cons!60310 (h!66758 C!29692) (t!373587 List!60434)) )
))
(declare-fun s!2326 () List!60434)

(declare-fun lt!2136647 () Bool)

(declare-fun lt!2136641 () Bool)

(declare-fun lt!2136642 () Bool)

(get-info :version)

(assert (=> b!5186436 (= res!2203120 (or (not (= lt!2136641 (or lt!2136642 lt!2136647))) ((_ is Nil!60310) s!2326)))))

(declare-fun matchRSpec!1814 (Regex!14711 List!60434) Bool)

(assert (=> b!5186436 (= lt!2136647 (matchRSpec!1814 (regTwo!29935 r!7292) s!2326))))

(declare-fun matchR!6896 (Regex!14711 List!60434) Bool)

(assert (=> b!5186436 (= lt!2136647 (matchR!6896 (regTwo!29935 r!7292) s!2326))))

(declare-datatypes ((Unit!152256 0))(
  ( (Unit!152257) )
))
(declare-fun lt!2136644 () Unit!152256)

(declare-fun mainMatchTheorem!1814 (Regex!14711 List!60434) Unit!152256)

(assert (=> b!5186436 (= lt!2136644 (mainMatchTheorem!1814 (regTwo!29935 r!7292) s!2326))))

(assert (=> b!5186436 (= lt!2136642 (matchRSpec!1814 (regOne!29935 r!7292) s!2326))))

(assert (=> b!5186436 (= lt!2136642 (matchR!6896 (regOne!29935 r!7292) s!2326))))

(declare-fun lt!2136646 () Unit!152256)

(assert (=> b!5186436 (= lt!2136646 (mainMatchTheorem!1814 (regOne!29935 r!7292) s!2326))))

(declare-fun setIsEmpty!32692 () Bool)

(assert (=> setIsEmpty!32692 setRes!32692))

(declare-fun b!5186437 () Bool)

(declare-fun res!2203111 () Bool)

(assert (=> b!5186437 (=> res!2203111 e!3230926)))

(assert (=> b!5186437 (= res!2203111 (or ((_ is EmptyExpr!14711) r!7292) ((_ is EmptyLang!14711) r!7292) ((_ is ElementMatch!14711) r!7292) (not ((_ is Union!14711) r!7292))))))

(declare-fun b!5186438 () Bool)

(declare-fun tp!1455177 () Bool)

(assert (=> b!5186438 (= e!3230930 (and tp_is_empty!38675 tp!1455177))))

(declare-fun b!5186439 () Bool)

(assert (=> b!5186439 (= e!3230931 (not e!3230926))))

(declare-fun res!2203116 () Bool)

(assert (=> b!5186439 (=> res!2203116 e!3230926)))

(assert (=> b!5186439 (= res!2203116 (not ((_ is Cons!60309) zl!343)))))

(assert (=> b!5186439 (= lt!2136641 (matchRSpec!1814 r!7292 s!2326))))

(assert (=> b!5186439 (= lt!2136641 (matchR!6896 r!7292 s!2326))))

(declare-fun lt!2136645 () Unit!152256)

(assert (=> b!5186439 (= lt!2136645 (mainMatchTheorem!1814 r!7292 s!2326))))

(declare-fun b!5186440 () Bool)

(declare-fun res!2203114 () Bool)

(assert (=> b!5186440 (=> res!2203114 e!3230926)))

(assert (=> b!5186440 (= res!2203114 (not ((_ is Cons!60308) (exprs!4595 (h!66757 zl!343)))))))

(declare-fun b!5186441 () Bool)

(assert (=> b!5186441 (= e!3230927 true)))

(declare-fun lt!2136643 () (InoxSet Context!8190))

(declare-fun derivationStepZipperUp!101 (Context!8190 C!29692) (InoxSet Context!8190))

(assert (=> b!5186441 (= lt!2136643 (derivationStepZipperUp!101 (Context!8191 (Cons!60308 r!7292 Nil!60308)) (h!66758 s!2326)))))

(declare-fun b!5186442 () Bool)

(declare-fun res!2203117 () Bool)

(assert (=> b!5186442 (=> res!2203117 e!3230926)))

(declare-fun isEmpty!32276 (List!60433) Bool)

(assert (=> b!5186442 (= res!2203117 (not (isEmpty!32276 (t!373586 zl!343))))))

(declare-fun b!5186443 () Bool)

(declare-fun res!2203113 () Bool)

(assert (=> b!5186443 (=> res!2203113 e!3230926)))

(declare-fun generalisedUnion!640 (List!60432) Regex!14711)

(declare-fun unfocusZipperList!153 (List!60433) List!60432)

(assert (=> b!5186443 (= res!2203113 (not (= r!7292 (generalisedUnion!640 (unfocusZipperList!153 zl!343)))))))

(assert (= (and start!549154 res!2203112) b!5186428))

(assert (= (and b!5186428 res!2203119) b!5186433))

(assert (= (and b!5186433 res!2203118) b!5186439))

(assert (= (and b!5186439 (not res!2203116)) b!5186442))

(assert (= (and b!5186442 (not res!2203117)) b!5186429))

(assert (= (and b!5186429 (not res!2203115)) b!5186440))

(assert (= (and b!5186440 (not res!2203114)) b!5186443))

(assert (= (and b!5186443 (not res!2203113)) b!5186437))

(assert (= (and b!5186437 (not res!2203111)) b!5186436))

(assert (= (and b!5186436 (not res!2203120)) b!5186441))

(assert (= (and start!549154 ((_ is ElementMatch!14711) r!7292)) b!5186434))

(assert (= (and start!549154 ((_ is Concat!23556) r!7292)) b!5186432))

(assert (= (and start!549154 ((_ is Star!14711) r!7292)) b!5186431))

(assert (= (and start!549154 ((_ is Union!14711) r!7292)) b!5186426))

(assert (= (and start!549154 condSetEmpty!32692) setIsEmpty!32692))

(assert (= (and start!549154 (not condSetEmpty!32692)) setNonEmpty!32692))

(assert (= setNonEmpty!32692 b!5186427))

(assert (= b!5186430 b!5186435))

(assert (= (and start!549154 ((_ is Cons!60309) zl!343)) b!5186430))

(assert (= (and start!549154 ((_ is Cons!60310) s!2326)) b!5186438))

(declare-fun m!6244684 () Bool)

(assert (=> b!5186443 m!6244684))

(assert (=> b!5186443 m!6244684))

(declare-fun m!6244686 () Bool)

(assert (=> b!5186443 m!6244686))

(declare-fun m!6244688 () Bool)

(assert (=> start!549154 m!6244688))

(declare-fun m!6244690 () Bool)

(assert (=> b!5186433 m!6244690))

(declare-fun m!6244692 () Bool)

(assert (=> b!5186439 m!6244692))

(declare-fun m!6244694 () Bool)

(assert (=> b!5186439 m!6244694))

(declare-fun m!6244696 () Bool)

(assert (=> b!5186439 m!6244696))

(declare-fun m!6244698 () Bool)

(assert (=> b!5186428 m!6244698))

(declare-fun m!6244700 () Bool)

(assert (=> b!5186429 m!6244700))

(declare-fun m!6244702 () Bool)

(assert (=> b!5186441 m!6244702))

(declare-fun m!6244704 () Bool)

(assert (=> setNonEmpty!32692 m!6244704))

(declare-fun m!6244706 () Bool)

(assert (=> b!5186430 m!6244706))

(declare-fun m!6244708 () Bool)

(assert (=> b!5186436 m!6244708))

(declare-fun m!6244710 () Bool)

(assert (=> b!5186436 m!6244710))

(declare-fun m!6244712 () Bool)

(assert (=> b!5186436 m!6244712))

(declare-fun m!6244714 () Bool)

(assert (=> b!5186436 m!6244714))

(declare-fun m!6244716 () Bool)

(assert (=> b!5186436 m!6244716))

(declare-fun m!6244718 () Bool)

(assert (=> b!5186436 m!6244718))

(declare-fun m!6244720 () Bool)

(assert (=> b!5186442 m!6244720))

(check-sat (not b!5186427) (not b!5186439) (not setNonEmpty!32692) (not b!5186429) tp_is_empty!38675 (not b!5186428) (not b!5186443) (not b!5186432) (not b!5186435) (not b!5186438) (not start!549154) (not b!5186426) (not b!5186430) (not b!5186442) (not b!5186436) (not b!5186433) (not b!5186441) (not b!5186431))
(check-sat)

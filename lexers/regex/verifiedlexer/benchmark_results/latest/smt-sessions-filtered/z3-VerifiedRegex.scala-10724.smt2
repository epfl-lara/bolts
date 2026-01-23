; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549034 () Bool)

(assert start!549034)

(declare-fun b!5184384 () Bool)

(declare-fun e!3229884 () Bool)

(declare-fun e!3229886 () Bool)

(assert (=> b!5184384 (= e!3229884 (not e!3229886))))

(declare-fun res!2202245 () Bool)

(assert (=> b!5184384 (=> res!2202245 e!3229886)))

(declare-datatypes ((C!29660 0))(
  ( (C!29661 (val!24532 Int)) )
))
(declare-datatypes ((Regex!14695 0))(
  ( (ElementMatch!14695 (c!893480 C!29660)) (Concat!23540 (regOne!29902 Regex!14695) (regTwo!29902 Regex!14695)) (EmptyExpr!14695) (Star!14695 (reg!15024 Regex!14695)) (EmptyLang!14695) (Union!14695 (regOne!29903 Regex!14695) (regTwo!29903 Regex!14695)) )
))
(declare-datatypes ((List!60384 0))(
  ( (Nil!60260) (Cons!60260 (h!66708 Regex!14695) (t!373537 List!60384)) )
))
(declare-datatypes ((Context!8158 0))(
  ( (Context!8159 (exprs!4579 List!60384)) )
))
(declare-datatypes ((List!60385 0))(
  ( (Nil!60261) (Cons!60261 (h!66709 Context!8158) (t!373538 List!60385)) )
))
(declare-fun zl!343 () List!60385)

(get-info :version)

(assert (=> b!5184384 (= res!2202245 (not ((_ is Cons!60261) zl!343)))))

(declare-fun r!7292 () Regex!14695)

(declare-datatypes ((List!60386 0))(
  ( (Nil!60262) (Cons!60262 (h!66710 C!29660) (t!373539 List!60386)) )
))
(declare-fun s!2326 () List!60386)

(declare-fun matchR!6880 (Regex!14695 List!60386) Bool)

(declare-fun matchRSpec!1798 (Regex!14695 List!60386) Bool)

(assert (=> b!5184384 (= (matchR!6880 r!7292 s!2326) (matchRSpec!1798 r!7292 s!2326))))

(declare-datatypes ((Unit!152224 0))(
  ( (Unit!152225) )
))
(declare-fun lt!2136283 () Unit!152224)

(declare-fun mainMatchTheorem!1798 (Regex!14695 List!60386) Unit!152224)

(assert (=> b!5184384 (= lt!2136283 (mainMatchTheorem!1798 r!7292 s!2326))))

(declare-fun b!5184385 () Bool)

(declare-fun e!3229881 () Bool)

(declare-fun tp!1454458 () Bool)

(assert (=> b!5184385 (= e!3229881 tp!1454458)))

(declare-fun tp!1454465 () Bool)

(declare-fun setElem!32632 () Context!8158)

(declare-fun setNonEmpty!32632 () Bool)

(declare-fun setRes!32632 () Bool)

(declare-fun e!3229887 () Bool)

(declare-fun inv!79984 (Context!8158) Bool)

(assert (=> setNonEmpty!32632 (= setRes!32632 (and tp!1454465 (inv!79984 setElem!32632) e!3229887))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8158))

(declare-fun setRest!32632 () (InoxSet Context!8158))

(assert (=> setNonEmpty!32632 (= z!1189 ((_ map or) (store ((as const (Array Context!8158 Bool)) false) setElem!32632 true) setRest!32632))))

(declare-fun b!5184386 () Bool)

(declare-fun res!2202249 () Bool)

(assert (=> b!5184386 (=> res!2202249 e!3229886)))

(declare-fun isEmpty!32252 (List!60385) Bool)

(assert (=> b!5184386 (= res!2202249 (not (isEmpty!32252 (t!373538 zl!343))))))

(declare-fun b!5184387 () Bool)

(declare-fun e!3229882 () Bool)

(declare-fun tp!1454460 () Bool)

(declare-fun tp!1454457 () Bool)

(assert (=> b!5184387 (= e!3229882 (and tp!1454460 tp!1454457))))

(declare-fun b!5184388 () Bool)

(declare-fun res!2202251 () Bool)

(assert (=> b!5184388 (=> res!2202251 e!3229886)))

(declare-fun generalisedConcat!364 (List!60384) Regex!14695)

(assert (=> b!5184388 (= res!2202251 (not (= r!7292 (generalisedConcat!364 (exprs!4579 (h!66709 zl!343))))))))

(declare-fun b!5184389 () Bool)

(declare-fun tp!1454464 () Bool)

(declare-fun tp!1454461 () Bool)

(assert (=> b!5184389 (= e!3229882 (and tp!1454464 tp!1454461))))

(declare-fun b!5184390 () Bool)

(declare-fun e!3229885 () Bool)

(declare-fun tp_is_empty!38643 () Bool)

(declare-fun tp!1454456 () Bool)

(assert (=> b!5184390 (= e!3229885 (and tp_is_empty!38643 tp!1454456))))

(declare-fun b!5184391 () Bool)

(declare-fun res!2202246 () Bool)

(assert (=> b!5184391 (=> res!2202246 e!3229886)))

(assert (=> b!5184391 (= res!2202246 (not ((_ is Cons!60260) (exprs!4579 (h!66709 zl!343)))))))

(declare-fun e!3229883 () Bool)

(declare-fun b!5184392 () Bool)

(declare-fun tp!1454462 () Bool)

(assert (=> b!5184392 (= e!3229883 (and (inv!79984 (h!66709 zl!343)) e!3229881 tp!1454462))))

(declare-fun res!2202248 () Bool)

(assert (=> start!549034 (=> (not res!2202248) (not e!3229884))))

(declare-fun validRegex!6431 (Regex!14695) Bool)

(assert (=> start!549034 (= res!2202248 (validRegex!6431 r!7292))))

(assert (=> start!549034 e!3229884))

(assert (=> start!549034 e!3229882))

(declare-fun condSetEmpty!32632 () Bool)

(assert (=> start!549034 (= condSetEmpty!32632 (= z!1189 ((as const (Array Context!8158 Bool)) false)))))

(assert (=> start!549034 setRes!32632))

(assert (=> start!549034 e!3229883))

(assert (=> start!549034 e!3229885))

(declare-fun setIsEmpty!32632 () Bool)

(assert (=> setIsEmpty!32632 setRes!32632))

(declare-fun b!5184393 () Bool)

(assert (=> b!5184393 (= e!3229882 tp_is_empty!38643)))

(declare-fun b!5184394 () Bool)

(declare-fun res!2202247 () Bool)

(assert (=> b!5184394 (=> (not res!2202247) (not e!3229884))))

(declare-fun toList!8479 ((InoxSet Context!8158)) List!60385)

(assert (=> b!5184394 (= res!2202247 (= (toList!8479 z!1189) zl!343))))

(declare-fun b!5184395 () Bool)

(declare-fun res!2202250 () Bool)

(assert (=> b!5184395 (=> (not res!2202250) (not e!3229884))))

(declare-fun unfocusZipper!437 (List!60385) Regex!14695)

(assert (=> b!5184395 (= res!2202250 (= r!7292 (unfocusZipper!437 zl!343)))))

(declare-fun b!5184396 () Bool)

(declare-fun tp!1454459 () Bool)

(assert (=> b!5184396 (= e!3229882 tp!1454459)))

(declare-fun b!5184397 () Bool)

(assert (=> b!5184397 (= e!3229886 true)))

(declare-fun b!5184398 () Bool)

(declare-fun res!2202252 () Bool)

(assert (=> b!5184398 (=> res!2202252 e!3229886)))

(declare-fun generalisedUnion!624 (List!60384) Regex!14695)

(declare-fun unfocusZipperList!137 (List!60385) List!60384)

(assert (=> b!5184398 (= res!2202252 (not (= r!7292 (generalisedUnion!624 (unfocusZipperList!137 zl!343)))))))

(declare-fun b!5184399 () Bool)

(declare-fun tp!1454463 () Bool)

(assert (=> b!5184399 (= e!3229887 tp!1454463)))

(assert (= (and start!549034 res!2202248) b!5184394))

(assert (= (and b!5184394 res!2202247) b!5184395))

(assert (= (and b!5184395 res!2202250) b!5184384))

(assert (= (and b!5184384 (not res!2202245)) b!5184386))

(assert (= (and b!5184386 (not res!2202249)) b!5184388))

(assert (= (and b!5184388 (not res!2202251)) b!5184391))

(assert (= (and b!5184391 (not res!2202246)) b!5184398))

(assert (= (and b!5184398 (not res!2202252)) b!5184397))

(assert (= (and start!549034 ((_ is ElementMatch!14695) r!7292)) b!5184393))

(assert (= (and start!549034 ((_ is Concat!23540) r!7292)) b!5184389))

(assert (= (and start!549034 ((_ is Star!14695) r!7292)) b!5184396))

(assert (= (and start!549034 ((_ is Union!14695) r!7292)) b!5184387))

(assert (= (and start!549034 condSetEmpty!32632) setIsEmpty!32632))

(assert (= (and start!549034 (not condSetEmpty!32632)) setNonEmpty!32632))

(assert (= setNonEmpty!32632 b!5184399))

(assert (= b!5184392 b!5184385))

(assert (= (and start!549034 ((_ is Cons!60261) zl!343)) b!5184392))

(assert (= (and start!549034 ((_ is Cons!60262) s!2326)) b!5184390))

(declare-fun m!6243610 () Bool)

(assert (=> b!5184394 m!6243610))

(declare-fun m!6243612 () Bool)

(assert (=> b!5184384 m!6243612))

(declare-fun m!6243614 () Bool)

(assert (=> b!5184384 m!6243614))

(declare-fun m!6243616 () Bool)

(assert (=> b!5184384 m!6243616))

(declare-fun m!6243618 () Bool)

(assert (=> setNonEmpty!32632 m!6243618))

(declare-fun m!6243620 () Bool)

(assert (=> b!5184388 m!6243620))

(declare-fun m!6243622 () Bool)

(assert (=> b!5184392 m!6243622))

(declare-fun m!6243624 () Bool)

(assert (=> start!549034 m!6243624))

(declare-fun m!6243626 () Bool)

(assert (=> b!5184386 m!6243626))

(declare-fun m!6243628 () Bool)

(assert (=> b!5184395 m!6243628))

(declare-fun m!6243630 () Bool)

(assert (=> b!5184398 m!6243630))

(assert (=> b!5184398 m!6243630))

(declare-fun m!6243632 () Bool)

(assert (=> b!5184398 m!6243632))

(check-sat (not b!5184396) (not b!5184388) (not b!5184390) (not b!5184399) (not setNonEmpty!32632) (not b!5184389) (not b!5184385) (not start!549034) tp_is_empty!38643 (not b!5184398) (not b!5184395) (not b!5184384) (not b!5184386) (not b!5184394) (not b!5184392) (not b!5184387))
(check-sat)

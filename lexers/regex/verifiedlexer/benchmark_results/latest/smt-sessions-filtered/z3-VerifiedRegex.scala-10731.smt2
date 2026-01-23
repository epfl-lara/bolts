; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549150 () Bool)

(assert start!549150)

(declare-fun b!5186317 () Bool)

(declare-fun e!3230879 () Bool)

(declare-fun tp!1455111 () Bool)

(assert (=> b!5186317 (= e!3230879 tp!1455111)))

(declare-fun b!5186318 () Bool)

(declare-fun e!3230884 () Bool)

(declare-fun tp!1455113 () Bool)

(declare-fun tp!1455116 () Bool)

(assert (=> b!5186318 (= e!3230884 (and tp!1455113 tp!1455116))))

(declare-fun b!5186319 () Bool)

(declare-fun res!2203059 () Bool)

(declare-fun e!3230877 () Bool)

(assert (=> b!5186319 (=> res!2203059 e!3230877)))

(declare-datatypes ((C!29688 0))(
  ( (C!29689 (val!24546 Int)) )
))
(declare-datatypes ((Regex!14709 0))(
  ( (ElementMatch!14709 (c!893774 C!29688)) (Concat!23554 (regOne!29930 Regex!14709) (regTwo!29930 Regex!14709)) (EmptyExpr!14709) (Star!14709 (reg!15038 Regex!14709)) (EmptyLang!14709) (Union!14709 (regOne!29931 Regex!14709) (regTwo!29931 Regex!14709)) )
))
(declare-datatypes ((List!60426 0))(
  ( (Nil!60302) (Cons!60302 (h!66750 Regex!14709) (t!373579 List!60426)) )
))
(declare-datatypes ((Context!8186 0))(
  ( (Context!8187 (exprs!4593 List!60426)) )
))
(declare-datatypes ((List!60427 0))(
  ( (Nil!60303) (Cons!60303 (h!66751 Context!8186) (t!373580 List!60427)) )
))
(declare-fun zl!343 () List!60427)

(declare-fun isEmpty!32274 (List!60427) Bool)

(assert (=> b!5186319 (= res!2203059 (not (isEmpty!32274 (t!373580 zl!343))))))

(declare-fun b!5186320 () Bool)

(declare-fun res!2203052 () Bool)

(assert (=> b!5186320 (=> res!2203052 e!3230877)))

(declare-fun r!7292 () Regex!14709)

(get-info :version)

(assert (=> b!5186320 (= res!2203052 (or ((_ is EmptyExpr!14709) r!7292) ((_ is EmptyLang!14709) r!7292) ((_ is ElementMatch!14709) r!7292) (not ((_ is Union!14709) r!7292))))))

(declare-fun res!2203060 () Bool)

(declare-fun e!3230885 () Bool)

(assert (=> start!549150 (=> (not res!2203060) (not e!3230885))))

(declare-fun validRegex!6445 (Regex!14709) Bool)

(assert (=> start!549150 (= res!2203060 (validRegex!6445 r!7292))))

(assert (=> start!549150 e!3230885))

(assert (=> start!549150 e!3230884))

(declare-fun condSetEmpty!32686 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8186))

(assert (=> start!549150 (= condSetEmpty!32686 (= z!1189 ((as const (Array Context!8186 Bool)) false)))))

(declare-fun setRes!32686 () Bool)

(assert (=> start!549150 setRes!32686))

(declare-fun e!3230880 () Bool)

(assert (=> start!549150 e!3230880))

(declare-fun e!3230883 () Bool)

(assert (=> start!549150 e!3230883))

(declare-fun b!5186321 () Bool)

(declare-fun res!2203053 () Bool)

(assert (=> b!5186321 (=> res!2203053 e!3230877)))

(assert (=> b!5186321 (= res!2203053 (not ((_ is Cons!60302) (exprs!4593 (h!66751 zl!343)))))))

(declare-fun b!5186322 () Bool)

(declare-fun res!2203051 () Bool)

(assert (=> b!5186322 (=> res!2203051 e!3230877)))

(declare-fun generalisedUnion!638 (List!60426) Regex!14709)

(declare-fun unfocusZipperList!151 (List!60427) List!60426)

(assert (=> b!5186322 (= res!2203051 (not (= r!7292 (generalisedUnion!638 (unfocusZipperList!151 zl!343)))))))

(declare-fun b!5186323 () Bool)

(declare-fun tp!1455115 () Bool)

(declare-fun e!3230882 () Bool)

(declare-fun inv!80019 (Context!8186) Bool)

(assert (=> b!5186323 (= e!3230880 (and (inv!80019 (h!66751 zl!343)) e!3230882 tp!1455115))))

(declare-fun b!5186324 () Bool)

(declare-fun tp_is_empty!38671 () Bool)

(assert (=> b!5186324 (= e!3230884 tp_is_empty!38671)))

(declare-fun b!5186325 () Bool)

(declare-fun tp!1455112 () Bool)

(declare-fun tp!1455114 () Bool)

(assert (=> b!5186325 (= e!3230884 (and tp!1455112 tp!1455114))))

(declare-fun b!5186326 () Bool)

(declare-fun e!3230881 () Bool)

(assert (=> b!5186326 (= e!3230881 true)))

(declare-fun lt!2136597 () Bool)

(declare-datatypes ((List!60428 0))(
  ( (Nil!60304) (Cons!60304 (h!66752 C!29688) (t!373581 List!60428)) )
))
(declare-fun s!2326 () List!60428)

(declare-fun matchZipper!1001 ((InoxSet Context!8186) List!60428) Bool)

(assert (=> b!5186326 (= lt!2136597 (matchZipper!1001 z!1189 s!2326))))

(declare-fun b!5186327 () Bool)

(declare-fun res!2203058 () Bool)

(assert (=> b!5186327 (=> res!2203058 e!3230877)))

(declare-fun generalisedConcat!378 (List!60426) Regex!14709)

(assert (=> b!5186327 (= res!2203058 (not (= r!7292 (generalisedConcat!378 (exprs!4593 (h!66751 zl!343))))))))

(declare-fun b!5186328 () Bool)

(declare-fun tp!1455117 () Bool)

(assert (=> b!5186328 (= e!3230883 (and tp_is_empty!38671 tp!1455117))))

(declare-fun b!5186329 () Bool)

(declare-fun tp!1455108 () Bool)

(assert (=> b!5186329 (= e!3230884 tp!1455108)))

(declare-fun setIsEmpty!32686 () Bool)

(assert (=> setIsEmpty!32686 setRes!32686))

(declare-fun setElem!32686 () Context!8186)

(declare-fun setNonEmpty!32686 () Bool)

(declare-fun tp!1455109 () Bool)

(assert (=> setNonEmpty!32686 (= setRes!32686 (and tp!1455109 (inv!80019 setElem!32686) e!3230879))))

(declare-fun setRest!32686 () (InoxSet Context!8186))

(assert (=> setNonEmpty!32686 (= z!1189 ((_ map or) (store ((as const (Array Context!8186 Bool)) false) setElem!32686 true) setRest!32686))))

(declare-fun b!5186330 () Bool)

(declare-fun tp!1455110 () Bool)

(assert (=> b!5186330 (= e!3230882 tp!1455110)))

(declare-fun b!5186331 () Bool)

(declare-fun res!2203057 () Bool)

(assert (=> b!5186331 (=> (not res!2203057) (not e!3230885))))

(declare-fun toList!8493 ((InoxSet Context!8186)) List!60427)

(assert (=> b!5186331 (= res!2203057 (= (toList!8493 z!1189) zl!343))))

(declare-fun b!5186332 () Bool)

(assert (=> b!5186332 (= e!3230885 (not e!3230877))))

(declare-fun res!2203050 () Bool)

(assert (=> b!5186332 (=> res!2203050 e!3230877)))

(assert (=> b!5186332 (= res!2203050 (not ((_ is Cons!60303) zl!343)))))

(declare-fun lt!2136599 () Bool)

(declare-fun matchRSpec!1812 (Regex!14709 List!60428) Bool)

(assert (=> b!5186332 (= lt!2136599 (matchRSpec!1812 r!7292 s!2326))))

(declare-fun matchR!6894 (Regex!14709 List!60428) Bool)

(assert (=> b!5186332 (= lt!2136599 (matchR!6894 r!7292 s!2326))))

(declare-datatypes ((Unit!152252 0))(
  ( (Unit!152253) )
))
(declare-fun lt!2136603 () Unit!152252)

(declare-fun mainMatchTheorem!1812 (Regex!14709 List!60428) Unit!152252)

(assert (=> b!5186332 (= lt!2136603 (mainMatchTheorem!1812 r!7292 s!2326))))

(declare-fun b!5186333 () Bool)

(declare-fun e!3230878 () Bool)

(assert (=> b!5186333 (= e!3230878 e!3230881)))

(declare-fun res!2203056 () Bool)

(assert (=> b!5186333 (=> res!2203056 e!3230881)))

(declare-fun lt!2136596 () Bool)

(declare-fun lt!2136604 () Bool)

(assert (=> b!5186333 (= res!2203056 (not (= lt!2136596 lt!2136604)))))

(assert (=> b!5186333 (= lt!2136604 lt!2136596)))

(declare-fun nullableZipper!1207 ((InoxSet Context!8186)) Bool)

(assert (=> b!5186333 (= lt!2136596 (nullableZipper!1207 z!1189))))

(declare-fun nullable!4910 (Regex!14709) Bool)

(assert (=> b!5186333 (= lt!2136604 (nullable!4910 r!7292))))

(declare-fun lt!2136602 () Unit!152252)

(declare-fun lemmaUnfocusPreservesNullability!4 (Regex!14709 (InoxSet Context!8186)) Unit!152252)

(assert (=> b!5186333 (= lt!2136602 (lemmaUnfocusPreservesNullability!4 r!7292 z!1189))))

(declare-fun b!5186334 () Bool)

(declare-fun res!2203054 () Bool)

(assert (=> b!5186334 (=> (not res!2203054) (not e!3230885))))

(declare-fun unfocusZipper!451 (List!60427) Regex!14709)

(assert (=> b!5186334 (= res!2203054 (= r!7292 (unfocusZipper!451 zl!343)))))

(declare-fun b!5186335 () Bool)

(assert (=> b!5186335 (= e!3230877 e!3230878)))

(declare-fun res!2203055 () Bool)

(assert (=> b!5186335 (=> res!2203055 e!3230878)))

(declare-fun lt!2136605 () Bool)

(declare-fun lt!2136598 () Bool)

(assert (=> b!5186335 (= res!2203055 (or (not (= lt!2136599 (or lt!2136598 lt!2136605))) (not ((_ is Nil!60304) s!2326))))))

(assert (=> b!5186335 (= lt!2136605 (matchRSpec!1812 (regTwo!29931 r!7292) s!2326))))

(assert (=> b!5186335 (= lt!2136605 (matchR!6894 (regTwo!29931 r!7292) s!2326))))

(declare-fun lt!2136601 () Unit!152252)

(assert (=> b!5186335 (= lt!2136601 (mainMatchTheorem!1812 (regTwo!29931 r!7292) s!2326))))

(assert (=> b!5186335 (= lt!2136598 (matchRSpec!1812 (regOne!29931 r!7292) s!2326))))

(assert (=> b!5186335 (= lt!2136598 (matchR!6894 (regOne!29931 r!7292) s!2326))))

(declare-fun lt!2136600 () Unit!152252)

(assert (=> b!5186335 (= lt!2136600 (mainMatchTheorem!1812 (regOne!29931 r!7292) s!2326))))

(assert (= (and start!549150 res!2203060) b!5186331))

(assert (= (and b!5186331 res!2203057) b!5186334))

(assert (= (and b!5186334 res!2203054) b!5186332))

(assert (= (and b!5186332 (not res!2203050)) b!5186319))

(assert (= (and b!5186319 (not res!2203059)) b!5186327))

(assert (= (and b!5186327 (not res!2203058)) b!5186321))

(assert (= (and b!5186321 (not res!2203053)) b!5186322))

(assert (= (and b!5186322 (not res!2203051)) b!5186320))

(assert (= (and b!5186320 (not res!2203052)) b!5186335))

(assert (= (and b!5186335 (not res!2203055)) b!5186333))

(assert (= (and b!5186333 (not res!2203056)) b!5186326))

(assert (= (and start!549150 ((_ is ElementMatch!14709) r!7292)) b!5186324))

(assert (= (and start!549150 ((_ is Concat!23554) r!7292)) b!5186318))

(assert (= (and start!549150 ((_ is Star!14709) r!7292)) b!5186329))

(assert (= (and start!549150 ((_ is Union!14709) r!7292)) b!5186325))

(assert (= (and start!549150 condSetEmpty!32686) setIsEmpty!32686))

(assert (= (and start!549150 (not condSetEmpty!32686)) setNonEmpty!32686))

(assert (= setNonEmpty!32686 b!5186317))

(assert (= b!5186323 b!5186330))

(assert (= (and start!549150 ((_ is Cons!60303) zl!343)) b!5186323))

(assert (= (and start!549150 ((_ is Cons!60304) s!2326)) b!5186328))

(declare-fun m!6244602 () Bool)

(assert (=> setNonEmpty!32686 m!6244602))

(declare-fun m!6244604 () Bool)

(assert (=> b!5186323 m!6244604))

(declare-fun m!6244606 () Bool)

(assert (=> b!5186327 m!6244606))

(declare-fun m!6244608 () Bool)

(assert (=> b!5186322 m!6244608))

(assert (=> b!5186322 m!6244608))

(declare-fun m!6244610 () Bool)

(assert (=> b!5186322 m!6244610))

(declare-fun m!6244612 () Bool)

(assert (=> b!5186334 m!6244612))

(declare-fun m!6244614 () Bool)

(assert (=> start!549150 m!6244614))

(declare-fun m!6244616 () Bool)

(assert (=> b!5186331 m!6244616))

(declare-fun m!6244618 () Bool)

(assert (=> b!5186326 m!6244618))

(declare-fun m!6244620 () Bool)

(assert (=> b!5186332 m!6244620))

(declare-fun m!6244622 () Bool)

(assert (=> b!5186332 m!6244622))

(declare-fun m!6244624 () Bool)

(assert (=> b!5186332 m!6244624))

(declare-fun m!6244626 () Bool)

(assert (=> b!5186333 m!6244626))

(declare-fun m!6244628 () Bool)

(assert (=> b!5186333 m!6244628))

(declare-fun m!6244630 () Bool)

(assert (=> b!5186333 m!6244630))

(declare-fun m!6244632 () Bool)

(assert (=> b!5186335 m!6244632))

(declare-fun m!6244634 () Bool)

(assert (=> b!5186335 m!6244634))

(declare-fun m!6244636 () Bool)

(assert (=> b!5186335 m!6244636))

(declare-fun m!6244638 () Bool)

(assert (=> b!5186335 m!6244638))

(declare-fun m!6244640 () Bool)

(assert (=> b!5186335 m!6244640))

(declare-fun m!6244642 () Bool)

(assert (=> b!5186335 m!6244642))

(declare-fun m!6244644 () Bool)

(assert (=> b!5186319 m!6244644))

(check-sat (not b!5186319) tp_is_empty!38671 (not b!5186330) (not b!5186334) (not b!5186317) (not start!549150) (not b!5186335) (not b!5186333) (not b!5186329) (not b!5186323) (not b!5186326) (not setNonEmpty!32686) (not b!5186328) (not b!5186332) (not b!5186318) (not b!5186325) (not b!5186327) (not b!5186331) (not b!5186322))
(check-sat)

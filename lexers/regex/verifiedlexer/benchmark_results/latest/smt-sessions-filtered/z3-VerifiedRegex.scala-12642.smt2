; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!700374 () Bool)

(assert start!700374)

(declare-fun b!7203327 () Bool)

(assert (=> b!7203327 true))

(declare-fun b!7203316 () Bool)

(declare-fun e!4324089 () Bool)

(declare-fun e!4324091 () Bool)

(assert (=> b!7203316 (= e!4324089 e!4324091)))

(declare-fun res!2930335 () Bool)

(assert (=> b!7203316 (=> (not res!2930335) (not e!4324091))))

(declare-datatypes ((C!37060 0))(
  ( (C!37061 (val!28478 Int)) )
))
(declare-datatypes ((Regex!18393 0))(
  ( (ElementMatch!18393 (c!1339819 C!37060)) (Concat!27238 (regOne!37298 Regex!18393) (regTwo!37298 Regex!18393)) (EmptyExpr!18393) (Star!18393 (reg!18722 Regex!18393)) (EmptyLang!18393) (Union!18393 (regOne!37299 Regex!18393) (regTwo!37299 Regex!18393)) )
))
(declare-datatypes ((List!69899 0))(
  ( (Nil!69775) (Cons!69775 (h!76223 Regex!18393) (t!383928 List!69899)) )
))
(declare-datatypes ((Context!14690 0))(
  ( (Context!14691 (exprs!7845 List!69899)) )
))
(declare-fun c!10544 () Context!14690)

(declare-fun lt!2571706 () C!37060)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperUp!2359 (Context!14690 C!37060) (InoxSet Context!14690))

(assert (=> b!7203316 (= res!2930335 (= (derivationStepZipperUp!2359 c!10544 lt!2571706) ((as const (Array Context!14690 Bool)) false)))))

(declare-fun lt!2571705 () (InoxSet Context!14690))

(declare-fun z!3517 () (InoxSet Context!14690))

(declare-fun derivationStepZipper!3252 ((InoxSet Context!14690) C!37060) (InoxSet Context!14690))

(assert (=> b!7203316 (= lt!2571705 (derivationStepZipper!3252 z!3517 lt!2571706))))

(declare-datatypes ((List!69900 0))(
  ( (Nil!69776) (Cons!69776 (h!76224 C!37060) (t!383929 List!69900)) )
))
(declare-fun s!7961 () List!69900)

(declare-fun head!14755 (List!69900) C!37060)

(assert (=> b!7203316 (= lt!2571706 (head!14755 s!7961))))

(declare-fun b!7203317 () Bool)

(declare-fun e!4324088 () Bool)

(declare-fun tp!2007449 () Bool)

(assert (=> b!7203317 (= e!4324088 tp!2007449)))

(declare-fun b!7203318 () Bool)

(declare-fun e!4324086 () Bool)

(declare-fun tp_is_empty!46343 () Bool)

(declare-fun tp!2007448 () Bool)

(assert (=> b!7203318 (= e!4324086 (and tp_is_empty!46343 tp!2007448))))

(declare-fun b!7203319 () Bool)

(declare-fun e!4324090 () Bool)

(assert (=> b!7203319 (= e!4324090 false)))

(declare-fun res!2930333 () Bool)

(assert (=> start!700374 (=> (not res!2930333) (not e!4324089))))

(assert (=> start!700374 (= res!2930333 (= z!3517 (store ((as const (Array Context!14690 Bool)) false) c!10544 true)))))

(assert (=> start!700374 e!4324089))

(declare-fun condSetEmpty!53460 () Bool)

(assert (=> start!700374 (= condSetEmpty!53460 (= z!3517 ((as const (Array Context!14690 Bool)) false)))))

(declare-fun setRes!53460 () Bool)

(assert (=> start!700374 setRes!53460))

(declare-fun e!4324084 () Bool)

(declare-fun inv!89004 (Context!14690) Bool)

(assert (=> start!700374 (and (inv!89004 c!10544) e!4324084)))

(assert (=> start!700374 e!4324086))

(declare-fun setIsEmpty!53460 () Bool)

(assert (=> setIsEmpty!53460 setRes!53460))

(declare-fun b!7203320 () Bool)

(declare-fun e!4324087 () Bool)

(declare-fun tp!2007447 () Bool)

(assert (=> b!7203320 (= e!4324087 tp!2007447)))

(declare-fun b!7203321 () Bool)

(declare-fun res!2930336 () Bool)

(assert (=> b!7203321 (=> (not res!2930336) (not e!4324089))))

(declare-fun head!14756 (List!69899) Regex!18393)

(assert (=> b!7203321 (= res!2930336 (= (head!14756 (exprs!7845 c!10544)) EmptyLang!18393))))

(declare-fun b!7203322 () Bool)

(declare-fun res!2930338 () Bool)

(assert (=> b!7203322 (=> (not res!2930338) (not e!4324089))))

(declare-fun isEmpty!40281 (List!69899) Bool)

(assert (=> b!7203322 (= res!2930338 (not (isEmpty!40281 (exprs!7845 c!10544))))))

(declare-fun b!7203323 () Bool)

(declare-fun lt!2571704 () Bool)

(assert (=> b!7203323 (= e!4324091 (not lt!2571704))))

(declare-datatypes ((Unit!163415 0))(
  ( (Unit!163416) )
))
(declare-fun lt!2571703 () Unit!163415)

(declare-fun e!4324085 () Unit!163415)

(assert (=> b!7203323 (= lt!2571703 e!4324085)))

(declare-fun c!1339818 () Bool)

(assert (=> b!7203323 (= c!1339818 (not lt!2571704))))

(assert (=> b!7203323 (= lt!2571704 (= lt!2571705 ((as const (Array Context!14690 Bool)) false)))))

(declare-fun b!7203324 () Bool)

(declare-fun res!2930334 () Bool)

(assert (=> b!7203324 (=> (not res!2930334) (not e!4324089))))

(declare-fun isEmpty!40282 (List!69900) Bool)

(assert (=> b!7203324 (= res!2930334 (not (isEmpty!40282 s!7961)))))

(declare-fun b!7203325 () Bool)

(declare-fun tp!2007446 () Bool)

(assert (=> b!7203325 (= e!4324084 tp!2007446)))

(declare-fun b!7203326 () Bool)

(declare-fun Unit!163417 () Unit!163415)

(assert (=> b!7203326 (= e!4324085 Unit!163417)))

(declare-fun Unit!163418 () Unit!163415)

(assert (=> b!7203327 (= e!4324085 Unit!163418)))

(declare-fun empty!3063 () Context!14690)

(assert (=> b!7203327 (and (inv!89004 empty!3063) e!4324087)))

(assert (=> b!7203327 true))

(declare-fun lambda!438214 () Int)

(declare-fun res!2930337 () Bool)

(declare-fun flatMapPost!86 ((InoxSet Context!14690) Int Context!14690) Context!14690)

(declare-datatypes ((List!69901 0))(
  ( (Nil!69777) (Cons!69777 (h!76225 Context!14690) (t!383930 List!69901)) )
))
(declare-fun head!14757 (List!69901) Context!14690)

(declare-fun toList!11330 ((InoxSet Context!14690)) List!69901)

(assert (=> b!7203327 (= res!2930337 (= (flatMapPost!86 z!3517 lambda!438214 (head!14757 (toList!11330 lt!2571705))) empty!3063))))

(assert (=> b!7203327 (=> (not res!2930337) (not e!4324090))))

(assert (=> b!7203327 e!4324090))

(declare-fun setElem!53460 () Context!14690)

(declare-fun tp!2007450 () Bool)

(declare-fun setNonEmpty!53460 () Bool)

(assert (=> setNonEmpty!53460 (= setRes!53460 (and tp!2007450 (inv!89004 setElem!53460) e!4324088))))

(declare-fun setRest!53460 () (InoxSet Context!14690))

(assert (=> setNonEmpty!53460 (= z!3517 ((_ map or) (store ((as const (Array Context!14690 Bool)) false) setElem!53460 true) setRest!53460))))

(assert (= (and start!700374 res!2930333) b!7203322))

(assert (= (and b!7203322 res!2930338) b!7203321))

(assert (= (and b!7203321 res!2930336) b!7203324))

(assert (= (and b!7203324 res!2930334) b!7203316))

(assert (= (and b!7203316 res!2930335) b!7203323))

(assert (= (and b!7203323 c!1339818) b!7203327))

(assert (= (and b!7203323 (not c!1339818)) b!7203326))

(assert (= b!7203327 b!7203320))

(assert (= (and b!7203327 res!2930337) b!7203319))

(assert (= (and start!700374 condSetEmpty!53460) setIsEmpty!53460))

(assert (= (and start!700374 (not condSetEmpty!53460)) setNonEmpty!53460))

(assert (= setNonEmpty!53460 b!7203317))

(assert (= start!700374 b!7203325))

(get-info :version)

(assert (= (and start!700374 ((_ is Cons!69776) s!7961)) b!7203318))

(declare-fun m!7892062 () Bool)

(assert (=> start!700374 m!7892062))

(declare-fun m!7892064 () Bool)

(assert (=> start!700374 m!7892064))

(declare-fun m!7892066 () Bool)

(assert (=> b!7203324 m!7892066))

(declare-fun m!7892068 () Bool)

(assert (=> b!7203322 m!7892068))

(declare-fun m!7892070 () Bool)

(assert (=> b!7203316 m!7892070))

(declare-fun m!7892072 () Bool)

(assert (=> b!7203316 m!7892072))

(declare-fun m!7892074 () Bool)

(assert (=> b!7203316 m!7892074))

(declare-fun m!7892076 () Bool)

(assert (=> setNonEmpty!53460 m!7892076))

(declare-fun m!7892078 () Bool)

(assert (=> b!7203327 m!7892078))

(declare-fun m!7892080 () Bool)

(assert (=> b!7203327 m!7892080))

(assert (=> b!7203327 m!7892080))

(declare-fun m!7892082 () Bool)

(assert (=> b!7203327 m!7892082))

(assert (=> b!7203327 m!7892082))

(declare-fun m!7892084 () Bool)

(assert (=> b!7203327 m!7892084))

(declare-fun m!7892086 () Bool)

(assert (=> b!7203321 m!7892086))

(check-sat (not b!7203317) tp_is_empty!46343 (not b!7203321) (not b!7203322) (not b!7203316) (not b!7203318) (not b!7203324) (not start!700374) (not b!7203325) (not setNonEmpty!53460) (not b!7203327) (not b!7203320))
(check-sat)

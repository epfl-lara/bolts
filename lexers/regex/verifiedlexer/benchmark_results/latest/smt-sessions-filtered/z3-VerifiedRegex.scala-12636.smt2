; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!700086 () Bool)

(assert start!700086)

(declare-fun b!7194567 () Bool)

(assert (=> b!7194567 true))

(declare-fun e!4320371 () Bool)

(declare-fun setNonEmpty!53362 () Bool)

(declare-fun tp!2000020 () Bool)

(declare-datatypes ((C!37036 0))(
  ( (C!37037 (val!28466 Int)) )
))
(declare-datatypes ((Regex!18381 0))(
  ( (ElementMatch!18381 (c!1339065 C!37036)) (Concat!27226 (regOne!37274 Regex!18381) (regTwo!37274 Regex!18381)) (EmptyExpr!18381) (Star!18381 (reg!18710 Regex!18381)) (EmptyLang!18381) (Union!18381 (regOne!37275 Regex!18381) (regTwo!37275 Regex!18381)) )
))
(declare-datatypes ((List!69865 0))(
  ( (Nil!69741) (Cons!69741 (h!76189 Regex!18381) (t!383890 List!69865)) )
))
(declare-datatypes ((Context!14666 0))(
  ( (Context!14667 (exprs!7833 List!69865)) )
))
(declare-fun setElem!53362 () Context!14666)

(declare-fun setRes!53362 () Bool)

(declare-fun inv!88974 (Context!14666) Bool)

(assert (=> setNonEmpty!53362 (= setRes!53362 (and tp!2000020 (inv!88974 setElem!53362) e!4320371))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3517 () (InoxSet Context!14666))

(declare-fun setRest!53362 () (InoxSet Context!14666))

(assert (=> setNonEmpty!53362 (= z!3517 ((_ map or) (store ((as const (Array Context!14666 Bool)) false) setElem!53362 true) setRest!53362))))

(declare-fun b!7194556 () Bool)

(declare-fun e!4320368 () Bool)

(declare-fun tp!2000022 () Bool)

(assert (=> b!7194556 (= e!4320368 tp!2000022)))

(declare-fun res!2928943 () Bool)

(declare-fun e!4320373 () Bool)

(assert (=> start!700086 (=> (not res!2928943) (not e!4320373))))

(declare-fun c!10544 () Context!14666)

(assert (=> start!700086 (= res!2928943 (= z!3517 (store ((as const (Array Context!14666 Bool)) false) c!10544 true)))))

(assert (=> start!700086 e!4320373))

(declare-fun condSetEmpty!53362 () Bool)

(assert (=> start!700086 (= condSetEmpty!53362 (= z!3517 ((as const (Array Context!14666 Bool)) false)))))

(assert (=> start!700086 setRes!53362))

(declare-fun e!4320369 () Bool)

(assert (=> start!700086 (and (inv!88974 c!10544) e!4320369)))

(declare-fun e!4320370 () Bool)

(assert (=> start!700086 e!4320370))

(declare-fun b!7194557 () Bool)

(declare-fun res!2928948 () Bool)

(assert (=> b!7194557 (=> (not res!2928948) (not e!4320373))))

(declare-fun head!14721 (List!69865) Regex!18381)

(assert (=> b!7194557 (= res!2928948 (= (head!14721 (exprs!7833 c!10544)) EmptyLang!18381))))

(declare-fun b!7194558 () Bool)

(declare-fun tp!2000021 () Bool)

(assert (=> b!7194558 (= e!4320371 tp!2000021)))

(declare-fun b!7194559 () Bool)

(declare-fun tp!2000024 () Bool)

(assert (=> b!7194559 (= e!4320369 tp!2000024)))

(declare-fun b!7194560 () Bool)

(declare-fun e!4320367 () Bool)

(assert (=> b!7194560 (= e!4320367 false)))

(declare-datatypes ((Unit!163407 0))(
  ( (Unit!163408) )
))
(declare-fun lt!2571544 () Unit!163407)

(declare-fun e!4320366 () Unit!163407)

(assert (=> b!7194560 (= lt!2571544 e!4320366)))

(declare-fun c!1339064 () Bool)

(declare-fun lt!2571543 () (InoxSet Context!14666))

(assert (=> b!7194560 (= c!1339064 (not (= lt!2571543 ((as const (Array Context!14666 Bool)) false))))))

(declare-fun b!7194561 () Bool)

(declare-fun tp_is_empty!46319 () Bool)

(declare-fun tp!2000023 () Bool)

(assert (=> b!7194561 (= e!4320370 (and tp_is_empty!46319 tp!2000023))))

(declare-fun b!7194562 () Bool)

(declare-fun Unit!163409 () Unit!163407)

(assert (=> b!7194562 (= e!4320366 Unit!163409)))

(declare-fun b!7194563 () Bool)

(assert (=> b!7194563 (= e!4320373 e!4320367)))

(declare-fun res!2928944 () Bool)

(assert (=> b!7194563 (=> (not res!2928944) (not e!4320367))))

(declare-fun lt!2571542 () C!37036)

(declare-fun derivationStepZipperUp!2347 (Context!14666 C!37036) (InoxSet Context!14666))

(assert (=> b!7194563 (= res!2928944 (= (derivationStepZipperUp!2347 c!10544 lt!2571542) ((as const (Array Context!14666 Bool)) false)))))

(declare-fun derivationStepZipper!3242 ((InoxSet Context!14666) C!37036) (InoxSet Context!14666))

(assert (=> b!7194563 (= lt!2571543 (derivationStepZipper!3242 z!3517 lt!2571542))))

(declare-datatypes ((List!69866 0))(
  ( (Nil!69742) (Cons!69742 (h!76190 C!37036) (t!383891 List!69866)) )
))
(declare-fun s!7961 () List!69866)

(declare-fun head!14722 (List!69866) C!37036)

(assert (=> b!7194563 (= lt!2571542 (head!14722 s!7961))))

(declare-fun b!7194564 () Bool)

(declare-fun res!2928945 () Bool)

(assert (=> b!7194564 (=> (not res!2928945) (not e!4320373))))

(declare-fun isEmpty!40257 (List!69865) Bool)

(assert (=> b!7194564 (= res!2928945 (not (isEmpty!40257 (exprs!7833 c!10544))))))

(declare-fun b!7194565 () Bool)

(declare-fun e!4320372 () Bool)

(assert (=> b!7194565 (= e!4320372 false)))

(declare-fun b!7194566 () Bool)

(declare-fun res!2928946 () Bool)

(assert (=> b!7194566 (=> (not res!2928946) (not e!4320373))))

(declare-fun isEmpty!40258 (List!69866) Bool)

(assert (=> b!7194566 (= res!2928946 (not (isEmpty!40258 s!7961)))))

(declare-fun Unit!163410 () Unit!163407)

(assert (=> b!7194567 (= e!4320366 Unit!163410)))

(declare-fun empty!3039 () Context!14666)

(assert (=> b!7194567 (and (inv!88974 empty!3039) e!4320368)))

(assert (=> b!7194567 true))

(declare-fun res!2928947 () Bool)

(declare-fun lambda!438062 () Int)

(declare-fun flatMapPost!80 ((InoxSet Context!14666) Int Context!14666) Context!14666)

(declare-datatypes ((List!69867 0))(
  ( (Nil!69743) (Cons!69743 (h!76191 Context!14666) (t!383892 List!69867)) )
))
(declare-fun head!14723 (List!69867) Context!14666)

(declare-fun toList!11320 ((InoxSet Context!14666)) List!69867)

(assert (=> b!7194567 (= res!2928947 (= (flatMapPost!80 z!3517 lambda!438062 (head!14723 (toList!11320 lt!2571543))) empty!3039))))

(assert (=> b!7194567 (=> (not res!2928947) (not e!4320372))))

(assert (=> b!7194567 e!4320372))

(declare-fun setIsEmpty!53362 () Bool)

(assert (=> setIsEmpty!53362 setRes!53362))

(assert (= (and start!700086 res!2928943) b!7194564))

(assert (= (and b!7194564 res!2928945) b!7194557))

(assert (= (and b!7194557 res!2928948) b!7194566))

(assert (= (and b!7194566 res!2928946) b!7194563))

(assert (= (and b!7194563 res!2928944) b!7194560))

(assert (= (and b!7194560 c!1339064) b!7194567))

(assert (= (and b!7194560 (not c!1339064)) b!7194562))

(assert (= b!7194567 b!7194556))

(assert (= (and b!7194567 res!2928947) b!7194565))

(assert (= (and start!700086 condSetEmpty!53362) setIsEmpty!53362))

(assert (= (and start!700086 (not condSetEmpty!53362)) setNonEmpty!53362))

(assert (= setNonEmpty!53362 b!7194558))

(assert (= start!700086 b!7194559))

(get-info :version)

(assert (= (and start!700086 ((_ is Cons!69742) s!7961)) b!7194561))

(declare-fun m!7888948 () Bool)

(assert (=> start!700086 m!7888948))

(declare-fun m!7888950 () Bool)

(assert (=> start!700086 m!7888950))

(declare-fun m!7888952 () Bool)

(assert (=> b!7194557 m!7888952))

(declare-fun m!7888954 () Bool)

(assert (=> b!7194563 m!7888954))

(declare-fun m!7888956 () Bool)

(assert (=> b!7194563 m!7888956))

(declare-fun m!7888958 () Bool)

(assert (=> b!7194563 m!7888958))

(declare-fun m!7888960 () Bool)

(assert (=> b!7194564 m!7888960))

(declare-fun m!7888962 () Bool)

(assert (=> b!7194567 m!7888962))

(declare-fun m!7888964 () Bool)

(assert (=> b!7194567 m!7888964))

(assert (=> b!7194567 m!7888964))

(declare-fun m!7888966 () Bool)

(assert (=> b!7194567 m!7888966))

(assert (=> b!7194567 m!7888966))

(declare-fun m!7888968 () Bool)

(assert (=> b!7194567 m!7888968))

(declare-fun m!7888970 () Bool)

(assert (=> setNonEmpty!53362 m!7888970))

(declare-fun m!7888972 () Bool)

(assert (=> b!7194566 m!7888972))

(check-sat (not setNonEmpty!53362) (not b!7194563) (not b!7194561) tp_is_empty!46319 (not b!7194564) (not b!7194556) (not b!7194566) (not start!700086) (not b!7194559) (not b!7194567) (not b!7194557) (not b!7194558))
(check-sat)

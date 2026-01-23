; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!713312 () Bool)

(assert start!713312)

(declare-fun setIsEmpty!54732 () Bool)

(declare-fun setRes!54733 () Bool)

(assert (=> setIsEmpty!54732 setRes!54733))

(declare-fun b!7317283 () Bool)

(declare-datatypes ((Unit!164669 0))(
  ( (Unit!164670) )
))
(declare-fun e!4380619 () Unit!164669)

(declare-fun Unit!164671 () Unit!164669)

(assert (=> b!7317283 (= e!4380619 Unit!164671)))

(declare-fun b!7317284 () Bool)

(declare-fun e!4380623 () Bool)

(declare-fun tp!2077611 () Bool)

(assert (=> b!7317284 (= e!4380623 tp!2077611)))

(declare-fun res!2956786 () Bool)

(declare-fun e!4380618 () Bool)

(assert (=> start!713312 (=> (not res!2956786) (not e!4380618))))

(declare-datatypes ((C!38184 0))(
  ( (C!38185 (val!29188 Int)) )
))
(declare-datatypes ((List!71341 0))(
  ( (Nil!71217) (Cons!71217 (h!77665 C!38184) (t!385573 List!71341)) )
))
(declare-fun s!7362 () List!71341)

(get-info :version)

(assert (=> start!713312 (= res!2956786 (not ((_ is Cons!71217) s!7362)))))

(assert (=> start!713312 e!4380618))

(declare-fun e!4380615 () Bool)

(assert (=> start!713312 e!4380615))

(declare-fun condSetEmpty!54733 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18955 0))(
  ( (ElementMatch!18955 (c!1358433 C!38184)) (Concat!27800 (regOne!38422 Regex!18955) (regTwo!38422 Regex!18955)) (EmptyExpr!18955) (Star!18955 (reg!19284 Regex!18955)) (EmptyLang!18955) (Union!18955 (regOne!38423 Regex!18955) (regTwo!38423 Regex!18955)) )
))
(declare-datatypes ((List!71342 0))(
  ( (Nil!71218) (Cons!71218 (h!77666 Regex!18955) (t!385574 List!71342)) )
))
(declare-datatypes ((Context!15790 0))(
  ( (Context!15791 (exprs!8395 List!71342)) )
))
(declare-fun z1!542 () (InoxSet Context!15790))

(assert (=> start!713312 (= condSetEmpty!54733 (= z1!542 ((as const (Array Context!15790 Bool)) false)))))

(declare-fun setRes!54732 () Bool)

(assert (=> start!713312 setRes!54732))

(declare-fun condSetEmpty!54732 () Bool)

(declare-fun z2!461 () (InoxSet Context!15790))

(assert (=> start!713312 (= condSetEmpty!54732 (= z2!461 ((as const (Array Context!15790 Bool)) false)))))

(assert (=> start!713312 setRes!54733))

(declare-fun setIsEmpty!54733 () Bool)

(assert (=> setIsEmpty!54733 setRes!54732))

(declare-fun b!7317285 () Bool)

(declare-fun e!4380622 () Bool)

(assert (=> b!7317285 (= e!4380622 false)))

(declare-fun b!7317286 () Bool)

(declare-fun res!2956785 () Bool)

(declare-fun e!4380616 () Bool)

(assert (=> b!7317286 (=> (not res!2956785) (not e!4380616))))

(declare-fun lt!2602491 () (InoxSet Context!15790))

(declare-fun lambda!452651 () Int)

(declare-fun exists!4613 ((InoxSet Context!15790) Int) Bool)

(assert (=> b!7317286 (= res!2956785 (not (exists!4613 lt!2602491 lambda!452651)))))

(declare-fun b!7317287 () Bool)

(declare-fun Unit!164672 () Unit!164669)

(assert (=> b!7317287 (= e!4380619 Unit!164672)))

(declare-fun lt!2602487 () Unit!164669)

(declare-fun lemmaContainsThenExists!265 ((InoxSet Context!15790) Context!15790 Int) Unit!164669)

(declare-fun getWitness!2351 ((InoxSet Context!15790) Int) Context!15790)

(assert (=> b!7317287 (= lt!2602487 (lemmaContainsThenExists!265 lt!2602491 (getWitness!2351 z2!461 lambda!452651) lambda!452651))))

(declare-fun res!2956784 () Bool)

(assert (=> b!7317287 (= res!2956784 (exists!4613 lt!2602491 lambda!452651))))

(declare-fun e!4380617 () Bool)

(assert (=> b!7317287 (=> (not res!2956784) (not e!4380617))))

(assert (=> b!7317287 e!4380617))

(declare-fun setElem!54733 () Context!15790)

(declare-fun tp!2077613 () Bool)

(declare-fun setNonEmpty!54732 () Bool)

(declare-fun inv!90508 (Context!15790) Bool)

(assert (=> setNonEmpty!54732 (= setRes!54733 (and tp!2077613 (inv!90508 setElem!54733) e!4380623))))

(declare-fun setRest!54732 () (InoxSet Context!15790))

(assert (=> setNonEmpty!54732 (= z2!461 ((_ map or) (store ((as const (Array Context!15790 Bool)) false) setElem!54733 true) setRest!54732))))

(declare-fun b!7317288 () Bool)

(declare-fun tp_is_empty!47655 () Bool)

(declare-fun tp!2077615 () Bool)

(assert (=> b!7317288 (= e!4380615 (and tp_is_empty!47655 tp!2077615))))

(declare-fun b!7317289 () Bool)

(declare-fun e!4380621 () Unit!164669)

(declare-fun Unit!164673 () Unit!164669)

(assert (=> b!7317289 (= e!4380621 Unit!164673)))

(declare-fun lt!2602489 () Unit!164669)

(assert (=> b!7317289 (= lt!2602489 (lemmaContainsThenExists!265 lt!2602491 (getWitness!2351 z1!542 lambda!452651) lambda!452651))))

(declare-fun res!2956783 () Bool)

(assert (=> b!7317289 (= res!2956783 (exists!4613 lt!2602491 lambda!452651))))

(assert (=> b!7317289 (=> (not res!2956783) (not e!4380622))))

(assert (=> b!7317289 e!4380622))

(declare-fun b!7317290 () Bool)

(assert (=> b!7317290 (= e!4380618 e!4380616)))

(declare-fun res!2956782 () Bool)

(assert (=> b!7317290 (=> (not res!2956782) (not e!4380616))))

(declare-fun nullableZipper!3134 ((InoxSet Context!15790)) Bool)

(assert (=> b!7317290 (= res!2956782 (not (nullableZipper!3134 lt!2602491)))))

(assert (=> b!7317290 (= lt!2602491 ((_ map or) z1!542 z2!461))))

(declare-fun b!7317291 () Bool)

(assert (=> b!7317291 (= e!4380617 false)))

(declare-fun b!7317292 () Bool)

(declare-fun e!4380620 () Bool)

(declare-fun tp!2077612 () Bool)

(assert (=> b!7317292 (= e!4380620 tp!2077612)))

(declare-fun b!7317293 () Bool)

(declare-fun Unit!164674 () Unit!164669)

(assert (=> b!7317293 (= e!4380621 Unit!164674)))

(declare-fun setNonEmpty!54733 () Bool)

(declare-fun setElem!54732 () Context!15790)

(declare-fun tp!2077614 () Bool)

(assert (=> setNonEmpty!54733 (= setRes!54732 (and tp!2077614 (inv!90508 setElem!54732) e!4380620))))

(declare-fun setRest!54733 () (InoxSet Context!15790))

(assert (=> setNonEmpty!54733 (= z1!542 ((_ map or) (store ((as const (Array Context!15790 Bool)) false) setElem!54732 true) setRest!54733))))

(declare-fun b!7317294 () Bool)

(declare-fun lt!2602490 () Bool)

(declare-fun lt!2602488 () Bool)

(assert (=> b!7317294 (= e!4380616 (or lt!2602490 lt!2602488))))

(declare-fun lt!2602493 () Unit!164669)

(assert (=> b!7317294 (= lt!2602493 e!4380619)))

(declare-fun c!1358432 () Bool)

(assert (=> b!7317294 (= c!1358432 lt!2602488)))

(assert (=> b!7317294 (= lt!2602488 (nullableZipper!3134 z2!461))))

(declare-fun lt!2602492 () Unit!164669)

(assert (=> b!7317294 (= lt!2602492 e!4380621)))

(declare-fun c!1358431 () Bool)

(assert (=> b!7317294 (= c!1358431 lt!2602490)))

(assert (=> b!7317294 (= lt!2602490 (nullableZipper!3134 z1!542))))

(assert (= (and start!713312 res!2956786) b!7317290))

(assert (= (and b!7317290 res!2956782) b!7317286))

(assert (= (and b!7317286 res!2956785) b!7317294))

(assert (= (and b!7317294 c!1358431) b!7317289))

(assert (= (and b!7317294 (not c!1358431)) b!7317293))

(assert (= (and b!7317289 res!2956783) b!7317285))

(assert (= (and b!7317294 c!1358432) b!7317287))

(assert (= (and b!7317294 (not c!1358432)) b!7317283))

(assert (= (and b!7317287 res!2956784) b!7317291))

(assert (= (and start!713312 ((_ is Cons!71217) s!7362)) b!7317288))

(assert (= (and start!713312 condSetEmpty!54733) setIsEmpty!54733))

(assert (= (and start!713312 (not condSetEmpty!54733)) setNonEmpty!54733))

(assert (= setNonEmpty!54733 b!7317292))

(assert (= (and start!713312 condSetEmpty!54732) setIsEmpty!54732))

(assert (= (and start!713312 (not condSetEmpty!54732)) setNonEmpty!54732))

(assert (= setNonEmpty!54732 b!7317284))

(declare-fun m!7981470 () Bool)

(assert (=> b!7317287 m!7981470))

(assert (=> b!7317287 m!7981470))

(declare-fun m!7981472 () Bool)

(assert (=> b!7317287 m!7981472))

(declare-fun m!7981474 () Bool)

(assert (=> b!7317287 m!7981474))

(declare-fun m!7981476 () Bool)

(assert (=> b!7317290 m!7981476))

(declare-fun m!7981478 () Bool)

(assert (=> b!7317289 m!7981478))

(assert (=> b!7317289 m!7981478))

(declare-fun m!7981480 () Bool)

(assert (=> b!7317289 m!7981480))

(assert (=> b!7317289 m!7981474))

(declare-fun m!7981482 () Bool)

(assert (=> setNonEmpty!54733 m!7981482))

(assert (=> b!7317286 m!7981474))

(declare-fun m!7981484 () Bool)

(assert (=> setNonEmpty!54732 m!7981484))

(declare-fun m!7981486 () Bool)

(assert (=> b!7317294 m!7981486))

(declare-fun m!7981488 () Bool)

(assert (=> b!7317294 m!7981488))

(check-sat (not b!7317288) (not b!7317286) tp_is_empty!47655 (not b!7317284) (not setNonEmpty!54733) (not setNonEmpty!54732) (not b!7317294) (not b!7317290) (not b!7317287) (not b!7317292) (not b!7317289))
(check-sat)

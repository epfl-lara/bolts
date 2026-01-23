; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!697956 () Bool)

(assert start!697956)

(declare-fun b!7158399 () Bool)

(assert (=> b!7158399 true))

(declare-fun b!7158398 () Bool)

(declare-fun e!4300480 () Bool)

(assert (=> b!7158398 (= e!4300480 true)))

(declare-datatypes ((Unit!163327 0))(
  ( (Unit!163328) )
))
(declare-fun lt!2569694 () Unit!163327)

(declare-fun e!4300479 () Unit!163327)

(assert (=> b!7158398 (= lt!2569694 e!4300479)))

(declare-fun c!1334004 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36884 0))(
  ( (C!36885 (val!28390 Int)) )
))
(declare-datatypes ((Regex!18305 0))(
  ( (ElementMatch!18305 (c!1334005 C!36884)) (Concat!27150 (regOne!37122 Regex!18305) (regTwo!37122 Regex!18305)) (EmptyExpr!18305) (Star!18305 (reg!18634 Regex!18305)) (EmptyLang!18305) (Union!18305 (regOne!37123 Regex!18305) (regTwo!37123 Regex!18305)) )
))
(declare-datatypes ((List!69655 0))(
  ( (Nil!69531) (Cons!69531 (h!75979 Regex!18305) (t!383672 List!69655)) )
))
(declare-datatypes ((Context!14514 0))(
  ( (Context!14515 (exprs!7757 List!69655)) )
))
(declare-fun lt!2569695 () (InoxSet Context!14514))

(assert (=> b!7158398 (= c!1334004 (not (= lt!2569695 ((as const (Array Context!14514 Bool)) false))))))

(declare-fun Unit!163329 () Unit!163327)

(assert (=> b!7158399 (= e!4300479 Unit!163329)))

(declare-fun empty!2911 () Context!14514)

(declare-fun e!4300482 () Bool)

(declare-fun inv!88784 (Context!14514) Bool)

(assert (=> b!7158399 (and (inv!88784 empty!2911) e!4300482)))

(assert (=> b!7158399 true))

(declare-fun z!3530 () (InoxSet Context!14514))

(declare-fun lambda!436701 () Int)

(declare-fun res!2918749 () Bool)

(declare-fun flatMapPost!48 ((InoxSet Context!14514) Int Context!14514) Context!14514)

(declare-datatypes ((List!69656 0))(
  ( (Nil!69532) (Cons!69532 (h!75980 Context!14514) (t!383673 List!69656)) )
))
(declare-fun head!14590 (List!69656) Context!14514)

(declare-fun toList!11248 ((InoxSet Context!14514)) List!69656)

(assert (=> b!7158399 (= res!2918749 (= (flatMapPost!48 z!3530 lambda!436701 (head!14590 (toList!11248 lt!2569695))) empty!2911))))

(declare-fun e!4300477 () Bool)

(assert (=> b!7158399 (=> (not res!2918749) (not e!4300477))))

(assert (=> b!7158399 e!4300477))

(declare-fun b!7158400 () Bool)

(declare-fun e!4300481 () Bool)

(declare-fun tp_is_empty!46183 () Bool)

(declare-fun tp!1979601 () Bool)

(assert (=> b!7158400 (= e!4300481 (and tp_is_empty!46183 tp!1979601))))

(declare-fun b!7158401 () Bool)

(declare-fun e!4300475 () Bool)

(declare-fun tp!1979598 () Bool)

(assert (=> b!7158401 (= e!4300475 tp!1979598)))

(declare-fun res!2918747 () Bool)

(declare-fun e!4300478 () Bool)

(assert (=> start!697956 (=> (not res!2918747) (not e!4300478))))

(declare-fun unfocusZipper!2565 (List!69656) Regex!18305)

(assert (=> start!697956 (= res!2918747 (= (unfocusZipper!2565 (toList!11248 z!3530)) EmptyExpr!18305))))

(assert (=> start!697956 e!4300478))

(declare-fun condSetEmpty!52791 () Bool)

(assert (=> start!697956 (= condSetEmpty!52791 (= z!3530 ((as const (Array Context!14514 Bool)) false)))))

(declare-fun setRes!52791 () Bool)

(assert (=> start!697956 setRes!52791))

(assert (=> start!697956 e!4300481))

(declare-fun setNonEmpty!52791 () Bool)

(declare-fun setElem!52791 () Context!14514)

(declare-fun tp!1979600 () Bool)

(assert (=> setNonEmpty!52791 (= setRes!52791 (and tp!1979600 (inv!88784 setElem!52791) e!4300475))))

(declare-fun setRest!52791 () (InoxSet Context!14514))

(assert (=> setNonEmpty!52791 (= z!3530 ((_ map or) (store ((as const (Array Context!14514 Bool)) false) setElem!52791 true) setRest!52791))))

(declare-fun setIsEmpty!52791 () Bool)

(assert (=> setIsEmpty!52791 setRes!52791))

(declare-fun b!7158402 () Bool)

(declare-fun res!2918748 () Bool)

(assert (=> b!7158402 (=> (not res!2918748) (not e!4300478))))

(declare-fun focus!380 (Regex!18305) (InoxSet Context!14514))

(assert (=> b!7158402 (= res!2918748 (= z!3530 (focus!380 EmptyExpr!18305)))))

(declare-fun b!7158403 () Bool)

(declare-fun Unit!163330 () Unit!163327)

(assert (=> b!7158403 (= e!4300479 Unit!163330)))

(declare-fun b!7158404 () Bool)

(declare-fun e!4300476 () Bool)

(assert (=> b!7158404 (= e!4300478 (not e!4300476))))

(declare-fun res!2918750 () Bool)

(assert (=> b!7158404 (=> res!2918750 e!4300476)))

(declare-datatypes ((List!69657 0))(
  ( (Nil!69533) (Cons!69533 (h!75981 C!36884) (t!383674 List!69657)) )
))
(declare-fun s!7967 () List!69657)

(declare-fun isEmpty!40157 (List!69657) Bool)

(assert (=> b!7158404 (= res!2918750 (isEmpty!40157 s!7967))))

(declare-fun lt!2569693 () Context!14514)

(declare-fun nullableContext!178 (Context!14514) Bool)

(assert (=> b!7158404 (nullableContext!178 lt!2569693)))

(assert (=> b!7158404 (= lt!2569693 (Context!14515 (Cons!69531 EmptyExpr!18305 Nil!69531)))))

(declare-fun b!7158405 () Bool)

(assert (=> b!7158405 (= e!4300477 false)))

(declare-fun b!7158406 () Bool)

(assert (=> b!7158406 (= e!4300476 e!4300480)))

(declare-fun res!2918751 () Bool)

(assert (=> b!7158406 (=> res!2918751 e!4300480)))

(declare-fun lt!2569696 () C!36884)

(declare-fun derivationStepZipperUp!2295 (Context!14514 C!36884) (InoxSet Context!14514))

(assert (=> b!7158406 (= res!2918751 (not (= (derivationStepZipperUp!2295 lt!2569693 lt!2569696) ((as const (Array Context!14514 Bool)) false))))))

(declare-fun derivationStepZipper!3190 ((InoxSet Context!14514) C!36884) (InoxSet Context!14514))

(assert (=> b!7158406 (= lt!2569695 (derivationStepZipper!3190 z!3530 lt!2569696))))

(declare-fun head!14591 (List!69657) C!36884)

(assert (=> b!7158406 (= lt!2569696 (head!14591 s!7967))))

(declare-fun b!7158407 () Bool)

(declare-fun tp!1979599 () Bool)

(assert (=> b!7158407 (= e!4300482 tp!1979599)))

(assert (= (and start!697956 res!2918747) b!7158402))

(assert (= (and b!7158402 res!2918748) b!7158404))

(assert (= (and b!7158404 (not res!2918750)) b!7158406))

(assert (= (and b!7158406 (not res!2918751)) b!7158398))

(assert (= (and b!7158398 c!1334004) b!7158399))

(assert (= (and b!7158398 (not c!1334004)) b!7158403))

(assert (= b!7158399 b!7158407))

(assert (= (and b!7158399 res!2918749) b!7158405))

(assert (= (and start!697956 condSetEmpty!52791) setIsEmpty!52791))

(assert (= (and start!697956 (not condSetEmpty!52791)) setNonEmpty!52791))

(assert (= setNonEmpty!52791 b!7158401))

(get-info :version)

(assert (= (and start!697956 ((_ is Cons!69533) s!7967)) b!7158400))

(declare-fun m!7864690 () Bool)

(assert (=> setNonEmpty!52791 m!7864690))

(declare-fun m!7864692 () Bool)

(assert (=> b!7158404 m!7864692))

(declare-fun m!7864694 () Bool)

(assert (=> b!7158404 m!7864694))

(declare-fun m!7864696 () Bool)

(assert (=> b!7158402 m!7864696))

(declare-fun m!7864698 () Bool)

(assert (=> b!7158406 m!7864698))

(declare-fun m!7864700 () Bool)

(assert (=> b!7158406 m!7864700))

(declare-fun m!7864702 () Bool)

(assert (=> b!7158406 m!7864702))

(declare-fun m!7864704 () Bool)

(assert (=> start!697956 m!7864704))

(assert (=> start!697956 m!7864704))

(declare-fun m!7864706 () Bool)

(assert (=> start!697956 m!7864706))

(declare-fun m!7864708 () Bool)

(assert (=> b!7158399 m!7864708))

(declare-fun m!7864710 () Bool)

(assert (=> b!7158399 m!7864710))

(assert (=> b!7158399 m!7864710))

(declare-fun m!7864712 () Bool)

(assert (=> b!7158399 m!7864712))

(assert (=> b!7158399 m!7864712))

(declare-fun m!7864714 () Bool)

(assert (=> b!7158399 m!7864714))

(check-sat (not b!7158401) (not setNonEmpty!52791) (not b!7158406) (not b!7158400) (not b!7158399) (not b!7158407) (not start!697956) (not b!7158402) tp_is_empty!46183 (not b!7158404))
(check-sat)

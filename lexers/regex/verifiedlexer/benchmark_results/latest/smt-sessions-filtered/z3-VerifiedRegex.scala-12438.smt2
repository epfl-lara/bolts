; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694216 () Bool)

(assert start!694216)

(declare-fun b!7125458 () Bool)

(declare-fun e!4281974 () Bool)

(declare-fun tp!1962676 () Bool)

(assert (=> b!7125458 (= e!4281974 tp!1962676)))

(declare-fun b!7125459 () Bool)

(declare-fun e!4281981 () Bool)

(declare-fun tp_is_empty!45619 () Bool)

(declare-fun tp!1962673 () Bool)

(assert (=> b!7125459 (= e!4281981 (and tp_is_empty!45619 tp!1962673))))

(declare-fun b!7125460 () Bool)

(declare-fun res!2907442 () Bool)

(declare-fun e!4281977 () Bool)

(assert (=> b!7125460 (=> (not res!2907442) (not e!4281977))))

(declare-datatypes ((C!36288 0))(
  ( (C!36289 (val!28070 Int)) )
))
(declare-datatypes ((List!69069 0))(
  ( (Nil!68945) (Cons!68945 (h!75393 C!36288) (t!383046 List!69069)) )
))
(declare-fun s2Rec!140 () List!69069)

(get-info :version)

(assert (=> b!7125460 (= res!2907442 ((_ is Nil!68945) s2Rec!140))))

(declare-fun setIsEmpty!51618 () Bool)

(declare-fun setRes!51618 () Bool)

(assert (=> setIsEmpty!51618 setRes!51618))

(declare-fun b!7125461 () Bool)

(declare-fun res!2907441 () Bool)

(declare-fun e!4281975 () Bool)

(assert (=> b!7125461 (=> (not res!2907441) (not e!4281975))))

(declare-fun lt!2563079 () Int)

(declare-fun s1!1688 () List!69069)

(declare-fun size!41450 (List!69069) Int)

(assert (=> b!7125461 (= res!2907441 (= lt!2563079 (size!41450 s1!1688)))))

(declare-fun setIsEmpty!51619 () Bool)

(declare-fun setRes!51619 () Bool)

(assert (=> setIsEmpty!51619 setRes!51619))

(declare-fun b!7125462 () Bool)

(declare-fun res!2907434 () Bool)

(assert (=> b!7125462 (=> (not res!2907434) (not e!4281977))))

(declare-fun s2!1620 () List!69069)

(declare-fun s!7390 () List!69069)

(declare-fun ++!16147 (List!69069 List!69069) List!69069)

(assert (=> b!7125462 (= res!2907434 (= (++!16147 s1!1688 s2!1620) s!7390))))

(declare-fun b!7125463 () Bool)

(declare-fun e!4281979 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18009 0))(
  ( (ElementMatch!18009 (c!1329351 C!36288)) (Concat!26854 (regOne!36530 Regex!18009) (regTwo!36530 Regex!18009)) (EmptyExpr!18009) (Star!18009 (reg!18338 Regex!18009)) (EmptyLang!18009) (Union!18009 (regOne!36531 Regex!18009) (regTwo!36531 Regex!18009)) )
))
(declare-datatypes ((List!69070 0))(
  ( (Nil!68946) (Cons!68946 (h!75394 Regex!18009) (t!383047 List!69070)) )
))
(declare-datatypes ((Context!14006 0))(
  ( (Context!14007 (exprs!7503 List!69070)) )
))
(declare-fun z2!471 () (InoxSet Context!14006))

(declare-fun matchZipper!3265 ((InoxSet Context!14006) List!69069) Bool)

(assert (=> b!7125463 (= e!4281979 (not (matchZipper!3265 z2!471 s2Rec!140)))))

(declare-fun b!7125464 () Bool)

(declare-fun res!2907435 () Bool)

(assert (=> b!7125464 (=> (not res!2907435) (not e!4281977))))

(assert (=> b!7125464 (= res!2907435 (matchZipper!3265 z2!471 s2!1620))))

(declare-fun b!7125465 () Bool)

(declare-fun res!2907443 () Bool)

(assert (=> b!7125465 (=> (not res!2907443) (not e!4281977))))

(declare-fun s1Rec!140 () List!69069)

(declare-fun isPrefix!5878 (List!69069 List!69069) Bool)

(assert (=> b!7125465 (= res!2907443 (isPrefix!5878 s1Rec!140 s1!1688))))

(declare-fun b!7125466 () Bool)

(declare-fun e!4281980 () Bool)

(declare-fun tp!1962674 () Bool)

(assert (=> b!7125466 (= e!4281980 (and tp_is_empty!45619 tp!1962674))))

(declare-fun b!7125467 () Bool)

(assert (=> b!7125467 (= e!4281977 e!4281975)))

(declare-fun res!2907438 () Bool)

(assert (=> b!7125467 (=> (not res!2907438) (not e!4281975))))

(assert (=> b!7125467 (= res!2907438 (= lt!2563079 (size!41450 s!7390)))))

(assert (=> b!7125467 (= lt!2563079 (size!41450 s1Rec!140))))

(declare-fun b!7125468 () Bool)

(declare-fun e!4281972 () Bool)

(declare-fun tp!1962677 () Bool)

(assert (=> b!7125468 (= e!4281972 (and tp_is_empty!45619 tp!1962677))))

(declare-fun res!2907440 () Bool)

(assert (=> start!694216 (=> (not res!2907440) (not e!4281977))))

(declare-fun z1!552 () (InoxSet Context!14006))

(assert (=> start!694216 (= res!2907440 (matchZipper!3265 z1!552 s1!1688))))

(assert (=> start!694216 e!4281977))

(declare-fun e!4281976 () Bool)

(assert (=> start!694216 e!4281976))

(declare-fun condSetEmpty!51618 () Bool)

(assert (=> start!694216 (= condSetEmpty!51618 (= z1!552 ((as const (Array Context!14006 Bool)) false)))))

(assert (=> start!694216 setRes!51619))

(assert (=> start!694216 e!4281981))

(declare-fun condSetEmpty!51619 () Bool)

(assert (=> start!694216 (= condSetEmpty!51619 (= z2!471 ((as const (Array Context!14006 Bool)) false)))))

(assert (=> start!694216 setRes!51618))

(assert (=> start!694216 e!4281980))

(assert (=> start!694216 e!4281972))

(declare-fun e!4281973 () Bool)

(assert (=> start!694216 e!4281973))

(declare-fun b!7125469 () Bool)

(declare-fun e!4281978 () Bool)

(declare-fun tp!1962672 () Bool)

(assert (=> b!7125469 (= e!4281978 tp!1962672)))

(declare-fun b!7125470 () Bool)

(declare-fun res!2907433 () Bool)

(assert (=> b!7125470 (=> (not res!2907433) (not e!4281977))))

(assert (=> b!7125470 (= res!2907433 e!4281979)))

(declare-fun res!2907436 () Bool)

(assert (=> b!7125470 (=> res!2907436 e!4281979)))

(assert (=> b!7125470 (= res!2907436 (not (matchZipper!3265 z1!552 s1Rec!140)))))

(declare-fun b!7125471 () Bool)

(declare-fun res!2907439 () Bool)

(assert (=> b!7125471 (=> (not res!2907439) (not e!4281975))))

(assert (=> b!7125471 (= res!2907439 (and (= s1Rec!140 s1!1688) (= s2Rec!140 s2!1620)))))

(declare-fun b!7125472 () Bool)

(declare-fun res!2907437 () Bool)

(assert (=> b!7125472 (=> (not res!2907437) (not e!4281977))))

(assert (=> b!7125472 (= res!2907437 (= (++!16147 s1Rec!140 s2Rec!140) s!7390))))

(declare-fun tp!1962670 () Bool)

(declare-fun setElem!51619 () Context!14006)

(declare-fun setNonEmpty!51618 () Bool)

(declare-fun inv!88050 (Context!14006) Bool)

(assert (=> setNonEmpty!51618 (= setRes!51619 (and tp!1962670 (inv!88050 setElem!51619) e!4281978))))

(declare-fun setRest!51619 () (InoxSet Context!14006))

(assert (=> setNonEmpty!51618 (= z1!552 ((_ map or) (store ((as const (Array Context!14006 Bool)) false) setElem!51619 true) setRest!51619))))

(declare-fun b!7125473 () Bool)

(declare-fun tp!1962671 () Bool)

(assert (=> b!7125473 (= e!4281976 (and tp_is_empty!45619 tp!1962671))))

(declare-fun b!7125474 () Bool)

(declare-fun tp!1962675 () Bool)

(assert (=> b!7125474 (= e!4281973 (and tp_is_empty!45619 tp!1962675))))

(declare-fun b!7125475 () Bool)

(assert (=> b!7125475 (= e!4281975 false)))

(declare-datatypes ((tuple2!68352 0))(
  ( (tuple2!68353 (_1!37479 List!69069) (_2!37479 List!69069)) )
))
(declare-datatypes ((Option!17008 0))(
  ( (None!17007) (Some!17007 (v!53501 tuple2!68352)) )
))
(declare-fun lt!2563080 () Option!17008)

(declare-fun findConcatSeparationZippers!524 ((InoxSet Context!14006) (InoxSet Context!14006) List!69069 List!69069 List!69069) Option!17008)

(assert (=> b!7125475 (= lt!2563080 (findConcatSeparationZippers!524 z1!552 z2!471 s1Rec!140 s2Rec!140 s!7390))))

(declare-fun setNonEmpty!51619 () Bool)

(declare-fun setElem!51618 () Context!14006)

(declare-fun tp!1962669 () Bool)

(assert (=> setNonEmpty!51619 (= setRes!51618 (and tp!1962669 (inv!88050 setElem!51618) e!4281974))))

(declare-fun setRest!51618 () (InoxSet Context!14006))

(assert (=> setNonEmpty!51619 (= z2!471 ((_ map or) (store ((as const (Array Context!14006 Bool)) false) setElem!51618 true) setRest!51618))))

(assert (= (and start!694216 res!2907440) b!7125464))

(assert (= (and b!7125464 res!2907435) b!7125462))

(assert (= (and b!7125462 res!2907434) b!7125465))

(assert (= (and b!7125465 res!2907443) b!7125472))

(assert (= (and b!7125472 res!2907437) b!7125470))

(assert (= (and b!7125470 (not res!2907436)) b!7125463))

(assert (= (and b!7125470 res!2907433) b!7125460))

(assert (= (and b!7125460 res!2907442) b!7125467))

(assert (= (and b!7125467 res!2907438) b!7125461))

(assert (= (and b!7125461 res!2907441) b!7125471))

(assert (= (and b!7125471 res!2907439) b!7125475))

(assert (= (and start!694216 ((_ is Cons!68945) s1Rec!140)) b!7125473))

(assert (= (and start!694216 condSetEmpty!51618) setIsEmpty!51619))

(assert (= (and start!694216 (not condSetEmpty!51618)) setNonEmpty!51618))

(assert (= setNonEmpty!51618 b!7125469))

(assert (= (and start!694216 ((_ is Cons!68945) s2Rec!140)) b!7125459))

(assert (= (and start!694216 condSetEmpty!51619) setIsEmpty!51618))

(assert (= (and start!694216 (not condSetEmpty!51619)) setNonEmpty!51619))

(assert (= setNonEmpty!51619 b!7125458))

(assert (= (and start!694216 ((_ is Cons!68945) s2!1620)) b!7125466))

(assert (= (and start!694216 ((_ is Cons!68945) s1!1688)) b!7125468))

(assert (= (and start!694216 ((_ is Cons!68945) s!7390)) b!7125474))

(declare-fun m!7842554 () Bool)

(assert (=> b!7125461 m!7842554))

(declare-fun m!7842556 () Bool)

(assert (=> setNonEmpty!51619 m!7842556))

(declare-fun m!7842558 () Bool)

(assert (=> b!7125465 m!7842558))

(declare-fun m!7842560 () Bool)

(assert (=> b!7125467 m!7842560))

(declare-fun m!7842562 () Bool)

(assert (=> b!7125467 m!7842562))

(declare-fun m!7842564 () Bool)

(assert (=> b!7125463 m!7842564))

(declare-fun m!7842566 () Bool)

(assert (=> b!7125470 m!7842566))

(declare-fun m!7842568 () Bool)

(assert (=> b!7125475 m!7842568))

(declare-fun m!7842570 () Bool)

(assert (=> b!7125464 m!7842570))

(declare-fun m!7842572 () Bool)

(assert (=> setNonEmpty!51618 m!7842572))

(declare-fun m!7842574 () Bool)

(assert (=> b!7125462 m!7842574))

(declare-fun m!7842576 () Bool)

(assert (=> b!7125472 m!7842576))

(declare-fun m!7842578 () Bool)

(assert (=> start!694216 m!7842578))

(check-sat (not b!7125458) (not b!7125465) (not b!7125474) (not b!7125464) (not start!694216) (not b!7125459) (not b!7125473) (not b!7125461) (not setNonEmpty!51619) (not b!7125462) (not b!7125472) (not b!7125463) (not b!7125469) (not b!7125470) (not b!7125475) (not b!7125467) (not b!7125466) (not setNonEmpty!51618) tp_is_empty!45619 (not b!7125468))
(check-sat)

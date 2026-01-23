; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!699860 () Bool)

(assert start!699860)

(declare-fun b!7193628 () Bool)

(assert (=> b!7193628 true))

(declare-fun setNonEmpty!53277 () Bool)

(declare-fun e!4319793 () Bool)

(declare-fun tp!1999589 () Bool)

(declare-datatypes ((C!37004 0))(
  ( (C!37005 (val!28450 Int)) )
))
(declare-datatypes ((Regex!18365 0))(
  ( (ElementMatch!18365 (c!1338933 C!37004)) (Concat!27210 (regOne!37242 Regex!18365) (regTwo!37242 Regex!18365)) (EmptyExpr!18365) (Star!18365 (reg!18694 Regex!18365)) (EmptyLang!18365) (Union!18365 (regOne!37243 Regex!18365) (regTwo!37243 Regex!18365)) )
))
(declare-datatypes ((List!69823 0))(
  ( (Nil!69699) (Cons!69699 (h!76147 Regex!18365) (t!383848 List!69823)) )
))
(declare-datatypes ((Context!14634 0))(
  ( (Context!14635 (exprs!7817 List!69823)) )
))
(declare-fun setElem!53277 () Context!14634)

(declare-fun setRes!53277 () Bool)

(declare-fun inv!88934 (Context!14634) Bool)

(assert (=> setNonEmpty!53277 (= setRes!53277 (and tp!1999589 (inv!88934 setElem!53277) e!4319793))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3530 () (InoxSet Context!14634))

(declare-fun setRest!53277 () (InoxSet Context!14634))

(assert (=> setNonEmpty!53277 (= z!3530 ((_ map or) (store ((as const (Array Context!14634 Bool)) false) setElem!53277 true) setRest!53277))))

(declare-fun b!7193621 () Bool)

(declare-fun e!4319788 () Bool)

(declare-fun lt!2571342 () Bool)

(assert (=> b!7193621 (= e!4319788 (not lt!2571342))))

(declare-datatypes ((Unit!163375 0))(
  ( (Unit!163376) )
))
(declare-fun lt!2571340 () Unit!163375)

(declare-fun e!4319789 () Unit!163375)

(assert (=> b!7193621 (= lt!2571340 e!4319789)))

(declare-fun c!1338932 () Bool)

(assert (=> b!7193621 (= c!1338932 (not lt!2571342))))

(declare-fun lt!2571343 () (InoxSet Context!14634))

(assert (=> b!7193621 (= lt!2571342 (= lt!2571343 ((as const (Array Context!14634 Bool)) false)))))

(declare-fun b!7193622 () Bool)

(declare-fun e!4319794 () Bool)

(declare-fun tp!1999586 () Bool)

(assert (=> b!7193622 (= e!4319794 tp!1999586)))

(declare-fun b!7193623 () Bool)

(declare-fun res!2928613 () Bool)

(declare-fun e!4319795 () Bool)

(assert (=> b!7193623 (=> (not res!2928613) (not e!4319795))))

(declare-fun focus!440 (Regex!18365) (InoxSet Context!14634))

(assert (=> b!7193623 (= res!2928613 (not (= z!3530 (focus!440 EmptyExpr!18365))))))

(declare-fun b!7193624 () Bool)

(declare-fun res!2928614 () Bool)

(declare-fun e!4319792 () Bool)

(assert (=> b!7193624 (=> (not res!2928614) (not e!4319792))))

(declare-datatypes ((List!69824 0))(
  ( (Nil!69700) (Cons!69700 (h!76148 C!37004) (t!383849 List!69824)) )
))
(declare-fun s!7967 () List!69824)

(declare-fun isEmpty!40232 (List!69824) Bool)

(assert (=> b!7193624 (= res!2928614 (not (isEmpty!40232 s!7967)))))

(declare-fun b!7193625 () Bool)

(declare-fun Unit!163377 () Unit!163375)

(assert (=> b!7193625 (= e!4319789 Unit!163377)))

(declare-fun b!7193626 () Bool)

(assert (=> b!7193626 (= e!4319795 e!4319792)))

(declare-fun res!2928610 () Bool)

(assert (=> b!7193626 (=> (not res!2928610) (not e!4319792))))

(declare-fun lt!2571341 () Context!14634)

(assert (=> b!7193626 (= res!2928610 (= z!3530 (store ((as const (Array Context!14634 Bool)) false) lt!2571341 true)))))

(assert (=> b!7193626 (= lt!2571341 (Context!14635 Nil!69699))))

(declare-fun b!7193627 () Bool)

(declare-fun tp!1999588 () Bool)

(assert (=> b!7193627 (= e!4319793 tp!1999588)))

(declare-fun res!2928611 () Bool)

(assert (=> start!699860 (=> (not res!2928611) (not e!4319795))))

(declare-datatypes ((List!69825 0))(
  ( (Nil!69701) (Cons!69701 (h!76149 Context!14634) (t!383850 List!69825)) )
))
(declare-fun unfocusZipper!2625 (List!69825) Regex!18365)

(declare-fun toList!11308 ((InoxSet Context!14634)) List!69825)

(assert (=> start!699860 (= res!2928611 (= (unfocusZipper!2625 (toList!11308 z!3530)) EmptyExpr!18365))))

(assert (=> start!699860 e!4319795))

(declare-fun condSetEmpty!53277 () Bool)

(assert (=> start!699860 (= condSetEmpty!53277 (= z!3530 ((as const (Array Context!14634 Bool)) false)))))

(assert (=> start!699860 setRes!53277))

(declare-fun e!4319791 () Bool)

(assert (=> start!699860 e!4319791))

(declare-fun setIsEmpty!53277 () Bool)

(assert (=> setIsEmpty!53277 setRes!53277))

(declare-fun Unit!163378 () Unit!163375)

(assert (=> b!7193628 (= e!4319789 Unit!163378)))

(declare-fun empty!3007 () Context!14634)

(assert (=> b!7193628 (and (inv!88934 empty!3007) e!4319794)))

(assert (=> b!7193628 true))

(declare-fun lambda!437951 () Int)

(declare-fun res!2928612 () Bool)

(declare-fun flatMapPost!72 ((InoxSet Context!14634) Int Context!14634) Context!14634)

(declare-fun head!14692 (List!69825) Context!14634)

(assert (=> b!7193628 (= res!2928612 (= (flatMapPost!72 z!3530 lambda!437951 (head!14692 (toList!11308 lt!2571343))) empty!3007))))

(declare-fun e!4319790 () Bool)

(assert (=> b!7193628 (=> (not res!2928612) (not e!4319790))))

(assert (=> b!7193628 e!4319790))

(declare-fun b!7193629 () Bool)

(assert (=> b!7193629 (= e!4319792 e!4319788)))

(declare-fun res!2928609 () Bool)

(assert (=> b!7193629 (=> (not res!2928609) (not e!4319788))))

(declare-fun lt!2571344 () C!37004)

(declare-fun derivationStepZipperUp!2335 (Context!14634 C!37004) (InoxSet Context!14634))

(assert (=> b!7193629 (= res!2928609 (= (derivationStepZipperUp!2335 lt!2571341 lt!2571344) ((as const (Array Context!14634 Bool)) false)))))

(declare-fun derivationStepZipper!3230 ((InoxSet Context!14634) C!37004) (InoxSet Context!14634))

(assert (=> b!7193629 (= lt!2571343 (derivationStepZipper!3230 z!3530 lt!2571344))))

(declare-fun head!14693 (List!69824) C!37004)

(assert (=> b!7193629 (= lt!2571344 (head!14693 s!7967))))

(declare-fun b!7193630 () Bool)

(assert (=> b!7193630 (= e!4319790 false)))

(declare-fun b!7193631 () Bool)

(declare-fun tp_is_empty!46291 () Bool)

(declare-fun tp!1999587 () Bool)

(assert (=> b!7193631 (= e!4319791 (and tp_is_empty!46291 tp!1999587))))

(assert (= (and start!699860 res!2928611) b!7193623))

(assert (= (and b!7193623 res!2928613) b!7193626))

(assert (= (and b!7193626 res!2928610) b!7193624))

(assert (= (and b!7193624 res!2928614) b!7193629))

(assert (= (and b!7193629 res!2928609) b!7193621))

(assert (= (and b!7193621 c!1338932) b!7193628))

(assert (= (and b!7193621 (not c!1338932)) b!7193625))

(assert (= b!7193628 b!7193622))

(assert (= (and b!7193628 res!2928612) b!7193630))

(assert (= (and start!699860 condSetEmpty!53277) setIsEmpty!53277))

(assert (= (and start!699860 (not condSetEmpty!53277)) setNonEmpty!53277))

(assert (= setNonEmpty!53277 b!7193627))

(get-info :version)

(assert (= (and start!699860 ((_ is Cons!69700) s!7967)) b!7193631))

(declare-fun m!7888238 () Bool)

(assert (=> b!7193626 m!7888238))

(declare-fun m!7888240 () Bool)

(assert (=> b!7193623 m!7888240))

(declare-fun m!7888242 () Bool)

(assert (=> b!7193624 m!7888242))

(declare-fun m!7888244 () Bool)

(assert (=> b!7193629 m!7888244))

(declare-fun m!7888246 () Bool)

(assert (=> b!7193629 m!7888246))

(declare-fun m!7888248 () Bool)

(assert (=> b!7193629 m!7888248))

(declare-fun m!7888250 () Bool)

(assert (=> start!699860 m!7888250))

(assert (=> start!699860 m!7888250))

(declare-fun m!7888252 () Bool)

(assert (=> start!699860 m!7888252))

(declare-fun m!7888254 () Bool)

(assert (=> setNonEmpty!53277 m!7888254))

(declare-fun m!7888256 () Bool)

(assert (=> b!7193628 m!7888256))

(declare-fun m!7888258 () Bool)

(assert (=> b!7193628 m!7888258))

(assert (=> b!7193628 m!7888258))

(declare-fun m!7888260 () Bool)

(assert (=> b!7193628 m!7888260))

(assert (=> b!7193628 m!7888260))

(declare-fun m!7888262 () Bool)

(assert (=> b!7193628 m!7888262))

(check-sat tp_is_empty!46291 (not b!7193623) (not start!699860) (not b!7193622) (not b!7193631) (not b!7193629) (not setNonEmpty!53277) (not b!7193624) (not b!7193628) (not b!7193627))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!542320 () Bool)

(assert start!542320)

(declare-fun b!5130332 () Bool)

(assert (=> b!5130332 true))

(declare-fun bs!1195672 () Bool)

(declare-fun b!5130336 () Bool)

(declare-fun b!5130335 () Bool)

(assert (= bs!1195672 (and b!5130336 b!5130335)))

(declare-fun lambda!253614 () Int)

(declare-fun lambda!253613 () Int)

(assert (=> bs!1195672 (not (= lambda!253614 lambda!253613))))

(declare-fun b!5130331 () Bool)

(declare-fun res!2184854 () Bool)

(declare-fun e!3199695 () Bool)

(assert (=> b!5130331 (=> (not res!2184854) (not e!3199695))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28928 0))(
  ( (C!28929 (val!24116 Int)) )
))
(declare-datatypes ((Regex!14331 0))(
  ( (ElementMatch!14331 (c!882445 C!28928)) (Concat!23176 (regOne!29174 Regex!14331) (regTwo!29174 Regex!14331)) (EmptyExpr!14331) (Star!14331 (reg!14660 Regex!14331)) (EmptyLang!14331) (Union!14331 (regOne!29175 Regex!14331) (regTwo!29175 Regex!14331)) )
))
(declare-datatypes ((List!59589 0))(
  ( (Nil!59465) (Cons!59465 (h!65913 Regex!14331) (t!372616 List!59589)) )
))
(declare-datatypes ((Context!7430 0))(
  ( (Context!7431 (exprs!4215 List!59589)) )
))
(declare-fun lt!2116347 () (InoxSet Context!7430))

(declare-fun forall!13746 ((InoxSet Context!7430) Int) Bool)

(assert (=> b!5130331 (= res!2184854 (not (forall!13746 lt!2116347 lambda!253613)))))

(declare-fun res!2184860 () Bool)

(declare-fun e!3199694 () Bool)

(assert (=> start!542320 (=> (not res!2184860) (not e!3199694))))

(declare-fun z!1054 () (InoxSet Context!7430))

(declare-fun lostCauseZipper!1175 ((InoxSet Context!7430)) Bool)

(assert (=> start!542320 (= res!2184860 (lostCauseZipper!1175 z!1054))))

(assert (=> start!542320 e!3199694))

(declare-fun condSetEmpty!31028 () Bool)

(assert (=> start!542320 (= condSetEmpty!31028 (= z!1054 ((as const (Array Context!7430 Bool)) false)))))

(declare-fun setRes!31028 () Bool)

(assert (=> start!542320 setRes!31028))

(declare-fun tp_is_empty!37835 () Bool)

(assert (=> start!542320 tp_is_empty!37835))

(declare-fun e!3199693 () Bool)

(assert (=> b!5130332 (= e!3199694 e!3199693)))

(declare-fun res!2184858 () Bool)

(assert (=> b!5130332 (=> (not res!2184858) (not e!3199693))))

(declare-fun lambda!253612 () Int)

(declare-fun flatMap!382 ((InoxSet Context!7430) Int) (InoxSet Context!7430))

(assert (=> b!5130332 (= res!2184858 (= lt!2116347 (flatMap!382 z!1054 lambda!253612)))))

(declare-fun a!1233 () C!28928)

(declare-fun derivationStepZipper!886 ((InoxSet Context!7430) C!28928) (InoxSet Context!7430))

(assert (=> b!5130332 (= lt!2116347 (derivationStepZipper!886 z!1054 a!1233))))

(declare-fun b!5130333 () Bool)

(declare-fun res!2184855 () Bool)

(assert (=> b!5130333 (=> (not res!2184855) (not e!3199695))))

(assert (=> b!5130333 (= res!2184855 (forall!13746 z!1054 lambda!253613))))

(declare-fun b!5130334 () Bool)

(declare-fun e!3199690 () Bool)

(declare-fun tp!1431253 () Bool)

(assert (=> b!5130334 (= e!3199690 tp!1431253)))

(assert (=> b!5130335 (= e!3199693 e!3199695)))

(declare-fun res!2184856 () Bool)

(assert (=> b!5130335 (=> (not res!2184856) (not e!3199695))))

(declare-fun lt!2116350 () Bool)

(assert (=> b!5130335 (= res!2184856 (= lt!2116350 (forall!13746 lt!2116347 lambda!253613)))))

(assert (=> b!5130335 (= lt!2116350 (lostCauseZipper!1175 lt!2116347))))

(declare-fun e!3199692 () Bool)

(assert (=> b!5130336 (= e!3199695 (not e!3199692))))

(declare-fun res!2184853 () Bool)

(assert (=> b!5130336 (=> res!2184853 e!3199692)))

(declare-fun exists!1626 ((InoxSet Context!7430) Int) Bool)

(assert (=> b!5130336 (= res!2184853 (not (exists!1626 lt!2116347 lambda!253614)))))

(declare-datatypes ((List!59590 0))(
  ( (Nil!59466) (Cons!59466 (h!65914 Context!7430) (t!372617 List!59590)) )
))
(declare-fun lt!2116351 () List!59590)

(declare-fun exists!1627 (List!59590 Int) Bool)

(assert (=> b!5130336 (exists!1627 lt!2116351 lambda!253614)))

(declare-datatypes ((Unit!150710 0))(
  ( (Unit!150711) )
))
(declare-fun lt!2116352 () Unit!150710)

(declare-fun lemmaNotForallThenExists!369 (List!59590 Int) Unit!150710)

(assert (=> b!5130336 (= lt!2116352 (lemmaNotForallThenExists!369 lt!2116351 lambda!253613))))

(declare-fun toList!8321 ((InoxSet Context!7430)) List!59590)

(assert (=> b!5130336 (= lt!2116351 (toList!8321 lt!2116347))))

(declare-fun b!5130337 () Bool)

(declare-fun e!3199691 () Bool)

(assert (=> b!5130337 (= e!3199691 true)))

(declare-fun lt!2116348 () Bool)

(declare-fun lt!2116349 () Context!7430)

(declare-fun lostCause!1284 (Context!7430) Bool)

(assert (=> b!5130337 (= lt!2116348 (lostCause!1284 lt!2116349))))

(declare-fun b!5130338 () Bool)

(declare-fun res!2184857 () Bool)

(assert (=> b!5130338 (=> (not res!2184857) (not e!3199695))))

(assert (=> b!5130338 (= res!2184857 (not lt!2116350))))

(declare-fun b!5130339 () Bool)

(assert (=> b!5130339 (= e!3199692 e!3199691)))

(declare-fun res!2184859 () Bool)

(assert (=> b!5130339 (=> res!2184859 e!3199691)))

(assert (=> b!5130339 (= res!2184859 (not (select lt!2116347 lt!2116349)))))

(declare-fun getWitness!781 (List!59590 Int) Context!7430)

(assert (=> b!5130339 (= lt!2116349 (getWitness!781 lt!2116351 lambda!253614))))

(declare-fun setNonEmpty!31028 () Bool)

(declare-fun setElem!31028 () Context!7430)

(declare-fun tp!1431252 () Bool)

(declare-fun inv!79008 (Context!7430) Bool)

(assert (=> setNonEmpty!31028 (= setRes!31028 (and tp!1431252 (inv!79008 setElem!31028) e!3199690))))

(declare-fun setRest!31028 () (InoxSet Context!7430))

(assert (=> setNonEmpty!31028 (= z!1054 ((_ map or) (store ((as const (Array Context!7430 Bool)) false) setElem!31028 true) setRest!31028))))

(declare-fun setIsEmpty!31028 () Bool)

(assert (=> setIsEmpty!31028 setRes!31028))

(assert (= (and start!542320 res!2184860) b!5130332))

(assert (= (and b!5130332 res!2184858) b!5130335))

(assert (= (and b!5130335 res!2184856) b!5130333))

(assert (= (and b!5130333 res!2184855) b!5130338))

(assert (= (and b!5130338 res!2184857) b!5130331))

(assert (= (and b!5130331 res!2184854) b!5130336))

(assert (= (and b!5130336 (not res!2184853)) b!5130339))

(assert (= (and b!5130339 (not res!2184859)) b!5130337))

(assert (= (and start!542320 condSetEmpty!31028) setIsEmpty!31028))

(assert (= (and start!542320 (not condSetEmpty!31028)) setNonEmpty!31028))

(assert (= setNonEmpty!31028 b!5130334))

(declare-fun m!6195094 () Bool)

(assert (=> b!5130331 m!6195094))

(assert (=> b!5130335 m!6195094))

(declare-fun m!6195096 () Bool)

(assert (=> b!5130335 m!6195096))

(declare-fun m!6195098 () Bool)

(assert (=> b!5130336 m!6195098))

(declare-fun m!6195100 () Bool)

(assert (=> b!5130336 m!6195100))

(declare-fun m!6195102 () Bool)

(assert (=> b!5130336 m!6195102))

(declare-fun m!6195104 () Bool)

(assert (=> b!5130336 m!6195104))

(declare-fun m!6195106 () Bool)

(assert (=> start!542320 m!6195106))

(declare-fun m!6195108 () Bool)

(assert (=> b!5130333 m!6195108))

(declare-fun m!6195110 () Bool)

(assert (=> b!5130332 m!6195110))

(declare-fun m!6195112 () Bool)

(assert (=> b!5130332 m!6195112))

(declare-fun m!6195114 () Bool)

(assert (=> b!5130339 m!6195114))

(declare-fun m!6195116 () Bool)

(assert (=> b!5130339 m!6195116))

(declare-fun m!6195118 () Bool)

(assert (=> setNonEmpty!31028 m!6195118))

(declare-fun m!6195120 () Bool)

(assert (=> b!5130337 m!6195120))

(check-sat (not b!5130332) tp_is_empty!37835 (not b!5130337) (not b!5130339) (not b!5130334) (not start!542320) (not setNonEmpty!31028) (not b!5130335) (not b!5130333) (not b!5130336) (not b!5130331))
(check-sat)

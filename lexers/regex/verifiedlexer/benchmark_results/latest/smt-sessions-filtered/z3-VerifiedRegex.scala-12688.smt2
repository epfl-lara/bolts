; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!701368 () Bool)

(assert start!701368)

(declare-fun b!7230494 () Bool)

(assert (=> b!7230494 true))

(declare-fun b!7230493 () Bool)

(declare-fun e!4334514 () Bool)

(declare-fun tp!2033680 () Bool)

(assert (=> b!7230493 (= e!4334514 tp!2033680)))

(declare-fun e!4334511 () Bool)

(declare-fun e!4334513 () Bool)

(assert (=> b!7230494 (= e!4334511 (not e!4334513))))

(declare-fun res!2933580 () Bool)

(assert (=> b!7230494 (=> res!2933580 e!4334513)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37244 0))(
  ( (C!37245 (val!28570 Int)) )
))
(declare-datatypes ((Regex!18485 0))(
  ( (ElementMatch!18485 (c!1341383 C!37244)) (Concat!27330 (regOne!37482 Regex!18485) (regTwo!37482 Regex!18485)) (EmptyExpr!18485) (Star!18485 (reg!18814 Regex!18485)) (EmptyLang!18485) (Union!18485 (regOne!37483 Regex!18485) (regTwo!37483 Regex!18485)) )
))
(declare-datatypes ((List!70063 0))(
  ( (Nil!69939) (Cons!69939 (h!76387 Regex!18485) (t!384112 List!70063)) )
))
(declare-datatypes ((Context!14850 0))(
  ( (Context!14851 (exprs!7925 List!70063)) )
))
(declare-fun lt!2572975 () (InoxSet Context!14850))

(declare-fun lambda!439113 () Int)

(declare-fun exists!4113 ((InoxSet Context!14850) Int) Bool)

(assert (=> b!7230494 (= res!2933580 (not (exists!4113 lt!2572975 lambda!439113)))))

(declare-datatypes ((List!70064 0))(
  ( (Nil!69940) (Cons!69940 (h!76388 Context!14850) (t!384113 List!70064)) )
))
(declare-fun lt!2572978 () List!70064)

(declare-fun exists!4114 (List!70064 Int) Bool)

(assert (=> b!7230494 (exists!4114 lt!2572978 lambda!439113)))

(declare-datatypes ((Unit!163505 0))(
  ( (Unit!163506) )
))
(declare-fun lt!2572977 () Unit!163505)

(declare-datatypes ((List!70065 0))(
  ( (Nil!69941) (Cons!69941 (h!76389 C!37244) (t!384114 List!70065)) )
))
(declare-fun s1!1971 () List!70065)

(declare-fun lemmaZipperMatchesExistsMatchingContext!628 (List!70064 List!70065) Unit!163505)

(assert (=> b!7230494 (= lt!2572977 (lemmaZipperMatchesExistsMatchingContext!628 lt!2572978 (t!384114 s1!1971)))))

(declare-fun toList!11342 ((InoxSet Context!14850)) List!70064)

(assert (=> b!7230494 (= lt!2572978 (toList!11342 lt!2572975))))

(declare-fun b!7230495 () Bool)

(declare-fun e!4334512 () Bool)

(declare-fun tp_is_empty!46435 () Bool)

(declare-fun tp!2033677 () Bool)

(assert (=> b!7230495 (= e!4334512 (and tp_is_empty!46435 tp!2033677))))

(declare-fun b!7230496 () Bool)

(declare-fun e!4334508 () Bool)

(declare-fun e!4334510 () Bool)

(assert (=> b!7230496 (= e!4334508 e!4334510)))

(declare-fun res!2933579 () Bool)

(assert (=> b!7230496 (=> (not res!2933579) (not e!4334510))))

(declare-fun ct1!232 () Context!14850)

(get-info :version)

(assert (=> b!7230496 (= res!2933579 (and (not ((_ is Nil!69939) (exprs!7925 ct1!232))) ((_ is Cons!69941) s1!1971)))))

(declare-fun lt!2572974 () List!70063)

(declare-fun ct2!328 () Context!14850)

(declare-fun ++!16271 (List!70063 List!70063) List!70063)

(assert (=> b!7230496 (= lt!2572974 (++!16271 (exprs!7925 ct1!232) (exprs!7925 ct2!328)))))

(declare-fun lt!2572973 () Unit!163505)

(declare-fun lambda!439112 () Int)

(declare-fun lemmaConcatPreservesForall!1294 (List!70063 List!70063 Int) Unit!163505)

(assert (=> b!7230496 (= lt!2572973 (lemmaConcatPreservesForall!1294 (exprs!7925 ct1!232) (exprs!7925 ct2!328) lambda!439112))))

(declare-fun b!7230497 () Bool)

(declare-fun e!4334509 () Bool)

(declare-fun tp!2033679 () Bool)

(assert (=> b!7230497 (= e!4334509 (and tp_is_empty!46435 tp!2033679))))

(declare-fun b!7230498 () Bool)

(assert (=> b!7230498 (= e!4334513 true)))

(declare-fun lt!2572976 () Bool)

(declare-fun matchZipper!3395 ((InoxSet Context!14850) List!70065) Bool)

(declare-fun getWitness!1994 ((InoxSet Context!14850) Int) Context!14850)

(assert (=> b!7230498 (= lt!2572976 (matchZipper!3395 (store ((as const (Array Context!14850 Bool)) false) (getWitness!1994 lt!2572975 lambda!439113) true) (t!384114 s1!1971)))))

(declare-fun b!7230499 () Bool)

(declare-fun e!4334507 () Bool)

(declare-fun tp!2033678 () Bool)

(assert (=> b!7230499 (= e!4334507 tp!2033678)))

(declare-fun b!7230500 () Bool)

(assert (=> b!7230500 (= e!4334510 e!4334511)))

(declare-fun res!2933577 () Bool)

(assert (=> b!7230500 (=> (not res!2933577) (not e!4334511))))

(assert (=> b!7230500 (= res!2933577 (matchZipper!3395 lt!2572975 (t!384114 s1!1971)))))

(declare-fun lt!2572979 () (InoxSet Context!14850))

(declare-fun derivationStepZipper!3277 ((InoxSet Context!14850) C!37244) (InoxSet Context!14850))

(assert (=> b!7230500 (= lt!2572975 (derivationStepZipper!3277 lt!2572979 (h!76389 s1!1971)))))

(declare-fun res!2933578 () Bool)

(assert (=> start!701368 (=> (not res!2933578) (not e!4334508))))

(assert (=> start!701368 (= res!2933578 (matchZipper!3395 lt!2572979 s1!1971))))

(assert (=> start!701368 (= lt!2572979 (store ((as const (Array Context!14850 Bool)) false) ct1!232 true))))

(assert (=> start!701368 e!4334508))

(declare-fun inv!89222 (Context!14850) Bool)

(assert (=> start!701368 (and (inv!89222 ct1!232) e!4334507)))

(assert (=> start!701368 e!4334512))

(assert (=> start!701368 e!4334509))

(assert (=> start!701368 (and (inv!89222 ct2!328) e!4334514)))

(declare-fun b!7230501 () Bool)

(declare-fun res!2933576 () Bool)

(assert (=> b!7230501 (=> (not res!2933576) (not e!4334508))))

(declare-fun s2!1849 () List!70065)

(assert (=> b!7230501 (= res!2933576 (matchZipper!3395 (store ((as const (Array Context!14850 Bool)) false) ct2!328 true) s2!1849))))

(assert (= (and start!701368 res!2933578) b!7230501))

(assert (= (and b!7230501 res!2933576) b!7230496))

(assert (= (and b!7230496 res!2933579) b!7230500))

(assert (= (and b!7230500 res!2933577) b!7230494))

(assert (= (and b!7230494 (not res!2933580)) b!7230498))

(assert (= start!701368 b!7230499))

(assert (= (and start!701368 ((_ is Cons!69941) s1!1971)) b!7230495))

(assert (= (and start!701368 ((_ is Cons!69941) s2!1849)) b!7230497))

(assert (= start!701368 b!7230493))

(declare-fun m!7898764 () Bool)

(assert (=> b!7230494 m!7898764))

(declare-fun m!7898766 () Bool)

(assert (=> b!7230494 m!7898766))

(declare-fun m!7898768 () Bool)

(assert (=> b!7230494 m!7898768))

(declare-fun m!7898770 () Bool)

(assert (=> b!7230494 m!7898770))

(declare-fun m!7898772 () Bool)

(assert (=> b!7230501 m!7898772))

(assert (=> b!7230501 m!7898772))

(declare-fun m!7898774 () Bool)

(assert (=> b!7230501 m!7898774))

(declare-fun m!7898776 () Bool)

(assert (=> b!7230498 m!7898776))

(assert (=> b!7230498 m!7898776))

(declare-fun m!7898778 () Bool)

(assert (=> b!7230498 m!7898778))

(assert (=> b!7230498 m!7898778))

(declare-fun m!7898780 () Bool)

(assert (=> b!7230498 m!7898780))

(declare-fun m!7898782 () Bool)

(assert (=> b!7230496 m!7898782))

(declare-fun m!7898784 () Bool)

(assert (=> b!7230496 m!7898784))

(declare-fun m!7898786 () Bool)

(assert (=> b!7230500 m!7898786))

(declare-fun m!7898788 () Bool)

(assert (=> b!7230500 m!7898788))

(declare-fun m!7898790 () Bool)

(assert (=> start!701368 m!7898790))

(declare-fun m!7898792 () Bool)

(assert (=> start!701368 m!7898792))

(declare-fun m!7898794 () Bool)

(assert (=> start!701368 m!7898794))

(declare-fun m!7898796 () Bool)

(assert (=> start!701368 m!7898796))

(check-sat (not b!7230495) (not b!7230496) (not b!7230499) tp_is_empty!46435 (not b!7230500) (not b!7230501) (not b!7230494) (not b!7230498) (not start!701368) (not b!7230493) (not b!7230497))
(check-sat)

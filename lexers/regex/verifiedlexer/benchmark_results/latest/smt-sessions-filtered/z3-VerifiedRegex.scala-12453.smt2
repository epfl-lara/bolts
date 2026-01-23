; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694552 () Bool)

(assert start!694552)

(declare-fun b!7129291 () Bool)

(declare-fun res!2908791 () Bool)

(declare-fun e!4284267 () Bool)

(assert (=> b!7129291 (=> (not res!2908791) (not e!4284267))))

(declare-fun lt!2563817 () Int)

(declare-datatypes ((C!36348 0))(
  ( (C!36349 (val!28100 Int)) )
))
(declare-datatypes ((List!69132 0))(
  ( (Nil!69008) (Cons!69008 (h!75456 C!36348) (t!383109 List!69132)) )
))
(declare-fun s1!1688 () List!69132)

(declare-fun size!41474 (List!69132) Int)

(assert (=> b!7129291 (= res!2908791 (= lt!2563817 (size!41474 s1!1688)))))

(declare-fun b!7129292 () Bool)

(declare-fun res!2908793 () Bool)

(assert (=> b!7129292 (=> (not res!2908793) (not e!4284267))))

(declare-fun s1Rec!140 () List!69132)

(declare-fun s2Rec!140 () List!69132)

(declare-fun s2!1620 () List!69132)

(assert (=> b!7129292 (= res!2908793 (and (= s1Rec!140 s1!1688) (= s2Rec!140 s2!1620)))))

(declare-fun b!7129293 () Bool)

(declare-fun res!2908790 () Bool)

(declare-fun e!4284268 () Bool)

(assert (=> b!7129293 (=> (not res!2908790) (not e!4284268))))

(declare-fun s!7390 () List!69132)

(declare-fun ++!16177 (List!69132 List!69132) List!69132)

(assert (=> b!7129293 (= res!2908790 (= (++!16177 s1!1688 s2!1620) s!7390))))

(declare-fun b!7129294 () Bool)

(declare-fun res!2908796 () Bool)

(assert (=> b!7129294 (=> (not res!2908796) (not e!4284268))))

(assert (=> b!7129294 (= res!2908796 (= (++!16177 s1Rec!140 s2Rec!140) s!7390))))

(declare-fun b!7129295 () Bool)

(declare-fun res!2908794 () Bool)

(assert (=> b!7129295 (=> (not res!2908794) (not e!4284268))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18039 0))(
  ( (ElementMatch!18039 (c!1329949 C!36348)) (Concat!26884 (regOne!36590 Regex!18039) (regTwo!36590 Regex!18039)) (EmptyExpr!18039) (Star!18039 (reg!18368 Regex!18039)) (EmptyLang!18039) (Union!18039 (regOne!36591 Regex!18039) (regTwo!36591 Regex!18039)) )
))
(declare-datatypes ((List!69133 0))(
  ( (Nil!69009) (Cons!69009 (h!75457 Regex!18039) (t!383110 List!69133)) )
))
(declare-datatypes ((Context!14066 0))(
  ( (Context!14067 (exprs!7533 List!69133)) )
))
(declare-fun z2!471 () (InoxSet Context!14066))

(declare-fun matchZipper!3295 ((InoxSet Context!14066) List!69132) Bool)

(assert (=> b!7129295 (= res!2908794 (matchZipper!3295 z2!471 s2!1620))))

(declare-fun b!7129296 () Bool)

(declare-fun e!4284263 () Bool)

(declare-fun tp_is_empty!45679 () Bool)

(declare-fun tp!1964422 () Bool)

(assert (=> b!7129296 (= e!4284263 (and tp_is_empty!45679 tp!1964422))))

(declare-fun b!7129297 () Bool)

(declare-fun e!4284270 () Bool)

(declare-datatypes ((tuple2!68368 0))(
  ( (tuple2!68369 (_1!37487 List!69132) (_2!37487 List!69132)) )
))
(declare-datatypes ((Option!17016 0))(
  ( (None!17015) (Some!17015 (v!53509 tuple2!68368)) )
))
(declare-fun lt!2563818 () Option!17016)

(declare-fun isDefined!13713 (Option!17016) Bool)

(assert (=> b!7129297 (= e!4284270 (not (isDefined!13713 lt!2563818)))))

(declare-fun b!7129298 () Bool)

(declare-fun e!4284261 () Bool)

(declare-fun tp!1964419 () Bool)

(assert (=> b!7129298 (= e!4284261 (and tp_is_empty!45679 tp!1964419))))

(declare-fun b!7129299 () Bool)

(declare-fun e!4284265 () Bool)

(declare-fun tp!1964423 () Bool)

(assert (=> b!7129299 (= e!4284265 tp!1964423)))

(declare-fun b!7129300 () Bool)

(declare-fun e!4284262 () Bool)

(declare-fun tp!1964415 () Bool)

(assert (=> b!7129300 (= e!4284262 (and tp_is_empty!45679 tp!1964415))))

(declare-fun b!7129301 () Bool)

(declare-fun e!4284271 () Bool)

(declare-fun tp!1964421 () Bool)

(assert (=> b!7129301 (= e!4284271 (and tp_is_empty!45679 tp!1964421))))

(declare-fun b!7129302 () Bool)

(declare-fun res!2908792 () Bool)

(assert (=> b!7129302 (=> (not res!2908792) (not e!4284268))))

(declare-fun e!4284266 () Bool)

(assert (=> b!7129302 (= res!2908792 e!4284266)))

(declare-fun res!2908795 () Bool)

(assert (=> b!7129302 (=> res!2908795 e!4284266)))

(declare-fun z1!552 () (InoxSet Context!14066))

(assert (=> b!7129302 (= res!2908795 (not (matchZipper!3295 z1!552 s1Rec!140)))))

(declare-fun b!7129303 () Bool)

(declare-fun res!2908788 () Bool)

(assert (=> b!7129303 (=> (not res!2908788) (not e!4284268))))

(declare-fun isPrefix!5908 (List!69132 List!69132) Bool)

(assert (=> b!7129303 (= res!2908788 (isPrefix!5908 s1Rec!140 s1!1688))))

(declare-fun res!2908789 () Bool)

(assert (=> start!694552 (=> (not res!2908789) (not e!4284268))))

(assert (=> start!694552 (= res!2908789 (matchZipper!3295 z1!552 s1!1688))))

(assert (=> start!694552 e!4284268))

(assert (=> start!694552 e!4284263))

(declare-fun condSetEmpty!51870 () Bool)

(assert (=> start!694552 (= condSetEmpty!51870 (= z1!552 ((as const (Array Context!14066 Bool)) false)))))

(declare-fun setRes!51871 () Bool)

(assert (=> start!694552 setRes!51871))

(assert (=> start!694552 e!4284271))

(declare-fun condSetEmpty!51871 () Bool)

(assert (=> start!694552 (= condSetEmpty!51871 (= z2!471 ((as const (Array Context!14066 Bool)) false)))))

(declare-fun setRes!51870 () Bool)

(assert (=> start!694552 setRes!51870))

(assert (=> start!694552 e!4284261))

(assert (=> start!694552 e!4284262))

(declare-fun e!4284264 () Bool)

(assert (=> start!694552 e!4284264))

(declare-fun b!7129304 () Bool)

(declare-fun res!2908798 () Bool)

(assert (=> b!7129304 (=> (not res!2908798) (not e!4284268))))

(get-info :version)

(assert (=> b!7129304 (= res!2908798 ((_ is Nil!69008) s2Rec!140))))

(declare-fun b!7129305 () Bool)

(assert (=> b!7129305 (= e!4284268 e!4284267)))

(declare-fun res!2908797 () Bool)

(assert (=> b!7129305 (=> (not res!2908797) (not e!4284267))))

(assert (=> b!7129305 (= res!2908797 (= lt!2563817 (size!41474 s!7390)))))

(assert (=> b!7129305 (= lt!2563817 (size!41474 s1Rec!140))))

(declare-fun b!7129306 () Bool)

(declare-fun e!4284269 () Bool)

(declare-fun tp!1964417 () Bool)

(assert (=> b!7129306 (= e!4284269 tp!1964417)))

(declare-fun b!7129307 () Bool)

(assert (=> b!7129307 (= e!4284266 (not (matchZipper!3295 z2!471 s2Rec!140)))))

(declare-fun b!7129308 () Bool)

(assert (=> b!7129308 (= e!4284267 e!4284270)))

(declare-fun res!2908799 () Bool)

(assert (=> b!7129308 (=> (not res!2908799) (not e!4284270))))

(assert (=> b!7129308 (= res!2908799 (= lt!2563818 (Some!17015 (tuple2!68369 s1Rec!140 s2Rec!140))))))

(declare-fun findConcatSeparationZippers!532 ((InoxSet Context!14066) (InoxSet Context!14066) List!69132 List!69132 List!69132) Option!17016)

(assert (=> b!7129308 (= lt!2563818 (findConcatSeparationZippers!532 z1!552 z2!471 s1Rec!140 s2Rec!140 s!7390))))

(declare-fun setNonEmpty!51870 () Bool)

(declare-fun setElem!51870 () Context!14066)

(declare-fun tp!1964416 () Bool)

(declare-fun inv!88125 (Context!14066) Bool)

(assert (=> setNonEmpty!51870 (= setRes!51870 (and tp!1964416 (inv!88125 setElem!51870) e!4284269))))

(declare-fun setRest!51870 () (InoxSet Context!14066))

(assert (=> setNonEmpty!51870 (= z2!471 ((_ map or) (store ((as const (Array Context!14066 Bool)) false) setElem!51870 true) setRest!51870))))

(declare-fun setIsEmpty!51870 () Bool)

(assert (=> setIsEmpty!51870 setRes!51871))

(declare-fun setIsEmpty!51871 () Bool)

(assert (=> setIsEmpty!51871 setRes!51870))

(declare-fun b!7129309 () Bool)

(declare-fun tp!1964420 () Bool)

(assert (=> b!7129309 (= e!4284264 (and tp_is_empty!45679 tp!1964420))))

(declare-fun setNonEmpty!51871 () Bool)

(declare-fun setElem!51871 () Context!14066)

(declare-fun tp!1964418 () Bool)

(assert (=> setNonEmpty!51871 (= setRes!51871 (and tp!1964418 (inv!88125 setElem!51871) e!4284265))))

(declare-fun setRest!51871 () (InoxSet Context!14066))

(assert (=> setNonEmpty!51871 (= z1!552 ((_ map or) (store ((as const (Array Context!14066 Bool)) false) setElem!51871 true) setRest!51871))))

(assert (= (and start!694552 res!2908789) b!7129295))

(assert (= (and b!7129295 res!2908794) b!7129293))

(assert (= (and b!7129293 res!2908790) b!7129303))

(assert (= (and b!7129303 res!2908788) b!7129294))

(assert (= (and b!7129294 res!2908796) b!7129302))

(assert (= (and b!7129302 (not res!2908795)) b!7129307))

(assert (= (and b!7129302 res!2908792) b!7129304))

(assert (= (and b!7129304 res!2908798) b!7129305))

(assert (= (and b!7129305 res!2908797) b!7129291))

(assert (= (and b!7129291 res!2908791) b!7129292))

(assert (= (and b!7129292 res!2908793) b!7129308))

(assert (= (and b!7129308 res!2908799) b!7129297))

(assert (= (and start!694552 ((_ is Cons!69008) s1Rec!140)) b!7129296))

(assert (= (and start!694552 condSetEmpty!51870) setIsEmpty!51870))

(assert (= (and start!694552 (not condSetEmpty!51870)) setNonEmpty!51871))

(assert (= setNonEmpty!51871 b!7129299))

(assert (= (and start!694552 ((_ is Cons!69008) s2Rec!140)) b!7129301))

(assert (= (and start!694552 condSetEmpty!51871) setIsEmpty!51871))

(assert (= (and start!694552 (not condSetEmpty!51871)) setNonEmpty!51870))

(assert (= setNonEmpty!51870 b!7129306))

(assert (= (and start!694552 ((_ is Cons!69008) s2!1620)) b!7129298))

(assert (= (and start!694552 ((_ is Cons!69008) s1!1688)) b!7129300))

(assert (= (and start!694552 ((_ is Cons!69008) s!7390)) b!7129309))

(declare-fun m!7846528 () Bool)

(assert (=> start!694552 m!7846528))

(declare-fun m!7846530 () Bool)

(assert (=> b!7129305 m!7846530))

(declare-fun m!7846532 () Bool)

(assert (=> b!7129305 m!7846532))

(declare-fun m!7846534 () Bool)

(assert (=> b!7129295 m!7846534))

(declare-fun m!7846536 () Bool)

(assert (=> b!7129307 m!7846536))

(declare-fun m!7846538 () Bool)

(assert (=> b!7129297 m!7846538))

(declare-fun m!7846540 () Bool)

(assert (=> setNonEmpty!51870 m!7846540))

(declare-fun m!7846542 () Bool)

(assert (=> setNonEmpty!51871 m!7846542))

(declare-fun m!7846544 () Bool)

(assert (=> b!7129302 m!7846544))

(declare-fun m!7846546 () Bool)

(assert (=> b!7129293 m!7846546))

(declare-fun m!7846548 () Bool)

(assert (=> b!7129294 m!7846548))

(declare-fun m!7846550 () Bool)

(assert (=> b!7129291 m!7846550))

(declare-fun m!7846552 () Bool)

(assert (=> b!7129308 m!7846552))

(declare-fun m!7846554 () Bool)

(assert (=> b!7129303 m!7846554))

(check-sat (not b!7129297) (not b!7129300) (not b!7129293) (not start!694552) (not b!7129308) (not b!7129291) (not b!7129305) (not b!7129309) (not b!7129296) (not b!7129299) (not b!7129306) (not b!7129298) tp_is_empty!45679 (not b!7129303) (not setNonEmpty!51871) (not b!7129294) (not b!7129295) (not setNonEmpty!51870) (not b!7129307) (not b!7129301) (not b!7129302))
(check-sat)

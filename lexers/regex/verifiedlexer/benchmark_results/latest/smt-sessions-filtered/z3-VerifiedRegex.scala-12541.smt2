; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!696564 () Bool)

(assert start!696564)

(declare-fun b!7144304 () Bool)

(declare-fun e!4293409 () Bool)

(declare-fun tp!1970760 () Bool)

(assert (=> b!7144304 (= e!4293409 tp!1970760)))

(declare-fun b!7144305 () Bool)

(declare-fun e!4293408 () Bool)

(declare-fun tp!1970756 () Bool)

(declare-fun tp!1970757 () Bool)

(assert (=> b!7144305 (= e!4293408 (and tp!1970756 tp!1970757))))

(declare-fun b!7144306 () Bool)

(declare-fun tp_is_empty!46019 () Bool)

(assert (=> b!7144306 (= e!4293408 tp_is_empty!46019)))

(declare-fun res!2914873 () Bool)

(declare-fun e!4293407 () Bool)

(assert (=> start!696564 (=> (not res!2914873) (not e!4293407))))

(declare-datatypes ((C!36656 0))(
  ( (C!36657 (val!28276 Int)) )
))
(declare-datatypes ((Regex!18191 0))(
  ( (ElementMatch!18191 (c!1332326 C!36656)) (Concat!27036 (regOne!36894 Regex!18191) (regTwo!36894 Regex!18191)) (EmptyExpr!18191) (Star!18191 (reg!18520 Regex!18191)) (EmptyLang!18191) (Union!18191 (regOne!36895 Regex!18191) (regTwo!36895 Regex!18191)) )
))
(declare-fun r!11483 () Regex!18191)

(declare-fun validRegex!9358 (Regex!18191) Bool)

(assert (=> start!696564 (= res!2914873 (validRegex!9358 r!11483))))

(assert (=> start!696564 e!4293407))

(assert (=> start!696564 e!4293408))

(declare-fun condSetEmpty!52675 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!69460 0))(
  ( (Nil!69336) (Cons!69336 (h!75784 Regex!18191) (t!383477 List!69460)) )
))
(declare-datatypes ((Context!14370 0))(
  ( (Context!14371 (exprs!7685 List!69460)) )
))
(declare-fun z!3189 () (InoxSet Context!14370))

(assert (=> start!696564 (= condSetEmpty!52675 (= z!3189 ((as const (Array Context!14370 Bool)) false)))))

(declare-fun setRes!52675 () Bool)

(assert (=> start!696564 setRes!52675))

(declare-fun b!7144307 () Bool)

(declare-fun res!2914875 () Bool)

(declare-fun e!4293410 () Bool)

(assert (=> b!7144307 (=> (not res!2914875) (not e!4293410))))

(declare-datatypes ((List!69461 0))(
  ( (Nil!69337) (Cons!69337 (h!75785 Context!14370) (t!383478 List!69461)) )
))
(declare-fun lt!2568298 () List!69461)

(declare-fun generalisedUnion!2696 (List!69460) Regex!18191)

(declare-fun unfocusZipperList!2232 (List!69461) List!69460)

(assert (=> b!7144307 (= res!2914875 (= r!11483 (generalisedUnion!2696 (unfocusZipperList!2232 lt!2568298))))))

(declare-fun b!7144308 () Bool)

(declare-fun tp!1970761 () Bool)

(declare-fun tp!1970759 () Bool)

(assert (=> b!7144308 (= e!4293408 (and tp!1970761 tp!1970759))))

(declare-fun setElem!52675 () Context!14370)

(declare-fun setNonEmpty!52675 () Bool)

(declare-fun tp!1970755 () Bool)

(declare-fun inv!88541 (Context!14370) Bool)

(assert (=> setNonEmpty!52675 (= setRes!52675 (and tp!1970755 (inv!88541 setElem!52675) e!4293409))))

(declare-fun setRest!52675 () (InoxSet Context!14370))

(assert (=> setNonEmpty!52675 (= z!3189 ((_ map or) (store ((as const (Array Context!14370 Bool)) false) setElem!52675 true) setRest!52675))))

(declare-fun b!7144309 () Bool)

(assert (=> b!7144309 (= e!4293410 false)))

(declare-fun setIsEmpty!52675 () Bool)

(assert (=> setIsEmpty!52675 setRes!52675))

(declare-fun b!7144310 () Bool)

(assert (=> b!7144310 (= e!4293407 e!4293410)))

(declare-fun res!2914874 () Bool)

(assert (=> b!7144310 (=> (not res!2914874) (not e!4293410))))

(declare-fun unfocusZipper!2539 (List!69461) Regex!18191)

(assert (=> b!7144310 (= res!2914874 (= r!11483 (unfocusZipper!2539 lt!2568298)))))

(declare-fun toList!11222 ((InoxSet Context!14370)) List!69461)

(assert (=> b!7144310 (= lt!2568298 (toList!11222 z!3189))))

(declare-fun b!7144311 () Bool)

(declare-fun tp!1970758 () Bool)

(assert (=> b!7144311 (= e!4293408 tp!1970758)))

(assert (= (and start!696564 res!2914873) b!7144310))

(assert (= (and b!7144310 res!2914874) b!7144307))

(assert (= (and b!7144307 res!2914875) b!7144309))

(get-info :version)

(assert (= (and start!696564 ((_ is ElementMatch!18191) r!11483)) b!7144306))

(assert (= (and start!696564 ((_ is Concat!27036) r!11483)) b!7144308))

(assert (= (and start!696564 ((_ is Star!18191) r!11483)) b!7144311))

(assert (= (and start!696564 ((_ is Union!18191) r!11483)) b!7144305))

(assert (= (and start!696564 condSetEmpty!52675) setIsEmpty!52675))

(assert (= (and start!696564 (not condSetEmpty!52675)) setNonEmpty!52675))

(assert (= setNonEmpty!52675 b!7144304))

(declare-fun m!7858014 () Bool)

(assert (=> start!696564 m!7858014))

(declare-fun m!7858016 () Bool)

(assert (=> b!7144307 m!7858016))

(assert (=> b!7144307 m!7858016))

(declare-fun m!7858018 () Bool)

(assert (=> b!7144307 m!7858018))

(declare-fun m!7858020 () Bool)

(assert (=> setNonEmpty!52675 m!7858020))

(declare-fun m!7858022 () Bool)

(assert (=> b!7144310 m!7858022))

(declare-fun m!7858024 () Bool)

(assert (=> b!7144310 m!7858024))

(check-sat (not b!7144310) (not b!7144304) (not setNonEmpty!52675) (not b!7144305) tp_is_empty!46019 (not b!7144311) (not b!7144308) (not b!7144307) (not start!696564))
(check-sat)

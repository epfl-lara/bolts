; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!696072 () Bool)

(assert start!696072)

(declare-fun b!7141107 () Bool)

(assert (=> b!7141107 true))

(declare-fun b!7141094 () Bool)

(declare-fun e!4291590 () Bool)

(declare-datatypes ((C!36604 0))(
  ( (C!36605 (val!28250 Int)) )
))
(declare-datatypes ((Regex!18165 0))(
  ( (ElementMatch!18165 (c!1331704 C!36604)) (Concat!27010 (regOne!36842 Regex!18165) (regTwo!36842 Regex!18165)) (EmptyExpr!18165) (Star!18165 (reg!18494 Regex!18165)) (EmptyLang!18165) (Union!18165 (regOne!36843 Regex!18165) (regTwo!36843 Regex!18165)) )
))
(declare-fun lt!2567325 () Regex!18165)

(declare-fun nullable!7684 (Regex!18165) Bool)

(assert (=> b!7141094 (= e!4291590 (nullable!7684 lt!2567325))))

(declare-fun b!7141096 () Bool)

(declare-fun e!4291589 () Bool)

(declare-fun tp!1969457 () Bool)

(assert (=> b!7141096 (= e!4291589 tp!1969457)))

(declare-fun b!7141097 () Bool)

(declare-fun e!4291585 () Bool)

(declare-fun e!4291588 () Bool)

(assert (=> b!7141097 (= e!4291585 e!4291588)))

(declare-fun res!2913699 () Bool)

(assert (=> b!7141097 (=> res!2913699 e!4291588)))

(declare-fun lt!2567327 () Regex!18165)

(assert (=> b!7141097 (= res!2913699 (not (nullable!7684 lt!2567327)))))

(declare-datatypes ((List!69408 0))(
  ( (Nil!69284) (Cons!69284 (h!75732 Regex!18165) (t!383425 List!69408)) )
))
(declare-fun lt!2567323 () List!69408)

(declare-fun lambda!434677 () Int)

(declare-fun getWitness!1933 (List!69408 Int) Regex!18165)

(assert (=> b!7141097 (= lt!2567327 (getWitness!1933 lt!2567323 lambda!434677))))

(declare-fun b!7141098 () Bool)

(declare-fun e!4291584 () Bool)

(declare-fun e!4291586 () Bool)

(assert (=> b!7141098 (= e!4291584 e!4291586)))

(declare-fun res!2913702 () Bool)

(assert (=> b!7141098 (=> (not res!2913702) (not e!4291586))))

(declare-fun r!11483 () Regex!18165)

(declare-datatypes ((Context!14318 0))(
  ( (Context!14319 (exprs!7659 List!69408)) )
))
(declare-datatypes ((List!69409 0))(
  ( (Nil!69285) (Cons!69285 (h!75733 Context!14318) (t!383426 List!69409)) )
))
(declare-fun lt!2567329 () List!69409)

(declare-fun unfocusZipper!2513 (List!69409) Regex!18165)

(assert (=> b!7141098 (= res!2913702 (= r!11483 (unfocusZipper!2513 lt!2567329)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3189 () (InoxSet Context!14318))

(declare-fun toList!11196 ((InoxSet Context!14318)) List!69409)

(assert (=> b!7141098 (= lt!2567329 (toList!11196 z!3189))))

(declare-fun b!7141099 () Bool)

(declare-fun res!2913705 () Bool)

(assert (=> b!7141099 (=> res!2913705 e!4291585)))

(declare-fun lt!2567328 () Bool)

(assert (=> b!7141099 (= res!2913705 (not lt!2567328))))

(declare-fun b!7141100 () Bool)

(declare-fun e!4291583 () Bool)

(assert (=> b!7141100 (= e!4291583 e!4291590)))

(declare-fun res!2913700 () Bool)

(assert (=> b!7141100 (=> res!2913700 e!4291590)))

(assert (=> b!7141100 (= res!2913700 (not (= lt!2567325 lt!2567327)))))

(declare-fun lt!2567324 () Context!14318)

(declare-fun generalisedConcat!2349 (List!69408) Regex!18165)

(assert (=> b!7141100 (= lt!2567325 (generalisedConcat!2349 (exprs!7659 lt!2567324)))))

(declare-fun b!7141101 () Bool)

(declare-fun e!4291581 () Bool)

(assert (=> b!7141101 (= e!4291586 e!4291581)))

(declare-fun res!2913697 () Bool)

(assert (=> b!7141101 (=> (not res!2913697) (not e!4291581))))

(declare-fun lt!2567326 () Regex!18165)

(assert (=> b!7141101 (= res!2913697 (= r!11483 lt!2567326))))

(declare-fun generalisedUnion!2670 (List!69408) Regex!18165)

(assert (=> b!7141101 (= lt!2567326 (generalisedUnion!2670 lt!2567323))))

(declare-fun unfocusZipperList!2206 (List!69409) List!69408)

(assert (=> b!7141101 (= lt!2567323 (unfocusZipperList!2206 lt!2567329))))

(declare-fun b!7141102 () Bool)

(declare-fun e!4291587 () Bool)

(declare-fun tp!1969462 () Bool)

(assert (=> b!7141102 (= e!4291587 tp!1969462)))

(declare-fun b!7141103 () Bool)

(declare-fun res!2913701 () Bool)

(assert (=> b!7141103 (=> res!2913701 e!4291588)))

(declare-fun contains!20605 (List!69408 Regex!18165) Bool)

(assert (=> b!7141103 (= res!2913701 (not (contains!20605 lt!2567323 lt!2567327)))))

(declare-fun setIsEmpty!52549 () Bool)

(declare-fun setRes!52549 () Bool)

(assert (=> setIsEmpty!52549 setRes!52549))

(declare-fun b!7141104 () Bool)

(assert (=> b!7141104 (= e!4291581 (not e!4291585))))

(declare-fun res!2913695 () Bool)

(assert (=> b!7141104 (=> res!2913695 e!4291585)))

(declare-fun exists!3951 (List!69408 Int) Bool)

(assert (=> b!7141104 (= res!2913695 (not (= lt!2567328 (exists!3951 lt!2567323 lambda!434677))))))

(assert (=> b!7141104 (= lt!2567328 (exists!3951 lt!2567323 lambda!434677))))

(assert (=> b!7141104 (= lt!2567328 (nullable!7684 lt!2567326))))

(declare-datatypes ((Unit!163195 0))(
  ( (Unit!163196) )
))
(declare-fun lt!2567330 () Unit!163195)

(declare-fun nullableGenUnionSpec!52 (Regex!18165 List!69408) Unit!163195)

(assert (=> b!7141104 (= lt!2567330 (nullableGenUnionSpec!52 lt!2567326 lt!2567323))))

(declare-fun b!7141095 () Bool)

(declare-fun tp_is_empty!45967 () Bool)

(assert (=> b!7141095 (= e!4291589 tp_is_empty!45967)))

(declare-fun res!2913696 () Bool)

(assert (=> start!696072 (=> (not res!2913696) (not e!4291584))))

(declare-fun validRegex!9332 (Regex!18165) Bool)

(assert (=> start!696072 (= res!2913696 (validRegex!9332 r!11483))))

(assert (=> start!696072 e!4291584))

(assert (=> start!696072 e!4291589))

(declare-fun condSetEmpty!52549 () Bool)

(assert (=> start!696072 (= condSetEmpty!52549 (= z!3189 ((as const (Array Context!14318 Bool)) false)))))

(assert (=> start!696072 setRes!52549))

(declare-fun b!7141105 () Bool)

(declare-fun res!2913704 () Bool)

(assert (=> b!7141105 (=> res!2913704 e!4291585)))

(assert (=> b!7141105 (= res!2913704 (not (exists!3951 lt!2567323 lambda!434677)))))

(declare-fun b!7141106 () Bool)

(declare-fun tp!1969463 () Bool)

(declare-fun tp!1969459 () Bool)

(assert (=> b!7141106 (= e!4291589 (and tp!1969463 tp!1969459))))

(declare-fun e!4291582 () Bool)

(assert (=> b!7141107 (= e!4291588 e!4291582)))

(declare-fun res!2913698 () Bool)

(assert (=> b!7141107 (=> res!2913698 e!4291582)))

(declare-fun lambda!434678 () Int)

(declare-fun exists!3952 ((InoxSet Context!14318) Int) Bool)

(assert (=> b!7141107 (= res!2913698 (not (exists!3952 z!3189 lambda!434678)))))

(declare-fun exists!3953 (List!69409 Int) Bool)

(assert (=> b!7141107 (exists!3953 lt!2567329 lambda!434678)))

(declare-fun lt!2567322 () Unit!163195)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!24 (List!69409 Regex!18165) Unit!163195)

(assert (=> b!7141107 (= lt!2567322 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!24 lt!2567329 lt!2567327))))

(declare-fun b!7141108 () Bool)

(declare-fun tp!1969461 () Bool)

(declare-fun tp!1969458 () Bool)

(assert (=> b!7141108 (= e!4291589 (and tp!1969461 tp!1969458))))

(declare-fun b!7141109 () Bool)

(assert (=> b!7141109 (= e!4291582 e!4291583)))

(declare-fun res!2913703 () Bool)

(assert (=> b!7141109 (=> res!2913703 e!4291583)))

(assert (=> b!7141109 (= res!2913703 (not (select z!3189 lt!2567324)))))

(declare-fun getWitness!1934 ((InoxSet Context!14318) Int) Context!14318)

(assert (=> b!7141109 (= lt!2567324 (getWitness!1934 z!3189 lambda!434678))))

(declare-fun setNonEmpty!52549 () Bool)

(declare-fun tp!1969460 () Bool)

(declare-fun setElem!52549 () Context!14318)

(declare-fun inv!88476 (Context!14318) Bool)

(assert (=> setNonEmpty!52549 (= setRes!52549 (and tp!1969460 (inv!88476 setElem!52549) e!4291587))))

(declare-fun setRest!52549 () (InoxSet Context!14318))

(assert (=> setNonEmpty!52549 (= z!3189 ((_ map or) (store ((as const (Array Context!14318 Bool)) false) setElem!52549 true) setRest!52549))))

(assert (= (and start!696072 res!2913696) b!7141098))

(assert (= (and b!7141098 res!2913702) b!7141101))

(assert (= (and b!7141101 res!2913697) b!7141104))

(assert (= (and b!7141104 (not res!2913695)) b!7141099))

(assert (= (and b!7141099 (not res!2913705)) b!7141105))

(assert (= (and b!7141105 (not res!2913704)) b!7141097))

(assert (= (and b!7141097 (not res!2913699)) b!7141103))

(assert (= (and b!7141103 (not res!2913701)) b!7141107))

(assert (= (and b!7141107 (not res!2913698)) b!7141109))

(assert (= (and b!7141109 (not res!2913703)) b!7141100))

(assert (= (and b!7141100 (not res!2913700)) b!7141094))

(get-info :version)

(assert (= (and start!696072 ((_ is ElementMatch!18165) r!11483)) b!7141095))

(assert (= (and start!696072 ((_ is Concat!27010) r!11483)) b!7141106))

(assert (= (and start!696072 ((_ is Star!18165) r!11483)) b!7141096))

(assert (= (and start!696072 ((_ is Union!18165) r!11483)) b!7141108))

(assert (= (and start!696072 condSetEmpty!52549) setIsEmpty!52549))

(assert (= (and start!696072 (not condSetEmpty!52549)) setNonEmpty!52549))

(assert (= setNonEmpty!52549 b!7141102))

(declare-fun m!7855768 () Bool)

(assert (=> b!7141100 m!7855768))

(declare-fun m!7855770 () Bool)

(assert (=> b!7141109 m!7855770))

(declare-fun m!7855772 () Bool)

(assert (=> b!7141109 m!7855772))

(declare-fun m!7855774 () Bool)

(assert (=> b!7141098 m!7855774))

(declare-fun m!7855776 () Bool)

(assert (=> b!7141098 m!7855776))

(declare-fun m!7855778 () Bool)

(assert (=> b!7141097 m!7855778))

(declare-fun m!7855780 () Bool)

(assert (=> b!7141097 m!7855780))

(declare-fun m!7855782 () Bool)

(assert (=> b!7141104 m!7855782))

(assert (=> b!7141104 m!7855782))

(declare-fun m!7855784 () Bool)

(assert (=> b!7141104 m!7855784))

(declare-fun m!7855786 () Bool)

(assert (=> b!7141104 m!7855786))

(assert (=> b!7141105 m!7855782))

(declare-fun m!7855788 () Bool)

(assert (=> setNonEmpty!52549 m!7855788))

(declare-fun m!7855790 () Bool)

(assert (=> start!696072 m!7855790))

(declare-fun m!7855792 () Bool)

(assert (=> b!7141094 m!7855792))

(declare-fun m!7855794 () Bool)

(assert (=> b!7141107 m!7855794))

(declare-fun m!7855796 () Bool)

(assert (=> b!7141107 m!7855796))

(declare-fun m!7855798 () Bool)

(assert (=> b!7141107 m!7855798))

(declare-fun m!7855800 () Bool)

(assert (=> b!7141103 m!7855800))

(declare-fun m!7855802 () Bool)

(assert (=> b!7141101 m!7855802))

(declare-fun m!7855804 () Bool)

(assert (=> b!7141101 m!7855804))

(check-sat (not b!7141094) (not b!7141100) (not b!7141096) (not setNonEmpty!52549) (not b!7141103) (not b!7141104) (not b!7141108) (not b!7141105) (not b!7141101) (not b!7141097) (not b!7141098) (not start!696072) tp_is_empty!45967 (not b!7141107) (not b!7141106) (not b!7141102) (not b!7141109))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!696428 () Bool)

(assert start!696428)

(declare-fun b!7143305 () Bool)

(declare-fun res!2914579 () Bool)

(declare-fun e!4292840 () Bool)

(assert (=> b!7143305 (=> res!2914579 e!4292840)))

(declare-fun lt!2568092 () Bool)

(assert (=> b!7143305 (= res!2914579 lt!2568092)))

(declare-fun b!7143306 () Bool)

(declare-fun e!4292842 () Bool)

(declare-fun e!4292838 () Bool)

(assert (=> b!7143306 (= e!4292842 e!4292838)))

(declare-fun res!2914576 () Bool)

(assert (=> b!7143306 (=> (not res!2914576) (not e!4292838))))

(declare-datatypes ((C!36640 0))(
  ( (C!36641 (val!28268 Int)) )
))
(declare-datatypes ((Regex!18183 0))(
  ( (ElementMatch!18183 (c!1332132 C!36640)) (Concat!27028 (regOne!36878 Regex!18183) (regTwo!36878 Regex!18183)) (EmptyExpr!18183) (Star!18183 (reg!18512 Regex!18183)) (EmptyLang!18183) (Union!18183 (regOne!36879 Regex!18183) (regTwo!36879 Regex!18183)) )
))
(declare-fun r!11483 () Regex!18183)

(declare-datatypes ((List!69444 0))(
  ( (Nil!69320) (Cons!69320 (h!75768 Regex!18183) (t!383461 List!69444)) )
))
(declare-datatypes ((Context!14354 0))(
  ( (Context!14355 (exprs!7677 List!69444)) )
))
(declare-datatypes ((List!69445 0))(
  ( (Nil!69321) (Cons!69321 (h!75769 Context!14354) (t!383462 List!69445)) )
))
(declare-fun lt!2568097 () List!69445)

(declare-fun unfocusZipper!2531 (List!69445) Regex!18183)

(assert (=> b!7143306 (= res!2914576 (= r!11483 (unfocusZipper!2531 lt!2568097)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3189 () (InoxSet Context!14354))

(declare-fun toList!11214 ((InoxSet Context!14354)) List!69445)

(assert (=> b!7143306 (= lt!2568097 (toList!11214 z!3189))))

(declare-fun setIsEmpty!52633 () Bool)

(declare-fun setRes!52633 () Bool)

(assert (=> setIsEmpty!52633 setRes!52633))

(declare-fun b!7143307 () Bool)

(declare-fun e!4292839 () Bool)

(declare-fun tp!1970305 () Bool)

(declare-fun tp!1970308 () Bool)

(assert (=> b!7143307 (= e!4292839 (and tp!1970305 tp!1970308))))

(declare-fun res!2914577 () Bool)

(assert (=> start!696428 (=> (not res!2914577) (not e!4292842))))

(declare-fun validRegex!9350 (Regex!18183) Bool)

(assert (=> start!696428 (= res!2914577 (validRegex!9350 r!11483))))

(assert (=> start!696428 e!4292842))

(assert (=> start!696428 e!4292839))

(declare-fun condSetEmpty!52633 () Bool)

(assert (=> start!696428 (= condSetEmpty!52633 (= z!3189 ((as const (Array Context!14354 Bool)) false)))))

(assert (=> start!696428 setRes!52633))

(declare-fun b!7143308 () Bool)

(declare-fun tp!1970306 () Bool)

(declare-fun tp!1970310 () Bool)

(assert (=> b!7143308 (= e!4292839 (and tp!1970306 tp!1970310))))

(declare-fun b!7143309 () Bool)

(declare-fun res!2914581 () Bool)

(assert (=> b!7143309 (=> res!2914581 e!4292840)))

(declare-fun lt!2568096 () List!69444)

(declare-fun lambda!435229 () Int)

(declare-fun exists!3995 (List!69444 Int) Bool)

(assert (=> b!7143309 (= res!2914581 (exists!3995 lt!2568096 lambda!435229))))

(declare-fun b!7143310 () Bool)

(declare-fun e!4292841 () Bool)

(declare-fun tp!1970309 () Bool)

(assert (=> b!7143310 (= e!4292841 tp!1970309)))

(declare-fun b!7143311 () Bool)

(declare-fun e!4292843 () Bool)

(assert (=> b!7143311 (= e!4292838 e!4292843)))

(declare-fun res!2914578 () Bool)

(assert (=> b!7143311 (=> (not res!2914578) (not e!4292843))))

(declare-fun lt!2568099 () Regex!18183)

(assert (=> b!7143311 (= res!2914578 (= r!11483 lt!2568099))))

(declare-fun generalisedUnion!2688 (List!69444) Regex!18183)

(assert (=> b!7143311 (= lt!2568099 (generalisedUnion!2688 lt!2568096))))

(declare-fun unfocusZipperList!2224 (List!69445) List!69444)

(assert (=> b!7143311 (= lt!2568096 (unfocusZipperList!2224 lt!2568097))))

(declare-fun b!7143312 () Bool)

(assert (=> b!7143312 (= e!4292843 (not e!4292840))))

(declare-fun res!2914580 () Bool)

(assert (=> b!7143312 (=> res!2914580 e!4292840)))

(assert (=> b!7143312 (= res!2914580 (not (= lt!2568092 (exists!3995 lt!2568096 lambda!435229))))))

(assert (=> b!7143312 (= lt!2568092 (exists!3995 lt!2568096 lambda!435229))))

(declare-fun nullable!7702 (Regex!18183) Bool)

(assert (=> b!7143312 (= lt!2568092 (nullable!7702 lt!2568099))))

(declare-datatypes ((Unit!163237 0))(
  ( (Unit!163238) )
))
(declare-fun lt!2568091 () Unit!163237)

(declare-fun nullableGenUnionSpec!70 (Regex!18183 List!69444) Unit!163237)

(assert (=> b!7143312 (= lt!2568091 (nullableGenUnionSpec!70 lt!2568099 lt!2568096))))

(declare-fun b!7143313 () Bool)

(declare-fun e!4292844 () Unit!163237)

(declare-fun Unit!163239 () Unit!163237)

(assert (=> b!7143313 (= e!4292844 Unit!163239)))

(declare-fun b!7143314 () Bool)

(declare-fun lambda!435230 () Int)

(declare-fun exists!3996 ((InoxSet Context!14354) Int) Bool)

(assert (=> b!7143314 (= e!4292840 (not (exists!3996 z!3189 lambda!435230)))))

(declare-fun lt!2568094 () Unit!163237)

(assert (=> b!7143314 (= lt!2568094 e!4292844)))

(declare-fun c!1332131 () Bool)

(assert (=> b!7143314 (= c!1332131 (exists!3996 z!3189 lambda!435230))))

(declare-fun b!7143315 () Bool)

(declare-fun tp_is_empty!46003 () Bool)

(assert (=> b!7143315 (= e!4292839 tp_is_empty!46003)))

(declare-fun b!7143316 () Bool)

(declare-fun tp!1970307 () Bool)

(assert (=> b!7143316 (= e!4292839 tp!1970307)))

(declare-fun b!7143317 () Bool)

(declare-fun Unit!163240 () Unit!163237)

(assert (=> b!7143317 (= e!4292844 Unit!163240)))

(declare-fun lt!2568090 () Context!14354)

(declare-fun getWitness!1964 ((InoxSet Context!14354) Int) Context!14354)

(assert (=> b!7143317 (= lt!2568090 (getWitness!1964 z!3189 lambda!435230))))

(declare-fun lt!2568095 () Unit!163237)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!20 (List!69445 Context!14354) Unit!163237)

(assert (=> b!7143317 (= lt!2568095 (lemmaZipperContainsContextThenUnfocusZipperListContains!20 lt!2568097 lt!2568090))))

(declare-fun lt!2568100 () Regex!18183)

(declare-fun generalisedConcat!2364 (List!69444) Regex!18183)

(assert (=> b!7143317 (= lt!2568100 (generalisedConcat!2364 (exprs!7677 lt!2568090)))))

(declare-fun contains!20619 (List!69444 Regex!18183) Bool)

(assert (=> b!7143317 (contains!20619 lt!2568096 lt!2568100)))

(declare-fun lt!2568093 () Unit!163237)

(declare-fun nullableGenConcatSpec!18 (Regex!18183 List!69444) Unit!163237)

(assert (=> b!7143317 (= lt!2568093 (nullableGenConcatSpec!18 lt!2568100 (exprs!7677 lt!2568090)))))

(declare-fun forall!17021 (List!69444 Int) Bool)

(assert (=> b!7143317 (= (nullable!7702 lt!2568100) (forall!17021 (exprs!7677 lt!2568090) lambda!435229))))

(declare-fun lt!2568098 () Unit!163237)

(declare-fun lemmaContainsThenExists!201 (List!69444 Regex!18183 Int) Unit!163237)

(assert (=> b!7143317 (= lt!2568098 (lemmaContainsThenExists!201 lt!2568096 lt!2568100 lambda!435229))))

(assert (=> b!7143317 false))

(declare-fun setElem!52633 () Context!14354)

(declare-fun tp!1970311 () Bool)

(declare-fun setNonEmpty!52633 () Bool)

(declare-fun inv!88521 (Context!14354) Bool)

(assert (=> setNonEmpty!52633 (= setRes!52633 (and tp!1970311 (inv!88521 setElem!52633) e!4292841))))

(declare-fun setRest!52633 () (InoxSet Context!14354))

(assert (=> setNonEmpty!52633 (= z!3189 ((_ map or) (store ((as const (Array Context!14354 Bool)) false) setElem!52633 true) setRest!52633))))

(assert (= (and start!696428 res!2914577) b!7143306))

(assert (= (and b!7143306 res!2914576) b!7143311))

(assert (= (and b!7143311 res!2914578) b!7143312))

(assert (= (and b!7143312 (not res!2914580)) b!7143305))

(assert (= (and b!7143305 (not res!2914579)) b!7143309))

(assert (= (and b!7143309 (not res!2914581)) b!7143314))

(assert (= (and b!7143314 c!1332131) b!7143317))

(assert (= (and b!7143314 (not c!1332131)) b!7143313))

(get-info :version)

(assert (= (and start!696428 ((_ is ElementMatch!18183) r!11483)) b!7143315))

(assert (= (and start!696428 ((_ is Concat!27028) r!11483)) b!7143308))

(assert (= (and start!696428 ((_ is Star!18183) r!11483)) b!7143316))

(assert (= (and start!696428 ((_ is Union!18183) r!11483)) b!7143307))

(assert (= (and start!696428 condSetEmpty!52633) setIsEmpty!52633))

(assert (= (and start!696428 (not condSetEmpty!52633)) setNonEmpty!52633))

(assert (= setNonEmpty!52633 b!7143310))

(declare-fun m!7857438 () Bool)

(assert (=> b!7143311 m!7857438))

(declare-fun m!7857440 () Bool)

(assert (=> b!7143311 m!7857440))

(declare-fun m!7857442 () Bool)

(assert (=> b!7143312 m!7857442))

(assert (=> b!7143312 m!7857442))

(declare-fun m!7857444 () Bool)

(assert (=> b!7143312 m!7857444))

(declare-fun m!7857446 () Bool)

(assert (=> b!7143312 m!7857446))

(declare-fun m!7857448 () Bool)

(assert (=> b!7143317 m!7857448))

(declare-fun m!7857450 () Bool)

(assert (=> b!7143317 m!7857450))

(declare-fun m!7857452 () Bool)

(assert (=> b!7143317 m!7857452))

(declare-fun m!7857454 () Bool)

(assert (=> b!7143317 m!7857454))

(declare-fun m!7857456 () Bool)

(assert (=> b!7143317 m!7857456))

(declare-fun m!7857458 () Bool)

(assert (=> b!7143317 m!7857458))

(declare-fun m!7857460 () Bool)

(assert (=> b!7143317 m!7857460))

(declare-fun m!7857462 () Bool)

(assert (=> b!7143317 m!7857462))

(assert (=> b!7143309 m!7857442))

(declare-fun m!7857464 () Bool)

(assert (=> start!696428 m!7857464))

(declare-fun m!7857466 () Bool)

(assert (=> setNonEmpty!52633 m!7857466))

(declare-fun m!7857468 () Bool)

(assert (=> b!7143314 m!7857468))

(assert (=> b!7143314 m!7857468))

(declare-fun m!7857470 () Bool)

(assert (=> b!7143306 m!7857470))

(declare-fun m!7857472 () Bool)

(assert (=> b!7143306 m!7857472))

(check-sat (not start!696428) (not b!7143314) (not b!7143312) (not b!7143307) (not b!7143306) (not b!7143308) (not b!7143311) (not b!7143310) (not setNonEmpty!52633) (not b!7143316) tp_is_empty!46003 (not b!7143309) (not b!7143317))
(check-sat)

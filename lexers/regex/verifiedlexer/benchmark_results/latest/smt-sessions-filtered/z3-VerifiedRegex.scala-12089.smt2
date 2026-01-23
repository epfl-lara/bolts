; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!677742 () Bool)

(assert start!677742)

(declare-fun b!7023322 () Bool)

(assert (=> b!7023322 true))

(declare-fun b!7023320 () Bool)

(declare-fun res!2867073 () Bool)

(declare-fun e!4221985 () Bool)

(assert (=> b!7023320 (=> (not res!2867073) (not e!4221985))))

(declare-datatypes ((C!35120 0))(
  ( (C!35121 (val!27262 Int)) )
))
(declare-datatypes ((List!67803 0))(
  ( (Nil!67679) (Cons!67679 (h!74127 C!35120) (t!381558 List!67803)) )
))
(declare-fun s!7408 () List!67803)

(get-info :version)

(assert (=> b!7023320 (= res!2867073 ((_ is Cons!67679) s!7408))))

(declare-fun b!7023321 () Bool)

(declare-fun e!4221984 () Bool)

(declare-fun tp!1934900 () Bool)

(assert (=> b!7023321 (= e!4221984 tp!1934900)))

(declare-fun e!4221987 () Bool)

(assert (=> b!7023322 (= e!4221985 (not e!4221987))))

(declare-fun res!2867075 () Bool)

(assert (=> b!7023322 (=> res!2867075 e!4221987)))

(declare-datatypes ((Regex!17425 0))(
  ( (ElementMatch!17425 (c!1305328 C!35120)) (Concat!26270 (regOne!35362 Regex!17425) (regTwo!35362 Regex!17425)) (EmptyExpr!17425) (Star!17425 (reg!17754 Regex!17425)) (EmptyLang!17425) (Union!17425 (regOne!35363 Regex!17425) (regTwo!35363 Regex!17425)) )
))
(declare-datatypes ((List!67804 0))(
  ( (Nil!67680) (Cons!67680 (h!74128 Regex!17425) (t!381559 List!67804)) )
))
(declare-datatypes ((Context!12842 0))(
  ( (Context!12843 (exprs!6921 List!67804)) )
))
(declare-fun lt!2513081 () Context!12842)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!2965 ((InoxSet Context!12842) List!67803) Bool)

(assert (=> b!7023322 (= res!2867075 (not (matchZipper!2965 (store ((as const (Array Context!12842 Bool)) false) lt!2513081 true) s!7408)))))

(declare-fun lt!2513080 () (InoxSet Context!12842))

(declare-fun lambda!412205 () Int)

(declare-fun getWitness!1404 ((InoxSet Context!12842) Int) Context!12842)

(assert (=> b!7023322 (= lt!2513081 (getWitness!1404 lt!2513080 lambda!412205))))

(declare-datatypes ((List!67805 0))(
  ( (Nil!67681) (Cons!67681 (h!74129 Context!12842) (t!381560 List!67805)) )
))
(declare-fun lt!2513082 () List!67805)

(declare-fun exists!3323 (List!67805 Int) Bool)

(assert (=> b!7023322 (exists!3323 lt!2513082 lambda!412205)))

(declare-datatypes ((Unit!161512 0))(
  ( (Unit!161513) )
))
(declare-fun lt!2513083 () Unit!161512)

(declare-fun lemmaZipperMatchesExistsMatchingContext!364 (List!67805 List!67803) Unit!161512)

(assert (=> b!7023322 (= lt!2513083 (lemmaZipperMatchesExistsMatchingContext!364 lt!2513082 s!7408))))

(declare-fun toList!10768 ((InoxSet Context!12842)) List!67805)

(assert (=> b!7023322 (= lt!2513082 (toList!10768 lt!2513080))))

(declare-fun res!2867074 () Bool)

(assert (=> start!677742 (=> (not res!2867074) (not e!4221985))))

(assert (=> start!677742 (= res!2867074 (matchZipper!2965 lt!2513080 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12842))

(declare-fun ct2!306 () Context!12842)

(declare-fun appendTo!546 ((InoxSet Context!12842) Context!12842) (InoxSet Context!12842))

(assert (=> start!677742 (= lt!2513080 (appendTo!546 z1!570 ct2!306))))

(assert (=> start!677742 e!4221985))

(declare-fun condSetEmpty!48872 () Bool)

(assert (=> start!677742 (= condSetEmpty!48872 (= z1!570 ((as const (Array Context!12842 Bool)) false)))))

(declare-fun setRes!48872 () Bool)

(assert (=> start!677742 setRes!48872))

(declare-fun inv!86421 (Context!12842) Bool)

(assert (=> start!677742 (and (inv!86421 ct2!306) e!4221984)))

(declare-fun e!4221986 () Bool)

(assert (=> start!677742 e!4221986))

(declare-fun b!7023323 () Bool)

(declare-fun e!4221988 () Bool)

(declare-fun tp!1934901 () Bool)

(assert (=> b!7023323 (= e!4221988 tp!1934901)))

(declare-fun b!7023324 () Bool)

(assert (=> b!7023324 (= e!4221987 (select lt!2513080 lt!2513081))))

(declare-fun b!7023325 () Bool)

(declare-fun tp_is_empty!44075 () Bool)

(declare-fun tp!1934902 () Bool)

(assert (=> b!7023325 (= e!4221986 (and tp_is_empty!44075 tp!1934902))))

(declare-fun setIsEmpty!48872 () Bool)

(assert (=> setIsEmpty!48872 setRes!48872))

(declare-fun setNonEmpty!48872 () Bool)

(declare-fun tp!1934903 () Bool)

(declare-fun setElem!48872 () Context!12842)

(assert (=> setNonEmpty!48872 (= setRes!48872 (and tp!1934903 (inv!86421 setElem!48872) e!4221988))))

(declare-fun setRest!48872 () (InoxSet Context!12842))

(assert (=> setNonEmpty!48872 (= z1!570 ((_ map or) (store ((as const (Array Context!12842 Bool)) false) setElem!48872 true) setRest!48872))))

(assert (= (and start!677742 res!2867074) b!7023320))

(assert (= (and b!7023320 res!2867073) b!7023322))

(assert (= (and b!7023322 (not res!2867075)) b!7023324))

(assert (= (and start!677742 condSetEmpty!48872) setIsEmpty!48872))

(assert (= (and start!677742 (not condSetEmpty!48872)) setNonEmpty!48872))

(assert (= setNonEmpty!48872 b!7023323))

(assert (= start!677742 b!7023321))

(assert (= (and start!677742 ((_ is Cons!67679) s!7408)) b!7023325))

(declare-fun m!7725704 () Bool)

(assert (=> b!7023322 m!7725704))

(declare-fun m!7725706 () Bool)

(assert (=> b!7023322 m!7725706))

(declare-fun m!7725708 () Bool)

(assert (=> b!7023322 m!7725708))

(declare-fun m!7725710 () Bool)

(assert (=> b!7023322 m!7725710))

(assert (=> b!7023322 m!7725704))

(declare-fun m!7725712 () Bool)

(assert (=> b!7023322 m!7725712))

(declare-fun m!7725714 () Bool)

(assert (=> b!7023322 m!7725714))

(declare-fun m!7725716 () Bool)

(assert (=> start!677742 m!7725716))

(declare-fun m!7725718 () Bool)

(assert (=> start!677742 m!7725718))

(declare-fun m!7725720 () Bool)

(assert (=> start!677742 m!7725720))

(declare-fun m!7725722 () Bool)

(assert (=> b!7023324 m!7725722))

(declare-fun m!7725724 () Bool)

(assert (=> setNonEmpty!48872 m!7725724))

(check-sat (not b!7023322) (not b!7023323) (not b!7023321) (not setNonEmpty!48872) tp_is_empty!44075 (not b!7023325) (not start!677742))
(check-sat)
(get-model)

(declare-fun d!2189314 () Bool)

(declare-fun c!1305331 () Bool)

(declare-fun isEmpty!39471 (List!67803) Bool)

(assert (=> d!2189314 (= c!1305331 (isEmpty!39471 s!7408))))

(declare-fun e!4221994 () Bool)

(assert (=> d!2189314 (= (matchZipper!2965 lt!2513080 s!7408) e!4221994)))

(declare-fun b!7023335 () Bool)

(declare-fun nullableZipper!2550 ((InoxSet Context!12842)) Bool)

(assert (=> b!7023335 (= e!4221994 (nullableZipper!2550 lt!2513080))))

(declare-fun b!7023336 () Bool)

(declare-fun derivationStepZipper!2882 ((InoxSet Context!12842) C!35120) (InoxSet Context!12842))

(declare-fun head!14225 (List!67803) C!35120)

(declare-fun tail!13492 (List!67803) List!67803)

(assert (=> b!7023336 (= e!4221994 (matchZipper!2965 (derivationStepZipper!2882 lt!2513080 (head!14225 s!7408)) (tail!13492 s!7408)))))

(assert (= (and d!2189314 c!1305331) b!7023335))

(assert (= (and d!2189314 (not c!1305331)) b!7023336))

(declare-fun m!7725734 () Bool)

(assert (=> d!2189314 m!7725734))

(declare-fun m!7725736 () Bool)

(assert (=> b!7023335 m!7725736))

(declare-fun m!7725738 () Bool)

(assert (=> b!7023336 m!7725738))

(assert (=> b!7023336 m!7725738))

(declare-fun m!7725740 () Bool)

(assert (=> b!7023336 m!7725740))

(declare-fun m!7725742 () Bool)

(assert (=> b!7023336 m!7725742))

(assert (=> b!7023336 m!7725740))

(assert (=> b!7023336 m!7725742))

(declare-fun m!7725744 () Bool)

(assert (=> b!7023336 m!7725744))

(assert (=> start!677742 d!2189314))

(declare-fun d!2189318 () Bool)

(assert (=> d!2189318 true))

(declare-fun lambda!412216 () Int)

(declare-fun map!15709 ((InoxSet Context!12842) Int) (InoxSet Context!12842))

(assert (=> d!2189318 (= (appendTo!546 z1!570 ct2!306) (map!15709 z1!570 lambda!412216))))

(declare-fun bs!1868070 () Bool)

(assert (= bs!1868070 d!2189318))

(declare-fun m!7725756 () Bool)

(assert (=> bs!1868070 m!7725756))

(assert (=> start!677742 d!2189318))

(declare-fun d!2189324 () Bool)

(declare-fun lambda!412219 () Int)

(declare-fun forall!16321 (List!67804 Int) Bool)

(assert (=> d!2189324 (= (inv!86421 ct2!306) (forall!16321 (exprs!6921 ct2!306) lambda!412219))))

(declare-fun bs!1868071 () Bool)

(assert (= bs!1868071 d!2189324))

(declare-fun m!7725758 () Bool)

(assert (=> bs!1868071 m!7725758))

(assert (=> start!677742 d!2189324))

(declare-fun bs!1868072 () Bool)

(declare-fun d!2189326 () Bool)

(assert (= bs!1868072 (and d!2189326 d!2189324)))

(declare-fun lambda!412220 () Int)

(assert (=> bs!1868072 (= lambda!412220 lambda!412219)))

(assert (=> d!2189326 (= (inv!86421 setElem!48872) (forall!16321 (exprs!6921 setElem!48872) lambda!412220))))

(declare-fun bs!1868073 () Bool)

(assert (= bs!1868073 d!2189326))

(declare-fun m!7725760 () Bool)

(assert (=> bs!1868073 m!7725760))

(assert (=> setNonEmpty!48872 d!2189326))

(declare-fun d!2189328 () Bool)

(declare-fun e!4222003 () Bool)

(assert (=> d!2189328 e!4222003))

(declare-fun res!2867084 () Bool)

(assert (=> d!2189328 (=> (not res!2867084) (not e!4222003))))

(declare-fun lt!2513097 () Context!12842)

(declare-fun dynLambda!27266 (Int Context!12842) Bool)

(assert (=> d!2189328 (= res!2867084 (dynLambda!27266 lambda!412205 lt!2513097))))

(declare-fun getWitness!1406 (List!67805 Int) Context!12842)

(assert (=> d!2189328 (= lt!2513097 (getWitness!1406 (toList!10768 lt!2513080) lambda!412205))))

(declare-fun exists!3325 ((InoxSet Context!12842) Int) Bool)

(assert (=> d!2189328 (exists!3325 lt!2513080 lambda!412205)))

(assert (=> d!2189328 (= (getWitness!1404 lt!2513080 lambda!412205) lt!2513097)))

(declare-fun b!7023352 () Bool)

(assert (=> b!7023352 (= e!4222003 (select lt!2513080 lt!2513097))))

(assert (= (and d!2189328 res!2867084) b!7023352))

(declare-fun b_lambda!265349 () Bool)

(assert (=> (not b_lambda!265349) (not d!2189328)))

(declare-fun m!7725780 () Bool)

(assert (=> d!2189328 m!7725780))

(assert (=> d!2189328 m!7725714))

(assert (=> d!2189328 m!7725714))

(declare-fun m!7725782 () Bool)

(assert (=> d!2189328 m!7725782))

(declare-fun m!7725786 () Bool)

(assert (=> d!2189328 m!7725786))

(declare-fun m!7725788 () Bool)

(assert (=> b!7023352 m!7725788))

(assert (=> b!7023322 d!2189328))

(declare-fun d!2189334 () Bool)

(declare-fun c!1305339 () Bool)

(assert (=> d!2189334 (= c!1305339 (isEmpty!39471 s!7408))))

(declare-fun e!4222005 () Bool)

(assert (=> d!2189334 (= (matchZipper!2965 (store ((as const (Array Context!12842 Bool)) false) lt!2513081 true) s!7408) e!4222005)))

(declare-fun b!7023355 () Bool)

(assert (=> b!7023355 (= e!4222005 (nullableZipper!2550 (store ((as const (Array Context!12842 Bool)) false) lt!2513081 true)))))

(declare-fun b!7023356 () Bool)

(assert (=> b!7023356 (= e!4222005 (matchZipper!2965 (derivationStepZipper!2882 (store ((as const (Array Context!12842 Bool)) false) lt!2513081 true) (head!14225 s!7408)) (tail!13492 s!7408)))))

(assert (= (and d!2189334 c!1305339) b!7023355))

(assert (= (and d!2189334 (not c!1305339)) b!7023356))

(assert (=> d!2189334 m!7725734))

(assert (=> b!7023355 m!7725704))

(declare-fun m!7725794 () Bool)

(assert (=> b!7023355 m!7725794))

(assert (=> b!7023356 m!7725738))

(assert (=> b!7023356 m!7725704))

(assert (=> b!7023356 m!7725738))

(declare-fun m!7725796 () Bool)

(assert (=> b!7023356 m!7725796))

(assert (=> b!7023356 m!7725742))

(assert (=> b!7023356 m!7725796))

(assert (=> b!7023356 m!7725742))

(declare-fun m!7725798 () Bool)

(assert (=> b!7023356 m!7725798))

(assert (=> b!7023322 d!2189334))

(declare-fun bs!1868074 () Bool)

(declare-fun d!2189338 () Bool)

(assert (= bs!1868074 (and d!2189338 b!7023322)))

(declare-fun lambda!412223 () Int)

(assert (=> bs!1868074 (not (= lambda!412223 lambda!412205))))

(assert (=> d!2189338 true))

(declare-fun order!28115 () Int)

(declare-fun dynLambda!27268 (Int Int) Int)

(assert (=> d!2189338 (< (dynLambda!27268 order!28115 lambda!412205) (dynLambda!27268 order!28115 lambda!412223))))

(declare-fun forall!16323 (List!67805 Int) Bool)

(assert (=> d!2189338 (= (exists!3323 lt!2513082 lambda!412205) (not (forall!16323 lt!2513082 lambda!412223)))))

(declare-fun bs!1868075 () Bool)

(assert (= bs!1868075 d!2189338))

(declare-fun m!7725800 () Bool)

(assert (=> bs!1868075 m!7725800))

(assert (=> b!7023322 d!2189338))

(declare-fun d!2189340 () Bool)

(declare-fun e!4222008 () Bool)

(assert (=> d!2189340 e!4222008))

(declare-fun res!2867087 () Bool)

(assert (=> d!2189340 (=> (not res!2867087) (not e!4222008))))

(declare-fun lt!2513100 () List!67805)

(declare-fun noDuplicate!2601 (List!67805) Bool)

(assert (=> d!2189340 (= res!2867087 (noDuplicate!2601 lt!2513100))))

(declare-fun choose!53017 ((InoxSet Context!12842)) List!67805)

(assert (=> d!2189340 (= lt!2513100 (choose!53017 lt!2513080))))

(assert (=> d!2189340 (= (toList!10768 lt!2513080) lt!2513100)))

(declare-fun b!7023361 () Bool)

(declare-fun content!13474 (List!67805) (InoxSet Context!12842))

(assert (=> b!7023361 (= e!4222008 (= (content!13474 lt!2513100) lt!2513080))))

(assert (= (and d!2189340 res!2867087) b!7023361))

(declare-fun m!7725802 () Bool)

(assert (=> d!2189340 m!7725802))

(declare-fun m!7725804 () Bool)

(assert (=> d!2189340 m!7725804))

(declare-fun m!7725806 () Bool)

(assert (=> b!7023361 m!7725806))

(assert (=> b!7023322 d!2189340))

(declare-fun bs!1868077 () Bool)

(declare-fun d!2189342 () Bool)

(assert (= bs!1868077 (and d!2189342 b!7023322)))

(declare-fun lambda!412233 () Int)

(assert (=> bs!1868077 (= lambda!412233 lambda!412205)))

(declare-fun bs!1868078 () Bool)

(assert (= bs!1868078 (and d!2189342 d!2189338)))

(assert (=> bs!1868078 (not (= lambda!412233 lambda!412223))))

(assert (=> d!2189342 true))

(assert (=> d!2189342 (exists!3323 lt!2513082 lambda!412233)))

(declare-fun lt!2513105 () Unit!161512)

(declare-fun choose!53018 (List!67805 List!67803) Unit!161512)

(assert (=> d!2189342 (= lt!2513105 (choose!53018 lt!2513082 s!7408))))

(assert (=> d!2189342 (matchZipper!2965 (content!13474 lt!2513082) s!7408)))

(assert (=> d!2189342 (= (lemmaZipperMatchesExistsMatchingContext!364 lt!2513082 s!7408) lt!2513105)))

(declare-fun bs!1868081 () Bool)

(assert (= bs!1868081 d!2189342))

(declare-fun m!7725812 () Bool)

(assert (=> bs!1868081 m!7725812))

(declare-fun m!7725816 () Bool)

(assert (=> bs!1868081 m!7725816))

(declare-fun m!7725818 () Bool)

(assert (=> bs!1868081 m!7725818))

(assert (=> bs!1868081 m!7725818))

(declare-fun m!7725820 () Bool)

(assert (=> bs!1868081 m!7725820))

(assert (=> b!7023322 d!2189342))

(declare-fun b!7023373 () Bool)

(declare-fun e!4222014 () Bool)

(declare-fun tp!1934911 () Bool)

(declare-fun tp!1934912 () Bool)

(assert (=> b!7023373 (= e!4222014 (and tp!1934911 tp!1934912))))

(assert (=> b!7023321 (= tp!1934900 e!4222014)))

(assert (= (and b!7023321 ((_ is Cons!67680) (exprs!6921 ct2!306))) b!7023373))

(declare-fun condSetEmpty!48877 () Bool)

(assert (=> setNonEmpty!48872 (= condSetEmpty!48877 (= setRest!48872 ((as const (Array Context!12842 Bool)) false)))))

(declare-fun setRes!48877 () Bool)

(assert (=> setNonEmpty!48872 (= tp!1934903 setRes!48877)))

(declare-fun setIsEmpty!48877 () Bool)

(assert (=> setIsEmpty!48877 setRes!48877))

(declare-fun e!4222023 () Bool)

(declare-fun setNonEmpty!48877 () Bool)

(declare-fun setElem!48877 () Context!12842)

(declare-fun tp!1934929 () Bool)

(assert (=> setNonEmpty!48877 (= setRes!48877 (and tp!1934929 (inv!86421 setElem!48877) e!4222023))))

(declare-fun setRest!48877 () (InoxSet Context!12842))

(assert (=> setNonEmpty!48877 (= setRest!48872 ((_ map or) (store ((as const (Array Context!12842 Bool)) false) setElem!48877 true) setRest!48877))))

(declare-fun b!7023388 () Bool)

(declare-fun tp!1934930 () Bool)

(assert (=> b!7023388 (= e!4222023 tp!1934930)))

(assert (= (and setNonEmpty!48872 condSetEmpty!48877) setIsEmpty!48877))

(assert (= (and setNonEmpty!48872 (not condSetEmpty!48877)) setNonEmpty!48877))

(assert (= setNonEmpty!48877 b!7023388))

(declare-fun m!7725822 () Bool)

(assert (=> setNonEmpty!48877 m!7725822))

(declare-fun b!7023394 () Bool)

(declare-fun e!4222027 () Bool)

(declare-fun tp!1934935 () Bool)

(assert (=> b!7023394 (= e!4222027 (and tp_is_empty!44075 tp!1934935))))

(assert (=> b!7023325 (= tp!1934902 e!4222027)))

(assert (= (and b!7023325 ((_ is Cons!67679) (t!381558 s!7408))) b!7023394))

(declare-fun b!7023395 () Bool)

(declare-fun e!4222028 () Bool)

(declare-fun tp!1934936 () Bool)

(declare-fun tp!1934937 () Bool)

(assert (=> b!7023395 (= e!4222028 (and tp!1934936 tp!1934937))))

(assert (=> b!7023323 (= tp!1934901 e!4222028)))

(assert (= (and b!7023323 ((_ is Cons!67680) (exprs!6921 setElem!48872))) b!7023395))

(declare-fun b_lambda!265353 () Bool)

(assert (= b_lambda!265349 (or b!7023322 b_lambda!265353)))

(declare-fun bs!1868084 () Bool)

(declare-fun d!2189350 () Bool)

(assert (= bs!1868084 (and d!2189350 b!7023322)))

(assert (=> bs!1868084 (= (dynLambda!27266 lambda!412205 lt!2513097) (matchZipper!2965 (store ((as const (Array Context!12842 Bool)) false) lt!2513097 true) s!7408))))

(declare-fun m!7725827 () Bool)

(assert (=> bs!1868084 m!7725827))

(assert (=> bs!1868084 m!7725827))

(declare-fun m!7725830 () Bool)

(assert (=> bs!1868084 m!7725830))

(assert (=> d!2189328 d!2189350))

(check-sat (not b!7023356) (not d!2189334) (not d!2189338) (not d!2189326) (not d!2189340) (not b_lambda!265353) (not d!2189328) (not d!2189318) (not b!7023335) (not d!2189314) (not b!7023355) (not bs!1868084) (not b!7023388) (not d!2189324) tp_is_empty!44075 (not setNonEmpty!48877) (not b!7023361) (not d!2189342) (not b!7023394) (not b!7023336) (not b!7023395) (not b!7023373))
(check-sat)

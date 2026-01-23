; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694248 () Bool)

(assert start!694248)

(declare-fun b!7126301 () Bool)

(declare-fun res!2907849 () Bool)

(declare-fun e!4282549 () Bool)

(assert (=> b!7126301 (=> (not res!2907849) (not e!4282549))))

(declare-datatypes ((C!36320 0))(
  ( (C!36321 (val!28086 Int)) )
))
(declare-datatypes ((List!69101 0))(
  ( (Nil!68977) (Cons!68977 (h!75425 C!36320) (t!383078 List!69101)) )
))
(declare-fun s2Rec!140 () List!69101)

(get-info :version)

(assert (=> b!7126301 (= res!2907849 ((_ is Nil!68977) s2Rec!140))))

(declare-fun setIsEmpty!51714 () Bool)

(declare-fun setRes!51715 () Bool)

(assert (=> setIsEmpty!51714 setRes!51715))

(declare-fun b!7126302 () Bool)

(declare-fun e!4282544 () Bool)

(declare-fun tp_is_empty!45651 () Bool)

(declare-fun tp!1963102 () Bool)

(assert (=> b!7126302 (= e!4282544 (and tp_is_empty!45651 tp!1963102))))

(declare-fun res!2907848 () Bool)

(assert (=> start!694248 (=> (not res!2907848) (not e!4282549))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18025 0))(
  ( (ElementMatch!18025 (c!1329415 C!36320)) (Concat!26870 (regOne!36562 Regex!18025) (regTwo!36562 Regex!18025)) (EmptyExpr!18025) (Star!18025 (reg!18354 Regex!18025)) (EmptyLang!18025) (Union!18025 (regOne!36563 Regex!18025) (regTwo!36563 Regex!18025)) )
))
(declare-datatypes ((List!69102 0))(
  ( (Nil!68978) (Cons!68978 (h!75426 Regex!18025) (t!383079 List!69102)) )
))
(declare-datatypes ((Context!14038 0))(
  ( (Context!14039 (exprs!7519 List!69102)) )
))
(declare-fun z1!552 () (InoxSet Context!14038))

(declare-fun s1!1688 () List!69101)

(declare-fun matchZipper!3281 ((InoxSet Context!14038) List!69101) Bool)

(assert (=> start!694248 (= res!2907848 (matchZipper!3281 z1!552 s1!1688))))

(assert (=> start!694248 e!4282549))

(declare-fun e!4282546 () Bool)

(assert (=> start!694248 e!4282546))

(declare-fun condSetEmpty!51714 () Bool)

(assert (=> start!694248 (= condSetEmpty!51714 (= z1!552 ((as const (Array Context!14038 Bool)) false)))))

(declare-fun setRes!51714 () Bool)

(assert (=> start!694248 setRes!51714))

(declare-fun e!4282543 () Bool)

(assert (=> start!694248 e!4282543))

(declare-fun condSetEmpty!51715 () Bool)

(declare-fun z2!471 () (InoxSet Context!14038))

(assert (=> start!694248 (= condSetEmpty!51715 (= z2!471 ((as const (Array Context!14038 Bool)) false)))))

(assert (=> start!694248 setRes!51715))

(declare-fun e!4282550 () Bool)

(assert (=> start!694248 e!4282550))

(assert (=> start!694248 e!4282544))

(declare-fun e!4282551 () Bool)

(assert (=> start!694248 e!4282551))

(declare-fun b!7126303 () Bool)

(declare-fun tp!1963101 () Bool)

(assert (=> b!7126303 (= e!4282543 (and tp_is_empty!45651 tp!1963101))))

(declare-fun b!7126304 () Bool)

(declare-fun tp!1963107 () Bool)

(assert (=> b!7126304 (= e!4282546 (and tp_is_empty!45651 tp!1963107))))

(declare-fun b!7126305 () Bool)

(declare-fun res!2907847 () Bool)

(assert (=> b!7126305 (=> (not res!2907847) (not e!4282549))))

(declare-fun s1Rec!140 () List!69101)

(declare-fun s!7390 () List!69101)

(declare-fun ++!16163 (List!69101 List!69101) List!69101)

(assert (=> b!7126305 (= res!2907847 (= (++!16163 s1Rec!140 s2Rec!140) s!7390))))

(declare-fun b!7126306 () Bool)

(declare-fun size!41460 (List!69101) Int)

(assert (=> b!7126306 (= e!4282549 (not (= (size!41460 s1Rec!140) (size!41460 s!7390))))))

(declare-fun setIsEmpty!51715 () Bool)

(assert (=> setIsEmpty!51715 setRes!51714))

(declare-fun tp!1963104 () Bool)

(declare-fun e!4282548 () Bool)

(declare-fun setNonEmpty!51714 () Bool)

(declare-fun setElem!51715 () Context!14038)

(declare-fun inv!88090 (Context!14038) Bool)

(assert (=> setNonEmpty!51714 (= setRes!51715 (and tp!1963104 (inv!88090 setElem!51715) e!4282548))))

(declare-fun setRest!51715 () (InoxSet Context!14038))

(assert (=> setNonEmpty!51714 (= z2!471 ((_ map or) (store ((as const (Array Context!14038 Bool)) false) setElem!51715 true) setRest!51715))))

(declare-fun b!7126307 () Bool)

(declare-fun res!2907851 () Bool)

(assert (=> b!7126307 (=> (not res!2907851) (not e!4282549))))

(declare-fun s2!1620 () List!69101)

(assert (=> b!7126307 (= res!2907851 (= (++!16163 s1!1688 s2!1620) s!7390))))

(declare-fun b!7126308 () Bool)

(declare-fun e!4282545 () Bool)

(assert (=> b!7126308 (= e!4282545 (not (matchZipper!3281 z2!471 s2Rec!140)))))

(declare-fun b!7126309 () Bool)

(declare-fun res!2907844 () Bool)

(assert (=> b!7126309 (=> (not res!2907844) (not e!4282549))))

(assert (=> b!7126309 (= res!2907844 (matchZipper!3281 z2!471 s2!1620))))

(declare-fun b!7126310 () Bool)

(declare-fun e!4282547 () Bool)

(declare-fun tp!1963106 () Bool)

(assert (=> b!7126310 (= e!4282547 tp!1963106)))

(declare-fun b!7126311 () Bool)

(declare-fun tp!1963103 () Bool)

(assert (=> b!7126311 (= e!4282548 tp!1963103)))

(declare-fun setNonEmpty!51715 () Bool)

(declare-fun setElem!51714 () Context!14038)

(declare-fun tp!1963109 () Bool)

(assert (=> setNonEmpty!51715 (= setRes!51714 (and tp!1963109 (inv!88090 setElem!51714) e!4282547))))

(declare-fun setRest!51714 () (InoxSet Context!14038))

(assert (=> setNonEmpty!51715 (= z1!552 ((_ map or) (store ((as const (Array Context!14038 Bool)) false) setElem!51714 true) setRest!51714))))

(declare-fun b!7126312 () Bool)

(declare-fun tp!1963108 () Bool)

(assert (=> b!7126312 (= e!4282551 (and tp_is_empty!45651 tp!1963108))))

(declare-fun b!7126313 () Bool)

(declare-fun res!2907846 () Bool)

(assert (=> b!7126313 (=> (not res!2907846) (not e!4282549))))

(assert (=> b!7126313 (= res!2907846 e!4282545)))

(declare-fun res!2907850 () Bool)

(assert (=> b!7126313 (=> res!2907850 e!4282545)))

(assert (=> b!7126313 (= res!2907850 (not (matchZipper!3281 z1!552 s1Rec!140)))))

(declare-fun b!7126314 () Bool)

(declare-fun tp!1963105 () Bool)

(assert (=> b!7126314 (= e!4282550 (and tp_is_empty!45651 tp!1963105))))

(declare-fun b!7126315 () Bool)

(declare-fun res!2907845 () Bool)

(assert (=> b!7126315 (=> (not res!2907845) (not e!4282549))))

(declare-fun isPrefix!5894 (List!69101 List!69101) Bool)

(assert (=> b!7126315 (= res!2907845 (isPrefix!5894 s1Rec!140 s1!1688))))

(assert (= (and start!694248 res!2907848) b!7126309))

(assert (= (and b!7126309 res!2907844) b!7126307))

(assert (= (and b!7126307 res!2907851) b!7126315))

(assert (= (and b!7126315 res!2907845) b!7126305))

(assert (= (and b!7126305 res!2907847) b!7126313))

(assert (= (and b!7126313 (not res!2907850)) b!7126308))

(assert (= (and b!7126313 res!2907846) b!7126301))

(assert (= (and b!7126301 res!2907849) b!7126306))

(assert (= (and start!694248 ((_ is Cons!68977) s1Rec!140)) b!7126304))

(assert (= (and start!694248 condSetEmpty!51714) setIsEmpty!51715))

(assert (= (and start!694248 (not condSetEmpty!51714)) setNonEmpty!51715))

(assert (= setNonEmpty!51715 b!7126310))

(assert (= (and start!694248 ((_ is Cons!68977) s2Rec!140)) b!7126303))

(assert (= (and start!694248 condSetEmpty!51715) setIsEmpty!51714))

(assert (= (and start!694248 (not condSetEmpty!51715)) setNonEmpty!51714))

(assert (= setNonEmpty!51714 b!7126311))

(assert (= (and start!694248 ((_ is Cons!68977) s2!1620)) b!7126314))

(assert (= (and start!694248 ((_ is Cons!68977) s1!1688)) b!7126302))

(assert (= (and start!694248 ((_ is Cons!68977) s!7390)) b!7126312))

(declare-fun m!7843150 () Bool)

(assert (=> b!7126315 m!7843150))

(declare-fun m!7843152 () Bool)

(assert (=> b!7126305 m!7843152))

(declare-fun m!7843154 () Bool)

(assert (=> b!7126313 m!7843154))

(declare-fun m!7843156 () Bool)

(assert (=> b!7126306 m!7843156))

(declare-fun m!7843158 () Bool)

(assert (=> b!7126306 m!7843158))

(declare-fun m!7843160 () Bool)

(assert (=> b!7126307 m!7843160))

(declare-fun m!7843162 () Bool)

(assert (=> setNonEmpty!51714 m!7843162))

(declare-fun m!7843164 () Bool)

(assert (=> b!7126309 m!7843164))

(declare-fun m!7843166 () Bool)

(assert (=> start!694248 m!7843166))

(declare-fun m!7843168 () Bool)

(assert (=> setNonEmpty!51715 m!7843168))

(declare-fun m!7843170 () Bool)

(assert (=> b!7126308 m!7843170))

(check-sat (not b!7126311) (not b!7126312) (not b!7126308) (not setNonEmpty!51714) (not b!7126315) tp_is_empty!45651 (not b!7126310) (not b!7126303) (not b!7126306) (not b!7126307) (not start!694248) (not b!7126302) (not b!7126309) (not b!7126313) (not b!7126304) (not b!7126305) (not b!7126314) (not setNonEmpty!51715))
(check-sat)
(get-model)

(declare-fun d!2223561 () Bool)

(declare-fun lt!2563467 () Int)

(assert (=> d!2223561 (>= lt!2563467 0)))

(declare-fun e!4282558 () Int)

(assert (=> d!2223561 (= lt!2563467 e!4282558)))

(declare-fun c!1329422 () Bool)

(assert (=> d!2223561 (= c!1329422 ((_ is Nil!68977) s1Rec!140))))

(assert (=> d!2223561 (= (size!41460 s1Rec!140) lt!2563467)))

(declare-fun b!7126328 () Bool)

(assert (=> b!7126328 (= e!4282558 0)))

(declare-fun b!7126329 () Bool)

(assert (=> b!7126329 (= e!4282558 (+ 1 (size!41460 (t!383078 s1Rec!140))))))

(assert (= (and d!2223561 c!1329422) b!7126328))

(assert (= (and d!2223561 (not c!1329422)) b!7126329))

(declare-fun m!7843194 () Bool)

(assert (=> b!7126329 m!7843194))

(assert (=> b!7126306 d!2223561))

(declare-fun d!2223567 () Bool)

(declare-fun lt!2563468 () Int)

(assert (=> d!2223567 (>= lt!2563468 0)))

(declare-fun e!4282559 () Int)

(assert (=> d!2223567 (= lt!2563468 e!4282559)))

(declare-fun c!1329423 () Bool)

(assert (=> d!2223567 (= c!1329423 ((_ is Nil!68977) s!7390))))

(assert (=> d!2223567 (= (size!41460 s!7390) lt!2563468)))

(declare-fun b!7126330 () Bool)

(assert (=> b!7126330 (= e!4282559 0)))

(declare-fun b!7126331 () Bool)

(assert (=> b!7126331 (= e!4282559 (+ 1 (size!41460 (t!383078 s!7390))))))

(assert (= (and d!2223567 c!1329423) b!7126330))

(assert (= (and d!2223567 (not c!1329423)) b!7126331))

(declare-fun m!7843196 () Bool)

(assert (=> b!7126331 m!7843196))

(assert (=> b!7126306 d!2223567))

(declare-fun d!2223569 () Bool)

(declare-fun c!1329426 () Bool)

(declare-fun isEmpty!40016 (List!69101) Bool)

(assert (=> d!2223569 (= c!1329426 (isEmpty!40016 s2!1620))))

(declare-fun e!4282562 () Bool)

(assert (=> d!2223569 (= (matchZipper!3281 z2!471 s2!1620) e!4282562)))

(declare-fun b!7126336 () Bool)

(declare-fun nullableZipper!2752 ((InoxSet Context!14038)) Bool)

(assert (=> b!7126336 (= e!4282562 (nullableZipper!2752 z2!471))))

(declare-fun b!7126337 () Bool)

(declare-fun derivationStepZipper!3164 ((InoxSet Context!14038) C!36320) (InoxSet Context!14038))

(declare-fun head!14460 (List!69101) C!36320)

(declare-fun tail!13932 (List!69101) List!69101)

(assert (=> b!7126337 (= e!4282562 (matchZipper!3281 (derivationStepZipper!3164 z2!471 (head!14460 s2!1620)) (tail!13932 s2!1620)))))

(assert (= (and d!2223569 c!1329426) b!7126336))

(assert (= (and d!2223569 (not c!1329426)) b!7126337))

(declare-fun m!7843198 () Bool)

(assert (=> d!2223569 m!7843198))

(declare-fun m!7843200 () Bool)

(assert (=> b!7126336 m!7843200))

(declare-fun m!7843202 () Bool)

(assert (=> b!7126337 m!7843202))

(assert (=> b!7126337 m!7843202))

(declare-fun m!7843204 () Bool)

(assert (=> b!7126337 m!7843204))

(declare-fun m!7843206 () Bool)

(assert (=> b!7126337 m!7843206))

(assert (=> b!7126337 m!7843204))

(assert (=> b!7126337 m!7843206))

(declare-fun m!7843208 () Bool)

(assert (=> b!7126337 m!7843208))

(assert (=> b!7126309 d!2223569))

(declare-fun d!2223571 () Bool)

(declare-fun c!1329427 () Bool)

(assert (=> d!2223571 (= c!1329427 (isEmpty!40016 s1!1688))))

(declare-fun e!4282563 () Bool)

(assert (=> d!2223571 (= (matchZipper!3281 z1!552 s1!1688) e!4282563)))

(declare-fun b!7126338 () Bool)

(assert (=> b!7126338 (= e!4282563 (nullableZipper!2752 z1!552))))

(declare-fun b!7126339 () Bool)

(assert (=> b!7126339 (= e!4282563 (matchZipper!3281 (derivationStepZipper!3164 z1!552 (head!14460 s1!1688)) (tail!13932 s1!1688)))))

(assert (= (and d!2223571 c!1329427) b!7126338))

(assert (= (and d!2223571 (not c!1329427)) b!7126339))

(declare-fun m!7843210 () Bool)

(assert (=> d!2223571 m!7843210))

(declare-fun m!7843212 () Bool)

(assert (=> b!7126338 m!7843212))

(declare-fun m!7843214 () Bool)

(assert (=> b!7126339 m!7843214))

(assert (=> b!7126339 m!7843214))

(declare-fun m!7843216 () Bool)

(assert (=> b!7126339 m!7843216))

(declare-fun m!7843218 () Bool)

(assert (=> b!7126339 m!7843218))

(assert (=> b!7126339 m!7843216))

(assert (=> b!7126339 m!7843218))

(declare-fun m!7843220 () Bool)

(assert (=> b!7126339 m!7843220))

(assert (=> start!694248 d!2223571))

(declare-fun b!7126351 () Bool)

(declare-fun e!4282572 () Bool)

(assert (=> b!7126351 (= e!4282572 (>= (size!41460 s1!1688) (size!41460 s1Rec!140)))))

(declare-fun b!7126349 () Bool)

(declare-fun res!2907860 () Bool)

(declare-fun e!4282571 () Bool)

(assert (=> b!7126349 (=> (not res!2907860) (not e!4282571))))

(assert (=> b!7126349 (= res!2907860 (= (head!14460 s1Rec!140) (head!14460 s1!1688)))))

(declare-fun b!7126350 () Bool)

(assert (=> b!7126350 (= e!4282571 (isPrefix!5894 (tail!13932 s1Rec!140) (tail!13932 s1!1688)))))

(declare-fun d!2223573 () Bool)

(assert (=> d!2223573 e!4282572))

(declare-fun res!2907861 () Bool)

(assert (=> d!2223573 (=> res!2907861 e!4282572)))

(declare-fun lt!2563471 () Bool)

(assert (=> d!2223573 (= res!2907861 (not lt!2563471))))

(declare-fun e!4282570 () Bool)

(assert (=> d!2223573 (= lt!2563471 e!4282570)))

(declare-fun res!2907862 () Bool)

(assert (=> d!2223573 (=> res!2907862 e!4282570)))

(assert (=> d!2223573 (= res!2907862 ((_ is Nil!68977) s1Rec!140))))

(assert (=> d!2223573 (= (isPrefix!5894 s1Rec!140 s1!1688) lt!2563471)))

(declare-fun b!7126348 () Bool)

(assert (=> b!7126348 (= e!4282570 e!4282571)))

(declare-fun res!2907863 () Bool)

(assert (=> b!7126348 (=> (not res!2907863) (not e!4282571))))

(assert (=> b!7126348 (= res!2907863 (not ((_ is Nil!68977) s1!1688)))))

(assert (= (and d!2223573 (not res!2907862)) b!7126348))

(assert (= (and b!7126348 res!2907863) b!7126349))

(assert (= (and b!7126349 res!2907860) b!7126350))

(assert (= (and d!2223573 (not res!2907861)) b!7126351))

(declare-fun m!7843222 () Bool)

(assert (=> b!7126351 m!7843222))

(assert (=> b!7126351 m!7843156))

(declare-fun m!7843224 () Bool)

(assert (=> b!7126349 m!7843224))

(assert (=> b!7126349 m!7843214))

(declare-fun m!7843226 () Bool)

(assert (=> b!7126350 m!7843226))

(assert (=> b!7126350 m!7843218))

(assert (=> b!7126350 m!7843226))

(assert (=> b!7126350 m!7843218))

(declare-fun m!7843228 () Bool)

(assert (=> b!7126350 m!7843228))

(assert (=> b!7126315 d!2223573))

(declare-fun d!2223575 () Bool)

(declare-fun lambda!433006 () Int)

(declare-fun forall!16911 (List!69102 Int) Bool)

(assert (=> d!2223575 (= (inv!88090 setElem!51715) (forall!16911 (exprs!7519 setElem!51715) lambda!433006))))

(declare-fun bs!1886347 () Bool)

(assert (= bs!1886347 d!2223575))

(declare-fun m!7843292 () Bool)

(assert (=> bs!1886347 m!7843292))

(assert (=> setNonEmpty!51714 d!2223575))

(declare-fun bs!1886348 () Bool)

(declare-fun d!2223593 () Bool)

(assert (= bs!1886348 (and d!2223593 d!2223575)))

(declare-fun lambda!433007 () Int)

(assert (=> bs!1886348 (= lambda!433007 lambda!433006)))

(assert (=> d!2223593 (= (inv!88090 setElem!51714) (forall!16911 (exprs!7519 setElem!51714) lambda!433007))))

(declare-fun bs!1886349 () Bool)

(assert (= bs!1886349 d!2223593))

(declare-fun m!7843294 () Bool)

(assert (=> bs!1886349 m!7843294))

(assert (=> setNonEmpty!51715 d!2223593))

(declare-fun b!7126423 () Bool)

(declare-fun res!2907888 () Bool)

(declare-fun e!4282615 () Bool)

(assert (=> b!7126423 (=> (not res!2907888) (not e!4282615))))

(declare-fun lt!2563485 () List!69101)

(assert (=> b!7126423 (= res!2907888 (= (size!41460 lt!2563485) (+ (size!41460 s1!1688) (size!41460 s2!1620))))))

(declare-fun b!7126421 () Bool)

(declare-fun e!4282616 () List!69101)

(assert (=> b!7126421 (= e!4282616 s2!1620)))

(declare-fun d!2223595 () Bool)

(assert (=> d!2223595 e!4282615))

(declare-fun res!2907889 () Bool)

(assert (=> d!2223595 (=> (not res!2907889) (not e!4282615))))

(declare-fun content!14111 (List!69101) (InoxSet C!36320))

(assert (=> d!2223595 (= res!2907889 (= (content!14111 lt!2563485) ((_ map or) (content!14111 s1!1688) (content!14111 s2!1620))))))

(assert (=> d!2223595 (= lt!2563485 e!4282616)))

(declare-fun c!1329440 () Bool)

(assert (=> d!2223595 (= c!1329440 ((_ is Nil!68977) s1!1688))))

(assert (=> d!2223595 (= (++!16163 s1!1688 s2!1620) lt!2563485)))

(declare-fun b!7126424 () Bool)

(assert (=> b!7126424 (= e!4282615 (or (not (= s2!1620 Nil!68977)) (= lt!2563485 s1!1688)))))

(declare-fun b!7126422 () Bool)

(assert (=> b!7126422 (= e!4282616 (Cons!68977 (h!75425 s1!1688) (++!16163 (t!383078 s1!1688) s2!1620)))))

(assert (= (and d!2223595 c!1329440) b!7126421))

(assert (= (and d!2223595 (not c!1329440)) b!7126422))

(assert (= (and d!2223595 res!2907889) b!7126423))

(assert (= (and b!7126423 res!2907888) b!7126424))

(declare-fun m!7843296 () Bool)

(assert (=> b!7126423 m!7843296))

(assert (=> b!7126423 m!7843222))

(declare-fun m!7843298 () Bool)

(assert (=> b!7126423 m!7843298))

(declare-fun m!7843300 () Bool)

(assert (=> d!2223595 m!7843300))

(declare-fun m!7843302 () Bool)

(assert (=> d!2223595 m!7843302))

(declare-fun m!7843304 () Bool)

(assert (=> d!2223595 m!7843304))

(declare-fun m!7843306 () Bool)

(assert (=> b!7126422 m!7843306))

(assert (=> b!7126307 d!2223595))

(declare-fun d!2223597 () Bool)

(declare-fun c!1329441 () Bool)

(assert (=> d!2223597 (= c!1329441 (isEmpty!40016 s2Rec!140))))

(declare-fun e!4282617 () Bool)

(assert (=> d!2223597 (= (matchZipper!3281 z2!471 s2Rec!140) e!4282617)))

(declare-fun b!7126425 () Bool)

(assert (=> b!7126425 (= e!4282617 (nullableZipper!2752 z2!471))))

(declare-fun b!7126426 () Bool)

(assert (=> b!7126426 (= e!4282617 (matchZipper!3281 (derivationStepZipper!3164 z2!471 (head!14460 s2Rec!140)) (tail!13932 s2Rec!140)))))

(assert (= (and d!2223597 c!1329441) b!7126425))

(assert (= (and d!2223597 (not c!1329441)) b!7126426))

(declare-fun m!7843308 () Bool)

(assert (=> d!2223597 m!7843308))

(assert (=> b!7126425 m!7843200))

(declare-fun m!7843310 () Bool)

(assert (=> b!7126426 m!7843310))

(assert (=> b!7126426 m!7843310))

(declare-fun m!7843312 () Bool)

(assert (=> b!7126426 m!7843312))

(declare-fun m!7843314 () Bool)

(assert (=> b!7126426 m!7843314))

(assert (=> b!7126426 m!7843312))

(assert (=> b!7126426 m!7843314))

(declare-fun m!7843316 () Bool)

(assert (=> b!7126426 m!7843316))

(assert (=> b!7126308 d!2223597))

(declare-fun d!2223599 () Bool)

(declare-fun c!1329442 () Bool)

(assert (=> d!2223599 (= c!1329442 (isEmpty!40016 s1Rec!140))))

(declare-fun e!4282618 () Bool)

(assert (=> d!2223599 (= (matchZipper!3281 z1!552 s1Rec!140) e!4282618)))

(declare-fun b!7126427 () Bool)

(assert (=> b!7126427 (= e!4282618 (nullableZipper!2752 z1!552))))

(declare-fun b!7126428 () Bool)

(assert (=> b!7126428 (= e!4282618 (matchZipper!3281 (derivationStepZipper!3164 z1!552 (head!14460 s1Rec!140)) (tail!13932 s1Rec!140)))))

(assert (= (and d!2223599 c!1329442) b!7126427))

(assert (= (and d!2223599 (not c!1329442)) b!7126428))

(declare-fun m!7843318 () Bool)

(assert (=> d!2223599 m!7843318))

(assert (=> b!7126427 m!7843212))

(assert (=> b!7126428 m!7843224))

(assert (=> b!7126428 m!7843224))

(declare-fun m!7843320 () Bool)

(assert (=> b!7126428 m!7843320))

(assert (=> b!7126428 m!7843226))

(assert (=> b!7126428 m!7843320))

(assert (=> b!7126428 m!7843226))

(declare-fun m!7843322 () Bool)

(assert (=> b!7126428 m!7843322))

(assert (=> b!7126313 d!2223599))

(declare-fun b!7126431 () Bool)

(declare-fun res!2907890 () Bool)

(declare-fun e!4282619 () Bool)

(assert (=> b!7126431 (=> (not res!2907890) (not e!4282619))))

(declare-fun lt!2563486 () List!69101)

(assert (=> b!7126431 (= res!2907890 (= (size!41460 lt!2563486) (+ (size!41460 s1Rec!140) (size!41460 s2Rec!140))))))

(declare-fun b!7126429 () Bool)

(declare-fun e!4282620 () List!69101)

(assert (=> b!7126429 (= e!4282620 s2Rec!140)))

(declare-fun d!2223601 () Bool)

(assert (=> d!2223601 e!4282619))

(declare-fun res!2907891 () Bool)

(assert (=> d!2223601 (=> (not res!2907891) (not e!4282619))))

(assert (=> d!2223601 (= res!2907891 (= (content!14111 lt!2563486) ((_ map or) (content!14111 s1Rec!140) (content!14111 s2Rec!140))))))

(assert (=> d!2223601 (= lt!2563486 e!4282620)))

(declare-fun c!1329443 () Bool)

(assert (=> d!2223601 (= c!1329443 ((_ is Nil!68977) s1Rec!140))))

(assert (=> d!2223601 (= (++!16163 s1Rec!140 s2Rec!140) lt!2563486)))

(declare-fun b!7126432 () Bool)

(assert (=> b!7126432 (= e!4282619 (or (not (= s2Rec!140 Nil!68977)) (= lt!2563486 s1Rec!140)))))

(declare-fun b!7126430 () Bool)

(assert (=> b!7126430 (= e!4282620 (Cons!68977 (h!75425 s1Rec!140) (++!16163 (t!383078 s1Rec!140) s2Rec!140)))))

(assert (= (and d!2223601 c!1329443) b!7126429))

(assert (= (and d!2223601 (not c!1329443)) b!7126430))

(assert (= (and d!2223601 res!2907891) b!7126431))

(assert (= (and b!7126431 res!2907890) b!7126432))

(declare-fun m!7843324 () Bool)

(assert (=> b!7126431 m!7843324))

(assert (=> b!7126431 m!7843156))

(declare-fun m!7843326 () Bool)

(assert (=> b!7126431 m!7843326))

(declare-fun m!7843328 () Bool)

(assert (=> d!2223601 m!7843328))

(declare-fun m!7843330 () Bool)

(assert (=> d!2223601 m!7843330))

(declare-fun m!7843332 () Bool)

(assert (=> d!2223601 m!7843332))

(declare-fun m!7843334 () Bool)

(assert (=> b!7126430 m!7843334))

(assert (=> b!7126305 d!2223601))

(declare-fun b!7126437 () Bool)

(declare-fun e!4282623 () Bool)

(declare-fun tp!1963137 () Bool)

(declare-fun tp!1963138 () Bool)

(assert (=> b!7126437 (= e!4282623 (and tp!1963137 tp!1963138))))

(assert (=> b!7126310 (= tp!1963106 e!4282623)))

(assert (= (and b!7126310 ((_ is Cons!68978) (exprs!7519 setElem!51714))) b!7126437))

(declare-fun b!7126442 () Bool)

(declare-fun e!4282626 () Bool)

(declare-fun tp!1963141 () Bool)

(assert (=> b!7126442 (= e!4282626 (and tp_is_empty!45651 tp!1963141))))

(assert (=> b!7126314 (= tp!1963105 e!4282626)))

(assert (= (and b!7126314 ((_ is Cons!68977) (t!383078 s2!1620))) b!7126442))

(declare-fun b!7126443 () Bool)

(declare-fun e!4282627 () Bool)

(declare-fun tp!1963142 () Bool)

(assert (=> b!7126443 (= e!4282627 (and tp_is_empty!45651 tp!1963142))))

(assert (=> b!7126302 (= tp!1963102 e!4282627)))

(assert (= (and b!7126302 ((_ is Cons!68977) (t!383078 s1!1688))) b!7126443))

(declare-fun condSetEmpty!51722 () Bool)

(assert (=> setNonEmpty!51714 (= condSetEmpty!51722 (= setRest!51715 ((as const (Array Context!14038 Bool)) false)))))

(declare-fun setRes!51722 () Bool)

(assert (=> setNonEmpty!51714 (= tp!1963104 setRes!51722)))

(declare-fun setIsEmpty!51722 () Bool)

(assert (=> setIsEmpty!51722 setRes!51722))

(declare-fun tp!1963147 () Bool)

(declare-fun setElem!51722 () Context!14038)

(declare-fun e!4282630 () Bool)

(declare-fun setNonEmpty!51722 () Bool)

(assert (=> setNonEmpty!51722 (= setRes!51722 (and tp!1963147 (inv!88090 setElem!51722) e!4282630))))

(declare-fun setRest!51722 () (InoxSet Context!14038))

(assert (=> setNonEmpty!51722 (= setRest!51715 ((_ map or) (store ((as const (Array Context!14038 Bool)) false) setElem!51722 true) setRest!51722))))

(declare-fun b!7126448 () Bool)

(declare-fun tp!1963148 () Bool)

(assert (=> b!7126448 (= e!4282630 tp!1963148)))

(assert (= (and setNonEmpty!51714 condSetEmpty!51722) setIsEmpty!51722))

(assert (= (and setNonEmpty!51714 (not condSetEmpty!51722)) setNonEmpty!51722))

(assert (= setNonEmpty!51722 b!7126448))

(declare-fun m!7843336 () Bool)

(assert (=> setNonEmpty!51722 m!7843336))

(declare-fun b!7126449 () Bool)

(declare-fun e!4282631 () Bool)

(declare-fun tp!1963149 () Bool)

(declare-fun tp!1963150 () Bool)

(assert (=> b!7126449 (= e!4282631 (and tp!1963149 tp!1963150))))

(assert (=> b!7126311 (= tp!1963103 e!4282631)))

(assert (= (and b!7126311 ((_ is Cons!68978) (exprs!7519 setElem!51715))) b!7126449))

(declare-fun condSetEmpty!51723 () Bool)

(assert (=> setNonEmpty!51715 (= condSetEmpty!51723 (= setRest!51714 ((as const (Array Context!14038 Bool)) false)))))

(declare-fun setRes!51723 () Bool)

(assert (=> setNonEmpty!51715 (= tp!1963109 setRes!51723)))

(declare-fun setIsEmpty!51723 () Bool)

(assert (=> setIsEmpty!51723 setRes!51723))

(declare-fun tp!1963151 () Bool)

(declare-fun e!4282632 () Bool)

(declare-fun setElem!51723 () Context!14038)

(declare-fun setNonEmpty!51723 () Bool)

(assert (=> setNonEmpty!51723 (= setRes!51723 (and tp!1963151 (inv!88090 setElem!51723) e!4282632))))

(declare-fun setRest!51723 () (InoxSet Context!14038))

(assert (=> setNonEmpty!51723 (= setRest!51714 ((_ map or) (store ((as const (Array Context!14038 Bool)) false) setElem!51723 true) setRest!51723))))

(declare-fun b!7126450 () Bool)

(declare-fun tp!1963152 () Bool)

(assert (=> b!7126450 (= e!4282632 tp!1963152)))

(assert (= (and setNonEmpty!51715 condSetEmpty!51723) setIsEmpty!51723))

(assert (= (and setNonEmpty!51715 (not condSetEmpty!51723)) setNonEmpty!51723))

(assert (= setNonEmpty!51723 b!7126450))

(declare-fun m!7843338 () Bool)

(assert (=> setNonEmpty!51723 m!7843338))

(declare-fun b!7126451 () Bool)

(declare-fun e!4282633 () Bool)

(declare-fun tp!1963153 () Bool)

(assert (=> b!7126451 (= e!4282633 (and tp_is_empty!45651 tp!1963153))))

(assert (=> b!7126303 (= tp!1963101 e!4282633)))

(assert (= (and b!7126303 ((_ is Cons!68977) (t!383078 s2Rec!140))) b!7126451))

(declare-fun b!7126452 () Bool)

(declare-fun e!4282634 () Bool)

(declare-fun tp!1963154 () Bool)

(assert (=> b!7126452 (= e!4282634 (and tp_is_empty!45651 tp!1963154))))

(assert (=> b!7126304 (= tp!1963107 e!4282634)))

(assert (= (and b!7126304 ((_ is Cons!68977) (t!383078 s1Rec!140))) b!7126452))

(declare-fun b!7126453 () Bool)

(declare-fun e!4282635 () Bool)

(declare-fun tp!1963155 () Bool)

(assert (=> b!7126453 (= e!4282635 (and tp_is_empty!45651 tp!1963155))))

(assert (=> b!7126312 (= tp!1963108 e!4282635)))

(assert (= (and b!7126312 ((_ is Cons!68977) (t!383078 s!7390))) b!7126453))

(check-sat (not d!2223571) (not b!7126329) (not b!7126349) (not b!7126338) (not b!7126431) (not b!7126453) (not b!7126422) tp_is_empty!45651 (not b!7126437) (not b!7126443) (not d!2223569) (not b!7126331) (not d!2223599) (not b!7126430) (not b!7126351) (not b!7126442) (not setNonEmpty!51722) (not b!7126452) (not b!7126451) (not d!2223597) (not b!7126449) (not b!7126339) (not d!2223593) (not b!7126350) (not d!2223601) (not b!7126448) (not b!7126450) (not b!7126423) (not b!7126337) (not b!7126426) (not d!2223575) (not setNonEmpty!51723) (not b!7126425) (not b!7126336) (not b!7126427) (not d!2223595) (not b!7126428))
(check-sat)

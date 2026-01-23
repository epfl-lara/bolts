; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695304 () Bool)

(assert start!695304)

(declare-fun b!7135557 () Bool)

(assert (=> b!7135557 true))

(declare-fun bs!1887286 () Bool)

(declare-fun b!7135563 () Bool)

(declare-fun b!7135567 () Bool)

(assert (= bs!1887286 (and b!7135563 b!7135567)))

(declare-fun lambda!433570 () Int)

(declare-fun lambda!433568 () Int)

(assert (=> bs!1887286 (not (= lambda!433570 lambda!433568))))

(declare-fun setIsEmpty!52355 () Bool)

(declare-fun setRes!52355 () Bool)

(assert (=> setIsEmpty!52355 setRes!52355))

(declare-fun e!4288433 () Bool)

(declare-fun e!4288428 () Bool)

(assert (=> b!7135557 (= e!4288433 e!4288428)))

(declare-fun res!2911521 () Bool)

(assert (=> b!7135557 (=> res!2911521 e!4288428)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36520 0))(
  ( (C!36521 (val!28208 Int)) )
))
(declare-datatypes ((Regex!18123 0))(
  ( (ElementMatch!18123 (c!1330698 C!36520)) (Concat!26968 (regOne!36758 Regex!18123) (regTwo!36758 Regex!18123)) (EmptyExpr!18123) (Star!18123 (reg!18452 Regex!18123)) (EmptyLang!18123) (Union!18123 (regOne!36759 Regex!18123) (regTwo!36759 Regex!18123)) )
))
(declare-datatypes ((List!69324 0))(
  ( (Nil!69200) (Cons!69200 (h!75648 Regex!18123) (t!383341 List!69324)) )
))
(declare-datatypes ((Context!14234 0))(
  ( (Context!14235 (exprs!7617 List!69324)) )
))
(declare-fun z!3189 () (InoxSet Context!14234))

(declare-fun lambda!433569 () Int)

(declare-fun exists!3858 ((InoxSet Context!14234) Int) Bool)

(assert (=> b!7135557 (= res!2911521 (not (exists!3858 z!3189 lambda!433569)))))

(declare-datatypes ((List!69325 0))(
  ( (Nil!69201) (Cons!69201 (h!75649 Context!14234) (t!383342 List!69325)) )
))
(declare-fun lt!2565746 () List!69325)

(declare-fun exists!3859 (List!69325 Int) Bool)

(assert (=> b!7135557 (exists!3859 lt!2565746 lambda!433569)))

(declare-datatypes ((Unit!163098 0))(
  ( (Unit!163099) )
))
(declare-fun lt!2565741 () Unit!163098)

(declare-fun lt!2565745 () Regex!18123)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!8 (List!69325 Regex!18123) Unit!163098)

(assert (=> b!7135557 (= lt!2565741 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!8 lt!2565746 lt!2565745))))

(declare-fun b!7135558 () Bool)

(declare-fun e!4288429 () Bool)

(declare-fun tp!1967258 () Bool)

(declare-fun tp!1967257 () Bool)

(assert (=> b!7135558 (= e!4288429 (and tp!1967258 tp!1967257))))

(declare-fun b!7135559 () Bool)

(declare-fun res!2911522 () Bool)

(declare-fun e!4288431 () Bool)

(assert (=> b!7135559 (=> res!2911522 e!4288431)))

(declare-fun lt!2565744 () List!69324)

(declare-fun exists!3860 (List!69324 Int) Bool)

(assert (=> b!7135559 (= res!2911522 (not (exists!3860 lt!2565744 lambda!433568)))))

(declare-fun setElem!52355 () Context!14234)

(declare-fun tp!1967259 () Bool)

(declare-fun e!4288427 () Bool)

(declare-fun setNonEmpty!52355 () Bool)

(declare-fun inv!88371 (Context!14234) Bool)

(assert (=> setNonEmpty!52355 (= setRes!52355 (and tp!1967259 (inv!88371 setElem!52355) e!4288427))))

(declare-fun setRest!52355 () (InoxSet Context!14234))

(assert (=> setNonEmpty!52355 (= z!3189 ((_ map or) (store ((as const (Array Context!14234 Bool)) false) setElem!52355 true) setRest!52355))))

(declare-fun b!7135560 () Bool)

(declare-fun res!2911525 () Bool)

(assert (=> b!7135560 (=> res!2911525 e!4288431)))

(declare-fun lt!2565739 () Bool)

(assert (=> b!7135560 (= res!2911525 (not lt!2565739))))

(declare-fun b!7135561 () Bool)

(declare-fun tp!1967261 () Bool)

(assert (=> b!7135561 (= e!4288429 tp!1967261)))

(declare-fun b!7135562 () Bool)

(declare-fun tp_is_empty!45883 () Bool)

(assert (=> b!7135562 (= e!4288429 tp_is_empty!45883)))

(declare-fun res!2911519 () Bool)

(declare-fun e!4288430 () Bool)

(assert (=> start!695304 (=> (not res!2911519) (not e!4288430))))

(declare-fun r!11483 () Regex!18123)

(declare-fun validRegex!9290 (Regex!18123) Bool)

(assert (=> start!695304 (= res!2911519 (validRegex!9290 r!11483))))

(assert (=> start!695304 e!4288430))

(assert (=> start!695304 e!4288429))

(declare-fun condSetEmpty!52355 () Bool)

(assert (=> start!695304 (= condSetEmpty!52355 (= z!3189 ((as const (Array Context!14234 Bool)) false)))))

(assert (=> start!695304 setRes!52355))

(declare-fun e!4288434 () Bool)

(declare-fun lt!2565740 () Context!14234)

(declare-fun forall!16966 (List!69324 Int) Bool)

(assert (=> b!7135563 (= e!4288434 (forall!16966 (exprs!7617 lt!2565740) lambda!433570))))

(declare-fun b!7135564 () Bool)

(declare-fun e!4288432 () Bool)

(assert (=> b!7135564 (= e!4288430 e!4288432)))

(declare-fun res!2911518 () Bool)

(assert (=> b!7135564 (=> (not res!2911518) (not e!4288432))))

(declare-fun unfocusZipper!2471 (List!69325) Regex!18123)

(assert (=> b!7135564 (= res!2911518 (= r!11483 (unfocusZipper!2471 lt!2565746)))))

(declare-fun toList!11154 ((InoxSet Context!14234)) List!69325)

(assert (=> b!7135564 (= lt!2565746 (toList!11154 z!3189))))

(declare-fun b!7135565 () Bool)

(declare-fun e!4288426 () Bool)

(assert (=> b!7135565 (= e!4288432 e!4288426)))

(declare-fun res!2911527 () Bool)

(assert (=> b!7135565 (=> (not res!2911527) (not e!4288426))))

(declare-fun lt!2565743 () Regex!18123)

(assert (=> b!7135565 (= res!2911527 (= r!11483 lt!2565743))))

(declare-fun generalisedUnion!2628 (List!69324) Regex!18123)

(assert (=> b!7135565 (= lt!2565743 (generalisedUnion!2628 lt!2565744))))

(declare-fun unfocusZipperList!2164 (List!69325) List!69324)

(assert (=> b!7135565 (= lt!2565744 (unfocusZipperList!2164 lt!2565746))))

(declare-fun b!7135566 () Bool)

(assert (=> b!7135566 (= e!4288428 e!4288434)))

(declare-fun res!2911524 () Bool)

(assert (=> b!7135566 (=> res!2911524 e!4288434)))

(assert (=> b!7135566 (= res!2911524 (not (select z!3189 lt!2565740)))))

(declare-fun getWitness!1873 ((InoxSet Context!14234) Int) Context!14234)

(assert (=> b!7135566 (= lt!2565740 (getWitness!1873 z!3189 lambda!433569))))

(assert (=> b!7135567 (= e!4288426 (not e!4288431))))

(declare-fun res!2911520 () Bool)

(assert (=> b!7135567 (=> res!2911520 e!4288431)))

(assert (=> b!7135567 (= res!2911520 (not (= lt!2565739 (exists!3860 lt!2565744 lambda!433568))))))

(assert (=> b!7135567 (= lt!2565739 (exists!3860 lt!2565744 lambda!433568))))

(declare-fun nullable!7643 (Regex!18123) Bool)

(assert (=> b!7135567 (= lt!2565739 (nullable!7643 lt!2565743))))

(declare-fun lt!2565742 () Unit!163098)

(declare-fun nullableGenUnionSpec!12 (Regex!18123 List!69324) Unit!163098)

(assert (=> b!7135567 (= lt!2565742 (nullableGenUnionSpec!12 lt!2565743 lt!2565744))))

(declare-fun b!7135568 () Bool)

(declare-fun tp!1967262 () Bool)

(assert (=> b!7135568 (= e!4288427 tp!1967262)))

(declare-fun b!7135569 () Bool)

(assert (=> b!7135569 (= e!4288431 e!4288433)))

(declare-fun res!2911523 () Bool)

(assert (=> b!7135569 (=> res!2911523 e!4288433)))

(assert (=> b!7135569 (= res!2911523 (not (nullable!7643 lt!2565745)))))

(declare-fun getWitness!1874 (List!69324 Int) Regex!18123)

(assert (=> b!7135569 (= lt!2565745 (getWitness!1874 lt!2565744 lambda!433568))))

(declare-fun b!7135570 () Bool)

(declare-fun tp!1967260 () Bool)

(declare-fun tp!1967263 () Bool)

(assert (=> b!7135570 (= e!4288429 (and tp!1967260 tp!1967263))))

(declare-fun b!7135571 () Bool)

(declare-fun res!2911526 () Bool)

(assert (=> b!7135571 (=> res!2911526 e!4288433)))

(declare-fun contains!20563 (List!69324 Regex!18123) Bool)

(assert (=> b!7135571 (= res!2911526 (not (contains!20563 lt!2565744 lt!2565745)))))

(assert (= (and start!695304 res!2911519) b!7135564))

(assert (= (and b!7135564 res!2911518) b!7135565))

(assert (= (and b!7135565 res!2911527) b!7135567))

(assert (= (and b!7135567 (not res!2911520)) b!7135560))

(assert (= (and b!7135560 (not res!2911525)) b!7135559))

(assert (= (and b!7135559 (not res!2911522)) b!7135569))

(assert (= (and b!7135569 (not res!2911523)) b!7135571))

(assert (= (and b!7135571 (not res!2911526)) b!7135557))

(assert (= (and b!7135557 (not res!2911521)) b!7135566))

(assert (= (and b!7135566 (not res!2911524)) b!7135563))

(get-info :version)

(assert (= (and start!695304 ((_ is ElementMatch!18123) r!11483)) b!7135562))

(assert (= (and start!695304 ((_ is Concat!26968) r!11483)) b!7135558))

(assert (= (and start!695304 ((_ is Star!18123) r!11483)) b!7135561))

(assert (= (and start!695304 ((_ is Union!18123) r!11483)) b!7135570))

(assert (= (and start!695304 condSetEmpty!52355) setIsEmpty!52355))

(assert (= (and start!695304 (not condSetEmpty!52355)) setNonEmpty!52355))

(assert (= setNonEmpty!52355 b!7135568))

(declare-fun m!7851846 () Bool)

(assert (=> b!7135569 m!7851846))

(declare-fun m!7851848 () Bool)

(assert (=> b!7135569 m!7851848))

(declare-fun m!7851850 () Bool)

(assert (=> b!7135566 m!7851850))

(declare-fun m!7851852 () Bool)

(assert (=> b!7135566 m!7851852))

(declare-fun m!7851854 () Bool)

(assert (=> b!7135567 m!7851854))

(assert (=> b!7135567 m!7851854))

(declare-fun m!7851856 () Bool)

(assert (=> b!7135567 m!7851856))

(declare-fun m!7851858 () Bool)

(assert (=> b!7135567 m!7851858))

(declare-fun m!7851860 () Bool)

(assert (=> setNonEmpty!52355 m!7851860))

(declare-fun m!7851862 () Bool)

(assert (=> start!695304 m!7851862))

(assert (=> b!7135559 m!7851854))

(declare-fun m!7851864 () Bool)

(assert (=> b!7135563 m!7851864))

(declare-fun m!7851866 () Bool)

(assert (=> b!7135565 m!7851866))

(declare-fun m!7851868 () Bool)

(assert (=> b!7135565 m!7851868))

(declare-fun m!7851870 () Bool)

(assert (=> b!7135571 m!7851870))

(declare-fun m!7851872 () Bool)

(assert (=> b!7135564 m!7851872))

(declare-fun m!7851874 () Bool)

(assert (=> b!7135564 m!7851874))

(declare-fun m!7851876 () Bool)

(assert (=> b!7135557 m!7851876))

(declare-fun m!7851878 () Bool)

(assert (=> b!7135557 m!7851878))

(declare-fun m!7851880 () Bool)

(assert (=> b!7135557 m!7851880))

(check-sat (not b!7135561) (not b!7135571) (not b!7135568) (not b!7135564) (not b!7135570) (not b!7135567) tp_is_empty!45883 (not b!7135559) (not b!7135563) (not start!695304) (not b!7135558) (not b!7135565) (not b!7135557) (not b!7135569) (not setNonEmpty!52355) (not b!7135566))
(check-sat)
(get-model)

(declare-fun d!2226330 () Bool)

(declare-fun lt!2565761 () Bool)

(declare-fun content!14165 (List!69324) (InoxSet Regex!18123))

(assert (=> d!2226330 (= lt!2565761 (select (content!14165 lt!2565744) lt!2565745))))

(declare-fun e!4288454 () Bool)

(assert (=> d!2226330 (= lt!2565761 e!4288454)))

(declare-fun res!2911547 () Bool)

(assert (=> d!2226330 (=> (not res!2911547) (not e!4288454))))

(assert (=> d!2226330 (= res!2911547 ((_ is Cons!69200) lt!2565744))))

(assert (=> d!2226330 (= (contains!20563 lt!2565744 lt!2565745) lt!2565761)))

(declare-fun b!7135595 () Bool)

(declare-fun e!4288455 () Bool)

(assert (=> b!7135595 (= e!4288454 e!4288455)))

(declare-fun res!2911548 () Bool)

(assert (=> b!7135595 (=> res!2911548 e!4288455)))

(assert (=> b!7135595 (= res!2911548 (= (h!75648 lt!2565744) lt!2565745))))

(declare-fun b!7135596 () Bool)

(assert (=> b!7135596 (= e!4288455 (contains!20563 (t!383341 lt!2565744) lt!2565745))))

(assert (= (and d!2226330 res!2911547) b!7135595))

(assert (= (and b!7135595 (not res!2911548)) b!7135596))

(declare-fun m!7851910 () Bool)

(assert (=> d!2226330 m!7851910))

(declare-fun m!7851912 () Bool)

(assert (=> d!2226330 m!7851912))

(declare-fun m!7851914 () Bool)

(assert (=> b!7135596 m!7851914))

(assert (=> b!7135571 d!2226330))

(declare-fun d!2226336 () Bool)

(declare-fun nullableFct!2971 (Regex!18123) Bool)

(assert (=> d!2226336 (= (nullable!7643 lt!2565745) (nullableFct!2971 lt!2565745))))

(declare-fun bs!1887293 () Bool)

(assert (= bs!1887293 d!2226336))

(declare-fun m!7851916 () Bool)

(assert (=> bs!1887293 m!7851916))

(assert (=> b!7135569 d!2226336))

(declare-fun b!7135645 () Bool)

(declare-fun e!4288488 () Bool)

(declare-fun dynLambda!28146 (Int Regex!18123) Bool)

(assert (=> b!7135645 (= e!4288488 (dynLambda!28146 lambda!433568 (h!75648 lt!2565744)))))

(declare-fun b!7135646 () Bool)

(declare-fun lt!2565773 () Unit!163098)

(declare-fun Unit!163101 () Unit!163098)

(assert (=> b!7135646 (= lt!2565773 Unit!163101)))

(assert (=> b!7135646 false))

(declare-fun e!4288485 () Regex!18123)

(declare-fun head!14486 (List!69324) Regex!18123)

(assert (=> b!7135646 (= e!4288485 (head!14486 lt!2565744))))

(declare-fun b!7135647 () Bool)

(declare-fun e!4288487 () Bool)

(declare-fun lt!2565772 () Regex!18123)

(assert (=> b!7135647 (= e!4288487 (contains!20563 lt!2565744 lt!2565772))))

(declare-fun d!2226338 () Bool)

(assert (=> d!2226338 e!4288487))

(declare-fun res!2911560 () Bool)

(assert (=> d!2226338 (=> (not res!2911560) (not e!4288487))))

(assert (=> d!2226338 (= res!2911560 (dynLambda!28146 lambda!433568 lt!2565772))))

(declare-fun e!4288486 () Regex!18123)

(assert (=> d!2226338 (= lt!2565772 e!4288486)))

(declare-fun c!1330721 () Bool)

(assert (=> d!2226338 (= c!1330721 e!4288488)))

(declare-fun res!2911559 () Bool)

(assert (=> d!2226338 (=> (not res!2911559) (not e!4288488))))

(assert (=> d!2226338 (= res!2911559 ((_ is Cons!69200) lt!2565744))))

(assert (=> d!2226338 (exists!3860 lt!2565744 lambda!433568)))

(assert (=> d!2226338 (= (getWitness!1874 lt!2565744 lambda!433568) lt!2565772)))

(declare-fun b!7135648 () Bool)

(assert (=> b!7135648 (= e!4288486 e!4288485)))

(declare-fun c!1330720 () Bool)

(assert (=> b!7135648 (= c!1330720 ((_ is Cons!69200) lt!2565744))))

(declare-fun b!7135649 () Bool)

(assert (=> b!7135649 (= e!4288485 (getWitness!1874 (t!383341 lt!2565744) lambda!433568))))

(declare-fun b!7135650 () Bool)

(assert (=> b!7135650 (= e!4288486 (h!75648 lt!2565744))))

(assert (= (and d!2226338 res!2911559) b!7135645))

(assert (= (and d!2226338 c!1330721) b!7135650))

(assert (= (and d!2226338 (not c!1330721)) b!7135648))

(assert (= (and b!7135648 c!1330720) b!7135649))

(assert (= (and b!7135648 (not c!1330720)) b!7135646))

(assert (= (and d!2226338 res!2911560) b!7135647))

(declare-fun b_lambda!272257 () Bool)

(assert (=> (not b_lambda!272257) (not b!7135645)))

(declare-fun b_lambda!272259 () Bool)

(assert (=> (not b_lambda!272259) (not d!2226338)))

(declare-fun m!7851946 () Bool)

(assert (=> b!7135647 m!7851946))

(declare-fun m!7851948 () Bool)

(assert (=> b!7135646 m!7851948))

(declare-fun m!7851950 () Bool)

(assert (=> b!7135645 m!7851950))

(declare-fun m!7851952 () Bool)

(assert (=> d!2226338 m!7851952))

(assert (=> d!2226338 m!7851854))

(declare-fun m!7851954 () Bool)

(assert (=> b!7135649 m!7851954))

(assert (=> b!7135569 d!2226338))

(declare-fun bs!1887304 () Bool)

(declare-fun d!2226346 () Bool)

(assert (= bs!1887304 (and d!2226346 b!7135567)))

(declare-fun lambda!433588 () Int)

(assert (=> bs!1887304 (not (= lambda!433588 lambda!433568))))

(declare-fun bs!1887305 () Bool)

(assert (= bs!1887305 (and d!2226346 b!7135563)))

(assert (=> bs!1887305 (= lambda!433588 lambda!433570)))

(assert (=> d!2226346 (= (inv!88371 setElem!52355) (forall!16966 (exprs!7617 setElem!52355) lambda!433588))))

(declare-fun bs!1887306 () Bool)

(assert (= bs!1887306 d!2226346))

(declare-fun m!7851962 () Bool)

(assert (=> bs!1887306 m!7851962))

(assert (=> setNonEmpty!52355 d!2226346))

(declare-fun bs!1887314 () Bool)

(declare-fun d!2226350 () Bool)

(assert (= bs!1887314 (and d!2226350 b!7135567)))

(declare-fun lambda!433594 () Int)

(assert (=> bs!1887314 (not (= lambda!433594 lambda!433568))))

(declare-fun bs!1887315 () Bool)

(assert (= bs!1887315 (and d!2226350 b!7135563)))

(assert (=> bs!1887315 (not (= lambda!433594 lambda!433570))))

(declare-fun bs!1887316 () Bool)

(assert (= bs!1887316 (and d!2226350 d!2226346)))

(assert (=> bs!1887316 (not (= lambda!433594 lambda!433588))))

(assert (=> d!2226350 true))

(declare-fun order!28507 () Int)

(declare-fun dynLambda!28147 (Int Int) Int)

(assert (=> d!2226350 (< (dynLambda!28147 order!28507 lambda!433568) (dynLambda!28147 order!28507 lambda!433594))))

(assert (=> d!2226350 (= (exists!3860 lt!2565744 lambda!433568) (not (forall!16966 lt!2565744 lambda!433594)))))

(declare-fun bs!1887317 () Bool)

(assert (= bs!1887317 d!2226350))

(declare-fun m!7851970 () Bool)

(assert (=> bs!1887317 m!7851970))

(assert (=> b!7135559 d!2226350))

(declare-fun d!2226356 () Bool)

(declare-fun lt!2565782 () Bool)

(assert (=> d!2226356 (= lt!2565782 (exists!3859 (toList!11154 z!3189) lambda!433569))))

(declare-fun choose!55161 ((InoxSet Context!14234) Int) Bool)

(assert (=> d!2226356 (= lt!2565782 (choose!55161 z!3189 lambda!433569))))

(assert (=> d!2226356 (= (exists!3858 z!3189 lambda!433569) lt!2565782)))

(declare-fun bs!1887319 () Bool)

(assert (= bs!1887319 d!2226356))

(assert (=> bs!1887319 m!7851874))

(assert (=> bs!1887319 m!7851874))

(declare-fun m!7851980 () Bool)

(assert (=> bs!1887319 m!7851980))

(declare-fun m!7851982 () Bool)

(assert (=> bs!1887319 m!7851982))

(assert (=> b!7135557 d!2226356))

(declare-fun bs!1887321 () Bool)

(declare-fun d!2226362 () Bool)

(assert (= bs!1887321 (and d!2226362 b!7135557)))

(declare-fun lambda!433597 () Int)

(assert (=> bs!1887321 (not (= lambda!433597 lambda!433569))))

(assert (=> d!2226362 true))

(declare-fun order!28509 () Int)

(declare-fun dynLambda!28148 (Int Int) Int)

(assert (=> d!2226362 (< (dynLambda!28148 order!28509 lambda!433569) (dynLambda!28148 order!28509 lambda!433597))))

(declare-fun forall!16968 (List!69325 Int) Bool)

(assert (=> d!2226362 (= (exists!3859 lt!2565746 lambda!433569) (not (forall!16968 lt!2565746 lambda!433597)))))

(declare-fun bs!1887322 () Bool)

(assert (= bs!1887322 d!2226362))

(declare-fun m!7851994 () Bool)

(assert (=> bs!1887322 m!7851994))

(assert (=> b!7135557 d!2226362))

(declare-fun bs!1887334 () Bool)

(declare-fun d!2226368 () Bool)

(assert (= bs!1887334 (and d!2226368 b!7135557)))

(declare-fun lambda!433606 () Int)

(assert (=> bs!1887334 (= lambda!433606 lambda!433569)))

(declare-fun bs!1887335 () Bool)

(assert (= bs!1887335 (and d!2226368 d!2226362)))

(assert (=> bs!1887335 (not (= lambda!433606 lambda!433597))))

(assert (=> d!2226368 true))

(assert (=> d!2226368 (exists!3859 lt!2565746 lambda!433606)))

(declare-fun lt!2565794 () Unit!163098)

(declare-fun choose!55162 (List!69325 Regex!18123) Unit!163098)

(assert (=> d!2226368 (= lt!2565794 (choose!55162 lt!2565746 lt!2565745))))

(assert (=> d!2226368 (contains!20563 (unfocusZipperList!2164 lt!2565746) lt!2565745)))

(assert (=> d!2226368 (= (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!8 lt!2565746 lt!2565745) lt!2565794)))

(declare-fun bs!1887336 () Bool)

(assert (= bs!1887336 d!2226368))

(declare-fun m!7852012 () Bool)

(assert (=> bs!1887336 m!7852012))

(declare-fun m!7852014 () Bool)

(assert (=> bs!1887336 m!7852014))

(assert (=> bs!1887336 m!7851868))

(assert (=> bs!1887336 m!7851868))

(declare-fun m!7852016 () Bool)

(assert (=> bs!1887336 m!7852016))

(assert (=> b!7135557 d!2226368))

(assert (=> b!7135567 d!2226350))

(declare-fun d!2226378 () Bool)

(assert (=> d!2226378 (= (nullable!7643 lt!2565743) (nullableFct!2971 lt!2565743))))

(declare-fun bs!1887337 () Bool)

(assert (= bs!1887337 d!2226378))

(declare-fun m!7852018 () Bool)

(assert (=> bs!1887337 m!7852018))

(assert (=> b!7135567 d!2226378))

(declare-fun bs!1887338 () Bool)

(declare-fun d!2226380 () Bool)

(assert (= bs!1887338 (and d!2226380 b!7135567)))

(declare-fun lambda!433611 () Int)

(assert (=> bs!1887338 (not (= lambda!433611 lambda!433568))))

(declare-fun bs!1887339 () Bool)

(assert (= bs!1887339 (and d!2226380 b!7135563)))

(assert (=> bs!1887339 (= lambda!433611 lambda!433570)))

(declare-fun bs!1887340 () Bool)

(assert (= bs!1887340 (and d!2226380 d!2226346)))

(assert (=> bs!1887340 (= lambda!433611 lambda!433588)))

(declare-fun bs!1887341 () Bool)

(assert (= bs!1887341 (and d!2226380 d!2226350)))

(assert (=> bs!1887341 (not (= lambda!433611 lambda!433594))))

(declare-fun lambda!433612 () Int)

(assert (=> bs!1887339 (not (= lambda!433612 lambda!433570))))

(assert (=> bs!1887338 (= lambda!433612 lambda!433568)))

(assert (=> bs!1887341 (not (= lambda!433612 lambda!433594))))

(assert (=> bs!1887340 (not (= lambda!433612 lambda!433588))))

(declare-fun bs!1887342 () Bool)

(assert (= bs!1887342 d!2226380))

(assert (=> bs!1887342 (not (= lambda!433612 lambda!433611))))

(assert (=> d!2226380 (= (nullable!7643 lt!2565743) (exists!3860 lt!2565744 lambda!433612))))

(declare-fun lt!2565797 () Unit!163098)

(declare-fun choose!55163 (Regex!18123 List!69324) Unit!163098)

(assert (=> d!2226380 (= lt!2565797 (choose!55163 lt!2565743 lt!2565744))))

(assert (=> d!2226380 (forall!16966 lt!2565744 lambda!433611)))

(assert (=> d!2226380 (= (nullableGenUnionSpec!12 lt!2565743 lt!2565744) lt!2565797)))

(assert (=> bs!1887342 m!7851856))

(declare-fun m!7852020 () Bool)

(assert (=> bs!1887342 m!7852020))

(declare-fun m!7852022 () Bool)

(assert (=> bs!1887342 m!7852022))

(declare-fun m!7852024 () Bool)

(assert (=> bs!1887342 m!7852024))

(assert (=> b!7135567 d!2226380))

(declare-fun bs!1887343 () Bool)

(declare-fun d!2226382 () Bool)

(assert (= bs!1887343 (and d!2226382 b!7135563)))

(declare-fun lambda!433615 () Int)

(assert (=> bs!1887343 (= lambda!433615 lambda!433570)))

(declare-fun bs!1887344 () Bool)

(assert (= bs!1887344 (and d!2226382 b!7135567)))

(assert (=> bs!1887344 (not (= lambda!433615 lambda!433568))))

(declare-fun bs!1887345 () Bool)

(assert (= bs!1887345 (and d!2226382 d!2226346)))

(assert (=> bs!1887345 (= lambda!433615 lambda!433588)))

(declare-fun bs!1887346 () Bool)

(assert (= bs!1887346 (and d!2226382 d!2226380)))

(assert (=> bs!1887346 (= lambda!433615 lambda!433611)))

(assert (=> bs!1887346 (not (= lambda!433615 lambda!433612))))

(declare-fun bs!1887347 () Bool)

(assert (= bs!1887347 (and d!2226382 d!2226350)))

(assert (=> bs!1887347 (not (= lambda!433615 lambda!433594))))

(declare-fun b!7135765 () Bool)

(declare-fun e!4288553 () Bool)

(declare-fun lt!2565800 () Regex!18123)

(assert (=> b!7135765 (= e!4288553 (= lt!2565800 (head!14486 lt!2565744)))))

(declare-fun e!4288552 () Bool)

(assert (=> d!2226382 e!4288552))

(declare-fun res!2911589 () Bool)

(assert (=> d!2226382 (=> (not res!2911589) (not e!4288552))))

(assert (=> d!2226382 (= res!2911589 (validRegex!9290 lt!2565800))))

(declare-fun e!4288550 () Regex!18123)

(assert (=> d!2226382 (= lt!2565800 e!4288550)))

(declare-fun c!1330746 () Bool)

(declare-fun e!4288551 () Bool)

(assert (=> d!2226382 (= c!1330746 e!4288551)))

(declare-fun res!2911590 () Bool)

(assert (=> d!2226382 (=> (not res!2911590) (not e!4288551))))

(assert (=> d!2226382 (= res!2911590 ((_ is Cons!69200) lt!2565744))))

(assert (=> d!2226382 (forall!16966 lt!2565744 lambda!433615)))

(assert (=> d!2226382 (= (generalisedUnion!2628 lt!2565744) lt!2565800)))

(declare-fun b!7135766 () Bool)

(declare-fun e!4288555 () Regex!18123)

(assert (=> b!7135766 (= e!4288555 (Union!18123 (h!75648 lt!2565744) (generalisedUnion!2628 (t!383341 lt!2565744))))))

(declare-fun b!7135767 () Bool)

(assert (=> b!7135767 (= e!4288550 (h!75648 lt!2565744))))

(declare-fun b!7135768 () Bool)

(declare-fun e!4288554 () Bool)

(assert (=> b!7135768 (= e!4288554 e!4288553)))

(declare-fun c!1330747 () Bool)

(declare-fun isEmpty!40047 (List!69324) Bool)

(declare-fun tail!13958 (List!69324) List!69324)

(assert (=> b!7135768 (= c!1330747 (isEmpty!40047 (tail!13958 lt!2565744)))))

(declare-fun b!7135769 () Bool)

(assert (=> b!7135769 (= e!4288552 e!4288554)))

(declare-fun c!1330744 () Bool)

(assert (=> b!7135769 (= c!1330744 (isEmpty!40047 lt!2565744))))

(declare-fun b!7135770 () Bool)

(declare-fun isEmptyLang!2079 (Regex!18123) Bool)

(assert (=> b!7135770 (= e!4288554 (isEmptyLang!2079 lt!2565800))))

(declare-fun b!7135771 () Bool)

(assert (=> b!7135771 (= e!4288551 (isEmpty!40047 (t!383341 lt!2565744)))))

(declare-fun b!7135772 () Bool)

(declare-fun isUnion!1507 (Regex!18123) Bool)

(assert (=> b!7135772 (= e!4288553 (isUnion!1507 lt!2565800))))

(declare-fun b!7135773 () Bool)

(assert (=> b!7135773 (= e!4288555 EmptyLang!18123)))

(declare-fun b!7135774 () Bool)

(assert (=> b!7135774 (= e!4288550 e!4288555)))

(declare-fun c!1330745 () Bool)

(assert (=> b!7135774 (= c!1330745 ((_ is Cons!69200) lt!2565744))))

(assert (= (and d!2226382 res!2911590) b!7135771))

(assert (= (and d!2226382 c!1330746) b!7135767))

(assert (= (and d!2226382 (not c!1330746)) b!7135774))

(assert (= (and b!7135774 c!1330745) b!7135766))

(assert (= (and b!7135774 (not c!1330745)) b!7135773))

(assert (= (and d!2226382 res!2911589) b!7135769))

(assert (= (and b!7135769 c!1330744) b!7135770))

(assert (= (and b!7135769 (not c!1330744)) b!7135768))

(assert (= (and b!7135768 c!1330747) b!7135765))

(assert (= (and b!7135768 (not c!1330747)) b!7135772))

(declare-fun m!7852026 () Bool)

(assert (=> b!7135768 m!7852026))

(assert (=> b!7135768 m!7852026))

(declare-fun m!7852028 () Bool)

(assert (=> b!7135768 m!7852028))

(declare-fun m!7852030 () Bool)

(assert (=> b!7135766 m!7852030))

(declare-fun m!7852032 () Bool)

(assert (=> b!7135772 m!7852032))

(declare-fun m!7852034 () Bool)

(assert (=> b!7135769 m!7852034))

(assert (=> b!7135765 m!7851948))

(declare-fun m!7852036 () Bool)

(assert (=> b!7135771 m!7852036))

(declare-fun m!7852038 () Bool)

(assert (=> d!2226382 m!7852038))

(declare-fun m!7852040 () Bool)

(assert (=> d!2226382 m!7852040))

(declare-fun m!7852042 () Bool)

(assert (=> b!7135770 m!7852042))

(assert (=> b!7135565 d!2226382))

(declare-fun bs!1887348 () Bool)

(declare-fun d!2226384 () Bool)

(assert (= bs!1887348 (and d!2226384 b!7135563)))

(declare-fun lambda!433618 () Int)

(assert (=> bs!1887348 (= lambda!433618 lambda!433570)))

(declare-fun bs!1887349 () Bool)

(assert (= bs!1887349 (and d!2226384 b!7135567)))

(assert (=> bs!1887349 (not (= lambda!433618 lambda!433568))))

(declare-fun bs!1887350 () Bool)

(assert (= bs!1887350 (and d!2226384 d!2226382)))

(assert (=> bs!1887350 (= lambda!433618 lambda!433615)))

(declare-fun bs!1887351 () Bool)

(assert (= bs!1887351 (and d!2226384 d!2226346)))

(assert (=> bs!1887351 (= lambda!433618 lambda!433588)))

(declare-fun bs!1887352 () Bool)

(assert (= bs!1887352 (and d!2226384 d!2226380)))

(assert (=> bs!1887352 (= lambda!433618 lambda!433611)))

(assert (=> bs!1887352 (not (= lambda!433618 lambda!433612))))

(declare-fun bs!1887353 () Bool)

(assert (= bs!1887353 (and d!2226384 d!2226350)))

(assert (=> bs!1887353 (not (= lambda!433618 lambda!433594))))

(declare-fun lt!2565803 () List!69324)

(assert (=> d!2226384 (forall!16966 lt!2565803 lambda!433618)))

(declare-fun e!4288558 () List!69324)

(assert (=> d!2226384 (= lt!2565803 e!4288558)))

(declare-fun c!1330750 () Bool)

(assert (=> d!2226384 (= c!1330750 ((_ is Cons!69201) lt!2565746))))

(assert (=> d!2226384 (= (unfocusZipperList!2164 lt!2565746) lt!2565803)))

(declare-fun b!7135779 () Bool)

(declare-fun generalisedConcat!2318 (List!69324) Regex!18123)

(assert (=> b!7135779 (= e!4288558 (Cons!69200 (generalisedConcat!2318 (exprs!7617 (h!75649 lt!2565746))) (unfocusZipperList!2164 (t!383342 lt!2565746))))))

(declare-fun b!7135780 () Bool)

(assert (=> b!7135780 (= e!4288558 Nil!69200)))

(assert (= (and d!2226384 c!1330750) b!7135779))

(assert (= (and d!2226384 (not c!1330750)) b!7135780))

(declare-fun m!7852044 () Bool)

(assert (=> d!2226384 m!7852044))

(declare-fun m!7852046 () Bool)

(assert (=> b!7135779 m!7852046))

(declare-fun m!7852048 () Bool)

(assert (=> b!7135779 m!7852048))

(assert (=> b!7135565 d!2226384))

(declare-fun d!2226386 () Bool)

(declare-fun e!4288561 () Bool)

(assert (=> d!2226386 e!4288561))

(declare-fun res!2911593 () Bool)

(assert (=> d!2226386 (=> (not res!2911593) (not e!4288561))))

(declare-fun lt!2565806 () Context!14234)

(declare-fun dynLambda!28149 (Int Context!14234) Bool)

(assert (=> d!2226386 (= res!2911593 (dynLambda!28149 lambda!433569 lt!2565806))))

(declare-fun getWitness!1876 (List!69325 Int) Context!14234)

(assert (=> d!2226386 (= lt!2565806 (getWitness!1876 (toList!11154 z!3189) lambda!433569))))

(assert (=> d!2226386 (exists!3858 z!3189 lambda!433569)))

(assert (=> d!2226386 (= (getWitness!1873 z!3189 lambda!433569) lt!2565806)))

(declare-fun b!7135783 () Bool)

(assert (=> b!7135783 (= e!4288561 (select z!3189 lt!2565806))))

(assert (= (and d!2226386 res!2911593) b!7135783))

(declare-fun b_lambda!272273 () Bool)

(assert (=> (not b_lambda!272273) (not d!2226386)))

(declare-fun m!7852050 () Bool)

(assert (=> d!2226386 m!7852050))

(assert (=> d!2226386 m!7851874))

(assert (=> d!2226386 m!7851874))

(declare-fun m!7852052 () Bool)

(assert (=> d!2226386 m!7852052))

(assert (=> d!2226386 m!7851876))

(declare-fun m!7852054 () Bool)

(assert (=> b!7135783 m!7852054))

(assert (=> b!7135566 d!2226386))

(declare-fun b!7135802 () Bool)

(declare-fun e!4288580 () Bool)

(declare-fun e!4288578 () Bool)

(assert (=> b!7135802 (= e!4288580 e!4288578)))

(declare-fun c!1330755 () Bool)

(assert (=> b!7135802 (= c!1330755 ((_ is Star!18123) r!11483))))

(declare-fun b!7135803 () Bool)

(declare-fun res!2911607 () Bool)

(declare-fun e!4288582 () Bool)

(assert (=> b!7135803 (=> res!2911607 e!4288582)))

(assert (=> b!7135803 (= res!2911607 (not ((_ is Concat!26968) r!11483)))))

(declare-fun e!4288576 () Bool)

(assert (=> b!7135803 (= e!4288576 e!4288582)))

(declare-fun b!7135804 () Bool)

(declare-fun res!2911604 () Bool)

(declare-fun e!4288577 () Bool)

(assert (=> b!7135804 (=> (not res!2911604) (not e!4288577))))

(declare-fun call!650962 () Bool)

(assert (=> b!7135804 (= res!2911604 call!650962)))

(assert (=> b!7135804 (= e!4288576 e!4288577)))

(declare-fun b!7135805 () Bool)

(declare-fun e!4288581 () Bool)

(declare-fun call!650963 () Bool)

(assert (=> b!7135805 (= e!4288581 call!650963)))

(declare-fun b!7135806 () Bool)

(declare-fun e!4288579 () Bool)

(declare-fun call!650964 () Bool)

(assert (=> b!7135806 (= e!4288579 call!650964)))

(declare-fun b!7135807 () Bool)

(assert (=> b!7135807 (= e!4288578 e!4288576)))

(declare-fun c!1330756 () Bool)

(assert (=> b!7135807 (= c!1330756 ((_ is Union!18123) r!11483))))

(declare-fun bm!650957 () Bool)

(assert (=> bm!650957 (= call!650962 call!650963)))

(declare-fun b!7135808 () Bool)

(assert (=> b!7135808 (= e!4288578 e!4288581)))

(declare-fun res!2911608 () Bool)

(assert (=> b!7135808 (= res!2911608 (not (nullable!7643 (reg!18452 r!11483))))))

(assert (=> b!7135808 (=> (not res!2911608) (not e!4288581))))

(declare-fun bm!650958 () Bool)

(assert (=> bm!650958 (= call!650964 (validRegex!9290 (ite c!1330756 (regTwo!36759 r!11483) (regTwo!36758 r!11483))))))

(declare-fun b!7135809 () Bool)

(assert (=> b!7135809 (= e!4288582 e!4288579)))

(declare-fun res!2911606 () Bool)

(assert (=> b!7135809 (=> (not res!2911606) (not e!4288579))))

(assert (=> b!7135809 (= res!2911606 call!650962)))

(declare-fun d!2226388 () Bool)

(declare-fun res!2911605 () Bool)

(assert (=> d!2226388 (=> res!2911605 e!4288580)))

(assert (=> d!2226388 (= res!2911605 ((_ is ElementMatch!18123) r!11483))))

(assert (=> d!2226388 (= (validRegex!9290 r!11483) e!4288580)))

(declare-fun b!7135810 () Bool)

(assert (=> b!7135810 (= e!4288577 call!650964)))

(declare-fun bm!650959 () Bool)

(assert (=> bm!650959 (= call!650963 (validRegex!9290 (ite c!1330755 (reg!18452 r!11483) (ite c!1330756 (regOne!36759 r!11483) (regOne!36758 r!11483)))))))

(assert (= (and d!2226388 (not res!2911605)) b!7135802))

(assert (= (and b!7135802 c!1330755) b!7135808))

(assert (= (and b!7135802 (not c!1330755)) b!7135807))

(assert (= (and b!7135808 res!2911608) b!7135805))

(assert (= (and b!7135807 c!1330756) b!7135804))

(assert (= (and b!7135807 (not c!1330756)) b!7135803))

(assert (= (and b!7135804 res!2911604) b!7135810))

(assert (= (and b!7135803 (not res!2911607)) b!7135809))

(assert (= (and b!7135809 res!2911606) b!7135806))

(assert (= (or b!7135810 b!7135806) bm!650958))

(assert (= (or b!7135804 b!7135809) bm!650957))

(assert (= (or b!7135805 bm!650957) bm!650959))

(declare-fun m!7852056 () Bool)

(assert (=> b!7135808 m!7852056))

(declare-fun m!7852058 () Bool)

(assert (=> bm!650958 m!7852058))

(declare-fun m!7852060 () Bool)

(assert (=> bm!650959 m!7852060))

(assert (=> start!695304 d!2226388))

(declare-fun d!2226390 () Bool)

(declare-fun lt!2565809 () Regex!18123)

(assert (=> d!2226390 (validRegex!9290 lt!2565809)))

(assert (=> d!2226390 (= lt!2565809 (generalisedUnion!2628 (unfocusZipperList!2164 lt!2565746)))))

(assert (=> d!2226390 (= (unfocusZipper!2471 lt!2565746) lt!2565809)))

(declare-fun bs!1887354 () Bool)

(assert (= bs!1887354 d!2226390))

(declare-fun m!7852062 () Bool)

(assert (=> bs!1887354 m!7852062))

(assert (=> bs!1887354 m!7851868))

(assert (=> bs!1887354 m!7851868))

(declare-fun m!7852064 () Bool)

(assert (=> bs!1887354 m!7852064))

(assert (=> b!7135564 d!2226390))

(declare-fun d!2226392 () Bool)

(declare-fun e!4288585 () Bool)

(assert (=> d!2226392 e!4288585))

(declare-fun res!2911611 () Bool)

(assert (=> d!2226392 (=> (not res!2911611) (not e!4288585))))

(declare-fun lt!2565812 () List!69325)

(declare-fun noDuplicate!2810 (List!69325) Bool)

(assert (=> d!2226392 (= res!2911611 (noDuplicate!2810 lt!2565812))))

(declare-fun choose!55164 ((InoxSet Context!14234)) List!69325)

(assert (=> d!2226392 (= lt!2565812 (choose!55164 z!3189))))

(assert (=> d!2226392 (= (toList!11154 z!3189) lt!2565812)))

(declare-fun b!7135813 () Bool)

(declare-fun content!14166 (List!69325) (InoxSet Context!14234))

(assert (=> b!7135813 (= e!4288585 (= (content!14166 lt!2565812) z!3189))))

(assert (= (and d!2226392 res!2911611) b!7135813))

(declare-fun m!7852066 () Bool)

(assert (=> d!2226392 m!7852066))

(declare-fun m!7852068 () Bool)

(assert (=> d!2226392 m!7852068))

(declare-fun m!7852070 () Bool)

(assert (=> b!7135813 m!7852070))

(assert (=> b!7135564 d!2226392))

(declare-fun d!2226394 () Bool)

(declare-fun res!2911616 () Bool)

(declare-fun e!4288590 () Bool)

(assert (=> d!2226394 (=> res!2911616 e!4288590)))

(assert (=> d!2226394 (= res!2911616 ((_ is Nil!69200) (exprs!7617 lt!2565740)))))

(assert (=> d!2226394 (= (forall!16966 (exprs!7617 lt!2565740) lambda!433570) e!4288590)))

(declare-fun b!7135818 () Bool)

(declare-fun e!4288591 () Bool)

(assert (=> b!7135818 (= e!4288590 e!4288591)))

(declare-fun res!2911617 () Bool)

(assert (=> b!7135818 (=> (not res!2911617) (not e!4288591))))

(assert (=> b!7135818 (= res!2911617 (dynLambda!28146 lambda!433570 (h!75648 (exprs!7617 lt!2565740))))))

(declare-fun b!7135819 () Bool)

(assert (=> b!7135819 (= e!4288591 (forall!16966 (t!383341 (exprs!7617 lt!2565740)) lambda!433570))))

(assert (= (and d!2226394 (not res!2911616)) b!7135818))

(assert (= (and b!7135818 res!2911617) b!7135819))

(declare-fun b_lambda!272275 () Bool)

(assert (=> (not b_lambda!272275) (not b!7135818)))

(declare-fun m!7852072 () Bool)

(assert (=> b!7135818 m!7852072))

(declare-fun m!7852074 () Bool)

(assert (=> b!7135819 m!7852074))

(assert (=> b!7135563 d!2226394))

(declare-fun b!7135833 () Bool)

(declare-fun e!4288594 () Bool)

(declare-fun tp!1967323 () Bool)

(declare-fun tp!1967325 () Bool)

(assert (=> b!7135833 (= e!4288594 (and tp!1967323 tp!1967325))))

(declare-fun b!7135830 () Bool)

(assert (=> b!7135830 (= e!4288594 tp_is_empty!45883)))

(assert (=> b!7135561 (= tp!1967261 e!4288594)))

(declare-fun b!7135832 () Bool)

(declare-fun tp!1967322 () Bool)

(assert (=> b!7135832 (= e!4288594 tp!1967322)))

(declare-fun b!7135831 () Bool)

(declare-fun tp!1967324 () Bool)

(declare-fun tp!1967321 () Bool)

(assert (=> b!7135831 (= e!4288594 (and tp!1967324 tp!1967321))))

(assert (= (and b!7135561 ((_ is ElementMatch!18123) (reg!18452 r!11483))) b!7135830))

(assert (= (and b!7135561 ((_ is Concat!26968) (reg!18452 r!11483))) b!7135831))

(assert (= (and b!7135561 ((_ is Star!18123) (reg!18452 r!11483))) b!7135832))

(assert (= (and b!7135561 ((_ is Union!18123) (reg!18452 r!11483))) b!7135833))

(declare-fun condSetEmpty!52361 () Bool)

(assert (=> setNonEmpty!52355 (= condSetEmpty!52361 (= setRest!52355 ((as const (Array Context!14234 Bool)) false)))))

(declare-fun setRes!52361 () Bool)

(assert (=> setNonEmpty!52355 (= tp!1967259 setRes!52361)))

(declare-fun setIsEmpty!52361 () Bool)

(assert (=> setIsEmpty!52361 setRes!52361))

(declare-fun e!4288597 () Bool)

(declare-fun setElem!52361 () Context!14234)

(declare-fun tp!1967331 () Bool)

(declare-fun setNonEmpty!52361 () Bool)

(assert (=> setNonEmpty!52361 (= setRes!52361 (and tp!1967331 (inv!88371 setElem!52361) e!4288597))))

(declare-fun setRest!52361 () (InoxSet Context!14234))

(assert (=> setNonEmpty!52361 (= setRest!52355 ((_ map or) (store ((as const (Array Context!14234 Bool)) false) setElem!52361 true) setRest!52361))))

(declare-fun b!7135838 () Bool)

(declare-fun tp!1967330 () Bool)

(assert (=> b!7135838 (= e!4288597 tp!1967330)))

(assert (= (and setNonEmpty!52355 condSetEmpty!52361) setIsEmpty!52361))

(assert (= (and setNonEmpty!52355 (not condSetEmpty!52361)) setNonEmpty!52361))

(assert (= setNonEmpty!52361 b!7135838))

(declare-fun m!7852076 () Bool)

(assert (=> setNonEmpty!52361 m!7852076))

(declare-fun b!7135842 () Bool)

(declare-fun e!4288598 () Bool)

(declare-fun tp!1967334 () Bool)

(declare-fun tp!1967336 () Bool)

(assert (=> b!7135842 (= e!4288598 (and tp!1967334 tp!1967336))))

(declare-fun b!7135839 () Bool)

(assert (=> b!7135839 (= e!4288598 tp_is_empty!45883)))

(assert (=> b!7135570 (= tp!1967260 e!4288598)))

(declare-fun b!7135841 () Bool)

(declare-fun tp!1967333 () Bool)

(assert (=> b!7135841 (= e!4288598 tp!1967333)))

(declare-fun b!7135840 () Bool)

(declare-fun tp!1967335 () Bool)

(declare-fun tp!1967332 () Bool)

(assert (=> b!7135840 (= e!4288598 (and tp!1967335 tp!1967332))))

(assert (= (and b!7135570 ((_ is ElementMatch!18123) (regOne!36759 r!11483))) b!7135839))

(assert (= (and b!7135570 ((_ is Concat!26968) (regOne!36759 r!11483))) b!7135840))

(assert (= (and b!7135570 ((_ is Star!18123) (regOne!36759 r!11483))) b!7135841))

(assert (= (and b!7135570 ((_ is Union!18123) (regOne!36759 r!11483))) b!7135842))

(declare-fun b!7135846 () Bool)

(declare-fun e!4288599 () Bool)

(declare-fun tp!1967339 () Bool)

(declare-fun tp!1967341 () Bool)

(assert (=> b!7135846 (= e!4288599 (and tp!1967339 tp!1967341))))

(declare-fun b!7135843 () Bool)

(assert (=> b!7135843 (= e!4288599 tp_is_empty!45883)))

(assert (=> b!7135570 (= tp!1967263 e!4288599)))

(declare-fun b!7135845 () Bool)

(declare-fun tp!1967338 () Bool)

(assert (=> b!7135845 (= e!4288599 tp!1967338)))

(declare-fun b!7135844 () Bool)

(declare-fun tp!1967340 () Bool)

(declare-fun tp!1967337 () Bool)

(assert (=> b!7135844 (= e!4288599 (and tp!1967340 tp!1967337))))

(assert (= (and b!7135570 ((_ is ElementMatch!18123) (regTwo!36759 r!11483))) b!7135843))

(assert (= (and b!7135570 ((_ is Concat!26968) (regTwo!36759 r!11483))) b!7135844))

(assert (= (and b!7135570 ((_ is Star!18123) (regTwo!36759 r!11483))) b!7135845))

(assert (= (and b!7135570 ((_ is Union!18123) (regTwo!36759 r!11483))) b!7135846))

(declare-fun b!7135850 () Bool)

(declare-fun e!4288600 () Bool)

(declare-fun tp!1967344 () Bool)

(declare-fun tp!1967346 () Bool)

(assert (=> b!7135850 (= e!4288600 (and tp!1967344 tp!1967346))))

(declare-fun b!7135847 () Bool)

(assert (=> b!7135847 (= e!4288600 tp_is_empty!45883)))

(assert (=> b!7135558 (= tp!1967258 e!4288600)))

(declare-fun b!7135849 () Bool)

(declare-fun tp!1967343 () Bool)

(assert (=> b!7135849 (= e!4288600 tp!1967343)))

(declare-fun b!7135848 () Bool)

(declare-fun tp!1967345 () Bool)

(declare-fun tp!1967342 () Bool)

(assert (=> b!7135848 (= e!4288600 (and tp!1967345 tp!1967342))))

(assert (= (and b!7135558 ((_ is ElementMatch!18123) (regOne!36758 r!11483))) b!7135847))

(assert (= (and b!7135558 ((_ is Concat!26968) (regOne!36758 r!11483))) b!7135848))

(assert (= (and b!7135558 ((_ is Star!18123) (regOne!36758 r!11483))) b!7135849))

(assert (= (and b!7135558 ((_ is Union!18123) (regOne!36758 r!11483))) b!7135850))

(declare-fun b!7135854 () Bool)

(declare-fun e!4288601 () Bool)

(declare-fun tp!1967349 () Bool)

(declare-fun tp!1967351 () Bool)

(assert (=> b!7135854 (= e!4288601 (and tp!1967349 tp!1967351))))

(declare-fun b!7135851 () Bool)

(assert (=> b!7135851 (= e!4288601 tp_is_empty!45883)))

(assert (=> b!7135558 (= tp!1967257 e!4288601)))

(declare-fun b!7135853 () Bool)

(declare-fun tp!1967348 () Bool)

(assert (=> b!7135853 (= e!4288601 tp!1967348)))

(declare-fun b!7135852 () Bool)

(declare-fun tp!1967350 () Bool)

(declare-fun tp!1967347 () Bool)

(assert (=> b!7135852 (= e!4288601 (and tp!1967350 tp!1967347))))

(assert (= (and b!7135558 ((_ is ElementMatch!18123) (regTwo!36758 r!11483))) b!7135851))

(assert (= (and b!7135558 ((_ is Concat!26968) (regTwo!36758 r!11483))) b!7135852))

(assert (= (and b!7135558 ((_ is Star!18123) (regTwo!36758 r!11483))) b!7135853))

(assert (= (and b!7135558 ((_ is Union!18123) (regTwo!36758 r!11483))) b!7135854))

(declare-fun b!7135859 () Bool)

(declare-fun e!4288604 () Bool)

(declare-fun tp!1967356 () Bool)

(declare-fun tp!1967357 () Bool)

(assert (=> b!7135859 (= e!4288604 (and tp!1967356 tp!1967357))))

(assert (=> b!7135568 (= tp!1967262 e!4288604)))

(assert (= (and b!7135568 ((_ is Cons!69200) (exprs!7617 setElem!52355))) b!7135859))

(declare-fun b_lambda!272277 () Bool)

(assert (= b_lambda!272273 (or b!7135557 b_lambda!272277)))

(declare-fun bs!1887355 () Bool)

(declare-fun d!2226396 () Bool)

(assert (= bs!1887355 (and d!2226396 b!7135557)))

(assert (=> bs!1887355 (= (dynLambda!28149 lambda!433569 lt!2565806) (= (generalisedConcat!2318 (exprs!7617 lt!2565806)) lt!2565745))))

(declare-fun m!7852078 () Bool)

(assert (=> bs!1887355 m!7852078))

(assert (=> d!2226386 d!2226396))

(declare-fun b_lambda!272279 () Bool)

(assert (= b_lambda!272257 (or b!7135567 b_lambda!272279)))

(declare-fun bs!1887356 () Bool)

(declare-fun d!2226398 () Bool)

(assert (= bs!1887356 (and d!2226398 b!7135567)))

(assert (=> bs!1887356 (= (dynLambda!28146 lambda!433568 (h!75648 lt!2565744)) (nullable!7643 (h!75648 lt!2565744)))))

(declare-fun m!7852080 () Bool)

(assert (=> bs!1887356 m!7852080))

(assert (=> b!7135645 d!2226398))

(declare-fun b_lambda!272281 () Bool)

(assert (= b_lambda!272259 (or b!7135567 b_lambda!272281)))

(declare-fun bs!1887357 () Bool)

(declare-fun d!2226400 () Bool)

(assert (= bs!1887357 (and d!2226400 b!7135567)))

(assert (=> bs!1887357 (= (dynLambda!28146 lambda!433568 lt!2565772) (nullable!7643 lt!2565772))))

(declare-fun m!7852082 () Bool)

(assert (=> bs!1887357 m!7852082))

(assert (=> d!2226338 d!2226400))

(declare-fun b_lambda!272283 () Bool)

(assert (= b_lambda!272275 (or b!7135563 b_lambda!272283)))

(declare-fun bs!1887358 () Bool)

(declare-fun d!2226402 () Bool)

(assert (= bs!1887358 (and d!2226402 b!7135563)))

(assert (=> bs!1887358 (= (dynLambda!28146 lambda!433570 (h!75648 (exprs!7617 lt!2565740))) (validRegex!9290 (h!75648 (exprs!7617 lt!2565740))))))

(declare-fun m!7852084 () Bool)

(assert (=> bs!1887358 m!7852084))

(assert (=> b!7135818 d!2226402))

(check-sat (not b!7135779) (not b!7135845) (not b!7135852) (not b_lambda!272281) (not b!7135854) (not b!7135831) (not d!2226378) (not b!7135838) (not b_lambda!272283) (not b!7135844) (not b!7135808) (not b!7135833) (not b!7135765) (not b!7135813) (not b_lambda!272277) (not d!2226392) (not d!2226382) (not d!2226346) (not bs!1887356) (not d!2226338) (not b!7135649) (not b!7135846) (not d!2226390) (not d!2226350) (not d!2226368) (not bm!650959) (not b!7135766) (not setNonEmpty!52361) (not b!7135819) (not b!7135848) (not bs!1887358) (not d!2226380) (not b!7135771) (not b!7135770) (not d!2226356) (not b!7135842) (not b!7135596) (not bs!1887357) (not b_lambda!272279) tp_is_empty!45883 (not b!7135859) (not bm!650958) (not b!7135646) (not b!7135768) (not d!2226336) (not d!2226330) (not d!2226384) (not d!2226362) (not b!7135772) (not b!7135647) (not b!7135841) (not b!7135849) (not d!2226386) (not b!7135850) (not b!7135840) (not b!7135832) (not bs!1887355) (not b!7135853) (not b!7135769))
(check-sat)
(get-model)

(declare-fun d!2226516 () Bool)

(assert (=> d!2226516 (= (nullable!7643 (h!75648 lt!2565744)) (nullableFct!2971 (h!75648 lt!2565744)))))

(declare-fun bs!1887476 () Bool)

(assert (= bs!1887476 d!2226516))

(declare-fun m!7852326 () Bool)

(assert (=> bs!1887476 m!7852326))

(assert (=> bs!1887356 d!2226516))

(declare-fun b!7136177 () Bool)

(declare-fun e!4288794 () Bool)

(assert (=> b!7136177 (= e!4288794 (dynLambda!28146 lambda!433568 (h!75648 (t!383341 lt!2565744))))))

(declare-fun b!7136178 () Bool)

(declare-fun lt!2565832 () Unit!163098)

(declare-fun Unit!163104 () Unit!163098)

(assert (=> b!7136178 (= lt!2565832 Unit!163104)))

(assert (=> b!7136178 false))

(declare-fun e!4288791 () Regex!18123)

(assert (=> b!7136178 (= e!4288791 (head!14486 (t!383341 lt!2565744)))))

(declare-fun b!7136179 () Bool)

(declare-fun e!4288793 () Bool)

(declare-fun lt!2565831 () Regex!18123)

(assert (=> b!7136179 (= e!4288793 (contains!20563 (t!383341 lt!2565744) lt!2565831))))

(declare-fun d!2226518 () Bool)

(assert (=> d!2226518 e!4288793))

(declare-fun res!2911723 () Bool)

(assert (=> d!2226518 (=> (not res!2911723) (not e!4288793))))

(assert (=> d!2226518 (= res!2911723 (dynLambda!28146 lambda!433568 lt!2565831))))

(declare-fun e!4288792 () Regex!18123)

(assert (=> d!2226518 (= lt!2565831 e!4288792)))

(declare-fun c!1330813 () Bool)

(assert (=> d!2226518 (= c!1330813 e!4288794)))

(declare-fun res!2911722 () Bool)

(assert (=> d!2226518 (=> (not res!2911722) (not e!4288794))))

(assert (=> d!2226518 (= res!2911722 ((_ is Cons!69200) (t!383341 lt!2565744)))))

(assert (=> d!2226518 (exists!3860 (t!383341 lt!2565744) lambda!433568)))

(assert (=> d!2226518 (= (getWitness!1874 (t!383341 lt!2565744) lambda!433568) lt!2565831)))

(declare-fun b!7136180 () Bool)

(assert (=> b!7136180 (= e!4288792 e!4288791)))

(declare-fun c!1330812 () Bool)

(assert (=> b!7136180 (= c!1330812 ((_ is Cons!69200) (t!383341 lt!2565744)))))

(declare-fun b!7136181 () Bool)

(assert (=> b!7136181 (= e!4288791 (getWitness!1874 (t!383341 (t!383341 lt!2565744)) lambda!433568))))

(declare-fun b!7136182 () Bool)

(assert (=> b!7136182 (= e!4288792 (h!75648 (t!383341 lt!2565744)))))

(assert (= (and d!2226518 res!2911722) b!7136177))

(assert (= (and d!2226518 c!1330813) b!7136182))

(assert (= (and d!2226518 (not c!1330813)) b!7136180))

(assert (= (and b!7136180 c!1330812) b!7136181))

(assert (= (and b!7136180 (not c!1330812)) b!7136178))

(assert (= (and d!2226518 res!2911723) b!7136179))

(declare-fun b_lambda!272333 () Bool)

(assert (=> (not b_lambda!272333) (not b!7136177)))

(declare-fun b_lambda!272335 () Bool)

(assert (=> (not b_lambda!272335) (not d!2226518)))

(declare-fun m!7852328 () Bool)

(assert (=> b!7136179 m!7852328))

(declare-fun m!7852330 () Bool)

(assert (=> b!7136178 m!7852330))

(declare-fun m!7852332 () Bool)

(assert (=> b!7136177 m!7852332))

(declare-fun m!7852334 () Bool)

(assert (=> d!2226518 m!7852334))

(declare-fun m!7852336 () Bool)

(assert (=> d!2226518 m!7852336))

(declare-fun m!7852338 () Bool)

(assert (=> b!7136181 m!7852338))

(assert (=> b!7135649 d!2226518))

(declare-fun d!2226520 () Bool)

(assert (=> d!2226520 (= (head!14486 lt!2565744) (h!75648 lt!2565744))))

(assert (=> b!7135646 d!2226520))

(declare-fun d!2226522 () Bool)

(assert (=> d!2226522 (= (isEmpty!40047 (t!383341 lt!2565744)) ((_ is Nil!69200) (t!383341 lt!2565744)))))

(assert (=> b!7135771 d!2226522))

(declare-fun d!2226524 () Bool)

(declare-fun lt!2565833 () Bool)

(assert (=> d!2226524 (= lt!2565833 (select (content!14165 lt!2565744) lt!2565772))))

(declare-fun e!4288795 () Bool)

(assert (=> d!2226524 (= lt!2565833 e!4288795)))

(declare-fun res!2911724 () Bool)

(assert (=> d!2226524 (=> (not res!2911724) (not e!4288795))))

(assert (=> d!2226524 (= res!2911724 ((_ is Cons!69200) lt!2565744))))

(assert (=> d!2226524 (= (contains!20563 lt!2565744 lt!2565772) lt!2565833)))

(declare-fun b!7136183 () Bool)

(declare-fun e!4288796 () Bool)

(assert (=> b!7136183 (= e!4288795 e!4288796)))

(declare-fun res!2911725 () Bool)

(assert (=> b!7136183 (=> res!2911725 e!4288796)))

(assert (=> b!7136183 (= res!2911725 (= (h!75648 lt!2565744) lt!2565772))))

(declare-fun b!7136184 () Bool)

(assert (=> b!7136184 (= e!4288796 (contains!20563 (t!383341 lt!2565744) lt!2565772))))

(assert (= (and d!2226524 res!2911724) b!7136183))

(assert (= (and b!7136183 (not res!2911725)) b!7136184))

(assert (=> d!2226524 m!7851910))

(declare-fun m!7852340 () Bool)

(assert (=> d!2226524 m!7852340))

(declare-fun m!7852342 () Bool)

(assert (=> b!7136184 m!7852342))

(assert (=> b!7135647 d!2226524))

(declare-fun d!2226526 () Bool)

(assert (=> d!2226526 (= (isUnion!1507 lt!2565800) ((_ is Union!18123) lt!2565800))))

(assert (=> b!7135772 d!2226526))

(declare-fun d!2226528 () Bool)

(declare-fun res!2911726 () Bool)

(declare-fun e!4288797 () Bool)

(assert (=> d!2226528 (=> res!2911726 e!4288797)))

(assert (=> d!2226528 (= res!2911726 ((_ is Nil!69200) lt!2565803))))

(assert (=> d!2226528 (= (forall!16966 lt!2565803 lambda!433618) e!4288797)))

(declare-fun b!7136185 () Bool)

(declare-fun e!4288798 () Bool)

(assert (=> b!7136185 (= e!4288797 e!4288798)))

(declare-fun res!2911727 () Bool)

(assert (=> b!7136185 (=> (not res!2911727) (not e!4288798))))

(assert (=> b!7136185 (= res!2911727 (dynLambda!28146 lambda!433618 (h!75648 lt!2565803)))))

(declare-fun b!7136186 () Bool)

(assert (=> b!7136186 (= e!4288798 (forall!16966 (t!383341 lt!2565803) lambda!433618))))

(assert (= (and d!2226528 (not res!2911726)) b!7136185))

(assert (= (and b!7136185 res!2911727) b!7136186))

(declare-fun b_lambda!272337 () Bool)

(assert (=> (not b_lambda!272337) (not b!7136185)))

(declare-fun m!7852344 () Bool)

(assert (=> b!7136185 m!7852344))

(declare-fun m!7852346 () Bool)

(assert (=> b!7136186 m!7852346))

(assert (=> d!2226384 d!2226528))

(declare-fun d!2226530 () Bool)

(assert (=> d!2226530 (= (nullable!7643 lt!2565772) (nullableFct!2971 lt!2565772))))

(declare-fun bs!1887477 () Bool)

(assert (= bs!1887477 d!2226530))

(declare-fun m!7852348 () Bool)

(assert (=> bs!1887477 m!7852348))

(assert (=> bs!1887357 d!2226530))

(declare-fun b!7136199 () Bool)

(declare-fun e!4288809 () Bool)

(declare-fun lt!2565839 () Context!14234)

(declare-fun contains!20565 (List!69325 Context!14234) Bool)

(assert (=> b!7136199 (= e!4288809 (contains!20565 (toList!11154 z!3189) lt!2565839))))

(declare-fun b!7136200 () Bool)

(declare-fun lt!2565838 () Unit!163098)

(declare-fun Unit!163105 () Unit!163098)

(assert (=> b!7136200 (= lt!2565838 Unit!163105)))

(assert (=> b!7136200 false))

(declare-fun e!4288810 () Context!14234)

(declare-fun head!14488 (List!69325) Context!14234)

(assert (=> b!7136200 (= e!4288810 (head!14488 (toList!11154 z!3189)))))

(declare-fun b!7136201 () Bool)

(assert (=> b!7136201 (= e!4288810 (getWitness!1876 (t!383342 (toList!11154 z!3189)) lambda!433569))))

(declare-fun b!7136202 () Bool)

(declare-fun e!4288808 () Bool)

(assert (=> b!7136202 (= e!4288808 (dynLambda!28149 lambda!433569 (h!75649 (toList!11154 z!3189))))))

(declare-fun b!7136203 () Bool)

(declare-fun e!4288807 () Context!14234)

(assert (=> b!7136203 (= e!4288807 (h!75649 (toList!11154 z!3189)))))

(declare-fun d!2226532 () Bool)

(assert (=> d!2226532 e!4288809))

(declare-fun res!2911733 () Bool)

(assert (=> d!2226532 (=> (not res!2911733) (not e!4288809))))

(assert (=> d!2226532 (= res!2911733 (dynLambda!28149 lambda!433569 lt!2565839))))

(assert (=> d!2226532 (= lt!2565839 e!4288807)))

(declare-fun c!1330818 () Bool)

(assert (=> d!2226532 (= c!1330818 e!4288808)))

(declare-fun res!2911732 () Bool)

(assert (=> d!2226532 (=> (not res!2911732) (not e!4288808))))

(assert (=> d!2226532 (= res!2911732 ((_ is Cons!69201) (toList!11154 z!3189)))))

(assert (=> d!2226532 (exists!3859 (toList!11154 z!3189) lambda!433569)))

(assert (=> d!2226532 (= (getWitness!1876 (toList!11154 z!3189) lambda!433569) lt!2565839)))

(declare-fun b!7136204 () Bool)

(assert (=> b!7136204 (= e!4288807 e!4288810)))

(declare-fun c!1330819 () Bool)

(assert (=> b!7136204 (= c!1330819 ((_ is Cons!69201) (toList!11154 z!3189)))))

(assert (= (and d!2226532 res!2911732) b!7136202))

(assert (= (and d!2226532 c!1330818) b!7136203))

(assert (= (and d!2226532 (not c!1330818)) b!7136204))

(assert (= (and b!7136204 c!1330819) b!7136201))

(assert (= (and b!7136204 (not c!1330819)) b!7136200))

(assert (= (and d!2226532 res!2911733) b!7136199))

(declare-fun b_lambda!272339 () Bool)

(assert (=> (not b_lambda!272339) (not b!7136202)))

(declare-fun b_lambda!272341 () Bool)

(assert (=> (not b_lambda!272341) (not d!2226532)))

(declare-fun m!7852350 () Bool)

(assert (=> b!7136201 m!7852350))

(assert (=> b!7136200 m!7851874))

(declare-fun m!7852352 () Bool)

(assert (=> b!7136200 m!7852352))

(declare-fun m!7852354 () Bool)

(assert (=> b!7136202 m!7852354))

(declare-fun m!7852356 () Bool)

(assert (=> d!2226532 m!7852356))

(assert (=> d!2226532 m!7851874))

(assert (=> d!2226532 m!7851980))

(assert (=> b!7136199 m!7851874))

(declare-fun m!7852358 () Bool)

(assert (=> b!7136199 m!7852358))

(assert (=> d!2226386 d!2226532))

(assert (=> d!2226386 d!2226392))

(assert (=> d!2226386 d!2226356))

(declare-fun bs!1887478 () Bool)

(declare-fun d!2226534 () Bool)

(assert (= bs!1887478 (and d!2226534 b!7135557)))

(declare-fun lambda!433636 () Int)

(assert (=> bs!1887478 (not (= lambda!433636 lambda!433569))))

(declare-fun bs!1887479 () Bool)

(assert (= bs!1887479 (and d!2226534 d!2226362)))

(assert (=> bs!1887479 (= (= lambda!433606 lambda!433569) (= lambda!433636 lambda!433597))))

(declare-fun bs!1887480 () Bool)

(assert (= bs!1887480 (and d!2226534 d!2226368)))

(assert (=> bs!1887480 (not (= lambda!433636 lambda!433606))))

(assert (=> d!2226534 true))

(assert (=> d!2226534 (< (dynLambda!28148 order!28509 lambda!433606) (dynLambda!28148 order!28509 lambda!433636))))

(assert (=> d!2226534 (= (exists!3859 lt!2565746 lambda!433606) (not (forall!16968 lt!2565746 lambda!433636)))))

(declare-fun bs!1887481 () Bool)

(assert (= bs!1887481 d!2226534))

(declare-fun m!7852360 () Bool)

(assert (=> bs!1887481 m!7852360))

(assert (=> d!2226368 d!2226534))

(declare-fun bs!1887482 () Bool)

(declare-fun d!2226536 () Bool)

(assert (= bs!1887482 (and d!2226536 b!7135557)))

(declare-fun lambda!433639 () Int)

(assert (=> bs!1887482 (= lambda!433639 lambda!433569)))

(declare-fun bs!1887483 () Bool)

(assert (= bs!1887483 (and d!2226536 d!2226362)))

(assert (=> bs!1887483 (not (= lambda!433639 lambda!433597))))

(declare-fun bs!1887484 () Bool)

(assert (= bs!1887484 (and d!2226536 d!2226368)))

(assert (=> bs!1887484 (= lambda!433639 lambda!433606)))

(declare-fun bs!1887485 () Bool)

(assert (= bs!1887485 (and d!2226536 d!2226534)))

(assert (=> bs!1887485 (not (= lambda!433639 lambda!433636))))

(assert (=> d!2226536 true))

(assert (=> d!2226536 (exists!3859 lt!2565746 lambda!433639)))

(assert (=> d!2226536 true))

(declare-fun _$43!103 () Unit!163098)

(assert (=> d!2226536 (= (choose!55162 lt!2565746 lt!2565745) _$43!103)))

(declare-fun bs!1887486 () Bool)

(assert (= bs!1887486 d!2226536))

(declare-fun m!7852362 () Bool)

(assert (=> bs!1887486 m!7852362))

(assert (=> d!2226368 d!2226536))

(declare-fun d!2226538 () Bool)

(declare-fun lt!2565840 () Bool)

(assert (=> d!2226538 (= lt!2565840 (select (content!14165 (unfocusZipperList!2164 lt!2565746)) lt!2565745))))

(declare-fun e!4288811 () Bool)

(assert (=> d!2226538 (= lt!2565840 e!4288811)))

(declare-fun res!2911734 () Bool)

(assert (=> d!2226538 (=> (not res!2911734) (not e!4288811))))

(assert (=> d!2226538 (= res!2911734 ((_ is Cons!69200) (unfocusZipperList!2164 lt!2565746)))))

(assert (=> d!2226538 (= (contains!20563 (unfocusZipperList!2164 lt!2565746) lt!2565745) lt!2565840)))

(declare-fun b!7136205 () Bool)

(declare-fun e!4288812 () Bool)

(assert (=> b!7136205 (= e!4288811 e!4288812)))

(declare-fun res!2911735 () Bool)

(assert (=> b!7136205 (=> res!2911735 e!4288812)))

(assert (=> b!7136205 (= res!2911735 (= (h!75648 (unfocusZipperList!2164 lt!2565746)) lt!2565745))))

(declare-fun b!7136206 () Bool)

(assert (=> b!7136206 (= e!4288812 (contains!20563 (t!383341 (unfocusZipperList!2164 lt!2565746)) lt!2565745))))

(assert (= (and d!2226538 res!2911734) b!7136205))

(assert (= (and b!7136205 (not res!2911735)) b!7136206))

(assert (=> d!2226538 m!7851868))

(declare-fun m!7852364 () Bool)

(assert (=> d!2226538 m!7852364))

(declare-fun m!7852366 () Bool)

(assert (=> d!2226538 m!7852366))

(declare-fun m!7852368 () Bool)

(assert (=> b!7136206 m!7852368))

(assert (=> d!2226368 d!2226538))

(assert (=> d!2226368 d!2226384))

(declare-fun b!7136207 () Bool)

(declare-fun e!4288817 () Bool)

(declare-fun e!4288815 () Bool)

(assert (=> b!7136207 (= e!4288817 e!4288815)))

(declare-fun c!1330822 () Bool)

(assert (=> b!7136207 (= c!1330822 ((_ is Star!18123) lt!2565809))))

(declare-fun b!7136208 () Bool)

(declare-fun res!2911739 () Bool)

(declare-fun e!4288819 () Bool)

(assert (=> b!7136208 (=> res!2911739 e!4288819)))

(assert (=> b!7136208 (= res!2911739 (not ((_ is Concat!26968) lt!2565809)))))

(declare-fun e!4288813 () Bool)

(assert (=> b!7136208 (= e!4288813 e!4288819)))

(declare-fun b!7136209 () Bool)

(declare-fun res!2911736 () Bool)

(declare-fun e!4288814 () Bool)

(assert (=> b!7136209 (=> (not res!2911736) (not e!4288814))))

(declare-fun call!650988 () Bool)

(assert (=> b!7136209 (= res!2911736 call!650988)))

(assert (=> b!7136209 (= e!4288813 e!4288814)))

(declare-fun b!7136210 () Bool)

(declare-fun e!4288818 () Bool)

(declare-fun call!650989 () Bool)

(assert (=> b!7136210 (= e!4288818 call!650989)))

(declare-fun b!7136211 () Bool)

(declare-fun e!4288816 () Bool)

(declare-fun call!650990 () Bool)

(assert (=> b!7136211 (= e!4288816 call!650990)))

(declare-fun b!7136212 () Bool)

(assert (=> b!7136212 (= e!4288815 e!4288813)))

(declare-fun c!1330823 () Bool)

(assert (=> b!7136212 (= c!1330823 ((_ is Union!18123) lt!2565809))))

(declare-fun bm!650983 () Bool)

(assert (=> bm!650983 (= call!650988 call!650989)))

(declare-fun b!7136213 () Bool)

(assert (=> b!7136213 (= e!4288815 e!4288818)))

(declare-fun res!2911740 () Bool)

(assert (=> b!7136213 (= res!2911740 (not (nullable!7643 (reg!18452 lt!2565809))))))

(assert (=> b!7136213 (=> (not res!2911740) (not e!4288818))))

(declare-fun bm!650984 () Bool)

(assert (=> bm!650984 (= call!650990 (validRegex!9290 (ite c!1330823 (regTwo!36759 lt!2565809) (regTwo!36758 lt!2565809))))))

(declare-fun b!7136214 () Bool)

(assert (=> b!7136214 (= e!4288819 e!4288816)))

(declare-fun res!2911738 () Bool)

(assert (=> b!7136214 (=> (not res!2911738) (not e!4288816))))

(assert (=> b!7136214 (= res!2911738 call!650988)))

(declare-fun d!2226540 () Bool)

(declare-fun res!2911737 () Bool)

(assert (=> d!2226540 (=> res!2911737 e!4288817)))

(assert (=> d!2226540 (= res!2911737 ((_ is ElementMatch!18123) lt!2565809))))

(assert (=> d!2226540 (= (validRegex!9290 lt!2565809) e!4288817)))

(declare-fun b!7136215 () Bool)

(assert (=> b!7136215 (= e!4288814 call!650990)))

(declare-fun bm!650985 () Bool)

(assert (=> bm!650985 (= call!650989 (validRegex!9290 (ite c!1330822 (reg!18452 lt!2565809) (ite c!1330823 (regOne!36759 lt!2565809) (regOne!36758 lt!2565809)))))))

(assert (= (and d!2226540 (not res!2911737)) b!7136207))

(assert (= (and b!7136207 c!1330822) b!7136213))

(assert (= (and b!7136207 (not c!1330822)) b!7136212))

(assert (= (and b!7136213 res!2911740) b!7136210))

(assert (= (and b!7136212 c!1330823) b!7136209))

(assert (= (and b!7136212 (not c!1330823)) b!7136208))

(assert (= (and b!7136209 res!2911736) b!7136215))

(assert (= (and b!7136208 (not res!2911739)) b!7136214))

(assert (= (and b!7136214 res!2911738) b!7136211))

(assert (= (or b!7136215 b!7136211) bm!650984))

(assert (= (or b!7136209 b!7136214) bm!650983))

(assert (= (or b!7136210 bm!650983) bm!650985))

(declare-fun m!7852370 () Bool)

(assert (=> b!7136213 m!7852370))

(declare-fun m!7852372 () Bool)

(assert (=> bm!650984 m!7852372))

(declare-fun m!7852374 () Bool)

(assert (=> bm!650985 m!7852374))

(assert (=> d!2226390 d!2226540))

(declare-fun bs!1887487 () Bool)

(declare-fun d!2226542 () Bool)

(assert (= bs!1887487 (and d!2226542 b!7135563)))

(declare-fun lambda!433640 () Int)

(assert (=> bs!1887487 (= lambda!433640 lambda!433570)))

(declare-fun bs!1887488 () Bool)

(assert (= bs!1887488 (and d!2226542 b!7135567)))

(assert (=> bs!1887488 (not (= lambda!433640 lambda!433568))))

(declare-fun bs!1887489 () Bool)

(assert (= bs!1887489 (and d!2226542 d!2226382)))

(assert (=> bs!1887489 (= lambda!433640 lambda!433615)))

(declare-fun bs!1887490 () Bool)

(assert (= bs!1887490 (and d!2226542 d!2226346)))

(assert (=> bs!1887490 (= lambda!433640 lambda!433588)))

(declare-fun bs!1887491 () Bool)

(assert (= bs!1887491 (and d!2226542 d!2226380)))

(assert (=> bs!1887491 (= lambda!433640 lambda!433611)))

(declare-fun bs!1887492 () Bool)

(assert (= bs!1887492 (and d!2226542 d!2226384)))

(assert (=> bs!1887492 (= lambda!433640 lambda!433618)))

(assert (=> bs!1887491 (not (= lambda!433640 lambda!433612))))

(declare-fun bs!1887493 () Bool)

(assert (= bs!1887493 (and d!2226542 d!2226350)))

(assert (=> bs!1887493 (not (= lambda!433640 lambda!433594))))

(declare-fun b!7136216 () Bool)

(declare-fun e!4288823 () Bool)

(declare-fun lt!2565841 () Regex!18123)

(assert (=> b!7136216 (= e!4288823 (= lt!2565841 (head!14486 (unfocusZipperList!2164 lt!2565746))))))

(declare-fun e!4288822 () Bool)

(assert (=> d!2226542 e!4288822))

(declare-fun res!2911741 () Bool)

(assert (=> d!2226542 (=> (not res!2911741) (not e!4288822))))

(assert (=> d!2226542 (= res!2911741 (validRegex!9290 lt!2565841))))

(declare-fun e!4288820 () Regex!18123)

(assert (=> d!2226542 (= lt!2565841 e!4288820)))

(declare-fun c!1330826 () Bool)

(declare-fun e!4288821 () Bool)

(assert (=> d!2226542 (= c!1330826 e!4288821)))

(declare-fun res!2911742 () Bool)

(assert (=> d!2226542 (=> (not res!2911742) (not e!4288821))))

(assert (=> d!2226542 (= res!2911742 ((_ is Cons!69200) (unfocusZipperList!2164 lt!2565746)))))

(assert (=> d!2226542 (forall!16966 (unfocusZipperList!2164 lt!2565746) lambda!433640)))

(assert (=> d!2226542 (= (generalisedUnion!2628 (unfocusZipperList!2164 lt!2565746)) lt!2565841)))

(declare-fun b!7136217 () Bool)

(declare-fun e!4288825 () Regex!18123)

(assert (=> b!7136217 (= e!4288825 (Union!18123 (h!75648 (unfocusZipperList!2164 lt!2565746)) (generalisedUnion!2628 (t!383341 (unfocusZipperList!2164 lt!2565746)))))))

(declare-fun b!7136218 () Bool)

(assert (=> b!7136218 (= e!4288820 (h!75648 (unfocusZipperList!2164 lt!2565746)))))

(declare-fun b!7136219 () Bool)

(declare-fun e!4288824 () Bool)

(assert (=> b!7136219 (= e!4288824 e!4288823)))

(declare-fun c!1330827 () Bool)

(assert (=> b!7136219 (= c!1330827 (isEmpty!40047 (tail!13958 (unfocusZipperList!2164 lt!2565746))))))

(declare-fun b!7136220 () Bool)

(assert (=> b!7136220 (= e!4288822 e!4288824)))

(declare-fun c!1330824 () Bool)

(assert (=> b!7136220 (= c!1330824 (isEmpty!40047 (unfocusZipperList!2164 lt!2565746)))))

(declare-fun b!7136221 () Bool)

(assert (=> b!7136221 (= e!4288824 (isEmptyLang!2079 lt!2565841))))

(declare-fun b!7136222 () Bool)

(assert (=> b!7136222 (= e!4288821 (isEmpty!40047 (t!383341 (unfocusZipperList!2164 lt!2565746))))))

(declare-fun b!7136223 () Bool)

(assert (=> b!7136223 (= e!4288823 (isUnion!1507 lt!2565841))))

(declare-fun b!7136224 () Bool)

(assert (=> b!7136224 (= e!4288825 EmptyLang!18123)))

(declare-fun b!7136225 () Bool)

(assert (=> b!7136225 (= e!4288820 e!4288825)))

(declare-fun c!1330825 () Bool)

(assert (=> b!7136225 (= c!1330825 ((_ is Cons!69200) (unfocusZipperList!2164 lt!2565746)))))

(assert (= (and d!2226542 res!2911742) b!7136222))

(assert (= (and d!2226542 c!1330826) b!7136218))

(assert (= (and d!2226542 (not c!1330826)) b!7136225))

(assert (= (and b!7136225 c!1330825) b!7136217))

(assert (= (and b!7136225 (not c!1330825)) b!7136224))

(assert (= (and d!2226542 res!2911741) b!7136220))

(assert (= (and b!7136220 c!1330824) b!7136221))

(assert (= (and b!7136220 (not c!1330824)) b!7136219))

(assert (= (and b!7136219 c!1330827) b!7136216))

(assert (= (and b!7136219 (not c!1330827)) b!7136223))

(assert (=> b!7136219 m!7851868))

(declare-fun m!7852376 () Bool)

(assert (=> b!7136219 m!7852376))

(assert (=> b!7136219 m!7852376))

(declare-fun m!7852378 () Bool)

(assert (=> b!7136219 m!7852378))

(declare-fun m!7852380 () Bool)

(assert (=> b!7136217 m!7852380))

(declare-fun m!7852382 () Bool)

(assert (=> b!7136223 m!7852382))

(assert (=> b!7136220 m!7851868))

(declare-fun m!7852384 () Bool)

(assert (=> b!7136220 m!7852384))

(assert (=> b!7136216 m!7851868))

(declare-fun m!7852386 () Bool)

(assert (=> b!7136216 m!7852386))

(declare-fun m!7852388 () Bool)

(assert (=> b!7136222 m!7852388))

(declare-fun m!7852390 () Bool)

(assert (=> d!2226542 m!7852390))

(assert (=> d!2226542 m!7851868))

(declare-fun m!7852392 () Bool)

(assert (=> d!2226542 m!7852392))

(declare-fun m!7852394 () Bool)

(assert (=> b!7136221 m!7852394))

(assert (=> d!2226390 d!2226542))

(assert (=> d!2226390 d!2226384))

(declare-fun bm!650990 () Bool)

(declare-fun call!650996 () Bool)

(declare-fun c!1330830 () Bool)

(assert (=> bm!650990 (= call!650996 (nullable!7643 (ite c!1330830 (regTwo!36759 lt!2565743) (regTwo!36758 lt!2565743))))))

(declare-fun b!7136240 () Bool)

(declare-fun e!4288841 () Bool)

(declare-fun e!4288840 () Bool)

(assert (=> b!7136240 (= e!4288841 e!4288840)))

(declare-fun res!2911753 () Bool)

(assert (=> b!7136240 (=> (not res!2911753) (not e!4288840))))

(assert (=> b!7136240 (= res!2911753 (and (not ((_ is EmptyLang!18123) lt!2565743)) (not ((_ is ElementMatch!18123) lt!2565743))))))

(declare-fun bm!650991 () Bool)

(declare-fun call!650995 () Bool)

(assert (=> bm!650991 (= call!650995 (nullable!7643 (ite c!1330830 (regOne!36759 lt!2565743) (regOne!36758 lt!2565743))))))

(declare-fun d!2226544 () Bool)

(declare-fun res!2911755 () Bool)

(assert (=> d!2226544 (=> res!2911755 e!4288841)))

(assert (=> d!2226544 (= res!2911755 ((_ is EmptyExpr!18123) lt!2565743))))

(assert (=> d!2226544 (= (nullableFct!2971 lt!2565743) e!4288841)))

(declare-fun b!7136241 () Bool)

(declare-fun e!4288843 () Bool)

(assert (=> b!7136241 (= e!4288840 e!4288843)))

(declare-fun res!2911754 () Bool)

(assert (=> b!7136241 (=> res!2911754 e!4288843)))

(assert (=> b!7136241 (= res!2911754 ((_ is Star!18123) lt!2565743))))

(declare-fun b!7136242 () Bool)

(declare-fun e!4288838 () Bool)

(declare-fun e!4288842 () Bool)

(assert (=> b!7136242 (= e!4288838 e!4288842)))

(declare-fun res!2911757 () Bool)

(assert (=> b!7136242 (= res!2911757 call!650995)))

(assert (=> b!7136242 (=> (not res!2911757) (not e!4288842))))

(declare-fun b!7136243 () Bool)

(assert (=> b!7136243 (= e!4288843 e!4288838)))

(assert (=> b!7136243 (= c!1330830 ((_ is Union!18123) lt!2565743))))

(declare-fun b!7136244 () Bool)

(declare-fun e!4288839 () Bool)

(assert (=> b!7136244 (= e!4288839 call!650996)))

(declare-fun b!7136245 () Bool)

(assert (=> b!7136245 (= e!4288842 call!650996)))

(declare-fun b!7136246 () Bool)

(assert (=> b!7136246 (= e!4288838 e!4288839)))

(declare-fun res!2911756 () Bool)

(assert (=> b!7136246 (= res!2911756 call!650995)))

(assert (=> b!7136246 (=> res!2911756 e!4288839)))

(assert (= (and d!2226544 (not res!2911755)) b!7136240))

(assert (= (and b!7136240 res!2911753) b!7136241))

(assert (= (and b!7136241 (not res!2911754)) b!7136243))

(assert (= (and b!7136243 c!1330830) b!7136246))

(assert (= (and b!7136243 (not c!1330830)) b!7136242))

(assert (= (and b!7136246 (not res!2911756)) b!7136244))

(assert (= (and b!7136242 res!2911757) b!7136245))

(assert (= (or b!7136244 b!7136245) bm!650990))

(assert (= (or b!7136246 b!7136242) bm!650991))

(declare-fun m!7852396 () Bool)

(assert (=> bm!650990 m!7852396))

(declare-fun m!7852398 () Bool)

(assert (=> bm!650991 m!7852398))

(assert (=> d!2226378 d!2226544))

(declare-fun bm!650992 () Bool)

(declare-fun call!650998 () Bool)

(declare-fun c!1330831 () Bool)

(assert (=> bm!650992 (= call!650998 (nullable!7643 (ite c!1330831 (regTwo!36759 lt!2565745) (regTwo!36758 lt!2565745))))))

(declare-fun b!7136247 () Bool)

(declare-fun e!4288847 () Bool)

(declare-fun e!4288846 () Bool)

(assert (=> b!7136247 (= e!4288847 e!4288846)))

(declare-fun res!2911758 () Bool)

(assert (=> b!7136247 (=> (not res!2911758) (not e!4288846))))

(assert (=> b!7136247 (= res!2911758 (and (not ((_ is EmptyLang!18123) lt!2565745)) (not ((_ is ElementMatch!18123) lt!2565745))))))

(declare-fun bm!650993 () Bool)

(declare-fun call!650997 () Bool)

(assert (=> bm!650993 (= call!650997 (nullable!7643 (ite c!1330831 (regOne!36759 lt!2565745) (regOne!36758 lt!2565745))))))

(declare-fun d!2226546 () Bool)

(declare-fun res!2911760 () Bool)

(assert (=> d!2226546 (=> res!2911760 e!4288847)))

(assert (=> d!2226546 (= res!2911760 ((_ is EmptyExpr!18123) lt!2565745))))

(assert (=> d!2226546 (= (nullableFct!2971 lt!2565745) e!4288847)))

(declare-fun b!7136248 () Bool)

(declare-fun e!4288849 () Bool)

(assert (=> b!7136248 (= e!4288846 e!4288849)))

(declare-fun res!2911759 () Bool)

(assert (=> b!7136248 (=> res!2911759 e!4288849)))

(assert (=> b!7136248 (= res!2911759 ((_ is Star!18123) lt!2565745))))

(declare-fun b!7136249 () Bool)

(declare-fun e!4288844 () Bool)

(declare-fun e!4288848 () Bool)

(assert (=> b!7136249 (= e!4288844 e!4288848)))

(declare-fun res!2911762 () Bool)

(assert (=> b!7136249 (= res!2911762 call!650997)))

(assert (=> b!7136249 (=> (not res!2911762) (not e!4288848))))

(declare-fun b!7136250 () Bool)

(assert (=> b!7136250 (= e!4288849 e!4288844)))

(assert (=> b!7136250 (= c!1330831 ((_ is Union!18123) lt!2565745))))

(declare-fun b!7136251 () Bool)

(declare-fun e!4288845 () Bool)

(assert (=> b!7136251 (= e!4288845 call!650998)))

(declare-fun b!7136252 () Bool)

(assert (=> b!7136252 (= e!4288848 call!650998)))

(declare-fun b!7136253 () Bool)

(assert (=> b!7136253 (= e!4288844 e!4288845)))

(declare-fun res!2911761 () Bool)

(assert (=> b!7136253 (= res!2911761 call!650997)))

(assert (=> b!7136253 (=> res!2911761 e!4288845)))

(assert (= (and d!2226546 (not res!2911760)) b!7136247))

(assert (= (and b!7136247 res!2911758) b!7136248))

(assert (= (and b!7136248 (not res!2911759)) b!7136250))

(assert (= (and b!7136250 c!1330831) b!7136253))

(assert (= (and b!7136250 (not c!1330831)) b!7136249))

(assert (= (and b!7136253 (not res!2911761)) b!7136251))

(assert (= (and b!7136249 res!2911762) b!7136252))

(assert (= (or b!7136251 b!7136252) bm!650992))

(assert (= (or b!7136253 b!7136249) bm!650993))

(declare-fun m!7852400 () Bool)

(assert (=> bm!650992 m!7852400))

(declare-fun m!7852402 () Bool)

(assert (=> bm!650993 m!7852402))

(assert (=> d!2226336 d!2226546))

(declare-fun b!7136254 () Bool)

(declare-fun e!4288854 () Bool)

(declare-fun e!4288852 () Bool)

(assert (=> b!7136254 (= e!4288854 e!4288852)))

(declare-fun c!1330832 () Bool)

(assert (=> b!7136254 (= c!1330832 ((_ is Star!18123) lt!2565800))))

(declare-fun b!7136255 () Bool)

(declare-fun res!2911766 () Bool)

(declare-fun e!4288856 () Bool)

(assert (=> b!7136255 (=> res!2911766 e!4288856)))

(assert (=> b!7136255 (= res!2911766 (not ((_ is Concat!26968) lt!2565800)))))

(declare-fun e!4288850 () Bool)

(assert (=> b!7136255 (= e!4288850 e!4288856)))

(declare-fun b!7136256 () Bool)

(declare-fun res!2911763 () Bool)

(declare-fun e!4288851 () Bool)

(assert (=> b!7136256 (=> (not res!2911763) (not e!4288851))))

(declare-fun call!650999 () Bool)

(assert (=> b!7136256 (= res!2911763 call!650999)))

(assert (=> b!7136256 (= e!4288850 e!4288851)))

(declare-fun b!7136257 () Bool)

(declare-fun e!4288855 () Bool)

(declare-fun call!651000 () Bool)

(assert (=> b!7136257 (= e!4288855 call!651000)))

(declare-fun b!7136258 () Bool)

(declare-fun e!4288853 () Bool)

(declare-fun call!651001 () Bool)

(assert (=> b!7136258 (= e!4288853 call!651001)))

(declare-fun b!7136259 () Bool)

(assert (=> b!7136259 (= e!4288852 e!4288850)))

(declare-fun c!1330833 () Bool)

(assert (=> b!7136259 (= c!1330833 ((_ is Union!18123) lt!2565800))))

(declare-fun bm!650994 () Bool)

(assert (=> bm!650994 (= call!650999 call!651000)))

(declare-fun b!7136260 () Bool)

(assert (=> b!7136260 (= e!4288852 e!4288855)))

(declare-fun res!2911767 () Bool)

(assert (=> b!7136260 (= res!2911767 (not (nullable!7643 (reg!18452 lt!2565800))))))

(assert (=> b!7136260 (=> (not res!2911767) (not e!4288855))))

(declare-fun bm!650995 () Bool)

(assert (=> bm!650995 (= call!651001 (validRegex!9290 (ite c!1330833 (regTwo!36759 lt!2565800) (regTwo!36758 lt!2565800))))))

(declare-fun b!7136261 () Bool)

(assert (=> b!7136261 (= e!4288856 e!4288853)))

(declare-fun res!2911765 () Bool)

(assert (=> b!7136261 (=> (not res!2911765) (not e!4288853))))

(assert (=> b!7136261 (= res!2911765 call!650999)))

(declare-fun d!2226548 () Bool)

(declare-fun res!2911764 () Bool)

(assert (=> d!2226548 (=> res!2911764 e!4288854)))

(assert (=> d!2226548 (= res!2911764 ((_ is ElementMatch!18123) lt!2565800))))

(assert (=> d!2226548 (= (validRegex!9290 lt!2565800) e!4288854)))

(declare-fun b!7136262 () Bool)

(assert (=> b!7136262 (= e!4288851 call!651001)))

(declare-fun bm!650996 () Bool)

(assert (=> bm!650996 (= call!651000 (validRegex!9290 (ite c!1330832 (reg!18452 lt!2565800) (ite c!1330833 (regOne!36759 lt!2565800) (regOne!36758 lt!2565800)))))))

(assert (= (and d!2226548 (not res!2911764)) b!7136254))

(assert (= (and b!7136254 c!1330832) b!7136260))

(assert (= (and b!7136254 (not c!1330832)) b!7136259))

(assert (= (and b!7136260 res!2911767) b!7136257))

(assert (= (and b!7136259 c!1330833) b!7136256))

(assert (= (and b!7136259 (not c!1330833)) b!7136255))

(assert (= (and b!7136256 res!2911763) b!7136262))

(assert (= (and b!7136255 (not res!2911766)) b!7136261))

(assert (= (and b!7136261 res!2911765) b!7136258))

(assert (= (or b!7136262 b!7136258) bm!650995))

(assert (= (or b!7136256 b!7136261) bm!650994))

(assert (= (or b!7136257 bm!650994) bm!650996))

(declare-fun m!7852404 () Bool)

(assert (=> b!7136260 m!7852404))

(declare-fun m!7852406 () Bool)

(assert (=> bm!650995 m!7852406))

(declare-fun m!7852408 () Bool)

(assert (=> bm!650996 m!7852408))

(assert (=> d!2226382 d!2226548))

(declare-fun d!2226550 () Bool)

(declare-fun res!2911768 () Bool)

(declare-fun e!4288857 () Bool)

(assert (=> d!2226550 (=> res!2911768 e!4288857)))

(assert (=> d!2226550 (= res!2911768 ((_ is Nil!69200) lt!2565744))))

(assert (=> d!2226550 (= (forall!16966 lt!2565744 lambda!433615) e!4288857)))

(declare-fun b!7136263 () Bool)

(declare-fun e!4288858 () Bool)

(assert (=> b!7136263 (= e!4288857 e!4288858)))

(declare-fun res!2911769 () Bool)

(assert (=> b!7136263 (=> (not res!2911769) (not e!4288858))))

(assert (=> b!7136263 (= res!2911769 (dynLambda!28146 lambda!433615 (h!75648 lt!2565744)))))

(declare-fun b!7136264 () Bool)

(assert (=> b!7136264 (= e!4288858 (forall!16966 (t!383341 lt!2565744) lambda!433615))))

(assert (= (and d!2226550 (not res!2911768)) b!7136263))

(assert (= (and b!7136263 res!2911769) b!7136264))

(declare-fun b_lambda!272343 () Bool)

(assert (=> (not b_lambda!272343) (not b!7136263)))

(declare-fun m!7852410 () Bool)

(assert (=> b!7136263 m!7852410))

(declare-fun m!7852412 () Bool)

(assert (=> b!7136264 m!7852412))

(assert (=> d!2226382 d!2226550))

(declare-fun b!7136265 () Bool)

(declare-fun e!4288863 () Bool)

(declare-fun e!4288861 () Bool)

(assert (=> b!7136265 (= e!4288863 e!4288861)))

(declare-fun c!1330834 () Bool)

(assert (=> b!7136265 (= c!1330834 ((_ is Star!18123) (h!75648 (exprs!7617 lt!2565740))))))

(declare-fun b!7136266 () Bool)

(declare-fun res!2911773 () Bool)

(declare-fun e!4288865 () Bool)

(assert (=> b!7136266 (=> res!2911773 e!4288865)))

(assert (=> b!7136266 (= res!2911773 (not ((_ is Concat!26968) (h!75648 (exprs!7617 lt!2565740)))))))

(declare-fun e!4288859 () Bool)

(assert (=> b!7136266 (= e!4288859 e!4288865)))

(declare-fun b!7136267 () Bool)

(declare-fun res!2911770 () Bool)

(declare-fun e!4288860 () Bool)

(assert (=> b!7136267 (=> (not res!2911770) (not e!4288860))))

(declare-fun call!651002 () Bool)

(assert (=> b!7136267 (= res!2911770 call!651002)))

(assert (=> b!7136267 (= e!4288859 e!4288860)))

(declare-fun b!7136268 () Bool)

(declare-fun e!4288864 () Bool)

(declare-fun call!651003 () Bool)

(assert (=> b!7136268 (= e!4288864 call!651003)))

(declare-fun b!7136269 () Bool)

(declare-fun e!4288862 () Bool)

(declare-fun call!651004 () Bool)

(assert (=> b!7136269 (= e!4288862 call!651004)))

(declare-fun b!7136270 () Bool)

(assert (=> b!7136270 (= e!4288861 e!4288859)))

(declare-fun c!1330835 () Bool)

(assert (=> b!7136270 (= c!1330835 ((_ is Union!18123) (h!75648 (exprs!7617 lt!2565740))))))

(declare-fun bm!650997 () Bool)

(assert (=> bm!650997 (= call!651002 call!651003)))

(declare-fun b!7136271 () Bool)

(assert (=> b!7136271 (= e!4288861 e!4288864)))

(declare-fun res!2911774 () Bool)

(assert (=> b!7136271 (= res!2911774 (not (nullable!7643 (reg!18452 (h!75648 (exprs!7617 lt!2565740))))))))

(assert (=> b!7136271 (=> (not res!2911774) (not e!4288864))))

(declare-fun bm!650998 () Bool)

(assert (=> bm!650998 (= call!651004 (validRegex!9290 (ite c!1330835 (regTwo!36759 (h!75648 (exprs!7617 lt!2565740))) (regTwo!36758 (h!75648 (exprs!7617 lt!2565740))))))))

(declare-fun b!7136272 () Bool)

(assert (=> b!7136272 (= e!4288865 e!4288862)))

(declare-fun res!2911772 () Bool)

(assert (=> b!7136272 (=> (not res!2911772) (not e!4288862))))

(assert (=> b!7136272 (= res!2911772 call!651002)))

(declare-fun d!2226552 () Bool)

(declare-fun res!2911771 () Bool)

(assert (=> d!2226552 (=> res!2911771 e!4288863)))

(assert (=> d!2226552 (= res!2911771 ((_ is ElementMatch!18123) (h!75648 (exprs!7617 lt!2565740))))))

(assert (=> d!2226552 (= (validRegex!9290 (h!75648 (exprs!7617 lt!2565740))) e!4288863)))

(declare-fun b!7136273 () Bool)

(assert (=> b!7136273 (= e!4288860 call!651004)))

(declare-fun bm!650999 () Bool)

(assert (=> bm!650999 (= call!651003 (validRegex!9290 (ite c!1330834 (reg!18452 (h!75648 (exprs!7617 lt!2565740))) (ite c!1330835 (regOne!36759 (h!75648 (exprs!7617 lt!2565740))) (regOne!36758 (h!75648 (exprs!7617 lt!2565740)))))))))

(assert (= (and d!2226552 (not res!2911771)) b!7136265))

(assert (= (and b!7136265 c!1330834) b!7136271))

(assert (= (and b!7136265 (not c!1330834)) b!7136270))

(assert (= (and b!7136271 res!2911774) b!7136268))

(assert (= (and b!7136270 c!1330835) b!7136267))

(assert (= (and b!7136270 (not c!1330835)) b!7136266))

(assert (= (and b!7136267 res!2911770) b!7136273))

(assert (= (and b!7136266 (not res!2911773)) b!7136272))

(assert (= (and b!7136272 res!2911772) b!7136269))

(assert (= (or b!7136273 b!7136269) bm!650998))

(assert (= (or b!7136267 b!7136272) bm!650997))

(assert (= (or b!7136268 bm!650997) bm!650999))

(declare-fun m!7852414 () Bool)

(assert (=> b!7136271 m!7852414))

(declare-fun m!7852416 () Bool)

(assert (=> bm!650998 m!7852416))

(declare-fun m!7852418 () Bool)

(assert (=> bm!650999 m!7852418))

(assert (=> bs!1887358 d!2226552))

(declare-fun d!2226554 () Bool)

(declare-fun res!2911775 () Bool)

(declare-fun e!4288866 () Bool)

(assert (=> d!2226554 (=> res!2911775 e!4288866)))

(assert (=> d!2226554 (= res!2911775 ((_ is Nil!69200) (exprs!7617 setElem!52355)))))

(assert (=> d!2226554 (= (forall!16966 (exprs!7617 setElem!52355) lambda!433588) e!4288866)))

(declare-fun b!7136274 () Bool)

(declare-fun e!4288867 () Bool)

(assert (=> b!7136274 (= e!4288866 e!4288867)))

(declare-fun res!2911776 () Bool)

(assert (=> b!7136274 (=> (not res!2911776) (not e!4288867))))

(assert (=> b!7136274 (= res!2911776 (dynLambda!28146 lambda!433588 (h!75648 (exprs!7617 setElem!52355))))))

(declare-fun b!7136275 () Bool)

(assert (=> b!7136275 (= e!4288867 (forall!16966 (t!383341 (exprs!7617 setElem!52355)) lambda!433588))))

(assert (= (and d!2226554 (not res!2911775)) b!7136274))

(assert (= (and b!7136274 res!2911776) b!7136275))

(declare-fun b_lambda!272345 () Bool)

(assert (=> (not b_lambda!272345) (not b!7136274)))

(declare-fun m!7852420 () Bool)

(assert (=> b!7136274 m!7852420))

(declare-fun m!7852422 () Bool)

(assert (=> b!7136275 m!7852422))

(assert (=> d!2226346 d!2226554))

(declare-fun bs!1887494 () Bool)

(declare-fun d!2226556 () Bool)

(assert (= bs!1887494 (and d!2226556 b!7135563)))

(declare-fun lambda!433643 () Int)

(assert (=> bs!1887494 (= lambda!433643 lambda!433570)))

(declare-fun bs!1887495 () Bool)

(assert (= bs!1887495 (and d!2226556 b!7135567)))

(assert (=> bs!1887495 (not (= lambda!433643 lambda!433568))))

(declare-fun bs!1887496 () Bool)

(assert (= bs!1887496 (and d!2226556 d!2226382)))

(assert (=> bs!1887496 (= lambda!433643 lambda!433615)))

(declare-fun bs!1887497 () Bool)

(assert (= bs!1887497 (and d!2226556 d!2226346)))

(assert (=> bs!1887497 (= lambda!433643 lambda!433588)))

(declare-fun bs!1887498 () Bool)

(assert (= bs!1887498 (and d!2226556 d!2226542)))

(assert (=> bs!1887498 (= lambda!433643 lambda!433640)))

(declare-fun bs!1887499 () Bool)

(assert (= bs!1887499 (and d!2226556 d!2226380)))

(assert (=> bs!1887499 (= lambda!433643 lambda!433611)))

(declare-fun bs!1887500 () Bool)

(assert (= bs!1887500 (and d!2226556 d!2226384)))

(assert (=> bs!1887500 (= lambda!433643 lambda!433618)))

(assert (=> bs!1887499 (not (= lambda!433643 lambda!433612))))

(declare-fun bs!1887501 () Bool)

(assert (= bs!1887501 (and d!2226556 d!2226350)))

(assert (=> bs!1887501 (not (= lambda!433643 lambda!433594))))

(declare-fun b!7136296 () Bool)

(declare-fun e!4288881 () Regex!18123)

(assert (=> b!7136296 (= e!4288881 EmptyExpr!18123)))

(declare-fun b!7136297 () Bool)

(declare-fun e!4288883 () Bool)

(assert (=> b!7136297 (= e!4288883 (isEmpty!40047 (t!383341 (exprs!7617 (h!75649 lt!2565746)))))))

(declare-fun b!7136298 () Bool)

(declare-fun e!4288882 () Bool)

(declare-fun e!4288884 () Bool)

(assert (=> b!7136298 (= e!4288882 e!4288884)))

(declare-fun c!1330847 () Bool)

(assert (=> b!7136298 (= c!1330847 (isEmpty!40047 (exprs!7617 (h!75649 lt!2565746))))))

(declare-fun b!7136299 () Bool)

(declare-fun e!4288880 () Bool)

(assert (=> b!7136299 (= e!4288884 e!4288880)))

(declare-fun c!1330844 () Bool)

(assert (=> b!7136299 (= c!1330844 (isEmpty!40047 (tail!13958 (exprs!7617 (h!75649 lt!2565746)))))))

(declare-fun b!7136300 () Bool)

(declare-fun lt!2565844 () Regex!18123)

(assert (=> b!7136300 (= e!4288880 (= lt!2565844 (head!14486 (exprs!7617 (h!75649 lt!2565746)))))))

(declare-fun b!7136301 () Bool)

(declare-fun e!4288885 () Regex!18123)

(assert (=> b!7136301 (= e!4288885 (h!75648 (exprs!7617 (h!75649 lt!2565746))))))

(assert (=> d!2226556 e!4288882))

(declare-fun res!2911781 () Bool)

(assert (=> d!2226556 (=> (not res!2911781) (not e!4288882))))

(assert (=> d!2226556 (= res!2911781 (validRegex!9290 lt!2565844))))

(assert (=> d!2226556 (= lt!2565844 e!4288885)))

(declare-fun c!1330846 () Bool)

(assert (=> d!2226556 (= c!1330846 e!4288883)))

(declare-fun res!2911782 () Bool)

(assert (=> d!2226556 (=> (not res!2911782) (not e!4288883))))

(assert (=> d!2226556 (= res!2911782 ((_ is Cons!69200) (exprs!7617 (h!75649 lt!2565746))))))

(assert (=> d!2226556 (forall!16966 (exprs!7617 (h!75649 lt!2565746)) lambda!433643)))

(assert (=> d!2226556 (= (generalisedConcat!2318 (exprs!7617 (h!75649 lt!2565746))) lt!2565844)))

(declare-fun b!7136302 () Bool)

(assert (=> b!7136302 (= e!4288881 (Concat!26968 (h!75648 (exprs!7617 (h!75649 lt!2565746))) (generalisedConcat!2318 (t!383341 (exprs!7617 (h!75649 lt!2565746))))))))

(declare-fun b!7136303 () Bool)

(declare-fun isConcat!1549 (Regex!18123) Bool)

(assert (=> b!7136303 (= e!4288880 (isConcat!1549 lt!2565844))))

(declare-fun b!7136304 () Bool)

(assert (=> b!7136304 (= e!4288885 e!4288881)))

(declare-fun c!1330845 () Bool)

(assert (=> b!7136304 (= c!1330845 ((_ is Cons!69200) (exprs!7617 (h!75649 lt!2565746))))))

(declare-fun b!7136305 () Bool)

(declare-fun isEmptyExpr!2026 (Regex!18123) Bool)

(assert (=> b!7136305 (= e!4288884 (isEmptyExpr!2026 lt!2565844))))

(assert (= (and d!2226556 res!2911782) b!7136297))

(assert (= (and d!2226556 c!1330846) b!7136301))

(assert (= (and d!2226556 (not c!1330846)) b!7136304))

(assert (= (and b!7136304 c!1330845) b!7136302))

(assert (= (and b!7136304 (not c!1330845)) b!7136296))

(assert (= (and d!2226556 res!2911781) b!7136298))

(assert (= (and b!7136298 c!1330847) b!7136305))

(assert (= (and b!7136298 (not c!1330847)) b!7136299))

(assert (= (and b!7136299 c!1330844) b!7136300))

(assert (= (and b!7136299 (not c!1330844)) b!7136303))

(declare-fun m!7852424 () Bool)

(assert (=> d!2226556 m!7852424))

(declare-fun m!7852426 () Bool)

(assert (=> d!2226556 m!7852426))

(declare-fun m!7852428 () Bool)

(assert (=> b!7136305 m!7852428))

(declare-fun m!7852430 () Bool)

(assert (=> b!7136299 m!7852430))

(assert (=> b!7136299 m!7852430))

(declare-fun m!7852432 () Bool)

(assert (=> b!7136299 m!7852432))

(declare-fun m!7852434 () Bool)

(assert (=> b!7136298 m!7852434))

(declare-fun m!7852436 () Bool)

(assert (=> b!7136303 m!7852436))

(declare-fun m!7852438 () Bool)

(assert (=> b!7136297 m!7852438))

(declare-fun m!7852440 () Bool)

(assert (=> b!7136302 m!7852440))

(declare-fun m!7852442 () Bool)

(assert (=> b!7136300 m!7852442))

(assert (=> b!7135779 d!2226556))

(declare-fun bs!1887502 () Bool)

(declare-fun d!2226558 () Bool)

(assert (= bs!1887502 (and d!2226558 b!7135563)))

(declare-fun lambda!433644 () Int)

(assert (=> bs!1887502 (= lambda!433644 lambda!433570)))

(declare-fun bs!1887503 () Bool)

(assert (= bs!1887503 (and d!2226558 b!7135567)))

(assert (=> bs!1887503 (not (= lambda!433644 lambda!433568))))

(declare-fun bs!1887504 () Bool)

(assert (= bs!1887504 (and d!2226558 d!2226382)))

(assert (=> bs!1887504 (= lambda!433644 lambda!433615)))

(declare-fun bs!1887505 () Bool)

(assert (= bs!1887505 (and d!2226558 d!2226346)))

(assert (=> bs!1887505 (= lambda!433644 lambda!433588)))

(declare-fun bs!1887506 () Bool)

(assert (= bs!1887506 (and d!2226558 d!2226542)))

(assert (=> bs!1887506 (= lambda!433644 lambda!433640)))

(declare-fun bs!1887507 () Bool)

(assert (= bs!1887507 (and d!2226558 d!2226556)))

(assert (=> bs!1887507 (= lambda!433644 lambda!433643)))

(declare-fun bs!1887508 () Bool)

(assert (= bs!1887508 (and d!2226558 d!2226380)))

(assert (=> bs!1887508 (= lambda!433644 lambda!433611)))

(declare-fun bs!1887509 () Bool)

(assert (= bs!1887509 (and d!2226558 d!2226384)))

(assert (=> bs!1887509 (= lambda!433644 lambda!433618)))

(assert (=> bs!1887508 (not (= lambda!433644 lambda!433612))))

(declare-fun bs!1887510 () Bool)

(assert (= bs!1887510 (and d!2226558 d!2226350)))

(assert (=> bs!1887510 (not (= lambda!433644 lambda!433594))))

(declare-fun lt!2565845 () List!69324)

(assert (=> d!2226558 (forall!16966 lt!2565845 lambda!433644)))

(declare-fun e!4288886 () List!69324)

(assert (=> d!2226558 (= lt!2565845 e!4288886)))

(declare-fun c!1330848 () Bool)

(assert (=> d!2226558 (= c!1330848 ((_ is Cons!69201) (t!383342 lt!2565746)))))

(assert (=> d!2226558 (= (unfocusZipperList!2164 (t!383342 lt!2565746)) lt!2565845)))

(declare-fun b!7136306 () Bool)

(assert (=> b!7136306 (= e!4288886 (Cons!69200 (generalisedConcat!2318 (exprs!7617 (h!75649 (t!383342 lt!2565746)))) (unfocusZipperList!2164 (t!383342 (t!383342 lt!2565746)))))))

(declare-fun b!7136307 () Bool)

(assert (=> b!7136307 (= e!4288886 Nil!69200)))

(assert (= (and d!2226558 c!1330848) b!7136306))

(assert (= (and d!2226558 (not c!1330848)) b!7136307))

(declare-fun m!7852444 () Bool)

(assert (=> d!2226558 m!7852444))

(declare-fun m!7852446 () Bool)

(assert (=> b!7136306 m!7852446))

(declare-fun m!7852448 () Bool)

(assert (=> b!7136306 m!7852448))

(assert (=> b!7135779 d!2226558))

(assert (=> d!2226380 d!2226378))

(declare-fun bs!1887511 () Bool)

(declare-fun d!2226560 () Bool)

(assert (= bs!1887511 (and d!2226560 b!7135563)))

(declare-fun lambda!433645 () Int)

(assert (=> bs!1887511 (not (= lambda!433645 lambda!433570))))

(declare-fun bs!1887512 () Bool)

(assert (= bs!1887512 (and d!2226560 b!7135567)))

(assert (=> bs!1887512 (not (= lambda!433645 lambda!433568))))

(declare-fun bs!1887513 () Bool)

(assert (= bs!1887513 (and d!2226560 d!2226382)))

(assert (=> bs!1887513 (not (= lambda!433645 lambda!433615))))

(declare-fun bs!1887514 () Bool)

(assert (= bs!1887514 (and d!2226560 d!2226346)))

(assert (=> bs!1887514 (not (= lambda!433645 lambda!433588))))

(declare-fun bs!1887515 () Bool)

(assert (= bs!1887515 (and d!2226560 d!2226556)))

(assert (=> bs!1887515 (not (= lambda!433645 lambda!433643))))

(declare-fun bs!1887516 () Bool)

(assert (= bs!1887516 (and d!2226560 d!2226380)))

(assert (=> bs!1887516 (not (= lambda!433645 lambda!433611))))

(declare-fun bs!1887517 () Bool)

(assert (= bs!1887517 (and d!2226560 d!2226384)))

(assert (=> bs!1887517 (not (= lambda!433645 lambda!433618))))

(assert (=> bs!1887516 (not (= lambda!433645 lambda!433612))))

(declare-fun bs!1887518 () Bool)

(assert (= bs!1887518 (and d!2226560 d!2226350)))

(assert (=> bs!1887518 (= (= lambda!433612 lambda!433568) (= lambda!433645 lambda!433594))))

(declare-fun bs!1887519 () Bool)

(assert (= bs!1887519 (and d!2226560 d!2226558)))

(assert (=> bs!1887519 (not (= lambda!433645 lambda!433644))))

(declare-fun bs!1887520 () Bool)

(assert (= bs!1887520 (and d!2226560 d!2226542)))

(assert (=> bs!1887520 (not (= lambda!433645 lambda!433640))))

(assert (=> d!2226560 true))

(assert (=> d!2226560 (< (dynLambda!28147 order!28507 lambda!433612) (dynLambda!28147 order!28507 lambda!433645))))

(assert (=> d!2226560 (= (exists!3860 lt!2565744 lambda!433612) (not (forall!16966 lt!2565744 lambda!433645)))))

(declare-fun bs!1887521 () Bool)

(assert (= bs!1887521 d!2226560))

(declare-fun m!7852450 () Bool)

(assert (=> bs!1887521 m!7852450))

(assert (=> d!2226380 d!2226560))

(declare-fun bs!1887522 () Bool)

(declare-fun d!2226562 () Bool)

(assert (= bs!1887522 (and d!2226562 d!2226560)))

(declare-fun lambda!433648 () Int)

(assert (=> bs!1887522 (not (= lambda!433648 lambda!433645))))

(declare-fun bs!1887523 () Bool)

(assert (= bs!1887523 (and d!2226562 b!7135563)))

(assert (=> bs!1887523 (not (= lambda!433648 lambda!433570))))

(declare-fun bs!1887524 () Bool)

(assert (= bs!1887524 (and d!2226562 b!7135567)))

(assert (=> bs!1887524 (= lambda!433648 lambda!433568)))

(declare-fun bs!1887525 () Bool)

(assert (= bs!1887525 (and d!2226562 d!2226382)))

(assert (=> bs!1887525 (not (= lambda!433648 lambda!433615))))

(declare-fun bs!1887526 () Bool)

(assert (= bs!1887526 (and d!2226562 d!2226346)))

(assert (=> bs!1887526 (not (= lambda!433648 lambda!433588))))

(declare-fun bs!1887527 () Bool)

(assert (= bs!1887527 (and d!2226562 d!2226556)))

(assert (=> bs!1887527 (not (= lambda!433648 lambda!433643))))

(declare-fun bs!1887528 () Bool)

(assert (= bs!1887528 (and d!2226562 d!2226380)))

(assert (=> bs!1887528 (not (= lambda!433648 lambda!433611))))

(declare-fun bs!1887529 () Bool)

(assert (= bs!1887529 (and d!2226562 d!2226384)))

(assert (=> bs!1887529 (not (= lambda!433648 lambda!433618))))

(assert (=> bs!1887528 (= lambda!433648 lambda!433612)))

(declare-fun bs!1887530 () Bool)

(assert (= bs!1887530 (and d!2226562 d!2226350)))

(assert (=> bs!1887530 (not (= lambda!433648 lambda!433594))))

(declare-fun bs!1887531 () Bool)

(assert (= bs!1887531 (and d!2226562 d!2226558)))

(assert (=> bs!1887531 (not (= lambda!433648 lambda!433644))))

(declare-fun bs!1887532 () Bool)

(assert (= bs!1887532 (and d!2226562 d!2226542)))

(assert (=> bs!1887532 (not (= lambda!433648 lambda!433640))))

(assert (=> d!2226562 (= (nullable!7643 lt!2565743) (exists!3860 lt!2565744 lambda!433648))))

(assert (=> d!2226562 true))

(declare-fun _$84!61 () Unit!163098)

(assert (=> d!2226562 (= (choose!55163 lt!2565743 lt!2565744) _$84!61)))

(declare-fun bs!1887533 () Bool)

(assert (= bs!1887533 d!2226562))

(assert (=> bs!1887533 m!7851856))

(declare-fun m!7852452 () Bool)

(assert (=> bs!1887533 m!7852452))

(assert (=> d!2226380 d!2226562))

(declare-fun d!2226564 () Bool)

(declare-fun res!2911783 () Bool)

(declare-fun e!4288887 () Bool)

(assert (=> d!2226564 (=> res!2911783 e!4288887)))

(assert (=> d!2226564 (= res!2911783 ((_ is Nil!69200) lt!2565744))))

(assert (=> d!2226564 (= (forall!16966 lt!2565744 lambda!433611) e!4288887)))

(declare-fun b!7136308 () Bool)

(declare-fun e!4288888 () Bool)

(assert (=> b!7136308 (= e!4288887 e!4288888)))

(declare-fun res!2911784 () Bool)

(assert (=> b!7136308 (=> (not res!2911784) (not e!4288888))))

(assert (=> b!7136308 (= res!2911784 (dynLambda!28146 lambda!433611 (h!75648 lt!2565744)))))

(declare-fun b!7136309 () Bool)

(assert (=> b!7136309 (= e!4288888 (forall!16966 (t!383341 lt!2565744) lambda!433611))))

(assert (= (and d!2226564 (not res!2911783)) b!7136308))

(assert (= (and b!7136308 res!2911784) b!7136309))

(declare-fun b_lambda!272347 () Bool)

(assert (=> (not b_lambda!272347) (not b!7136308)))

(declare-fun m!7852454 () Bool)

(assert (=> b!7136308 m!7852454))

(declare-fun m!7852456 () Bool)

(assert (=> b!7136309 m!7852456))

(assert (=> d!2226380 d!2226564))

(assert (=> b!7135765 d!2226520))

(declare-fun b!7136310 () Bool)

(declare-fun e!4288893 () Bool)

(declare-fun e!4288891 () Bool)

(assert (=> b!7136310 (= e!4288893 e!4288891)))

(declare-fun c!1330849 () Bool)

(assert (=> b!7136310 (= c!1330849 ((_ is Star!18123) (ite c!1330756 (regTwo!36759 r!11483) (regTwo!36758 r!11483))))))

(declare-fun b!7136311 () Bool)

(declare-fun res!2911788 () Bool)

(declare-fun e!4288895 () Bool)

(assert (=> b!7136311 (=> res!2911788 e!4288895)))

(assert (=> b!7136311 (= res!2911788 (not ((_ is Concat!26968) (ite c!1330756 (regTwo!36759 r!11483) (regTwo!36758 r!11483)))))))

(declare-fun e!4288889 () Bool)

(assert (=> b!7136311 (= e!4288889 e!4288895)))

(declare-fun b!7136312 () Bool)

(declare-fun res!2911785 () Bool)

(declare-fun e!4288890 () Bool)

(assert (=> b!7136312 (=> (not res!2911785) (not e!4288890))))

(declare-fun call!651005 () Bool)

(assert (=> b!7136312 (= res!2911785 call!651005)))

(assert (=> b!7136312 (= e!4288889 e!4288890)))

(declare-fun b!7136313 () Bool)

(declare-fun e!4288894 () Bool)

(declare-fun call!651006 () Bool)

(assert (=> b!7136313 (= e!4288894 call!651006)))

(declare-fun b!7136314 () Bool)

(declare-fun e!4288892 () Bool)

(declare-fun call!651007 () Bool)

(assert (=> b!7136314 (= e!4288892 call!651007)))

(declare-fun b!7136315 () Bool)

(assert (=> b!7136315 (= e!4288891 e!4288889)))

(declare-fun c!1330850 () Bool)

(assert (=> b!7136315 (= c!1330850 ((_ is Union!18123) (ite c!1330756 (regTwo!36759 r!11483) (regTwo!36758 r!11483))))))

(declare-fun bm!651000 () Bool)

(assert (=> bm!651000 (= call!651005 call!651006)))

(declare-fun b!7136316 () Bool)

(assert (=> b!7136316 (= e!4288891 e!4288894)))

(declare-fun res!2911789 () Bool)

(assert (=> b!7136316 (= res!2911789 (not (nullable!7643 (reg!18452 (ite c!1330756 (regTwo!36759 r!11483) (regTwo!36758 r!11483))))))))

(assert (=> b!7136316 (=> (not res!2911789) (not e!4288894))))

(declare-fun bm!651001 () Bool)

(assert (=> bm!651001 (= call!651007 (validRegex!9290 (ite c!1330850 (regTwo!36759 (ite c!1330756 (regTwo!36759 r!11483) (regTwo!36758 r!11483))) (regTwo!36758 (ite c!1330756 (regTwo!36759 r!11483) (regTwo!36758 r!11483))))))))

(declare-fun b!7136317 () Bool)

(assert (=> b!7136317 (= e!4288895 e!4288892)))

(declare-fun res!2911787 () Bool)

(assert (=> b!7136317 (=> (not res!2911787) (not e!4288892))))

(assert (=> b!7136317 (= res!2911787 call!651005)))

(declare-fun d!2226566 () Bool)

(declare-fun res!2911786 () Bool)

(assert (=> d!2226566 (=> res!2911786 e!4288893)))

(assert (=> d!2226566 (= res!2911786 ((_ is ElementMatch!18123) (ite c!1330756 (regTwo!36759 r!11483) (regTwo!36758 r!11483))))))

(assert (=> d!2226566 (= (validRegex!9290 (ite c!1330756 (regTwo!36759 r!11483) (regTwo!36758 r!11483))) e!4288893)))

(declare-fun b!7136318 () Bool)

(assert (=> b!7136318 (= e!4288890 call!651007)))

(declare-fun bm!651002 () Bool)

(assert (=> bm!651002 (= call!651006 (validRegex!9290 (ite c!1330849 (reg!18452 (ite c!1330756 (regTwo!36759 r!11483) (regTwo!36758 r!11483))) (ite c!1330850 (regOne!36759 (ite c!1330756 (regTwo!36759 r!11483) (regTwo!36758 r!11483))) (regOne!36758 (ite c!1330756 (regTwo!36759 r!11483) (regTwo!36758 r!11483)))))))))

(assert (= (and d!2226566 (not res!2911786)) b!7136310))

(assert (= (and b!7136310 c!1330849) b!7136316))

(assert (= (and b!7136310 (not c!1330849)) b!7136315))

(assert (= (and b!7136316 res!2911789) b!7136313))

(assert (= (and b!7136315 c!1330850) b!7136312))

(assert (= (and b!7136315 (not c!1330850)) b!7136311))

(assert (= (and b!7136312 res!2911785) b!7136318))

(assert (= (and b!7136311 (not res!2911788)) b!7136317))

(assert (= (and b!7136317 res!2911787) b!7136314))

(assert (= (or b!7136318 b!7136314) bm!651001))

(assert (= (or b!7136312 b!7136317) bm!651000))

(assert (= (or b!7136313 bm!651000) bm!651002))

(declare-fun m!7852458 () Bool)

(assert (=> b!7136316 m!7852458))

(declare-fun m!7852460 () Bool)

(assert (=> bm!651001 m!7852460))

(declare-fun m!7852462 () Bool)

(assert (=> bm!651002 m!7852462))

(assert (=> bm!650958 d!2226566))

(declare-fun d!2226568 () Bool)

(declare-fun lt!2565846 () Bool)

(assert (=> d!2226568 (= lt!2565846 (select (content!14165 (t!383341 lt!2565744)) lt!2565745))))

(declare-fun e!4288896 () Bool)

(assert (=> d!2226568 (= lt!2565846 e!4288896)))

(declare-fun res!2911790 () Bool)

(assert (=> d!2226568 (=> (not res!2911790) (not e!4288896))))

(assert (=> d!2226568 (= res!2911790 ((_ is Cons!69200) (t!383341 lt!2565744)))))

(assert (=> d!2226568 (= (contains!20563 (t!383341 lt!2565744) lt!2565745) lt!2565846)))

(declare-fun b!7136319 () Bool)

(declare-fun e!4288897 () Bool)

(assert (=> b!7136319 (= e!4288896 e!4288897)))

(declare-fun res!2911791 () Bool)

(assert (=> b!7136319 (=> res!2911791 e!4288897)))

(assert (=> b!7136319 (= res!2911791 (= (h!75648 (t!383341 lt!2565744)) lt!2565745))))

(declare-fun b!7136320 () Bool)

(assert (=> b!7136320 (= e!4288897 (contains!20563 (t!383341 (t!383341 lt!2565744)) lt!2565745))))

(assert (= (and d!2226568 res!2911790) b!7136319))

(assert (= (and b!7136319 (not res!2911791)) b!7136320))

(declare-fun m!7852464 () Bool)

(assert (=> d!2226568 m!7852464))

(declare-fun m!7852466 () Bool)

(assert (=> d!2226568 m!7852466))

(declare-fun m!7852468 () Bool)

(assert (=> b!7136320 m!7852468))

(assert (=> b!7135596 d!2226568))

(assert (=> d!2226338 d!2226350))

(declare-fun d!2226570 () Bool)

(assert (=> d!2226570 (= (nullable!7643 (reg!18452 r!11483)) (nullableFct!2971 (reg!18452 r!11483)))))

(declare-fun bs!1887534 () Bool)

(assert (= bs!1887534 d!2226570))

(declare-fun m!7852470 () Bool)

(assert (=> bs!1887534 m!7852470))

(assert (=> b!7135808 d!2226570))

(declare-fun d!2226572 () Bool)

(declare-fun res!2911792 () Bool)

(declare-fun e!4288898 () Bool)

(assert (=> d!2226572 (=> res!2911792 e!4288898)))

(assert (=> d!2226572 (= res!2911792 ((_ is Nil!69200) lt!2565744))))

(assert (=> d!2226572 (= (forall!16966 lt!2565744 lambda!433594) e!4288898)))

(declare-fun b!7136321 () Bool)

(declare-fun e!4288899 () Bool)

(assert (=> b!7136321 (= e!4288898 e!4288899)))

(declare-fun res!2911793 () Bool)

(assert (=> b!7136321 (=> (not res!2911793) (not e!4288899))))

(assert (=> b!7136321 (= res!2911793 (dynLambda!28146 lambda!433594 (h!75648 lt!2565744)))))

(declare-fun b!7136322 () Bool)

(assert (=> b!7136322 (= e!4288899 (forall!16966 (t!383341 lt!2565744) lambda!433594))))

(assert (= (and d!2226572 (not res!2911792)) b!7136321))

(assert (= (and b!7136321 res!2911793) b!7136322))

(declare-fun b_lambda!272349 () Bool)

(assert (=> (not b_lambda!272349) (not b!7136321)))

(declare-fun m!7852472 () Bool)

(assert (=> b!7136321 m!7852472))

(declare-fun m!7852474 () Bool)

(assert (=> b!7136322 m!7852474))

(assert (=> d!2226350 d!2226572))

(declare-fun bs!1887535 () Bool)

(declare-fun d!2226574 () Bool)

(assert (= bs!1887535 (and d!2226574 d!2226362)))

(declare-fun lambda!433649 () Int)

(assert (=> bs!1887535 (= lambda!433649 lambda!433597)))

(declare-fun bs!1887536 () Bool)

(assert (= bs!1887536 (and d!2226574 b!7135557)))

(assert (=> bs!1887536 (not (= lambda!433649 lambda!433569))))

(declare-fun bs!1887537 () Bool)

(assert (= bs!1887537 (and d!2226574 d!2226368)))

(assert (=> bs!1887537 (not (= lambda!433649 lambda!433606))))

(declare-fun bs!1887538 () Bool)

(assert (= bs!1887538 (and d!2226574 d!2226534)))

(assert (=> bs!1887538 (= (= lambda!433569 lambda!433606) (= lambda!433649 lambda!433636))))

(declare-fun bs!1887539 () Bool)

(assert (= bs!1887539 (and d!2226574 d!2226536)))

(assert (=> bs!1887539 (not (= lambda!433649 lambda!433639))))

(assert (=> d!2226574 true))

(assert (=> d!2226574 (< (dynLambda!28148 order!28509 lambda!433569) (dynLambda!28148 order!28509 lambda!433649))))

(assert (=> d!2226574 (= (exists!3859 (toList!11154 z!3189) lambda!433569) (not (forall!16968 (toList!11154 z!3189) lambda!433649)))))

(declare-fun bs!1887540 () Bool)

(assert (= bs!1887540 d!2226574))

(assert (=> bs!1887540 m!7851874))

(declare-fun m!7852476 () Bool)

(assert (=> bs!1887540 m!7852476))

(assert (=> d!2226356 d!2226574))

(assert (=> d!2226356 d!2226392))

(declare-fun d!2226576 () Bool)

(declare-fun res!2911796 () Bool)

(assert (=> d!2226576 (= res!2911796 (exists!3859 (toList!11154 z!3189) lambda!433569))))

(assert (=> d!2226576 true))

(assert (=> d!2226576 (= (choose!55161 z!3189 lambda!433569) res!2911796)))

(declare-fun bs!1887541 () Bool)

(assert (= bs!1887541 d!2226576))

(assert (=> bs!1887541 m!7851874))

(assert (=> bs!1887541 m!7851874))

(assert (=> bs!1887541 m!7851980))

(assert (=> d!2226356 d!2226576))

(declare-fun d!2226578 () Bool)

(declare-fun c!1330853 () Bool)

(assert (=> d!2226578 (= c!1330853 ((_ is Nil!69201) lt!2565812))))

(declare-fun e!4288902 () (InoxSet Context!14234))

(assert (=> d!2226578 (= (content!14166 lt!2565812) e!4288902)))

(declare-fun b!7136327 () Bool)

(assert (=> b!7136327 (= e!4288902 ((as const (Array Context!14234 Bool)) false))))

(declare-fun b!7136328 () Bool)

(assert (=> b!7136328 (= e!4288902 ((_ map or) (store ((as const (Array Context!14234 Bool)) false) (h!75649 lt!2565812) true) (content!14166 (t!383342 lt!2565812))))))

(assert (= (and d!2226578 c!1330853) b!7136327))

(assert (= (and d!2226578 (not c!1330853)) b!7136328))

(declare-fun m!7852478 () Bool)

(assert (=> b!7136328 m!7852478))

(declare-fun m!7852480 () Bool)

(assert (=> b!7136328 m!7852480))

(assert (=> b!7135813 d!2226578))

(declare-fun bs!1887542 () Bool)

(declare-fun d!2226580 () Bool)

(assert (= bs!1887542 (and d!2226580 d!2226560)))

(declare-fun lambda!433650 () Int)

(assert (=> bs!1887542 (not (= lambda!433650 lambda!433645))))

(declare-fun bs!1887543 () Bool)

(assert (= bs!1887543 (and d!2226580 b!7135563)))

(assert (=> bs!1887543 (= lambda!433650 lambda!433570)))

(declare-fun bs!1887544 () Bool)

(assert (= bs!1887544 (and d!2226580 b!7135567)))

(assert (=> bs!1887544 (not (= lambda!433650 lambda!433568))))

(declare-fun bs!1887545 () Bool)

(assert (= bs!1887545 (and d!2226580 d!2226382)))

(assert (=> bs!1887545 (= lambda!433650 lambda!433615)))

(declare-fun bs!1887546 () Bool)

(assert (= bs!1887546 (and d!2226580 d!2226346)))

(assert (=> bs!1887546 (= lambda!433650 lambda!433588)))

(declare-fun bs!1887547 () Bool)

(assert (= bs!1887547 (and d!2226580 d!2226556)))

(assert (=> bs!1887547 (= lambda!433650 lambda!433643)))

(declare-fun bs!1887548 () Bool)

(assert (= bs!1887548 (and d!2226580 d!2226380)))

(assert (=> bs!1887548 (= lambda!433650 lambda!433611)))

(declare-fun bs!1887549 () Bool)

(assert (= bs!1887549 (and d!2226580 d!2226384)))

(assert (=> bs!1887549 (= lambda!433650 lambda!433618)))

(declare-fun bs!1887550 () Bool)

(assert (= bs!1887550 (and d!2226580 d!2226562)))

(assert (=> bs!1887550 (not (= lambda!433650 lambda!433648))))

(assert (=> bs!1887548 (not (= lambda!433650 lambda!433612))))

(declare-fun bs!1887551 () Bool)

(assert (= bs!1887551 (and d!2226580 d!2226350)))

(assert (=> bs!1887551 (not (= lambda!433650 lambda!433594))))

(declare-fun bs!1887552 () Bool)

(assert (= bs!1887552 (and d!2226580 d!2226558)))

(assert (=> bs!1887552 (= lambda!433650 lambda!433644)))

(declare-fun bs!1887553 () Bool)

(assert (= bs!1887553 (and d!2226580 d!2226542)))

(assert (=> bs!1887553 (= lambda!433650 lambda!433640)))

(assert (=> d!2226580 (= (inv!88371 setElem!52361) (forall!16966 (exprs!7617 setElem!52361) lambda!433650))))

(declare-fun bs!1887554 () Bool)

(assert (= bs!1887554 d!2226580))

(declare-fun m!7852482 () Bool)

(assert (=> bs!1887554 m!7852482))

(assert (=> setNonEmpty!52361 d!2226580))

(declare-fun d!2226582 () Bool)

(assert (=> d!2226582 (= (isEmpty!40047 lt!2565744) ((_ is Nil!69200) lt!2565744))))

(assert (=> b!7135769 d!2226582))

(declare-fun d!2226584 () Bool)

(declare-fun res!2911801 () Bool)

(declare-fun e!4288907 () Bool)

(assert (=> d!2226584 (=> res!2911801 e!4288907)))

(assert (=> d!2226584 (= res!2911801 ((_ is Nil!69201) lt!2565746))))

(assert (=> d!2226584 (= (forall!16968 lt!2565746 lambda!433597) e!4288907)))

(declare-fun b!7136333 () Bool)

(declare-fun e!4288908 () Bool)

(assert (=> b!7136333 (= e!4288907 e!4288908)))

(declare-fun res!2911802 () Bool)

(assert (=> b!7136333 (=> (not res!2911802) (not e!4288908))))

(assert (=> b!7136333 (= res!2911802 (dynLambda!28149 lambda!433597 (h!75649 lt!2565746)))))

(declare-fun b!7136334 () Bool)

(assert (=> b!7136334 (= e!4288908 (forall!16968 (t!383342 lt!2565746) lambda!433597))))

(assert (= (and d!2226584 (not res!2911801)) b!7136333))

(assert (= (and b!7136333 res!2911802) b!7136334))

(declare-fun b_lambda!272351 () Bool)

(assert (=> (not b_lambda!272351) (not b!7136333)))

(declare-fun m!7852484 () Bool)

(assert (=> b!7136333 m!7852484))

(declare-fun m!7852486 () Bool)

(assert (=> b!7136334 m!7852486))

(assert (=> d!2226362 d!2226584))

(declare-fun d!2226586 () Bool)

(declare-fun c!1330856 () Bool)

(assert (=> d!2226586 (= c!1330856 ((_ is Nil!69200) lt!2565744))))

(declare-fun e!4288911 () (InoxSet Regex!18123))

(assert (=> d!2226586 (= (content!14165 lt!2565744) e!4288911)))

(declare-fun b!7136339 () Bool)

(assert (=> b!7136339 (= e!4288911 ((as const (Array Regex!18123 Bool)) false))))

(declare-fun b!7136340 () Bool)

(assert (=> b!7136340 (= e!4288911 ((_ map or) (store ((as const (Array Regex!18123 Bool)) false) (h!75648 lt!2565744) true) (content!14165 (t!383341 lt!2565744))))))

(assert (= (and d!2226586 c!1330856) b!7136339))

(assert (= (and d!2226586 (not c!1330856)) b!7136340))

(declare-fun m!7852488 () Bool)

(assert (=> b!7136340 m!7852488))

(assert (=> b!7136340 m!7852464))

(assert (=> d!2226330 d!2226586))

(declare-fun d!2226588 () Bool)

(assert (=> d!2226588 (= (isEmpty!40047 (tail!13958 lt!2565744)) ((_ is Nil!69200) (tail!13958 lt!2565744)))))

(assert (=> b!7135768 d!2226588))

(declare-fun d!2226590 () Bool)

(assert (=> d!2226590 (= (tail!13958 lt!2565744) (t!383341 lt!2565744))))

(assert (=> b!7135768 d!2226590))

(declare-fun b!7136341 () Bool)

(declare-fun e!4288916 () Bool)

(declare-fun e!4288914 () Bool)

(assert (=> b!7136341 (= e!4288916 e!4288914)))

(declare-fun c!1330857 () Bool)

(assert (=> b!7136341 (= c!1330857 ((_ is Star!18123) (ite c!1330755 (reg!18452 r!11483) (ite c!1330756 (regOne!36759 r!11483) (regOne!36758 r!11483)))))))

(declare-fun b!7136342 () Bool)

(declare-fun res!2911806 () Bool)

(declare-fun e!4288918 () Bool)

(assert (=> b!7136342 (=> res!2911806 e!4288918)))

(assert (=> b!7136342 (= res!2911806 (not ((_ is Concat!26968) (ite c!1330755 (reg!18452 r!11483) (ite c!1330756 (regOne!36759 r!11483) (regOne!36758 r!11483))))))))

(declare-fun e!4288912 () Bool)

(assert (=> b!7136342 (= e!4288912 e!4288918)))

(declare-fun b!7136343 () Bool)

(declare-fun res!2911803 () Bool)

(declare-fun e!4288913 () Bool)

(assert (=> b!7136343 (=> (not res!2911803) (not e!4288913))))

(declare-fun call!651008 () Bool)

(assert (=> b!7136343 (= res!2911803 call!651008)))

(assert (=> b!7136343 (= e!4288912 e!4288913)))

(declare-fun b!7136344 () Bool)

(declare-fun e!4288917 () Bool)

(declare-fun call!651009 () Bool)

(assert (=> b!7136344 (= e!4288917 call!651009)))

(declare-fun b!7136345 () Bool)

(declare-fun e!4288915 () Bool)

(declare-fun call!651010 () Bool)

(assert (=> b!7136345 (= e!4288915 call!651010)))

(declare-fun b!7136346 () Bool)

(assert (=> b!7136346 (= e!4288914 e!4288912)))

(declare-fun c!1330858 () Bool)

(assert (=> b!7136346 (= c!1330858 ((_ is Union!18123) (ite c!1330755 (reg!18452 r!11483) (ite c!1330756 (regOne!36759 r!11483) (regOne!36758 r!11483)))))))

(declare-fun bm!651003 () Bool)

(assert (=> bm!651003 (= call!651008 call!651009)))

(declare-fun b!7136347 () Bool)

(assert (=> b!7136347 (= e!4288914 e!4288917)))

(declare-fun res!2911807 () Bool)

(assert (=> b!7136347 (= res!2911807 (not (nullable!7643 (reg!18452 (ite c!1330755 (reg!18452 r!11483) (ite c!1330756 (regOne!36759 r!11483) (regOne!36758 r!11483)))))))))

(assert (=> b!7136347 (=> (not res!2911807) (not e!4288917))))

(declare-fun bm!651004 () Bool)

(assert (=> bm!651004 (= call!651010 (validRegex!9290 (ite c!1330858 (regTwo!36759 (ite c!1330755 (reg!18452 r!11483) (ite c!1330756 (regOne!36759 r!11483) (regOne!36758 r!11483)))) (regTwo!36758 (ite c!1330755 (reg!18452 r!11483) (ite c!1330756 (regOne!36759 r!11483) (regOne!36758 r!11483)))))))))

(declare-fun b!7136348 () Bool)

(assert (=> b!7136348 (= e!4288918 e!4288915)))

(declare-fun res!2911805 () Bool)

(assert (=> b!7136348 (=> (not res!2911805) (not e!4288915))))

(assert (=> b!7136348 (= res!2911805 call!651008)))

(declare-fun d!2226592 () Bool)

(declare-fun res!2911804 () Bool)

(assert (=> d!2226592 (=> res!2911804 e!4288916)))

(assert (=> d!2226592 (= res!2911804 ((_ is ElementMatch!18123) (ite c!1330755 (reg!18452 r!11483) (ite c!1330756 (regOne!36759 r!11483) (regOne!36758 r!11483)))))))

(assert (=> d!2226592 (= (validRegex!9290 (ite c!1330755 (reg!18452 r!11483) (ite c!1330756 (regOne!36759 r!11483) (regOne!36758 r!11483)))) e!4288916)))

(declare-fun b!7136349 () Bool)

(assert (=> b!7136349 (= e!4288913 call!651010)))

(declare-fun bm!651005 () Bool)

(assert (=> bm!651005 (= call!651009 (validRegex!9290 (ite c!1330857 (reg!18452 (ite c!1330755 (reg!18452 r!11483) (ite c!1330756 (regOne!36759 r!11483) (regOne!36758 r!11483)))) (ite c!1330858 (regOne!36759 (ite c!1330755 (reg!18452 r!11483) (ite c!1330756 (regOne!36759 r!11483) (regOne!36758 r!11483)))) (regOne!36758 (ite c!1330755 (reg!18452 r!11483) (ite c!1330756 (regOne!36759 r!11483) (regOne!36758 r!11483))))))))))

(assert (= (and d!2226592 (not res!2911804)) b!7136341))

(assert (= (and b!7136341 c!1330857) b!7136347))

(assert (= (and b!7136341 (not c!1330857)) b!7136346))

(assert (= (and b!7136347 res!2911807) b!7136344))

(assert (= (and b!7136346 c!1330858) b!7136343))

(assert (= (and b!7136346 (not c!1330858)) b!7136342))

(assert (= (and b!7136343 res!2911803) b!7136349))

(assert (= (and b!7136342 (not res!2911806)) b!7136348))

(assert (= (and b!7136348 res!2911805) b!7136345))

(assert (= (or b!7136349 b!7136345) bm!651004))

(assert (= (or b!7136343 b!7136348) bm!651003))

(assert (= (or b!7136344 bm!651003) bm!651005))

(declare-fun m!7852490 () Bool)

(assert (=> b!7136347 m!7852490))

(declare-fun m!7852492 () Bool)

(assert (=> bm!651004 m!7852492))

(declare-fun m!7852494 () Bool)

(assert (=> bm!651005 m!7852494))

(assert (=> bm!650959 d!2226592))

(declare-fun d!2226594 () Bool)

(declare-fun res!2911808 () Bool)

(declare-fun e!4288919 () Bool)

(assert (=> d!2226594 (=> res!2911808 e!4288919)))

(assert (=> d!2226594 (= res!2911808 ((_ is Nil!69200) (t!383341 (exprs!7617 lt!2565740))))))

(assert (=> d!2226594 (= (forall!16966 (t!383341 (exprs!7617 lt!2565740)) lambda!433570) e!4288919)))

(declare-fun b!7136350 () Bool)

(declare-fun e!4288920 () Bool)

(assert (=> b!7136350 (= e!4288919 e!4288920)))

(declare-fun res!2911809 () Bool)

(assert (=> b!7136350 (=> (not res!2911809) (not e!4288920))))

(assert (=> b!7136350 (= res!2911809 (dynLambda!28146 lambda!433570 (h!75648 (t!383341 (exprs!7617 lt!2565740)))))))

(declare-fun b!7136351 () Bool)

(assert (=> b!7136351 (= e!4288920 (forall!16966 (t!383341 (t!383341 (exprs!7617 lt!2565740))) lambda!433570))))

(assert (= (and d!2226594 (not res!2911808)) b!7136350))

(assert (= (and b!7136350 res!2911809) b!7136351))

(declare-fun b_lambda!272353 () Bool)

(assert (=> (not b_lambda!272353) (not b!7136350)))

(declare-fun m!7852496 () Bool)

(assert (=> b!7136350 m!7852496))

(declare-fun m!7852498 () Bool)

(assert (=> b!7136351 m!7852498))

(assert (=> b!7135819 d!2226594))

(declare-fun d!2226596 () Bool)

(assert (=> d!2226596 (= (isEmptyLang!2079 lt!2565800) ((_ is EmptyLang!18123) lt!2565800))))

(assert (=> b!7135770 d!2226596))

(declare-fun bs!1887555 () Bool)

(declare-fun d!2226598 () Bool)

(assert (= bs!1887555 (and d!2226598 d!2226560)))

(declare-fun lambda!433651 () Int)

(assert (=> bs!1887555 (not (= lambda!433651 lambda!433645))))

(declare-fun bs!1887556 () Bool)

(assert (= bs!1887556 (and d!2226598 d!2226580)))

(assert (=> bs!1887556 (= lambda!433651 lambda!433650)))

(declare-fun bs!1887557 () Bool)

(assert (= bs!1887557 (and d!2226598 b!7135563)))

(assert (=> bs!1887557 (= lambda!433651 lambda!433570)))

(declare-fun bs!1887558 () Bool)

(assert (= bs!1887558 (and d!2226598 b!7135567)))

(assert (=> bs!1887558 (not (= lambda!433651 lambda!433568))))

(declare-fun bs!1887559 () Bool)

(assert (= bs!1887559 (and d!2226598 d!2226382)))

(assert (=> bs!1887559 (= lambda!433651 lambda!433615)))

(declare-fun bs!1887560 () Bool)

(assert (= bs!1887560 (and d!2226598 d!2226346)))

(assert (=> bs!1887560 (= lambda!433651 lambda!433588)))

(declare-fun bs!1887561 () Bool)

(assert (= bs!1887561 (and d!2226598 d!2226556)))

(assert (=> bs!1887561 (= lambda!433651 lambda!433643)))

(declare-fun bs!1887562 () Bool)

(assert (= bs!1887562 (and d!2226598 d!2226380)))

(assert (=> bs!1887562 (= lambda!433651 lambda!433611)))

(declare-fun bs!1887563 () Bool)

(assert (= bs!1887563 (and d!2226598 d!2226384)))

(assert (=> bs!1887563 (= lambda!433651 lambda!433618)))

(declare-fun bs!1887564 () Bool)

(assert (= bs!1887564 (and d!2226598 d!2226562)))

(assert (=> bs!1887564 (not (= lambda!433651 lambda!433648))))

(assert (=> bs!1887562 (not (= lambda!433651 lambda!433612))))

(declare-fun bs!1887565 () Bool)

(assert (= bs!1887565 (and d!2226598 d!2226350)))

(assert (=> bs!1887565 (not (= lambda!433651 lambda!433594))))

(declare-fun bs!1887566 () Bool)

(assert (= bs!1887566 (and d!2226598 d!2226558)))

(assert (=> bs!1887566 (= lambda!433651 lambda!433644)))

(declare-fun bs!1887567 () Bool)

(assert (= bs!1887567 (and d!2226598 d!2226542)))

(assert (=> bs!1887567 (= lambda!433651 lambda!433640)))

(declare-fun b!7136352 () Bool)

(declare-fun e!4288922 () Regex!18123)

(assert (=> b!7136352 (= e!4288922 EmptyExpr!18123)))

(declare-fun b!7136353 () Bool)

(declare-fun e!4288924 () Bool)

(assert (=> b!7136353 (= e!4288924 (isEmpty!40047 (t!383341 (exprs!7617 lt!2565806))))))

(declare-fun b!7136354 () Bool)

(declare-fun e!4288923 () Bool)

(declare-fun e!4288925 () Bool)

(assert (=> b!7136354 (= e!4288923 e!4288925)))

(declare-fun c!1330862 () Bool)

(assert (=> b!7136354 (= c!1330862 (isEmpty!40047 (exprs!7617 lt!2565806)))))

(declare-fun b!7136355 () Bool)

(declare-fun e!4288921 () Bool)

(assert (=> b!7136355 (= e!4288925 e!4288921)))

(declare-fun c!1330859 () Bool)

(assert (=> b!7136355 (= c!1330859 (isEmpty!40047 (tail!13958 (exprs!7617 lt!2565806))))))

(declare-fun b!7136356 () Bool)

(declare-fun lt!2565847 () Regex!18123)

(assert (=> b!7136356 (= e!4288921 (= lt!2565847 (head!14486 (exprs!7617 lt!2565806))))))

(declare-fun b!7136357 () Bool)

(declare-fun e!4288926 () Regex!18123)

(assert (=> b!7136357 (= e!4288926 (h!75648 (exprs!7617 lt!2565806)))))

(assert (=> d!2226598 e!4288923))

(declare-fun res!2911810 () Bool)

(assert (=> d!2226598 (=> (not res!2911810) (not e!4288923))))

(assert (=> d!2226598 (= res!2911810 (validRegex!9290 lt!2565847))))

(assert (=> d!2226598 (= lt!2565847 e!4288926)))

(declare-fun c!1330861 () Bool)

(assert (=> d!2226598 (= c!1330861 e!4288924)))

(declare-fun res!2911811 () Bool)

(assert (=> d!2226598 (=> (not res!2911811) (not e!4288924))))

(assert (=> d!2226598 (= res!2911811 ((_ is Cons!69200) (exprs!7617 lt!2565806)))))

(assert (=> d!2226598 (forall!16966 (exprs!7617 lt!2565806) lambda!433651)))

(assert (=> d!2226598 (= (generalisedConcat!2318 (exprs!7617 lt!2565806)) lt!2565847)))

(declare-fun b!7136358 () Bool)

(assert (=> b!7136358 (= e!4288922 (Concat!26968 (h!75648 (exprs!7617 lt!2565806)) (generalisedConcat!2318 (t!383341 (exprs!7617 lt!2565806)))))))

(declare-fun b!7136359 () Bool)

(assert (=> b!7136359 (= e!4288921 (isConcat!1549 lt!2565847))))

(declare-fun b!7136360 () Bool)

(assert (=> b!7136360 (= e!4288926 e!4288922)))

(declare-fun c!1330860 () Bool)

(assert (=> b!7136360 (= c!1330860 ((_ is Cons!69200) (exprs!7617 lt!2565806)))))

(declare-fun b!7136361 () Bool)

(assert (=> b!7136361 (= e!4288925 (isEmptyExpr!2026 lt!2565847))))

(assert (= (and d!2226598 res!2911811) b!7136353))

(assert (= (and d!2226598 c!1330861) b!7136357))

(assert (= (and d!2226598 (not c!1330861)) b!7136360))

(assert (= (and b!7136360 c!1330860) b!7136358))

(assert (= (and b!7136360 (not c!1330860)) b!7136352))

(assert (= (and d!2226598 res!2911810) b!7136354))

(assert (= (and b!7136354 c!1330862) b!7136361))

(assert (= (and b!7136354 (not c!1330862)) b!7136355))

(assert (= (and b!7136355 c!1330859) b!7136356))

(assert (= (and b!7136355 (not c!1330859)) b!7136359))

(declare-fun m!7852500 () Bool)

(assert (=> d!2226598 m!7852500))

(declare-fun m!7852502 () Bool)

(assert (=> d!2226598 m!7852502))

(declare-fun m!7852504 () Bool)

(assert (=> b!7136361 m!7852504))

(declare-fun m!7852506 () Bool)

(assert (=> b!7136355 m!7852506))

(assert (=> b!7136355 m!7852506))

(declare-fun m!7852508 () Bool)

(assert (=> b!7136355 m!7852508))

(declare-fun m!7852510 () Bool)

(assert (=> b!7136354 m!7852510))

(declare-fun m!7852512 () Bool)

(assert (=> b!7136359 m!7852512))

(declare-fun m!7852514 () Bool)

(assert (=> b!7136353 m!7852514))

(declare-fun m!7852516 () Bool)

(assert (=> b!7136358 m!7852516))

(declare-fun m!7852518 () Bool)

(assert (=> b!7136356 m!7852518))

(assert (=> bs!1887355 d!2226598))

(declare-fun bs!1887568 () Bool)

(declare-fun d!2226600 () Bool)

(assert (= bs!1887568 (and d!2226600 d!2226560)))

(declare-fun lambda!433652 () Int)

(assert (=> bs!1887568 (not (= lambda!433652 lambda!433645))))

(declare-fun bs!1887569 () Bool)

(assert (= bs!1887569 (and d!2226600 d!2226580)))

(assert (=> bs!1887569 (= lambda!433652 lambda!433650)))

(declare-fun bs!1887570 () Bool)

(assert (= bs!1887570 (and d!2226600 b!7135563)))

(assert (=> bs!1887570 (= lambda!433652 lambda!433570)))

(declare-fun bs!1887571 () Bool)

(assert (= bs!1887571 (and d!2226600 b!7135567)))

(assert (=> bs!1887571 (not (= lambda!433652 lambda!433568))))

(declare-fun bs!1887572 () Bool)

(assert (= bs!1887572 (and d!2226600 d!2226382)))

(assert (=> bs!1887572 (= lambda!433652 lambda!433615)))

(declare-fun bs!1887573 () Bool)

(assert (= bs!1887573 (and d!2226600 d!2226346)))

(assert (=> bs!1887573 (= lambda!433652 lambda!433588)))

(declare-fun bs!1887574 () Bool)

(assert (= bs!1887574 (and d!2226600 d!2226598)))

(assert (=> bs!1887574 (= lambda!433652 lambda!433651)))

(declare-fun bs!1887575 () Bool)

(assert (= bs!1887575 (and d!2226600 d!2226556)))

(assert (=> bs!1887575 (= lambda!433652 lambda!433643)))

(declare-fun bs!1887576 () Bool)

(assert (= bs!1887576 (and d!2226600 d!2226380)))

(assert (=> bs!1887576 (= lambda!433652 lambda!433611)))

(declare-fun bs!1887577 () Bool)

(assert (= bs!1887577 (and d!2226600 d!2226384)))

(assert (=> bs!1887577 (= lambda!433652 lambda!433618)))

(declare-fun bs!1887578 () Bool)

(assert (= bs!1887578 (and d!2226600 d!2226562)))

(assert (=> bs!1887578 (not (= lambda!433652 lambda!433648))))

(assert (=> bs!1887576 (not (= lambda!433652 lambda!433612))))

(declare-fun bs!1887579 () Bool)

(assert (= bs!1887579 (and d!2226600 d!2226350)))

(assert (=> bs!1887579 (not (= lambda!433652 lambda!433594))))

(declare-fun bs!1887580 () Bool)

(assert (= bs!1887580 (and d!2226600 d!2226558)))

(assert (=> bs!1887580 (= lambda!433652 lambda!433644)))

(declare-fun bs!1887581 () Bool)

(assert (= bs!1887581 (and d!2226600 d!2226542)))

(assert (=> bs!1887581 (= lambda!433652 lambda!433640)))

(declare-fun b!7136362 () Bool)

(declare-fun e!4288930 () Bool)

(declare-fun lt!2565848 () Regex!18123)

(assert (=> b!7136362 (= e!4288930 (= lt!2565848 (head!14486 (t!383341 lt!2565744))))))

(declare-fun e!4288929 () Bool)

(assert (=> d!2226600 e!4288929))

(declare-fun res!2911812 () Bool)

(assert (=> d!2226600 (=> (not res!2911812) (not e!4288929))))

(assert (=> d!2226600 (= res!2911812 (validRegex!9290 lt!2565848))))

(declare-fun e!4288927 () Regex!18123)

(assert (=> d!2226600 (= lt!2565848 e!4288927)))

(declare-fun c!1330865 () Bool)

(declare-fun e!4288928 () Bool)

(assert (=> d!2226600 (= c!1330865 e!4288928)))

(declare-fun res!2911813 () Bool)

(assert (=> d!2226600 (=> (not res!2911813) (not e!4288928))))

(assert (=> d!2226600 (= res!2911813 ((_ is Cons!69200) (t!383341 lt!2565744)))))

(assert (=> d!2226600 (forall!16966 (t!383341 lt!2565744) lambda!433652)))

(assert (=> d!2226600 (= (generalisedUnion!2628 (t!383341 lt!2565744)) lt!2565848)))

(declare-fun b!7136363 () Bool)

(declare-fun e!4288932 () Regex!18123)

(assert (=> b!7136363 (= e!4288932 (Union!18123 (h!75648 (t!383341 lt!2565744)) (generalisedUnion!2628 (t!383341 (t!383341 lt!2565744)))))))

(declare-fun b!7136364 () Bool)

(assert (=> b!7136364 (= e!4288927 (h!75648 (t!383341 lt!2565744)))))

(declare-fun b!7136365 () Bool)

(declare-fun e!4288931 () Bool)

(assert (=> b!7136365 (= e!4288931 e!4288930)))

(declare-fun c!1330866 () Bool)

(assert (=> b!7136365 (= c!1330866 (isEmpty!40047 (tail!13958 (t!383341 lt!2565744))))))

(declare-fun b!7136366 () Bool)

(assert (=> b!7136366 (= e!4288929 e!4288931)))

(declare-fun c!1330863 () Bool)

(assert (=> b!7136366 (= c!1330863 (isEmpty!40047 (t!383341 lt!2565744)))))

(declare-fun b!7136367 () Bool)

(assert (=> b!7136367 (= e!4288931 (isEmptyLang!2079 lt!2565848))))

(declare-fun b!7136368 () Bool)

(assert (=> b!7136368 (= e!4288928 (isEmpty!40047 (t!383341 (t!383341 lt!2565744))))))

(declare-fun b!7136369 () Bool)

(assert (=> b!7136369 (= e!4288930 (isUnion!1507 lt!2565848))))

(declare-fun b!7136370 () Bool)

(assert (=> b!7136370 (= e!4288932 EmptyLang!18123)))

(declare-fun b!7136371 () Bool)

(assert (=> b!7136371 (= e!4288927 e!4288932)))

(declare-fun c!1330864 () Bool)

(assert (=> b!7136371 (= c!1330864 ((_ is Cons!69200) (t!383341 lt!2565744)))))

(assert (= (and d!2226600 res!2911813) b!7136368))

(assert (= (and d!2226600 c!1330865) b!7136364))

(assert (= (and d!2226600 (not c!1330865)) b!7136371))

(assert (= (and b!7136371 c!1330864) b!7136363))

(assert (= (and b!7136371 (not c!1330864)) b!7136370))

(assert (= (and d!2226600 res!2911812) b!7136366))

(assert (= (and b!7136366 c!1330863) b!7136367))

(assert (= (and b!7136366 (not c!1330863)) b!7136365))

(assert (= (and b!7136365 c!1330866) b!7136362))

(assert (= (and b!7136365 (not c!1330866)) b!7136369))

(declare-fun m!7852520 () Bool)

(assert (=> b!7136365 m!7852520))

(assert (=> b!7136365 m!7852520))

(declare-fun m!7852522 () Bool)

(assert (=> b!7136365 m!7852522))

(declare-fun m!7852524 () Bool)

(assert (=> b!7136363 m!7852524))

(declare-fun m!7852526 () Bool)

(assert (=> b!7136369 m!7852526))

(assert (=> b!7136366 m!7852036))

(assert (=> b!7136362 m!7852330))

(declare-fun m!7852528 () Bool)

(assert (=> b!7136368 m!7852528))

(declare-fun m!7852530 () Bool)

(assert (=> d!2226600 m!7852530))

(declare-fun m!7852532 () Bool)

(assert (=> d!2226600 m!7852532))

(declare-fun m!7852534 () Bool)

(assert (=> b!7136367 m!7852534))

(assert (=> b!7135766 d!2226600))

(declare-fun d!2226602 () Bool)

(declare-fun res!2911818 () Bool)

(declare-fun e!4288937 () Bool)

(assert (=> d!2226602 (=> res!2911818 e!4288937)))

(assert (=> d!2226602 (= res!2911818 ((_ is Nil!69201) lt!2565812))))

(assert (=> d!2226602 (= (noDuplicate!2810 lt!2565812) e!4288937)))

(declare-fun b!7136376 () Bool)

(declare-fun e!4288938 () Bool)

(assert (=> b!7136376 (= e!4288937 e!4288938)))

(declare-fun res!2911819 () Bool)

(assert (=> b!7136376 (=> (not res!2911819) (not e!4288938))))

(assert (=> b!7136376 (= res!2911819 (not (contains!20565 (t!383342 lt!2565812) (h!75649 lt!2565812))))))

(declare-fun b!7136377 () Bool)

(assert (=> b!7136377 (= e!4288938 (noDuplicate!2810 (t!383342 lt!2565812)))))

(assert (= (and d!2226602 (not res!2911818)) b!7136376))

(assert (= (and b!7136376 res!2911819) b!7136377))

(declare-fun m!7852536 () Bool)

(assert (=> b!7136376 m!7852536))

(declare-fun m!7852538 () Bool)

(assert (=> b!7136377 m!7852538))

(assert (=> d!2226392 d!2226602))

(declare-fun d!2226604 () Bool)

(declare-fun e!4288946 () Bool)

(assert (=> d!2226604 e!4288946))

(declare-fun res!2911824 () Bool)

(assert (=> d!2226604 (=> (not res!2911824) (not e!4288946))))

(declare-fun res!2911825 () List!69325)

(assert (=> d!2226604 (= res!2911824 (noDuplicate!2810 res!2911825))))

(declare-fun e!4288947 () Bool)

(assert (=> d!2226604 e!4288947))

(assert (=> d!2226604 (= (choose!55164 z!3189) res!2911825)))

(declare-fun b!7136385 () Bool)

(declare-fun e!4288945 () Bool)

(declare-fun tp!1967504 () Bool)

(assert (=> b!7136385 (= e!4288945 tp!1967504)))

(declare-fun tp!1967505 () Bool)

(declare-fun b!7136384 () Bool)

(assert (=> b!7136384 (= e!4288947 (and (inv!88371 (h!75649 res!2911825)) e!4288945 tp!1967505))))

(declare-fun b!7136386 () Bool)

(assert (=> b!7136386 (= e!4288946 (= (content!14166 res!2911825) z!3189))))

(assert (= b!7136384 b!7136385))

(assert (= (and d!2226604 ((_ is Cons!69201) res!2911825)) b!7136384))

(assert (= (and d!2226604 res!2911824) b!7136386))

(declare-fun m!7852540 () Bool)

(assert (=> d!2226604 m!7852540))

(declare-fun m!7852542 () Bool)

(assert (=> b!7136384 m!7852542))

(declare-fun m!7852544 () Bool)

(assert (=> b!7136386 m!7852544))

(assert (=> d!2226392 d!2226604))

(declare-fun b!7136390 () Bool)

(declare-fun e!4288948 () Bool)

(declare-fun tp!1967508 () Bool)

(declare-fun tp!1967510 () Bool)

(assert (=> b!7136390 (= e!4288948 (and tp!1967508 tp!1967510))))

(declare-fun b!7136387 () Bool)

(assert (=> b!7136387 (= e!4288948 tp_is_empty!45883)))

(assert (=> b!7135846 (= tp!1967339 e!4288948)))

(declare-fun b!7136389 () Bool)

(declare-fun tp!1967507 () Bool)

(assert (=> b!7136389 (= e!4288948 tp!1967507)))

(declare-fun b!7136388 () Bool)

(declare-fun tp!1967509 () Bool)

(declare-fun tp!1967506 () Bool)

(assert (=> b!7136388 (= e!4288948 (and tp!1967509 tp!1967506))))

(assert (= (and b!7135846 ((_ is ElementMatch!18123) (regOne!36759 (regTwo!36759 r!11483)))) b!7136387))

(assert (= (and b!7135846 ((_ is Concat!26968) (regOne!36759 (regTwo!36759 r!11483)))) b!7136388))

(assert (= (and b!7135846 ((_ is Star!18123) (regOne!36759 (regTwo!36759 r!11483)))) b!7136389))

(assert (= (and b!7135846 ((_ is Union!18123) (regOne!36759 (regTwo!36759 r!11483)))) b!7136390))

(declare-fun b!7136394 () Bool)

(declare-fun e!4288949 () Bool)

(declare-fun tp!1967513 () Bool)

(declare-fun tp!1967515 () Bool)

(assert (=> b!7136394 (= e!4288949 (and tp!1967513 tp!1967515))))

(declare-fun b!7136391 () Bool)

(assert (=> b!7136391 (= e!4288949 tp_is_empty!45883)))

(assert (=> b!7135846 (= tp!1967341 e!4288949)))

(declare-fun b!7136393 () Bool)

(declare-fun tp!1967512 () Bool)

(assert (=> b!7136393 (= e!4288949 tp!1967512)))

(declare-fun b!7136392 () Bool)

(declare-fun tp!1967514 () Bool)

(declare-fun tp!1967511 () Bool)

(assert (=> b!7136392 (= e!4288949 (and tp!1967514 tp!1967511))))

(assert (= (and b!7135846 ((_ is ElementMatch!18123) (regTwo!36759 (regTwo!36759 r!11483)))) b!7136391))

(assert (= (and b!7135846 ((_ is Concat!26968) (regTwo!36759 (regTwo!36759 r!11483)))) b!7136392))

(assert (= (and b!7135846 ((_ is Star!18123) (regTwo!36759 (regTwo!36759 r!11483)))) b!7136393))

(assert (= (and b!7135846 ((_ is Union!18123) (regTwo!36759 (regTwo!36759 r!11483)))) b!7136394))

(declare-fun b!7136395 () Bool)

(declare-fun e!4288950 () Bool)

(declare-fun tp!1967516 () Bool)

(declare-fun tp!1967517 () Bool)

(assert (=> b!7136395 (= e!4288950 (and tp!1967516 tp!1967517))))

(assert (=> b!7135838 (= tp!1967330 e!4288950)))

(assert (= (and b!7135838 ((_ is Cons!69200) (exprs!7617 setElem!52361))) b!7136395))

(declare-fun b!7136399 () Bool)

(declare-fun e!4288951 () Bool)

(declare-fun tp!1967520 () Bool)

(declare-fun tp!1967522 () Bool)

(assert (=> b!7136399 (= e!4288951 (and tp!1967520 tp!1967522))))

(declare-fun b!7136396 () Bool)

(assert (=> b!7136396 (= e!4288951 tp_is_empty!45883)))

(assert (=> b!7135850 (= tp!1967344 e!4288951)))

(declare-fun b!7136398 () Bool)

(declare-fun tp!1967519 () Bool)

(assert (=> b!7136398 (= e!4288951 tp!1967519)))

(declare-fun b!7136397 () Bool)

(declare-fun tp!1967521 () Bool)

(declare-fun tp!1967518 () Bool)

(assert (=> b!7136397 (= e!4288951 (and tp!1967521 tp!1967518))))

(assert (= (and b!7135850 ((_ is ElementMatch!18123) (regOne!36759 (regOne!36758 r!11483)))) b!7136396))

(assert (= (and b!7135850 ((_ is Concat!26968) (regOne!36759 (regOne!36758 r!11483)))) b!7136397))

(assert (= (and b!7135850 ((_ is Star!18123) (regOne!36759 (regOne!36758 r!11483)))) b!7136398))

(assert (= (and b!7135850 ((_ is Union!18123) (regOne!36759 (regOne!36758 r!11483)))) b!7136399))

(declare-fun b!7136403 () Bool)

(declare-fun e!4288952 () Bool)

(declare-fun tp!1967525 () Bool)

(declare-fun tp!1967527 () Bool)

(assert (=> b!7136403 (= e!4288952 (and tp!1967525 tp!1967527))))

(declare-fun b!7136400 () Bool)

(assert (=> b!7136400 (= e!4288952 tp_is_empty!45883)))

(assert (=> b!7135850 (= tp!1967346 e!4288952)))

(declare-fun b!7136402 () Bool)

(declare-fun tp!1967524 () Bool)

(assert (=> b!7136402 (= e!4288952 tp!1967524)))

(declare-fun b!7136401 () Bool)

(declare-fun tp!1967526 () Bool)

(declare-fun tp!1967523 () Bool)

(assert (=> b!7136401 (= e!4288952 (and tp!1967526 tp!1967523))))

(assert (= (and b!7135850 ((_ is ElementMatch!18123) (regTwo!36759 (regOne!36758 r!11483)))) b!7136400))

(assert (= (and b!7135850 ((_ is Concat!26968) (regTwo!36759 (regOne!36758 r!11483)))) b!7136401))

(assert (= (and b!7135850 ((_ is Star!18123) (regTwo!36759 (regOne!36758 r!11483)))) b!7136402))

(assert (= (and b!7135850 ((_ is Union!18123) (regTwo!36759 (regOne!36758 r!11483)))) b!7136403))

(declare-fun b!7136407 () Bool)

(declare-fun e!4288953 () Bool)

(declare-fun tp!1967530 () Bool)

(declare-fun tp!1967532 () Bool)

(assert (=> b!7136407 (= e!4288953 (and tp!1967530 tp!1967532))))

(declare-fun b!7136404 () Bool)

(assert (=> b!7136404 (= e!4288953 tp_is_empty!45883)))

(assert (=> b!7135841 (= tp!1967333 e!4288953)))

(declare-fun b!7136406 () Bool)

(declare-fun tp!1967529 () Bool)

(assert (=> b!7136406 (= e!4288953 tp!1967529)))

(declare-fun b!7136405 () Bool)

(declare-fun tp!1967531 () Bool)

(declare-fun tp!1967528 () Bool)

(assert (=> b!7136405 (= e!4288953 (and tp!1967531 tp!1967528))))

(assert (= (and b!7135841 ((_ is ElementMatch!18123) (reg!18452 (regOne!36759 r!11483)))) b!7136404))

(assert (= (and b!7135841 ((_ is Concat!26968) (reg!18452 (regOne!36759 r!11483)))) b!7136405))

(assert (= (and b!7135841 ((_ is Star!18123) (reg!18452 (regOne!36759 r!11483)))) b!7136406))

(assert (= (and b!7135841 ((_ is Union!18123) (reg!18452 (regOne!36759 r!11483)))) b!7136407))

(declare-fun b!7136411 () Bool)

(declare-fun e!4288954 () Bool)

(declare-fun tp!1967535 () Bool)

(declare-fun tp!1967537 () Bool)

(assert (=> b!7136411 (= e!4288954 (and tp!1967535 tp!1967537))))

(declare-fun b!7136408 () Bool)

(assert (=> b!7136408 (= e!4288954 tp_is_empty!45883)))

(assert (=> b!7135842 (= tp!1967334 e!4288954)))

(declare-fun b!7136410 () Bool)

(declare-fun tp!1967534 () Bool)

(assert (=> b!7136410 (= e!4288954 tp!1967534)))

(declare-fun b!7136409 () Bool)

(declare-fun tp!1967536 () Bool)

(declare-fun tp!1967533 () Bool)

(assert (=> b!7136409 (= e!4288954 (and tp!1967536 tp!1967533))))

(assert (= (and b!7135842 ((_ is ElementMatch!18123) (regOne!36759 (regOne!36759 r!11483)))) b!7136408))

(assert (= (and b!7135842 ((_ is Concat!26968) (regOne!36759 (regOne!36759 r!11483)))) b!7136409))

(assert (= (and b!7135842 ((_ is Star!18123) (regOne!36759 (regOne!36759 r!11483)))) b!7136410))

(assert (= (and b!7135842 ((_ is Union!18123) (regOne!36759 (regOne!36759 r!11483)))) b!7136411))

(declare-fun b!7136415 () Bool)

(declare-fun e!4288955 () Bool)

(declare-fun tp!1967540 () Bool)

(declare-fun tp!1967542 () Bool)

(assert (=> b!7136415 (= e!4288955 (and tp!1967540 tp!1967542))))

(declare-fun b!7136412 () Bool)

(assert (=> b!7136412 (= e!4288955 tp_is_empty!45883)))

(assert (=> b!7135842 (= tp!1967336 e!4288955)))

(declare-fun b!7136414 () Bool)

(declare-fun tp!1967539 () Bool)

(assert (=> b!7136414 (= e!4288955 tp!1967539)))

(declare-fun b!7136413 () Bool)

(declare-fun tp!1967541 () Bool)

(declare-fun tp!1967538 () Bool)

(assert (=> b!7136413 (= e!4288955 (and tp!1967541 tp!1967538))))

(assert (= (and b!7135842 ((_ is ElementMatch!18123) (regTwo!36759 (regOne!36759 r!11483)))) b!7136412))

(assert (= (and b!7135842 ((_ is Concat!26968) (regTwo!36759 (regOne!36759 r!11483)))) b!7136413))

(assert (= (and b!7135842 ((_ is Star!18123) (regTwo!36759 (regOne!36759 r!11483)))) b!7136414))

(assert (= (and b!7135842 ((_ is Union!18123) (regTwo!36759 (regOne!36759 r!11483)))) b!7136415))

(declare-fun b!7136419 () Bool)

(declare-fun e!4288956 () Bool)

(declare-fun tp!1967545 () Bool)

(declare-fun tp!1967547 () Bool)

(assert (=> b!7136419 (= e!4288956 (and tp!1967545 tp!1967547))))

(declare-fun b!7136416 () Bool)

(assert (=> b!7136416 (= e!4288956 tp_is_empty!45883)))

(assert (=> b!7135848 (= tp!1967345 e!4288956)))

(declare-fun b!7136418 () Bool)

(declare-fun tp!1967544 () Bool)

(assert (=> b!7136418 (= e!4288956 tp!1967544)))

(declare-fun b!7136417 () Bool)

(declare-fun tp!1967546 () Bool)

(declare-fun tp!1967543 () Bool)

(assert (=> b!7136417 (= e!4288956 (and tp!1967546 tp!1967543))))

(assert (= (and b!7135848 ((_ is ElementMatch!18123) (regOne!36758 (regOne!36758 r!11483)))) b!7136416))

(assert (= (and b!7135848 ((_ is Concat!26968) (regOne!36758 (regOne!36758 r!11483)))) b!7136417))

(assert (= (and b!7135848 ((_ is Star!18123) (regOne!36758 (regOne!36758 r!11483)))) b!7136418))

(assert (= (and b!7135848 ((_ is Union!18123) (regOne!36758 (regOne!36758 r!11483)))) b!7136419))

(declare-fun b!7136423 () Bool)

(declare-fun e!4288957 () Bool)

(declare-fun tp!1967550 () Bool)

(declare-fun tp!1967552 () Bool)

(assert (=> b!7136423 (= e!4288957 (and tp!1967550 tp!1967552))))

(declare-fun b!7136420 () Bool)

(assert (=> b!7136420 (= e!4288957 tp_is_empty!45883)))

(assert (=> b!7135848 (= tp!1967342 e!4288957)))

(declare-fun b!7136422 () Bool)

(declare-fun tp!1967549 () Bool)

(assert (=> b!7136422 (= e!4288957 tp!1967549)))

(declare-fun b!7136421 () Bool)

(declare-fun tp!1967551 () Bool)

(declare-fun tp!1967548 () Bool)

(assert (=> b!7136421 (= e!4288957 (and tp!1967551 tp!1967548))))

(assert (= (and b!7135848 ((_ is ElementMatch!18123) (regTwo!36758 (regOne!36758 r!11483)))) b!7136420))

(assert (= (and b!7135848 ((_ is Concat!26968) (regTwo!36758 (regOne!36758 r!11483)))) b!7136421))

(assert (= (and b!7135848 ((_ is Star!18123) (regTwo!36758 (regOne!36758 r!11483)))) b!7136422))

(assert (= (and b!7135848 ((_ is Union!18123) (regTwo!36758 (regOne!36758 r!11483)))) b!7136423))

(declare-fun b!7136427 () Bool)

(declare-fun e!4288958 () Bool)

(declare-fun tp!1967555 () Bool)

(declare-fun tp!1967557 () Bool)

(assert (=> b!7136427 (= e!4288958 (and tp!1967555 tp!1967557))))

(declare-fun b!7136424 () Bool)

(assert (=> b!7136424 (= e!4288958 tp_is_empty!45883)))

(assert (=> b!7135853 (= tp!1967348 e!4288958)))

(declare-fun b!7136426 () Bool)

(declare-fun tp!1967554 () Bool)

(assert (=> b!7136426 (= e!4288958 tp!1967554)))

(declare-fun b!7136425 () Bool)

(declare-fun tp!1967556 () Bool)

(declare-fun tp!1967553 () Bool)

(assert (=> b!7136425 (= e!4288958 (and tp!1967556 tp!1967553))))

(assert (= (and b!7135853 ((_ is ElementMatch!18123) (reg!18452 (regTwo!36758 r!11483)))) b!7136424))

(assert (= (and b!7135853 ((_ is Concat!26968) (reg!18452 (regTwo!36758 r!11483)))) b!7136425))

(assert (= (and b!7135853 ((_ is Star!18123) (reg!18452 (regTwo!36758 r!11483)))) b!7136426))

(assert (= (and b!7135853 ((_ is Union!18123) (reg!18452 (regTwo!36758 r!11483)))) b!7136427))

(declare-fun b!7136431 () Bool)

(declare-fun e!4288959 () Bool)

(declare-fun tp!1967560 () Bool)

(declare-fun tp!1967562 () Bool)

(assert (=> b!7136431 (= e!4288959 (and tp!1967560 tp!1967562))))

(declare-fun b!7136428 () Bool)

(assert (=> b!7136428 (= e!4288959 tp_is_empty!45883)))

(assert (=> b!7135852 (= tp!1967350 e!4288959)))

(declare-fun b!7136430 () Bool)

(declare-fun tp!1967559 () Bool)

(assert (=> b!7136430 (= e!4288959 tp!1967559)))

(declare-fun b!7136429 () Bool)

(declare-fun tp!1967561 () Bool)

(declare-fun tp!1967558 () Bool)

(assert (=> b!7136429 (= e!4288959 (and tp!1967561 tp!1967558))))

(assert (= (and b!7135852 ((_ is ElementMatch!18123) (regOne!36758 (regTwo!36758 r!11483)))) b!7136428))

(assert (= (and b!7135852 ((_ is Concat!26968) (regOne!36758 (regTwo!36758 r!11483)))) b!7136429))

(assert (= (and b!7135852 ((_ is Star!18123) (regOne!36758 (regTwo!36758 r!11483)))) b!7136430))

(assert (= (and b!7135852 ((_ is Union!18123) (regOne!36758 (regTwo!36758 r!11483)))) b!7136431))

(declare-fun b!7136435 () Bool)

(declare-fun e!4288960 () Bool)

(declare-fun tp!1967565 () Bool)

(declare-fun tp!1967567 () Bool)

(assert (=> b!7136435 (= e!4288960 (and tp!1967565 tp!1967567))))

(declare-fun b!7136432 () Bool)

(assert (=> b!7136432 (= e!4288960 tp_is_empty!45883)))

(assert (=> b!7135852 (= tp!1967347 e!4288960)))

(declare-fun b!7136434 () Bool)

(declare-fun tp!1967564 () Bool)

(assert (=> b!7136434 (= e!4288960 tp!1967564)))

(declare-fun b!7136433 () Bool)

(declare-fun tp!1967566 () Bool)

(declare-fun tp!1967563 () Bool)

(assert (=> b!7136433 (= e!4288960 (and tp!1967566 tp!1967563))))

(assert (= (and b!7135852 ((_ is ElementMatch!18123) (regTwo!36758 (regTwo!36758 r!11483)))) b!7136432))

(assert (= (and b!7135852 ((_ is Concat!26968) (regTwo!36758 (regTwo!36758 r!11483)))) b!7136433))

(assert (= (and b!7135852 ((_ is Star!18123) (regTwo!36758 (regTwo!36758 r!11483)))) b!7136434))

(assert (= (and b!7135852 ((_ is Union!18123) (regTwo!36758 (regTwo!36758 r!11483)))) b!7136435))

(declare-fun b!7136439 () Bool)

(declare-fun e!4288961 () Bool)

(declare-fun tp!1967570 () Bool)

(declare-fun tp!1967572 () Bool)

(assert (=> b!7136439 (= e!4288961 (and tp!1967570 tp!1967572))))

(declare-fun b!7136436 () Bool)

(assert (=> b!7136436 (= e!4288961 tp_is_empty!45883)))

(assert (=> b!7135840 (= tp!1967335 e!4288961)))

(declare-fun b!7136438 () Bool)

(declare-fun tp!1967569 () Bool)

(assert (=> b!7136438 (= e!4288961 tp!1967569)))

(declare-fun b!7136437 () Bool)

(declare-fun tp!1967571 () Bool)

(declare-fun tp!1967568 () Bool)

(assert (=> b!7136437 (= e!4288961 (and tp!1967571 tp!1967568))))

(assert (= (and b!7135840 ((_ is ElementMatch!18123) (regOne!36758 (regOne!36759 r!11483)))) b!7136436))

(assert (= (and b!7135840 ((_ is Concat!26968) (regOne!36758 (regOne!36759 r!11483)))) b!7136437))

(assert (= (and b!7135840 ((_ is Star!18123) (regOne!36758 (regOne!36759 r!11483)))) b!7136438))

(assert (= (and b!7135840 ((_ is Union!18123) (regOne!36758 (regOne!36759 r!11483)))) b!7136439))

(declare-fun b!7136443 () Bool)

(declare-fun e!4288962 () Bool)

(declare-fun tp!1967575 () Bool)

(declare-fun tp!1967577 () Bool)

(assert (=> b!7136443 (= e!4288962 (and tp!1967575 tp!1967577))))

(declare-fun b!7136440 () Bool)

(assert (=> b!7136440 (= e!4288962 tp_is_empty!45883)))

(assert (=> b!7135840 (= tp!1967332 e!4288962)))

(declare-fun b!7136442 () Bool)

(declare-fun tp!1967574 () Bool)

(assert (=> b!7136442 (= e!4288962 tp!1967574)))

(declare-fun b!7136441 () Bool)

(declare-fun tp!1967576 () Bool)

(declare-fun tp!1967573 () Bool)

(assert (=> b!7136441 (= e!4288962 (and tp!1967576 tp!1967573))))

(assert (= (and b!7135840 ((_ is ElementMatch!18123) (regTwo!36758 (regOne!36759 r!11483)))) b!7136440))

(assert (= (and b!7135840 ((_ is Concat!26968) (regTwo!36758 (regOne!36759 r!11483)))) b!7136441))

(assert (= (and b!7135840 ((_ is Star!18123) (regTwo!36758 (regOne!36759 r!11483)))) b!7136442))

(assert (= (and b!7135840 ((_ is Union!18123) (regTwo!36758 (regOne!36759 r!11483)))) b!7136443))

(declare-fun b!7136447 () Bool)

(declare-fun e!4288963 () Bool)

(declare-fun tp!1967580 () Bool)

(declare-fun tp!1967582 () Bool)

(assert (=> b!7136447 (= e!4288963 (and tp!1967580 tp!1967582))))

(declare-fun b!7136444 () Bool)

(assert (=> b!7136444 (= e!4288963 tp_is_empty!45883)))

(assert (=> b!7135854 (= tp!1967349 e!4288963)))

(declare-fun b!7136446 () Bool)

(declare-fun tp!1967579 () Bool)

(assert (=> b!7136446 (= e!4288963 tp!1967579)))

(declare-fun b!7136445 () Bool)

(declare-fun tp!1967581 () Bool)

(declare-fun tp!1967578 () Bool)

(assert (=> b!7136445 (= e!4288963 (and tp!1967581 tp!1967578))))

(assert (= (and b!7135854 ((_ is ElementMatch!18123) (regOne!36759 (regTwo!36758 r!11483)))) b!7136444))

(assert (= (and b!7135854 ((_ is Concat!26968) (regOne!36759 (regTwo!36758 r!11483)))) b!7136445))

(assert (= (and b!7135854 ((_ is Star!18123) (regOne!36759 (regTwo!36758 r!11483)))) b!7136446))

(assert (= (and b!7135854 ((_ is Union!18123) (regOne!36759 (regTwo!36758 r!11483)))) b!7136447))

(declare-fun b!7136451 () Bool)

(declare-fun e!4288964 () Bool)

(declare-fun tp!1967585 () Bool)

(declare-fun tp!1967587 () Bool)

(assert (=> b!7136451 (= e!4288964 (and tp!1967585 tp!1967587))))

(declare-fun b!7136448 () Bool)

(assert (=> b!7136448 (= e!4288964 tp_is_empty!45883)))

(assert (=> b!7135854 (= tp!1967351 e!4288964)))

(declare-fun b!7136450 () Bool)

(declare-fun tp!1967584 () Bool)

(assert (=> b!7136450 (= e!4288964 tp!1967584)))

(declare-fun b!7136449 () Bool)

(declare-fun tp!1967586 () Bool)

(declare-fun tp!1967583 () Bool)

(assert (=> b!7136449 (= e!4288964 (and tp!1967586 tp!1967583))))

(assert (= (and b!7135854 ((_ is ElementMatch!18123) (regTwo!36759 (regTwo!36758 r!11483)))) b!7136448))

(assert (= (and b!7135854 ((_ is Concat!26968) (regTwo!36759 (regTwo!36758 r!11483)))) b!7136449))

(assert (= (and b!7135854 ((_ is Star!18123) (regTwo!36759 (regTwo!36758 r!11483)))) b!7136450))

(assert (= (and b!7135854 ((_ is Union!18123) (regTwo!36759 (regTwo!36758 r!11483)))) b!7136451))

(declare-fun b!7136455 () Bool)

(declare-fun e!4288965 () Bool)

(declare-fun tp!1967590 () Bool)

(declare-fun tp!1967592 () Bool)

(assert (=> b!7136455 (= e!4288965 (and tp!1967590 tp!1967592))))

(declare-fun b!7136452 () Bool)

(assert (=> b!7136452 (= e!4288965 tp_is_empty!45883)))

(assert (=> b!7135845 (= tp!1967338 e!4288965)))

(declare-fun b!7136454 () Bool)

(declare-fun tp!1967589 () Bool)

(assert (=> b!7136454 (= e!4288965 tp!1967589)))

(declare-fun b!7136453 () Bool)

(declare-fun tp!1967591 () Bool)

(declare-fun tp!1967588 () Bool)

(assert (=> b!7136453 (= e!4288965 (and tp!1967591 tp!1967588))))

(assert (= (and b!7135845 ((_ is ElementMatch!18123) (reg!18452 (regTwo!36759 r!11483)))) b!7136452))

(assert (= (and b!7135845 ((_ is Concat!26968) (reg!18452 (regTwo!36759 r!11483)))) b!7136453))

(assert (= (and b!7135845 ((_ is Star!18123) (reg!18452 (regTwo!36759 r!11483)))) b!7136454))

(assert (= (and b!7135845 ((_ is Union!18123) (reg!18452 (regTwo!36759 r!11483)))) b!7136455))

(declare-fun b!7136459 () Bool)

(declare-fun e!4288966 () Bool)

(declare-fun tp!1967595 () Bool)

(declare-fun tp!1967597 () Bool)

(assert (=> b!7136459 (= e!4288966 (and tp!1967595 tp!1967597))))

(declare-fun b!7136456 () Bool)

(assert (=> b!7136456 (= e!4288966 tp_is_empty!45883)))

(assert (=> b!7135844 (= tp!1967340 e!4288966)))

(declare-fun b!7136458 () Bool)

(declare-fun tp!1967594 () Bool)

(assert (=> b!7136458 (= e!4288966 tp!1967594)))

(declare-fun b!7136457 () Bool)

(declare-fun tp!1967596 () Bool)

(declare-fun tp!1967593 () Bool)

(assert (=> b!7136457 (= e!4288966 (and tp!1967596 tp!1967593))))

(assert (= (and b!7135844 ((_ is ElementMatch!18123) (regOne!36758 (regTwo!36759 r!11483)))) b!7136456))

(assert (= (and b!7135844 ((_ is Concat!26968) (regOne!36758 (regTwo!36759 r!11483)))) b!7136457))

(assert (= (and b!7135844 ((_ is Star!18123) (regOne!36758 (regTwo!36759 r!11483)))) b!7136458))

(assert (= (and b!7135844 ((_ is Union!18123) (regOne!36758 (regTwo!36759 r!11483)))) b!7136459))

(declare-fun b!7136463 () Bool)

(declare-fun e!4288967 () Bool)

(declare-fun tp!1967600 () Bool)

(declare-fun tp!1967602 () Bool)

(assert (=> b!7136463 (= e!4288967 (and tp!1967600 tp!1967602))))

(declare-fun b!7136460 () Bool)

(assert (=> b!7136460 (= e!4288967 tp_is_empty!45883)))

(assert (=> b!7135844 (= tp!1967337 e!4288967)))

(declare-fun b!7136462 () Bool)

(declare-fun tp!1967599 () Bool)

(assert (=> b!7136462 (= e!4288967 tp!1967599)))

(declare-fun b!7136461 () Bool)

(declare-fun tp!1967601 () Bool)

(declare-fun tp!1967598 () Bool)

(assert (=> b!7136461 (= e!4288967 (and tp!1967601 tp!1967598))))

(assert (= (and b!7135844 ((_ is ElementMatch!18123) (regTwo!36758 (regTwo!36759 r!11483)))) b!7136460))

(assert (= (and b!7135844 ((_ is Concat!26968) (regTwo!36758 (regTwo!36759 r!11483)))) b!7136461))

(assert (= (and b!7135844 ((_ is Star!18123) (regTwo!36758 (regTwo!36759 r!11483)))) b!7136462))

(assert (= (and b!7135844 ((_ is Union!18123) (regTwo!36758 (regTwo!36759 r!11483)))) b!7136463))

(declare-fun condSetEmpty!52363 () Bool)

(assert (=> setNonEmpty!52361 (= condSetEmpty!52363 (= setRest!52361 ((as const (Array Context!14234 Bool)) false)))))

(declare-fun setRes!52363 () Bool)

(assert (=> setNonEmpty!52361 (= tp!1967331 setRes!52363)))

(declare-fun setIsEmpty!52363 () Bool)

(assert (=> setIsEmpty!52363 setRes!52363))

(declare-fun setElem!52363 () Context!14234)

(declare-fun setNonEmpty!52363 () Bool)

(declare-fun e!4288968 () Bool)

(declare-fun tp!1967604 () Bool)

(assert (=> setNonEmpty!52363 (= setRes!52363 (and tp!1967604 (inv!88371 setElem!52363) e!4288968))))

(declare-fun setRest!52363 () (InoxSet Context!14234))

(assert (=> setNonEmpty!52363 (= setRest!52361 ((_ map or) (store ((as const (Array Context!14234 Bool)) false) setElem!52363 true) setRest!52363))))

(declare-fun b!7136464 () Bool)

(declare-fun tp!1967603 () Bool)

(assert (=> b!7136464 (= e!4288968 tp!1967603)))

(assert (= (and setNonEmpty!52361 condSetEmpty!52363) setIsEmpty!52363))

(assert (= (and setNonEmpty!52361 (not condSetEmpty!52363)) setNonEmpty!52363))

(assert (= setNonEmpty!52363 b!7136464))

(declare-fun m!7852546 () Bool)

(assert (=> setNonEmpty!52363 m!7852546))

(declare-fun b!7136468 () Bool)

(declare-fun e!4288969 () Bool)

(declare-fun tp!1967607 () Bool)

(declare-fun tp!1967609 () Bool)

(assert (=> b!7136468 (= e!4288969 (and tp!1967607 tp!1967609))))

(declare-fun b!7136465 () Bool)

(assert (=> b!7136465 (= e!4288969 tp_is_empty!45883)))

(assert (=> b!7135849 (= tp!1967343 e!4288969)))

(declare-fun b!7136467 () Bool)

(declare-fun tp!1967606 () Bool)

(assert (=> b!7136467 (= e!4288969 tp!1967606)))

(declare-fun b!7136466 () Bool)

(declare-fun tp!1967608 () Bool)

(declare-fun tp!1967605 () Bool)

(assert (=> b!7136466 (= e!4288969 (and tp!1967608 tp!1967605))))

(assert (= (and b!7135849 ((_ is ElementMatch!18123) (reg!18452 (regOne!36758 r!11483)))) b!7136465))

(assert (= (and b!7135849 ((_ is Concat!26968) (reg!18452 (regOne!36758 r!11483)))) b!7136466))

(assert (= (and b!7135849 ((_ is Star!18123) (reg!18452 (regOne!36758 r!11483)))) b!7136467))

(assert (= (and b!7135849 ((_ is Union!18123) (reg!18452 (regOne!36758 r!11483)))) b!7136468))

(declare-fun b!7136472 () Bool)

(declare-fun e!4288970 () Bool)

(declare-fun tp!1967612 () Bool)

(declare-fun tp!1967614 () Bool)

(assert (=> b!7136472 (= e!4288970 (and tp!1967612 tp!1967614))))

(declare-fun b!7136469 () Bool)

(assert (=> b!7136469 (= e!4288970 tp_is_empty!45883)))

(assert (=> b!7135832 (= tp!1967322 e!4288970)))

(declare-fun b!7136471 () Bool)

(declare-fun tp!1967611 () Bool)

(assert (=> b!7136471 (= e!4288970 tp!1967611)))

(declare-fun b!7136470 () Bool)

(declare-fun tp!1967613 () Bool)

(declare-fun tp!1967610 () Bool)

(assert (=> b!7136470 (= e!4288970 (and tp!1967613 tp!1967610))))

(assert (= (and b!7135832 ((_ is ElementMatch!18123) (reg!18452 (reg!18452 r!11483)))) b!7136469))

(assert (= (and b!7135832 ((_ is Concat!26968) (reg!18452 (reg!18452 r!11483)))) b!7136470))

(assert (= (and b!7135832 ((_ is Star!18123) (reg!18452 (reg!18452 r!11483)))) b!7136471))

(assert (= (and b!7135832 ((_ is Union!18123) (reg!18452 (reg!18452 r!11483)))) b!7136472))

(declare-fun b!7136476 () Bool)

(declare-fun e!4288971 () Bool)

(declare-fun tp!1967617 () Bool)

(declare-fun tp!1967619 () Bool)

(assert (=> b!7136476 (= e!4288971 (and tp!1967617 tp!1967619))))

(declare-fun b!7136473 () Bool)

(assert (=> b!7136473 (= e!4288971 tp_is_empty!45883)))

(assert (=> b!7135833 (= tp!1967323 e!4288971)))

(declare-fun b!7136475 () Bool)

(declare-fun tp!1967616 () Bool)

(assert (=> b!7136475 (= e!4288971 tp!1967616)))

(declare-fun b!7136474 () Bool)

(declare-fun tp!1967618 () Bool)

(declare-fun tp!1967615 () Bool)

(assert (=> b!7136474 (= e!4288971 (and tp!1967618 tp!1967615))))

(assert (= (and b!7135833 ((_ is ElementMatch!18123) (regOne!36759 (reg!18452 r!11483)))) b!7136473))

(assert (= (and b!7135833 ((_ is Concat!26968) (regOne!36759 (reg!18452 r!11483)))) b!7136474))

(assert (= (and b!7135833 ((_ is Star!18123) (regOne!36759 (reg!18452 r!11483)))) b!7136475))

(assert (= (and b!7135833 ((_ is Union!18123) (regOne!36759 (reg!18452 r!11483)))) b!7136476))

(declare-fun b!7136480 () Bool)

(declare-fun e!4288972 () Bool)

(declare-fun tp!1967622 () Bool)

(declare-fun tp!1967624 () Bool)

(assert (=> b!7136480 (= e!4288972 (and tp!1967622 tp!1967624))))

(declare-fun b!7136477 () Bool)

(assert (=> b!7136477 (= e!4288972 tp_is_empty!45883)))

(assert (=> b!7135833 (= tp!1967325 e!4288972)))

(declare-fun b!7136479 () Bool)

(declare-fun tp!1967621 () Bool)

(assert (=> b!7136479 (= e!4288972 tp!1967621)))

(declare-fun b!7136478 () Bool)

(declare-fun tp!1967623 () Bool)

(declare-fun tp!1967620 () Bool)

(assert (=> b!7136478 (= e!4288972 (and tp!1967623 tp!1967620))))

(assert (= (and b!7135833 ((_ is ElementMatch!18123) (regTwo!36759 (reg!18452 r!11483)))) b!7136477))

(assert (= (and b!7135833 ((_ is Concat!26968) (regTwo!36759 (reg!18452 r!11483)))) b!7136478))

(assert (= (and b!7135833 ((_ is Star!18123) (regTwo!36759 (reg!18452 r!11483)))) b!7136479))

(assert (= (and b!7135833 ((_ is Union!18123) (regTwo!36759 (reg!18452 r!11483)))) b!7136480))

(declare-fun b!7136484 () Bool)

(declare-fun e!4288973 () Bool)

(declare-fun tp!1967627 () Bool)

(declare-fun tp!1967629 () Bool)

(assert (=> b!7136484 (= e!4288973 (and tp!1967627 tp!1967629))))

(declare-fun b!7136481 () Bool)

(assert (=> b!7136481 (= e!4288973 tp_is_empty!45883)))

(assert (=> b!7135859 (= tp!1967356 e!4288973)))

(declare-fun b!7136483 () Bool)

(declare-fun tp!1967626 () Bool)

(assert (=> b!7136483 (= e!4288973 tp!1967626)))

(declare-fun b!7136482 () Bool)

(declare-fun tp!1967628 () Bool)

(declare-fun tp!1967625 () Bool)

(assert (=> b!7136482 (= e!4288973 (and tp!1967628 tp!1967625))))

(assert (= (and b!7135859 ((_ is ElementMatch!18123) (h!75648 (exprs!7617 setElem!52355)))) b!7136481))

(assert (= (and b!7135859 ((_ is Concat!26968) (h!75648 (exprs!7617 setElem!52355)))) b!7136482))

(assert (= (and b!7135859 ((_ is Star!18123) (h!75648 (exprs!7617 setElem!52355)))) b!7136483))

(assert (= (and b!7135859 ((_ is Union!18123) (h!75648 (exprs!7617 setElem!52355)))) b!7136484))

(declare-fun b!7136485 () Bool)

(declare-fun e!4288974 () Bool)

(declare-fun tp!1967630 () Bool)

(declare-fun tp!1967631 () Bool)

(assert (=> b!7136485 (= e!4288974 (and tp!1967630 tp!1967631))))

(assert (=> b!7135859 (= tp!1967357 e!4288974)))

(assert (= (and b!7135859 ((_ is Cons!69200) (t!383341 (exprs!7617 setElem!52355)))) b!7136485))

(declare-fun b!7136489 () Bool)

(declare-fun e!4288975 () Bool)

(declare-fun tp!1967634 () Bool)

(declare-fun tp!1967636 () Bool)

(assert (=> b!7136489 (= e!4288975 (and tp!1967634 tp!1967636))))

(declare-fun b!7136486 () Bool)

(assert (=> b!7136486 (= e!4288975 tp_is_empty!45883)))

(assert (=> b!7135831 (= tp!1967324 e!4288975)))

(declare-fun b!7136488 () Bool)

(declare-fun tp!1967633 () Bool)

(assert (=> b!7136488 (= e!4288975 tp!1967633)))

(declare-fun b!7136487 () Bool)

(declare-fun tp!1967635 () Bool)

(declare-fun tp!1967632 () Bool)

(assert (=> b!7136487 (= e!4288975 (and tp!1967635 tp!1967632))))

(assert (= (and b!7135831 ((_ is ElementMatch!18123) (regOne!36758 (reg!18452 r!11483)))) b!7136486))

(assert (= (and b!7135831 ((_ is Concat!26968) (regOne!36758 (reg!18452 r!11483)))) b!7136487))

(assert (= (and b!7135831 ((_ is Star!18123) (regOne!36758 (reg!18452 r!11483)))) b!7136488))

(assert (= (and b!7135831 ((_ is Union!18123) (regOne!36758 (reg!18452 r!11483)))) b!7136489))

(declare-fun b!7136493 () Bool)

(declare-fun e!4288976 () Bool)

(declare-fun tp!1967639 () Bool)

(declare-fun tp!1967641 () Bool)

(assert (=> b!7136493 (= e!4288976 (and tp!1967639 tp!1967641))))

(declare-fun b!7136490 () Bool)

(assert (=> b!7136490 (= e!4288976 tp_is_empty!45883)))

(assert (=> b!7135831 (= tp!1967321 e!4288976)))

(declare-fun b!7136492 () Bool)

(declare-fun tp!1967638 () Bool)

(assert (=> b!7136492 (= e!4288976 tp!1967638)))

(declare-fun b!7136491 () Bool)

(declare-fun tp!1967640 () Bool)

(declare-fun tp!1967637 () Bool)

(assert (=> b!7136491 (= e!4288976 (and tp!1967640 tp!1967637))))

(assert (= (and b!7135831 ((_ is ElementMatch!18123) (regTwo!36758 (reg!18452 r!11483)))) b!7136490))

(assert (= (and b!7135831 ((_ is Concat!26968) (regTwo!36758 (reg!18452 r!11483)))) b!7136491))

(assert (= (and b!7135831 ((_ is Star!18123) (regTwo!36758 (reg!18452 r!11483)))) b!7136492))

(assert (= (and b!7135831 ((_ is Union!18123) (regTwo!36758 (reg!18452 r!11483)))) b!7136493))

(declare-fun b_lambda!272355 () Bool)

(assert (= b_lambda!272335 (or b!7135567 b_lambda!272355)))

(declare-fun bs!1887582 () Bool)

(declare-fun d!2226606 () Bool)

(assert (= bs!1887582 (and d!2226606 b!7135567)))

(assert (=> bs!1887582 (= (dynLambda!28146 lambda!433568 lt!2565831) (nullable!7643 lt!2565831))))

(declare-fun m!7852548 () Bool)

(assert (=> bs!1887582 m!7852548))

(assert (=> d!2226518 d!2226606))

(declare-fun b_lambda!272357 () Bool)

(assert (= b_lambda!272341 (or b!7135557 b_lambda!272357)))

(declare-fun bs!1887583 () Bool)

(declare-fun d!2226608 () Bool)

(assert (= bs!1887583 (and d!2226608 b!7135557)))

(assert (=> bs!1887583 (= (dynLambda!28149 lambda!433569 lt!2565839) (= (generalisedConcat!2318 (exprs!7617 lt!2565839)) lt!2565745))))

(declare-fun m!7852550 () Bool)

(assert (=> bs!1887583 m!7852550))

(assert (=> d!2226532 d!2226608))

(declare-fun b_lambda!272359 () Bool)

(assert (= b_lambda!272349 (or d!2226350 b_lambda!272359)))

(declare-fun bs!1887584 () Bool)

(declare-fun d!2226610 () Bool)

(assert (= bs!1887584 (and d!2226610 d!2226350)))

(assert (=> bs!1887584 (= (dynLambda!28146 lambda!433594 (h!75648 lt!2565744)) (not (dynLambda!28146 lambda!433568 (h!75648 lt!2565744))))))

(declare-fun b_lambda!272377 () Bool)

(assert (=> (not b_lambda!272377) (not bs!1887584)))

(assert (=> bs!1887584 m!7851950))

(assert (=> b!7136321 d!2226610))

(declare-fun b_lambda!272361 () Bool)

(assert (= b_lambda!272343 (or d!2226382 b_lambda!272361)))

(declare-fun bs!1887585 () Bool)

(declare-fun d!2226612 () Bool)

(assert (= bs!1887585 (and d!2226612 d!2226382)))

(assert (=> bs!1887585 (= (dynLambda!28146 lambda!433615 (h!75648 lt!2565744)) (validRegex!9290 (h!75648 lt!2565744)))))

(declare-fun m!7852552 () Bool)

(assert (=> bs!1887585 m!7852552))

(assert (=> b!7136263 d!2226612))

(declare-fun b_lambda!272363 () Bool)

(assert (= b_lambda!272347 (or d!2226380 b_lambda!272363)))

(declare-fun bs!1887586 () Bool)

(declare-fun d!2226614 () Bool)

(assert (= bs!1887586 (and d!2226614 d!2226380)))

(assert (=> bs!1887586 (= (dynLambda!28146 lambda!433611 (h!75648 lt!2565744)) (validRegex!9290 (h!75648 lt!2565744)))))

(assert (=> bs!1887586 m!7852552))

(assert (=> b!7136308 d!2226614))

(declare-fun b_lambda!272365 () Bool)

(assert (= b_lambda!272353 (or b!7135563 b_lambda!272365)))

(declare-fun bs!1887587 () Bool)

(declare-fun d!2226616 () Bool)

(assert (= bs!1887587 (and d!2226616 b!7135563)))

(assert (=> bs!1887587 (= (dynLambda!28146 lambda!433570 (h!75648 (t!383341 (exprs!7617 lt!2565740)))) (validRegex!9290 (h!75648 (t!383341 (exprs!7617 lt!2565740)))))))

(declare-fun m!7852554 () Bool)

(assert (=> bs!1887587 m!7852554))

(assert (=> b!7136350 d!2226616))

(declare-fun b_lambda!272367 () Bool)

(assert (= b_lambda!272351 (or d!2226362 b_lambda!272367)))

(declare-fun bs!1887588 () Bool)

(declare-fun d!2226618 () Bool)

(assert (= bs!1887588 (and d!2226618 d!2226362)))

(assert (=> bs!1887588 (= (dynLambda!28149 lambda!433597 (h!75649 lt!2565746)) (not (dynLambda!28149 lambda!433569 (h!75649 lt!2565746))))))

(declare-fun b_lambda!272379 () Bool)

(assert (=> (not b_lambda!272379) (not bs!1887588)))

(declare-fun m!7852556 () Bool)

(assert (=> bs!1887588 m!7852556))

(assert (=> b!7136333 d!2226618))

(declare-fun b_lambda!272369 () Bool)

(assert (= b_lambda!272339 (or b!7135557 b_lambda!272369)))

(declare-fun bs!1887589 () Bool)

(declare-fun d!2226620 () Bool)

(assert (= bs!1887589 (and d!2226620 b!7135557)))

(assert (=> bs!1887589 (= (dynLambda!28149 lambda!433569 (h!75649 (toList!11154 z!3189))) (= (generalisedConcat!2318 (exprs!7617 (h!75649 (toList!11154 z!3189)))) lt!2565745))))

(declare-fun m!7852558 () Bool)

(assert (=> bs!1887589 m!7852558))

(assert (=> b!7136202 d!2226620))

(declare-fun b_lambda!272371 () Bool)

(assert (= b_lambda!272345 (or d!2226346 b_lambda!272371)))

(declare-fun bs!1887590 () Bool)

(declare-fun d!2226622 () Bool)

(assert (= bs!1887590 (and d!2226622 d!2226346)))

(assert (=> bs!1887590 (= (dynLambda!28146 lambda!433588 (h!75648 (exprs!7617 setElem!52355))) (validRegex!9290 (h!75648 (exprs!7617 setElem!52355))))))

(declare-fun m!7852560 () Bool)

(assert (=> bs!1887590 m!7852560))

(assert (=> b!7136274 d!2226622))

(declare-fun b_lambda!272373 () Bool)

(assert (= b_lambda!272333 (or b!7135567 b_lambda!272373)))

(declare-fun bs!1887591 () Bool)

(declare-fun d!2226624 () Bool)

(assert (= bs!1887591 (and d!2226624 b!7135567)))

(assert (=> bs!1887591 (= (dynLambda!28146 lambda!433568 (h!75648 (t!383341 lt!2565744))) (nullable!7643 (h!75648 (t!383341 lt!2565744))))))

(declare-fun m!7852562 () Bool)

(assert (=> bs!1887591 m!7852562))

(assert (=> b!7136177 d!2226624))

(declare-fun b_lambda!272375 () Bool)

(assert (= b_lambda!272337 (or d!2226384 b_lambda!272375)))

(declare-fun bs!1887592 () Bool)

(declare-fun d!2226626 () Bool)

(assert (= bs!1887592 (and d!2226626 d!2226384)))

(assert (=> bs!1887592 (= (dynLambda!28146 lambda!433618 (h!75648 lt!2565803)) (validRegex!9290 (h!75648 lt!2565803)))))

(declare-fun m!7852564 () Bool)

(assert (=> bs!1887592 m!7852564))

(assert (=> b!7136185 d!2226626))

(check-sat (not b!7136322) (not b!7136358) (not b!7136179) (not d!2226534) (not b!7136309) (not d!2226568) (not b!7136354) (not bs!1887592) (not b!7136376) (not bs!1887589) (not b!7136489) (not b!7136216) (not d!2226604) (not d!2226538) (not b!7136181) (not b!7136384) (not b_lambda!272355) (not b!7136442) (not b!7136406) (not b!7136451) (not b!7136377) (not b!7136405) (not b_lambda!272361) (not b!7136271) (not b!7136457) (not bs!1887582) (not b!7136454) (not b!7136445) (not b!7136493) (not b!7136297) (not b!7136351) (not b!7136302) (not d!2226576) (not b!7136466) (not b!7136340) (not d!2226516) (not d!2226558) (not b!7136299) (not b!7136178) (not b!7136389) (not b!7136361) (not bs!1887590) (not b!7136365) (not b_lambda!272277) (not b!7136394) (not bs!1887586) (not b!7136388) (not b!7136422) (not b!7136390) (not b!7136220) (not bs!1887591) (not b!7136434) (not b_lambda!272281) (not d!2226530) (not b!7136334) (not b!7136186) (not b!7136355) (not b!7136298) (not b!7136429) (not b!7136435) (not bm!651002) (not b!7136413) (not b!7136485) (not d!2226518) (not d!2226524) (not b_lambda!272377) (not b!7136459) (not d!2226532) (not b!7136443) (not b!7136441) (not b!7136474) (not b_lambda!272363) (not b!7136471) (not b!7136464) (not b_lambda!272375) (not b!7136200) (not b!7136217) (not b!7136437) (not bm!650991) (not b!7136401) (not b!7136438) (not b!7136275) (not d!2226556) (not bm!650995) (not b!7136369) (not b!7136430) (not b!7136480) (not b!7136418) (not bm!650985) (not b_lambda!272365) (not b!7136399) (not b!7136479) (not b!7136423) (not b!7136264) (not b_lambda!272369) (not b!7136367) (not bs!1887587) (not b!7136328) (not b!7136386) (not b!7136199) (not b_lambda!272367) (not bs!1887585) (not b!7136300) (not b!7136403) (not bm!650998) (not b!7136184) (not b!7136393) (not b!7136484) (not b!7136385) (not b!7136411) (not b!7136425) (not b!7136206) (not b!7136362) (not bm!651001) (not b!7136222) (not b!7136417) (not setNonEmpty!52363) (not b!7136368) (not b!7136447) (not b!7136221) (not b!7136462) (not b!7136392) (not b!7136303) (not d!2226600) (not b_lambda!272359) (not bm!650990) (not b!7136467) (not b!7136491) (not b!7136463) (not b!7136359) (not b!7136433) (not b!7136407) (not b!7136410) (not d!2226570) (not b!7136213) (not bm!650984) (not b_lambda!272357) (not b_lambda!272279) tp_is_empty!45883 (not bm!650993) (not b!7136439) (not b!7136415) (not b!7136398) (not b!7136476) (not bm!650996) (not b!7136431) (not d!2226574) (not b!7136223) (not b!7136482) (not b!7136347) (not b!7136201) (not d!2226580) (not b!7136366) (not b!7136478) (not b_lambda!272283) (not b!7136461) (not b!7136353) (not bm!651005) (not b!7136468) (not b!7136397) (not b!7136421) (not b!7136219) (not b!7136453) (not b_lambda!272373) (not d!2226560) (not d!2226562) (not b!7136260) (not b!7136414) (not b!7136306) (not b!7136446) (not b!7136316) (not b_lambda!272371) (not b!7136455) (not bm!650999) (not b!7136487) (not b!7136449) (not bs!1887583) (not b!7136492) (not d!2226536) (not b!7136472) (not b!7136402) (not d!2226598) (not b!7136419) (not b!7136470) (not b!7136409) (not b!7136450) (not b!7136395) (not b!7136356) (not b!7136483) (not bm!650992) (not b!7136427) (not b!7136320) (not b!7136458) (not bm!651004) (not b_lambda!272379) (not b!7136305) (not b!7136363) (not d!2226542) (not b!7136426) (not b!7136475) (not b!7136488))
(check-sat)

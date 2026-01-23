; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!713096 () Bool)

(assert start!713096)

(declare-fun b!7316336 () Bool)

(declare-fun res!2956422 () Bool)

(declare-fun e!4379922 () Bool)

(assert (=> b!7316336 (=> (not res!2956422) (not e!4379922))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!38148 0))(
  ( (C!38149 (val!29170 Int)) )
))
(declare-datatypes ((Regex!18937 0))(
  ( (ElementMatch!18937 (c!1358175 C!38148)) (Concat!27782 (regOne!38386 Regex!18937) (regTwo!38386 Regex!18937)) (EmptyExpr!18937) (Star!18937 (reg!19266 Regex!18937)) (EmptyLang!18937) (Union!18937 (regOne!38387 Regex!18937) (regTwo!38387 Regex!18937)) )
))
(declare-datatypes ((List!71293 0))(
  ( (Nil!71169) (Cons!71169 (h!77617 Regex!18937) (t!385525 List!71293)) )
))
(declare-datatypes ((Context!15754 0))(
  ( (Context!15755 (exprs!8377 List!71293)) )
))
(declare-fun lt!2602163 () (InoxSet Context!15754))

(declare-fun lambda!452344 () Int)

(declare-fun exists!4584 ((InoxSet Context!15754) Int) Bool)

(assert (=> b!7316336 (= res!2956422 (exists!4584 lt!2602163 lambda!452344))))

(declare-fun b!7316337 () Bool)

(declare-fun e!4379920 () Bool)

(assert (=> b!7316337 (= e!4379922 e!4379920)))

(declare-fun res!2956423 () Bool)

(assert (=> b!7316337 (=> (not res!2956423) (not e!4379920))))

(declare-fun lt!2602164 () Context!15754)

(declare-fun z2!461 () (InoxSet Context!15754))

(declare-fun z1!542 () (InoxSet Context!15754))

(assert (=> b!7316337 (= res!2956423 (and (select lt!2602163 lt!2602164) (not (select z1!542 lt!2602164)) (select z2!461 lt!2602164)))))

(declare-fun getWitness!2322 ((InoxSet Context!15754) Int) Context!15754)

(assert (=> b!7316337 (= lt!2602164 (getWitness!2322 lt!2602163 lambda!452344))))

(declare-fun b!7316338 () Bool)

(declare-fun nullableContext!403 (Context!15754) Bool)

(assert (=> b!7316338 (= e!4379920 (not (nullableContext!403 lt!2602164)))))

(declare-fun e!4379923 () Bool)

(declare-fun setElem!54564 () Context!15754)

(declare-fun setNonEmpty!54565 () Bool)

(declare-fun setRes!54565 () Bool)

(declare-fun tp!2077009 () Bool)

(declare-fun inv!90463 (Context!15754) Bool)

(assert (=> setNonEmpty!54565 (= setRes!54565 (and tp!2077009 (inv!90463 setElem!54564) e!4379923))))

(declare-fun setRest!54565 () (InoxSet Context!15754))

(assert (=> setNonEmpty!54565 (= z1!542 ((_ map or) (store ((as const (Array Context!15754 Bool)) false) setElem!54564 true) setRest!54565))))

(declare-fun b!7316339 () Bool)

(declare-fun e!4379924 () Bool)

(assert (=> b!7316339 (= e!4379924 e!4379922)))

(declare-fun res!2956424 () Bool)

(assert (=> b!7316339 (=> (not res!2956424) (not e!4379922))))

(declare-fun nullableZipper!3116 ((InoxSet Context!15754)) Bool)

(assert (=> b!7316339 (= res!2956424 (nullableZipper!3116 lt!2602163))))

(assert (=> b!7316339 (= lt!2602163 ((_ map or) z1!542 z2!461))))

(declare-fun b!7316340 () Bool)

(declare-fun e!4379919 () Bool)

(declare-fun tp_is_empty!47619 () Bool)

(declare-fun tp!2077012 () Bool)

(assert (=> b!7316340 (= e!4379919 (and tp_is_empty!47619 tp!2077012))))

(declare-fun setIsEmpty!54564 () Bool)

(assert (=> setIsEmpty!54564 setRes!54565))

(declare-fun b!7316341 () Bool)

(declare-fun tp!2077013 () Bool)

(assert (=> b!7316341 (= e!4379923 tp!2077013)))

(declare-fun res!2956421 () Bool)

(assert (=> start!713096 (=> (not res!2956421) (not e!4379924))))

(declare-datatypes ((List!71294 0))(
  ( (Nil!71170) (Cons!71170 (h!77618 C!38148) (t!385526 List!71294)) )
))
(declare-fun s!7362 () List!71294)

(get-info :version)

(assert (=> start!713096 (= res!2956421 (not ((_ is Cons!71170) s!7362)))))

(assert (=> start!713096 e!4379924))

(assert (=> start!713096 e!4379919))

(declare-fun condSetEmpty!54565 () Bool)

(assert (=> start!713096 (= condSetEmpty!54565 (= z1!542 ((as const (Array Context!15754 Bool)) false)))))

(assert (=> start!713096 setRes!54565))

(declare-fun condSetEmpty!54564 () Bool)

(assert (=> start!713096 (= condSetEmpty!54564 (= z2!461 ((as const (Array Context!15754 Bool)) false)))))

(declare-fun setRes!54564 () Bool)

(assert (=> start!713096 setRes!54564))

(declare-fun tp!2077011 () Bool)

(declare-fun setElem!54565 () Context!15754)

(declare-fun e!4379921 () Bool)

(declare-fun setNonEmpty!54564 () Bool)

(assert (=> setNonEmpty!54564 (= setRes!54564 (and tp!2077011 (inv!90463 setElem!54565) e!4379921))))

(declare-fun setRest!54564 () (InoxSet Context!15754))

(assert (=> setNonEmpty!54564 (= z2!461 ((_ map or) (store ((as const (Array Context!15754 Bool)) false) setElem!54565 true) setRest!54564))))

(declare-fun b!7316342 () Bool)

(declare-fun tp!2077010 () Bool)

(assert (=> b!7316342 (= e!4379921 tp!2077010)))

(declare-fun setIsEmpty!54565 () Bool)

(assert (=> setIsEmpty!54565 setRes!54564))

(assert (= (and start!713096 res!2956421) b!7316339))

(assert (= (and b!7316339 res!2956424) b!7316336))

(assert (= (and b!7316336 res!2956422) b!7316337))

(assert (= (and b!7316337 res!2956423) b!7316338))

(assert (= (and start!713096 ((_ is Cons!71170) s!7362)) b!7316340))

(assert (= (and start!713096 condSetEmpty!54565) setIsEmpty!54564))

(assert (= (and start!713096 (not condSetEmpty!54565)) setNonEmpty!54565))

(assert (= setNonEmpty!54565 b!7316341))

(assert (= (and start!713096 condSetEmpty!54564) setIsEmpty!54565))

(assert (= (and start!713096 (not condSetEmpty!54564)) setNonEmpty!54564))

(assert (= setNonEmpty!54564 b!7316342))

(declare-fun m!7980432 () Bool)

(assert (=> setNonEmpty!54565 m!7980432))

(declare-fun m!7980434 () Bool)

(assert (=> b!7316339 m!7980434))

(declare-fun m!7980436 () Bool)

(assert (=> b!7316337 m!7980436))

(declare-fun m!7980438 () Bool)

(assert (=> b!7316337 m!7980438))

(declare-fun m!7980440 () Bool)

(assert (=> b!7316337 m!7980440))

(declare-fun m!7980442 () Bool)

(assert (=> b!7316337 m!7980442))

(declare-fun m!7980444 () Bool)

(assert (=> setNonEmpty!54564 m!7980444))

(declare-fun m!7980446 () Bool)

(assert (=> b!7316338 m!7980446))

(declare-fun m!7980448 () Bool)

(assert (=> b!7316336 m!7980448))

(check-sat (not b!7316340) (not b!7316338) tp_is_empty!47619 (not b!7316339) (not b!7316342) (not b!7316336) (not b!7316341) (not setNonEmpty!54564) (not setNonEmpty!54565) (not b!7316337))
(check-sat)
(get-model)

(declare-fun d!2271638 () Bool)

(declare-fun lt!2602167 () Bool)

(declare-datatypes ((List!71295 0))(
  ( (Nil!71171) (Cons!71171 (h!77619 Context!15754) (t!385527 List!71295)) )
))
(declare-fun exists!4585 (List!71295 Int) Bool)

(declare-fun toList!11624 ((InoxSet Context!15754)) List!71295)

(assert (=> d!2271638 (= lt!2602167 (exists!4585 (toList!11624 lt!2602163) lambda!452344))))

(declare-fun choose!56741 ((InoxSet Context!15754) Int) Bool)

(assert (=> d!2271638 (= lt!2602167 (choose!56741 lt!2602163 lambda!452344))))

(assert (=> d!2271638 (= (exists!4584 lt!2602163 lambda!452344) lt!2602167)))

(declare-fun bs!1915078 () Bool)

(assert (= bs!1915078 d!2271638))

(declare-fun m!7980450 () Bool)

(assert (=> bs!1915078 m!7980450))

(assert (=> bs!1915078 m!7980450))

(declare-fun m!7980452 () Bool)

(assert (=> bs!1915078 m!7980452))

(declare-fun m!7980454 () Bool)

(assert (=> bs!1915078 m!7980454))

(assert (=> b!7316336 d!2271638))

(declare-fun d!2271640 () Bool)

(declare-fun lambda!452347 () Int)

(declare-fun forall!17772 (List!71293 Int) Bool)

(assert (=> d!2271640 (= (inv!90463 setElem!54565) (forall!17772 (exprs!8377 setElem!54565) lambda!452347))))

(declare-fun bs!1915079 () Bool)

(assert (= bs!1915079 d!2271640))

(declare-fun m!7980456 () Bool)

(assert (=> bs!1915079 m!7980456))

(assert (=> setNonEmpty!54564 d!2271640))

(declare-fun bs!1915080 () Bool)

(declare-fun d!2271642 () Bool)

(assert (= bs!1915080 (and d!2271642 b!7316336)))

(declare-fun lambda!452350 () Int)

(assert (=> bs!1915080 (= lambda!452350 lambda!452344)))

(assert (=> d!2271642 (= (nullableZipper!3116 lt!2602163) (exists!4584 lt!2602163 lambda!452350))))

(declare-fun bs!1915081 () Bool)

(assert (= bs!1915081 d!2271642))

(declare-fun m!7980458 () Bool)

(assert (=> bs!1915081 m!7980458))

(assert (=> b!7316339 d!2271642))

(declare-fun bs!1915082 () Bool)

(declare-fun d!2271646 () Bool)

(assert (= bs!1915082 (and d!2271646 d!2271640)))

(declare-fun lambda!452351 () Int)

(assert (=> bs!1915082 (= lambda!452351 lambda!452347)))

(assert (=> d!2271646 (= (inv!90463 setElem!54564) (forall!17772 (exprs!8377 setElem!54564) lambda!452351))))

(declare-fun bs!1915083 () Bool)

(assert (= bs!1915083 d!2271646))

(declare-fun m!7980460 () Bool)

(assert (=> bs!1915083 m!7980460))

(assert (=> setNonEmpty!54565 d!2271646))

(declare-fun bs!1915084 () Bool)

(declare-fun d!2271648 () Bool)

(assert (= bs!1915084 (and d!2271648 d!2271640)))

(declare-fun lambda!452354 () Int)

(assert (=> bs!1915084 (not (= lambda!452354 lambda!452347))))

(declare-fun bs!1915085 () Bool)

(assert (= bs!1915085 (and d!2271648 d!2271646)))

(assert (=> bs!1915085 (not (= lambda!452354 lambda!452351))))

(assert (=> d!2271648 (= (nullableContext!403 lt!2602164) (forall!17772 (exprs!8377 lt!2602164) lambda!452354))))

(declare-fun bs!1915086 () Bool)

(assert (= bs!1915086 d!2271648))

(declare-fun m!7980462 () Bool)

(assert (=> bs!1915086 m!7980462))

(assert (=> b!7316338 d!2271648))

(declare-fun d!2271650 () Bool)

(declare-fun e!4379927 () Bool)

(assert (=> d!2271650 e!4379927))

(declare-fun res!2956427 () Bool)

(assert (=> d!2271650 (=> (not res!2956427) (not e!4379927))))

(declare-fun lt!2602172 () Context!15754)

(declare-fun dynLambda!29156 (Int Context!15754) Bool)

(assert (=> d!2271650 (= res!2956427 (dynLambda!29156 lambda!452344 lt!2602172))))

(declare-fun getWitness!2323 (List!71295 Int) Context!15754)

(assert (=> d!2271650 (= lt!2602172 (getWitness!2323 (toList!11624 lt!2602163) lambda!452344))))

(assert (=> d!2271650 (exists!4584 lt!2602163 lambda!452344)))

(assert (=> d!2271650 (= (getWitness!2322 lt!2602163 lambda!452344) lt!2602172)))

(declare-fun b!7316345 () Bool)

(assert (=> b!7316345 (= e!4379927 (select lt!2602163 lt!2602172))))

(assert (= (and d!2271650 res!2956427) b!7316345))

(declare-fun b_lambda!282555 () Bool)

(assert (=> (not b_lambda!282555) (not d!2271650)))

(declare-fun m!7980472 () Bool)

(assert (=> d!2271650 m!7980472))

(assert (=> d!2271650 m!7980450))

(assert (=> d!2271650 m!7980450))

(declare-fun m!7980474 () Bool)

(assert (=> d!2271650 m!7980474))

(assert (=> d!2271650 m!7980448))

(declare-fun m!7980476 () Bool)

(assert (=> b!7316345 m!7980476))

(assert (=> b!7316337 d!2271650))

(declare-fun b!7316350 () Bool)

(declare-fun e!4379930 () Bool)

(declare-fun tp!2077016 () Bool)

(assert (=> b!7316350 (= e!4379930 (and tp_is_empty!47619 tp!2077016))))

(assert (=> b!7316340 (= tp!2077012 e!4379930)))

(assert (= (and b!7316340 ((_ is Cons!71170) (t!385526 s!7362))) b!7316350))

(declare-fun condSetEmpty!54568 () Bool)

(assert (=> setNonEmpty!54564 (= condSetEmpty!54568 (= setRest!54564 ((as const (Array Context!15754 Bool)) false)))))

(declare-fun setRes!54568 () Bool)

(assert (=> setNonEmpty!54564 (= tp!2077011 setRes!54568)))

(declare-fun setIsEmpty!54568 () Bool)

(assert (=> setIsEmpty!54568 setRes!54568))

(declare-fun e!4379933 () Bool)

(declare-fun setElem!54568 () Context!15754)

(declare-fun tp!2077022 () Bool)

(declare-fun setNonEmpty!54568 () Bool)

(assert (=> setNonEmpty!54568 (= setRes!54568 (and tp!2077022 (inv!90463 setElem!54568) e!4379933))))

(declare-fun setRest!54568 () (InoxSet Context!15754))

(assert (=> setNonEmpty!54568 (= setRest!54564 ((_ map or) (store ((as const (Array Context!15754 Bool)) false) setElem!54568 true) setRest!54568))))

(declare-fun b!7316355 () Bool)

(declare-fun tp!2077021 () Bool)

(assert (=> b!7316355 (= e!4379933 tp!2077021)))

(assert (= (and setNonEmpty!54564 condSetEmpty!54568) setIsEmpty!54568))

(assert (= (and setNonEmpty!54564 (not condSetEmpty!54568)) setNonEmpty!54568))

(assert (= setNonEmpty!54568 b!7316355))

(declare-fun m!7980478 () Bool)

(assert (=> setNonEmpty!54568 m!7980478))

(declare-fun condSetEmpty!54569 () Bool)

(assert (=> setNonEmpty!54565 (= condSetEmpty!54569 (= setRest!54565 ((as const (Array Context!15754 Bool)) false)))))

(declare-fun setRes!54569 () Bool)

(assert (=> setNonEmpty!54565 (= tp!2077009 setRes!54569)))

(declare-fun setIsEmpty!54569 () Bool)

(assert (=> setIsEmpty!54569 setRes!54569))

(declare-fun tp!2077024 () Bool)

(declare-fun setElem!54569 () Context!15754)

(declare-fun e!4379934 () Bool)

(declare-fun setNonEmpty!54569 () Bool)

(assert (=> setNonEmpty!54569 (= setRes!54569 (and tp!2077024 (inv!90463 setElem!54569) e!4379934))))

(declare-fun setRest!54569 () (InoxSet Context!15754))

(assert (=> setNonEmpty!54569 (= setRest!54565 ((_ map or) (store ((as const (Array Context!15754 Bool)) false) setElem!54569 true) setRest!54569))))

(declare-fun b!7316356 () Bool)

(declare-fun tp!2077023 () Bool)

(assert (=> b!7316356 (= e!4379934 tp!2077023)))

(assert (= (and setNonEmpty!54565 condSetEmpty!54569) setIsEmpty!54569))

(assert (= (and setNonEmpty!54565 (not condSetEmpty!54569)) setNonEmpty!54569))

(assert (= setNonEmpty!54569 b!7316356))

(declare-fun m!7980480 () Bool)

(assert (=> setNonEmpty!54569 m!7980480))

(declare-fun b!7316363 () Bool)

(declare-fun e!4379939 () Bool)

(declare-fun tp!2077029 () Bool)

(declare-fun tp!2077030 () Bool)

(assert (=> b!7316363 (= e!4379939 (and tp!2077029 tp!2077030))))

(assert (=> b!7316342 (= tp!2077010 e!4379939)))

(assert (= (and b!7316342 ((_ is Cons!71169) (exprs!8377 setElem!54565))) b!7316363))

(declare-fun b!7316364 () Bool)

(declare-fun e!4379940 () Bool)

(declare-fun tp!2077031 () Bool)

(declare-fun tp!2077032 () Bool)

(assert (=> b!7316364 (= e!4379940 (and tp!2077031 tp!2077032))))

(assert (=> b!7316341 (= tp!2077013 e!4379940)))

(assert (= (and b!7316341 ((_ is Cons!71169) (exprs!8377 setElem!54564))) b!7316364))

(declare-fun b_lambda!282557 () Bool)

(assert (= b_lambda!282555 (or b!7316336 b_lambda!282557)))

(declare-fun bs!1915089 () Bool)

(declare-fun d!2271656 () Bool)

(assert (= bs!1915089 (and d!2271656 b!7316336)))

(assert (=> bs!1915089 (= (dynLambda!29156 lambda!452344 lt!2602172) (nullableContext!403 lt!2602172))))

(declare-fun m!7980482 () Bool)

(assert (=> bs!1915089 m!7980482))

(assert (=> d!2271650 d!2271656))

(check-sat (not d!2271640) (not b!7316356) tp_is_empty!47619 (not d!2271646) (not bs!1915089) (not b!7316364) (not d!2271650) (not b_lambda!282557) (not setNonEmpty!54568) (not b!7316363) (not d!2271638) (not b!7316350) (not d!2271642) (not d!2271648) (not setNonEmpty!54569) (not b!7316355))
(check-sat)

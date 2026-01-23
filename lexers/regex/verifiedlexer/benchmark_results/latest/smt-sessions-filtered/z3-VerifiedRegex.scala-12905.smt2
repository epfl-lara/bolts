; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712094 () Bool)

(assert start!712094)

(declare-fun b_free!133921 () Bool)

(declare-fun b_next!134711 () Bool)

(assert (=> start!712094 (= b_free!133921 (not b_next!134711))))

(declare-fun tp!2075100 () Bool)

(declare-fun b_and!351213 () Bool)

(assert (=> start!712094 (= tp!2075100 b_and!351213)))

(declare-fun res!2953566 () Bool)

(declare-fun e!4376085 () Bool)

(assert (=> start!712094 (=> (not res!2953566) (not e!4376085))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!767 0))(
  ( (A!768 (val!29025 Int)) )
))
(declare-fun s!1445 () (InoxSet A!767))

(declare-fun elmt!124 () A!767)

(assert (=> start!712094 (= res!2953566 (= s!1445 (store ((as const (Array A!767 Bool)) false) elmt!124 true)))))

(assert (=> start!712094 e!4376085))

(declare-fun condSetEmpty!53849 () Bool)

(assert (=> start!712094 (= condSetEmpty!53849 (= s!1445 ((as const (Array A!767 Bool)) false)))))

(declare-fun setRes!53849 () Bool)

(assert (=> start!712094 setRes!53849))

(declare-fun tp_is_empty!47329 () Bool)

(assert (=> start!712094 tp_is_empty!47329))

(assert (=> start!712094 tp!2075100))

(declare-fun e!4376086 () Bool)

(assert (=> start!712094 e!4376086))

(declare-fun b!7311255 () Bool)

(declare-fun e!4376084 () Bool)

(assert (=> b!7311255 (= e!4376085 e!4376084)))

(declare-fun res!2953567 () Bool)

(assert (=> b!7311255 (=> (not res!2953567) (not e!4376084))))

(declare-datatypes ((B!3469 0))(
  ( (B!3470 (val!29026 Int)) )
))
(declare-datatypes ((List!71136 0))(
  ( (Nil!71012) (Cons!71012 (h!77460 B!3469) (t!385258 List!71136)) )
))
(declare-fun lRes!24 () List!71136)

(declare-fun lt!2600509 () List!71136)

(declare-fun subseq!795 (List!71136 List!71136) Bool)

(assert (=> b!7311255 (= res!2953567 (subseq!795 lRes!24 lt!2600509))))

(declare-fun f!903 () Int)

(declare-fun toList!11545 ((InoxSet B!3469)) List!71136)

(declare-fun dynLambda!29052 (Int A!767) (InoxSet B!3469))

(assert (=> b!7311255 (= lt!2600509 (toList!11545 (dynLambda!29052 f!903 elmt!124)))))

(declare-fun setIsEmpty!53849 () Bool)

(assert (=> setIsEmpty!53849 setRes!53849))

(declare-fun b!7311256 () Bool)

(declare-fun tp_is_empty!47331 () Bool)

(declare-fun tp!2075101 () Bool)

(assert (=> b!7311256 (= e!4376086 (and tp_is_empty!47331 tp!2075101))))

(declare-fun b!7311257 () Bool)

(declare-fun res!2953565 () Bool)

(assert (=> b!7311257 (=> (not res!2953565) (not e!4376084))))

(get-info :version)

(assert (=> b!7311257 (= res!2953565 ((_ is Cons!71012) lRes!24))))

(declare-fun setNonEmpty!53849 () Bool)

(declare-fun tp!2075099 () Bool)

(assert (=> setNonEmpty!53849 (= setRes!53849 (and tp!2075099 tp_is_empty!47329))))

(declare-fun setElem!53849 () A!767)

(declare-fun setRest!53849 () (InoxSet A!767))

(assert (=> setNonEmpty!53849 (= s!1445 ((_ map or) (store ((as const (Array A!767 Bool)) false) setElem!53849 true) setRest!53849))))

(declare-fun b!7311258 () Bool)

(assert (=> b!7311258 (= e!4376084 (not (subseq!795 (t!385258 lRes!24) lt!2600509)))))

(declare-datatypes ((Unit!164430 0))(
  ( (Unit!164431) )
))
(declare-fun lt!2600510 () Unit!164430)

(declare-fun subseqTail!46 (List!71136 List!71136) Unit!164430)

(assert (=> b!7311258 (= lt!2600510 (subseqTail!46 lRes!24 lt!2600509))))

(assert (= (and start!712094 res!2953566) b!7311255))

(assert (= (and b!7311255 res!2953567) b!7311257))

(assert (= (and b!7311257 res!2953565) b!7311258))

(assert (= (and start!712094 condSetEmpty!53849) setIsEmpty!53849))

(assert (= (and start!712094 (not condSetEmpty!53849)) setNonEmpty!53849))

(assert (= (and start!712094 ((_ is Cons!71012) lRes!24)) b!7311256))

(declare-fun b_lambda!282087 () Bool)

(assert (=> (not b_lambda!282087) (not b!7311255)))

(declare-fun t!385257 () Bool)

(declare-fun tb!262159 () Bool)

(assert (=> (and start!712094 (= f!903 f!903) t!385257) tb!262159))

(assert (=> b!7311255 t!385257))

(declare-fun result!352710 () Bool)

(declare-fun b_and!351215 () Bool)

(assert (= b_and!351213 (and (=> t!385257 result!352710) b_and!351215)))

(declare-fun m!7975376 () Bool)

(assert (=> start!712094 m!7975376))

(declare-fun m!7975378 () Bool)

(assert (=> b!7311255 m!7975378))

(declare-fun m!7975380 () Bool)

(assert (=> b!7311255 m!7975380))

(assert (=> b!7311255 m!7975380))

(declare-fun m!7975382 () Bool)

(assert (=> b!7311255 m!7975382))

(declare-fun m!7975384 () Bool)

(assert (=> b!7311258 m!7975384))

(declare-fun m!7975386 () Bool)

(assert (=> b!7311258 m!7975386))

(check-sat b_and!351215 (not b!7311256) (not b!7311258) (not b_lambda!282087) (not setNonEmpty!53849) (not b_next!134711) (not tb!262159) tp_is_empty!47329 tp_is_empty!47331 (not b!7311255))
(check-sat b_and!351215 (not b_next!134711))
(get-model)

(declare-fun b_lambda!282091 () Bool)

(assert (= b_lambda!282087 (or (and start!712094 b_free!133921) b_lambda!282091)))

(check-sat b_and!351215 (not b!7311256) (not b!7311258) (not setNonEmpty!53849) (not b_next!134711) (not tb!262159) tp_is_empty!47331 (not b!7311255) (not b_lambda!282091) tp_is_empty!47329)
(check-sat b_and!351215 (not b_next!134711))
(get-model)

(declare-fun b!7311282 () Bool)

(declare-fun e!4376109 () Bool)

(declare-fun e!4376111 () Bool)

(assert (=> b!7311282 (= e!4376109 e!4376111)))

(declare-fun res!2953592 () Bool)

(assert (=> b!7311282 (=> res!2953592 e!4376111)))

(declare-fun e!4376112 () Bool)

(assert (=> b!7311282 (= res!2953592 e!4376112)))

(declare-fun res!2953590 () Bool)

(assert (=> b!7311282 (=> (not res!2953590) (not e!4376112))))

(assert (=> b!7311282 (= res!2953590 (= (h!77460 (t!385258 lRes!24)) (h!77460 lt!2600509)))))

(declare-fun b!7311281 () Bool)

(declare-fun e!4376110 () Bool)

(assert (=> b!7311281 (= e!4376110 e!4376109)))

(declare-fun res!2953591 () Bool)

(assert (=> b!7311281 (=> (not res!2953591) (not e!4376109))))

(assert (=> b!7311281 (= res!2953591 ((_ is Cons!71012) lt!2600509))))

(declare-fun b!7311284 () Bool)

(assert (=> b!7311284 (= e!4376111 (subseq!795 (t!385258 lRes!24) (t!385258 lt!2600509)))))

(declare-fun d!2269870 () Bool)

(declare-fun res!2953593 () Bool)

(assert (=> d!2269870 (=> res!2953593 e!4376110)))

(assert (=> d!2269870 (= res!2953593 ((_ is Nil!71012) (t!385258 lRes!24)))))

(assert (=> d!2269870 (= (subseq!795 (t!385258 lRes!24) lt!2600509) e!4376110)))

(declare-fun b!7311283 () Bool)

(assert (=> b!7311283 (= e!4376112 (subseq!795 (t!385258 (t!385258 lRes!24)) (t!385258 lt!2600509)))))

(assert (= (and d!2269870 (not res!2953593)) b!7311281))

(assert (= (and b!7311281 res!2953591) b!7311282))

(assert (= (and b!7311282 res!2953590) b!7311283))

(assert (= (and b!7311282 (not res!2953592)) b!7311284))

(declare-fun m!7975392 () Bool)

(assert (=> b!7311284 m!7975392))

(declare-fun m!7975394 () Bool)

(assert (=> b!7311283 m!7975394))

(assert (=> b!7311258 d!2269870))

(declare-fun b!7311327 () Bool)

(declare-fun e!4376141 () Unit!164430)

(declare-fun e!4376140 () Unit!164430)

(assert (=> b!7311327 (= e!4376141 e!4376140)))

(declare-fun c!1357510 () Bool)

(assert (=> b!7311327 (= c!1357510 (subseq!795 lRes!24 (t!385258 lt!2600509)))))

(declare-fun b!7311328 () Bool)

(declare-fun e!4376138 () Unit!164430)

(declare-fun call!665701 () Unit!164430)

(assert (=> b!7311328 (= e!4376138 call!665701)))

(declare-fun b!7311329 () Bool)

(declare-fun c!1357509 () Bool)

(declare-fun isEmpty!40839 (List!71136) Bool)

(assert (=> b!7311329 (= c!1357509 (not (isEmpty!40839 (t!385258 lRes!24))))))

(assert (=> b!7311329 (= e!4376140 e!4376138)))

(declare-fun bm!665696 () Bool)

(assert (=> bm!665696 (= call!665701 (subseqTail!46 (ite c!1357510 lRes!24 (t!385258 lRes!24)) (t!385258 lt!2600509)))))

(declare-fun b!7311330 () Bool)

(declare-fun Unit!164433 () Unit!164430)

(assert (=> b!7311330 (= e!4376138 Unit!164433)))

(declare-fun b!7311331 () Bool)

(declare-fun Unit!164435 () Unit!164430)

(assert (=> b!7311331 (= e!4376141 Unit!164435)))

(declare-fun b!7311332 () Bool)

(assert (=> b!7311332 (= e!4376140 call!665701)))

(declare-fun b!7311333 () Bool)

(declare-fun e!4376139 () Bool)

(assert (=> b!7311333 (= e!4376139 (subseq!795 lRes!24 lt!2600509))))

(declare-fun d!2269874 () Bool)

(declare-fun tail!14620 (List!71136) List!71136)

(assert (=> d!2269874 (subseq!795 (tail!14620 lRes!24) lt!2600509)))

(declare-fun lt!2600519 () Unit!164430)

(assert (=> d!2269874 (= lt!2600519 e!4376141)))

(declare-fun c!1357508 () Bool)

(assert (=> d!2269874 (= c!1357508 (and ((_ is Cons!71012) lRes!24) ((_ is Cons!71012) lt!2600509)))))

(assert (=> d!2269874 e!4376139))

(declare-fun res!2953604 () Bool)

(assert (=> d!2269874 (=> (not res!2953604) (not e!4376139))))

(assert (=> d!2269874 (= res!2953604 (not (isEmpty!40839 lRes!24)))))

(assert (=> d!2269874 (= (subseqTail!46 lRes!24 lt!2600509) lt!2600519)))

(assert (= (and d!2269874 res!2953604) b!7311333))

(assert (= (and d!2269874 c!1357508) b!7311327))

(assert (= (and d!2269874 (not c!1357508)) b!7311331))

(assert (= (and b!7311327 c!1357510) b!7311332))

(assert (= (and b!7311327 (not c!1357510)) b!7311329))

(assert (= (and b!7311329 c!1357509) b!7311328))

(assert (= (and b!7311329 (not c!1357509)) b!7311330))

(assert (= (or b!7311332 b!7311328) bm!665696))

(declare-fun m!7975414 () Bool)

(assert (=> bm!665696 m!7975414))

(declare-fun m!7975416 () Bool)

(assert (=> d!2269874 m!7975416))

(assert (=> d!2269874 m!7975416))

(declare-fun m!7975418 () Bool)

(assert (=> d!2269874 m!7975418))

(declare-fun m!7975420 () Bool)

(assert (=> d!2269874 m!7975420))

(declare-fun m!7975422 () Bool)

(assert (=> b!7311327 m!7975422))

(assert (=> b!7311333 m!7975378))

(declare-fun m!7975424 () Bool)

(assert (=> b!7311329 m!7975424))

(assert (=> b!7311258 d!2269874))

(declare-fun b!7311337 () Bool)

(declare-fun e!4376142 () Bool)

(declare-fun e!4376144 () Bool)

(assert (=> b!7311337 (= e!4376142 e!4376144)))

(declare-fun res!2953607 () Bool)

(assert (=> b!7311337 (=> res!2953607 e!4376144)))

(declare-fun e!4376145 () Bool)

(assert (=> b!7311337 (= res!2953607 e!4376145)))

(declare-fun res!2953605 () Bool)

(assert (=> b!7311337 (=> (not res!2953605) (not e!4376145))))

(assert (=> b!7311337 (= res!2953605 (= (h!77460 lRes!24) (h!77460 lt!2600509)))))

(declare-fun b!7311336 () Bool)

(declare-fun e!4376143 () Bool)

(assert (=> b!7311336 (= e!4376143 e!4376142)))

(declare-fun res!2953606 () Bool)

(assert (=> b!7311336 (=> (not res!2953606) (not e!4376142))))

(assert (=> b!7311336 (= res!2953606 ((_ is Cons!71012) lt!2600509))))

(declare-fun b!7311339 () Bool)

(assert (=> b!7311339 (= e!4376144 (subseq!795 lRes!24 (t!385258 lt!2600509)))))

(declare-fun d!2269880 () Bool)

(declare-fun res!2953608 () Bool)

(assert (=> d!2269880 (=> res!2953608 e!4376143)))

(assert (=> d!2269880 (= res!2953608 ((_ is Nil!71012) lRes!24))))

(assert (=> d!2269880 (= (subseq!795 lRes!24 lt!2600509) e!4376143)))

(declare-fun b!7311338 () Bool)

(assert (=> b!7311338 (= e!4376145 (subseq!795 (t!385258 lRes!24) (t!385258 lt!2600509)))))

(assert (= (and d!2269880 (not res!2953608)) b!7311336))

(assert (= (and b!7311336 res!2953606) b!7311337))

(assert (= (and b!7311337 res!2953605) b!7311338))

(assert (= (and b!7311337 (not res!2953607)) b!7311339))

(assert (=> b!7311339 m!7975422))

(assert (=> b!7311338 m!7975392))

(assert (=> b!7311255 d!2269880))

(declare-fun d!2269882 () Bool)

(declare-fun e!4376151 () Bool)

(assert (=> d!2269882 e!4376151))

(declare-fun res!2953611 () Bool)

(assert (=> d!2269882 (=> (not res!2953611) (not e!4376151))))

(declare-fun lt!2600522 () List!71136)

(declare-fun noDuplicate!3027 (List!71136) Bool)

(assert (=> d!2269882 (= res!2953611 (noDuplicate!3027 lt!2600522))))

(declare-fun choose!56624 ((InoxSet B!3469)) List!71136)

(assert (=> d!2269882 (= lt!2600522 (choose!56624 (dynLambda!29052 f!903 elmt!124)))))

(assert (=> d!2269882 (= (toList!11545 (dynLambda!29052 f!903 elmt!124)) lt!2600522)))

(declare-fun b!7311347 () Bool)

(declare-fun content!14846 (List!71136) (InoxSet B!3469))

(assert (=> b!7311347 (= e!4376151 (= (content!14846 lt!2600522) (dynLambda!29052 f!903 elmt!124)))))

(assert (= (and d!2269882 res!2953611) b!7311347))

(declare-fun m!7975426 () Bool)

(assert (=> d!2269882 m!7975426))

(assert (=> d!2269882 m!7975380))

(declare-fun m!7975428 () Bool)

(assert (=> d!2269882 m!7975428))

(declare-fun m!7975430 () Bool)

(assert (=> b!7311347 m!7975430))

(assert (=> b!7311255 d!2269882))

(declare-fun condSetEmpty!53858 () Bool)

(assert (=> setNonEmpty!53849 (= condSetEmpty!53858 (= setRest!53849 ((as const (Array A!767 Bool)) false)))))

(declare-fun setRes!53858 () Bool)

(assert (=> setNonEmpty!53849 (= tp!2075099 setRes!53858)))

(declare-fun setIsEmpty!53858 () Bool)

(assert (=> setIsEmpty!53858 setRes!53858))

(declare-fun setNonEmpty!53858 () Bool)

(declare-fun tp!2075113 () Bool)

(assert (=> setNonEmpty!53858 (= setRes!53858 (and tp!2075113 tp_is_empty!47329))))

(declare-fun setElem!53858 () A!767)

(declare-fun setRest!53858 () (InoxSet A!767))

(assert (=> setNonEmpty!53858 (= setRest!53849 ((_ map or) (store ((as const (Array A!767 Bool)) false) setElem!53858 true) setRest!53858))))

(assert (= (and setNonEmpty!53849 condSetEmpty!53858) setIsEmpty!53858))

(assert (= (and setNonEmpty!53849 (not condSetEmpty!53858)) setNonEmpty!53858))

(declare-fun b!7311354 () Bool)

(declare-fun e!4376154 () Bool)

(declare-fun tp!2075116 () Bool)

(assert (=> b!7311354 (= e!4376154 (and tp_is_empty!47331 tp!2075116))))

(assert (=> b!7311256 (= tp!2075101 e!4376154)))

(assert (= (and b!7311256 ((_ is Cons!71012) (t!385258 lRes!24))) b!7311354))

(declare-fun condSetEmpty!53861 () Bool)

(assert (=> tb!262159 (= condSetEmpty!53861 (= (dynLambda!29052 f!903 elmt!124) ((as const (Array B!3469 Bool)) false)))))

(declare-fun setRes!53861 () Bool)

(assert (=> tb!262159 (= result!352710 setRes!53861)))

(declare-fun setIsEmpty!53861 () Bool)

(assert (=> setIsEmpty!53861 setRes!53861))

(declare-fun setNonEmpty!53861 () Bool)

(declare-fun tp!2075119 () Bool)

(assert (=> setNonEmpty!53861 (= setRes!53861 (and tp!2075119 tp_is_empty!47331))))

(declare-fun setRest!53861 () (InoxSet B!3469))

(declare-fun setElem!53861 () B!3469)

(assert (=> setNonEmpty!53861 (= (dynLambda!29052 f!903 elmt!124) ((_ map or) (store ((as const (Array B!3469 Bool)) false) setElem!53861 true) setRest!53861))))

(assert (= (and tb!262159 condSetEmpty!53861) setIsEmpty!53861))

(assert (= (and tb!262159 (not condSetEmpty!53861)) setNonEmpty!53861))

(check-sat (not b!7311284) (not b!7311283) (not b!7311333) tp_is_empty!47331 (not d!2269882) (not b!7311347) (not b!7311329) (not b!7311354) (not setNonEmpty!53858) (not b!7311327) (not bm!665696) (not setNonEmpty!53861) b_and!351215 (not d!2269874) (not b_next!134711) (not b!7311339) (not b!7311338) (not b_lambda!282091) tp_is_empty!47329)
(check-sat b_and!351215 (not b_next!134711))
(get-model)

(declare-fun d!2269896 () Bool)

(declare-fun res!2953630 () Bool)

(declare-fun e!4376176 () Bool)

(assert (=> d!2269896 (=> res!2953630 e!4376176)))

(assert (=> d!2269896 (= res!2953630 ((_ is Nil!71012) lt!2600522))))

(assert (=> d!2269896 (= (noDuplicate!3027 lt!2600522) e!4376176)))

(declare-fun b!7311381 () Bool)

(declare-fun e!4376177 () Bool)

(assert (=> b!7311381 (= e!4376176 e!4376177)))

(declare-fun res!2953631 () Bool)

(assert (=> b!7311381 (=> (not res!2953631) (not e!4376177))))

(declare-fun contains!20758 (List!71136 B!3469) Bool)

(assert (=> b!7311381 (= res!2953631 (not (contains!20758 (t!385258 lt!2600522) (h!77460 lt!2600522))))))

(declare-fun b!7311382 () Bool)

(assert (=> b!7311382 (= e!4376177 (noDuplicate!3027 (t!385258 lt!2600522)))))

(assert (= (and d!2269896 (not res!2953630)) b!7311381))

(assert (= (and b!7311381 res!2953631) b!7311382))

(declare-fun m!7975446 () Bool)

(assert (=> b!7311381 m!7975446))

(declare-fun m!7975448 () Bool)

(assert (=> b!7311382 m!7975448))

(assert (=> d!2269882 d!2269896))

(declare-fun d!2269900 () Bool)

(declare-fun e!4376191 () Bool)

(assert (=> d!2269900 e!4376191))

(declare-fun res!2953644 () Bool)

(assert (=> d!2269900 (=> (not res!2953644) (not e!4376191))))

(declare-fun res!2953645 () List!71136)

(assert (=> d!2269900 (= res!2953644 (noDuplicate!3027 res!2953645))))

(declare-fun e!4376190 () Bool)

(assert (=> d!2269900 e!4376190))

(assert (=> d!2269900 (= (choose!56624 (dynLambda!29052 f!903 elmt!124)) res!2953645)))

(declare-fun b!7311395 () Bool)

(declare-fun tp!2075124 () Bool)

(assert (=> b!7311395 (= e!4376190 (and tp_is_empty!47331 tp!2075124))))

(declare-fun b!7311396 () Bool)

(assert (=> b!7311396 (= e!4376191 (= (content!14846 res!2953645) (dynLambda!29052 f!903 elmt!124)))))

(assert (= (and d!2269900 ((_ is Cons!71012) res!2953645)) b!7311395))

(assert (= (and d!2269900 res!2953644) b!7311396))

(declare-fun m!7975454 () Bool)

(assert (=> d!2269900 m!7975454))

(declare-fun m!7975456 () Bool)

(assert (=> b!7311396 m!7975456))

(assert (=> d!2269882 d!2269900))

(declare-fun b!7311398 () Bool)

(declare-fun e!4376192 () Bool)

(declare-fun e!4376194 () Bool)

(assert (=> b!7311398 (= e!4376192 e!4376194)))

(declare-fun res!2953648 () Bool)

(assert (=> b!7311398 (=> res!2953648 e!4376194)))

(declare-fun e!4376195 () Bool)

(assert (=> b!7311398 (= res!2953648 e!4376195)))

(declare-fun res!2953646 () Bool)

(assert (=> b!7311398 (=> (not res!2953646) (not e!4376195))))

(assert (=> b!7311398 (= res!2953646 (= (h!77460 lRes!24) (h!77460 (t!385258 lt!2600509))))))

(declare-fun b!7311397 () Bool)

(declare-fun e!4376193 () Bool)

(assert (=> b!7311397 (= e!4376193 e!4376192)))

(declare-fun res!2953647 () Bool)

(assert (=> b!7311397 (=> (not res!2953647) (not e!4376192))))

(assert (=> b!7311397 (= res!2953647 ((_ is Cons!71012) (t!385258 lt!2600509)))))

(declare-fun b!7311400 () Bool)

(assert (=> b!7311400 (= e!4376194 (subseq!795 lRes!24 (t!385258 (t!385258 lt!2600509))))))

(declare-fun d!2269904 () Bool)

(declare-fun res!2953649 () Bool)

(assert (=> d!2269904 (=> res!2953649 e!4376193)))

(assert (=> d!2269904 (= res!2953649 ((_ is Nil!71012) lRes!24))))

(assert (=> d!2269904 (= (subseq!795 lRes!24 (t!385258 lt!2600509)) e!4376193)))

(declare-fun b!7311399 () Bool)

(assert (=> b!7311399 (= e!4376195 (subseq!795 (t!385258 lRes!24) (t!385258 (t!385258 lt!2600509))))))

(assert (= (and d!2269904 (not res!2953649)) b!7311397))

(assert (= (and b!7311397 res!2953647) b!7311398))

(assert (= (and b!7311398 res!2953646) b!7311399))

(assert (= (and b!7311398 (not res!2953648)) b!7311400))

(declare-fun m!7975458 () Bool)

(assert (=> b!7311400 m!7975458))

(declare-fun m!7975460 () Bool)

(assert (=> b!7311399 m!7975460))

(assert (=> b!7311339 d!2269904))

(declare-fun b!7311404 () Bool)

(declare-fun e!4376198 () Bool)

(declare-fun e!4376200 () Bool)

(assert (=> b!7311404 (= e!4376198 e!4376200)))

(declare-fun res!2953654 () Bool)

(assert (=> b!7311404 (=> res!2953654 e!4376200)))

(declare-fun e!4376201 () Bool)

(assert (=> b!7311404 (= res!2953654 e!4376201)))

(declare-fun res!2953650 () Bool)

(assert (=> b!7311404 (=> (not res!2953650) (not e!4376201))))

(assert (=> b!7311404 (= res!2953650 (= (h!77460 (t!385258 lRes!24)) (h!77460 (t!385258 lt!2600509))))))

(declare-fun b!7311403 () Bool)

(declare-fun e!4376199 () Bool)

(assert (=> b!7311403 (= e!4376199 e!4376198)))

(declare-fun res!2953652 () Bool)

(assert (=> b!7311403 (=> (not res!2953652) (not e!4376198))))

(assert (=> b!7311403 (= res!2953652 ((_ is Cons!71012) (t!385258 lt!2600509)))))

(declare-fun b!7311406 () Bool)

(assert (=> b!7311406 (= e!4376200 (subseq!795 (t!385258 lRes!24) (t!385258 (t!385258 lt!2600509))))))

(declare-fun d!2269906 () Bool)

(declare-fun res!2953655 () Bool)

(assert (=> d!2269906 (=> res!2953655 e!4376199)))

(assert (=> d!2269906 (= res!2953655 ((_ is Nil!71012) (t!385258 lRes!24)))))

(assert (=> d!2269906 (= (subseq!795 (t!385258 lRes!24) (t!385258 lt!2600509)) e!4376199)))

(declare-fun b!7311405 () Bool)

(assert (=> b!7311405 (= e!4376201 (subseq!795 (t!385258 (t!385258 lRes!24)) (t!385258 (t!385258 lt!2600509))))))

(assert (= (and d!2269906 (not res!2953655)) b!7311403))

(assert (= (and b!7311403 res!2953652) b!7311404))

(assert (= (and b!7311404 res!2953650) b!7311405))

(assert (= (and b!7311404 (not res!2953654)) b!7311406))

(assert (=> b!7311406 m!7975460))

(declare-fun m!7975466 () Bool)

(assert (=> b!7311405 m!7975466))

(assert (=> b!7311338 d!2269906))

(assert (=> b!7311327 d!2269904))

(declare-fun b!7311412 () Bool)

(declare-fun e!4376206 () Bool)

(declare-fun e!4376208 () Bool)

(assert (=> b!7311412 (= e!4376206 e!4376208)))

(declare-fun res!2953662 () Bool)

(assert (=> b!7311412 (=> res!2953662 e!4376208)))

(declare-fun e!4376209 () Bool)

(assert (=> b!7311412 (= res!2953662 e!4376209)))

(declare-fun res!2953660 () Bool)

(assert (=> b!7311412 (=> (not res!2953660) (not e!4376209))))

(assert (=> b!7311412 (= res!2953660 (= (h!77460 (tail!14620 lRes!24)) (h!77460 lt!2600509)))))

(declare-fun b!7311411 () Bool)

(declare-fun e!4376207 () Bool)

(assert (=> b!7311411 (= e!4376207 e!4376206)))

(declare-fun res!2953661 () Bool)

(assert (=> b!7311411 (=> (not res!2953661) (not e!4376206))))

(assert (=> b!7311411 (= res!2953661 ((_ is Cons!71012) lt!2600509))))

(declare-fun b!7311414 () Bool)

(assert (=> b!7311414 (= e!4376208 (subseq!795 (tail!14620 lRes!24) (t!385258 lt!2600509)))))

(declare-fun d!2269910 () Bool)

(declare-fun res!2953663 () Bool)

(assert (=> d!2269910 (=> res!2953663 e!4376207)))

(assert (=> d!2269910 (= res!2953663 ((_ is Nil!71012) (tail!14620 lRes!24)))))

(assert (=> d!2269910 (= (subseq!795 (tail!14620 lRes!24) lt!2600509) e!4376207)))

(declare-fun b!7311413 () Bool)

(assert (=> b!7311413 (= e!4376209 (subseq!795 (t!385258 (tail!14620 lRes!24)) (t!385258 lt!2600509)))))

(assert (= (and d!2269910 (not res!2953663)) b!7311411))

(assert (= (and b!7311411 res!2953661) b!7311412))

(assert (= (and b!7311412 res!2953660) b!7311413))

(assert (= (and b!7311412 (not res!2953662)) b!7311414))

(assert (=> b!7311414 m!7975416))

(declare-fun m!7975470 () Bool)

(assert (=> b!7311414 m!7975470))

(declare-fun m!7975472 () Bool)

(assert (=> b!7311413 m!7975472))

(assert (=> d!2269874 d!2269910))

(declare-fun d!2269916 () Bool)

(assert (=> d!2269916 (= (tail!14620 lRes!24) (t!385258 lRes!24))))

(assert (=> d!2269874 d!2269916))

(declare-fun d!2269918 () Bool)

(assert (=> d!2269918 (= (isEmpty!40839 lRes!24) ((_ is Nil!71012) lRes!24))))

(assert (=> d!2269874 d!2269918))

(assert (=> b!7311284 d!2269906))

(declare-fun b!7311423 () Bool)

(declare-fun e!4376218 () Unit!164430)

(declare-fun e!4376217 () Unit!164430)

(assert (=> b!7311423 (= e!4376218 e!4376217)))

(declare-fun c!1357519 () Bool)

(assert (=> b!7311423 (= c!1357519 (subseq!795 (ite c!1357510 lRes!24 (t!385258 lRes!24)) (t!385258 (t!385258 lt!2600509))))))

(declare-fun b!7311424 () Bool)

(declare-fun e!4376215 () Unit!164430)

(declare-fun call!665703 () Unit!164430)

(assert (=> b!7311424 (= e!4376215 call!665703)))

(declare-fun b!7311425 () Bool)

(declare-fun c!1357518 () Bool)

(assert (=> b!7311425 (= c!1357518 (not (isEmpty!40839 (t!385258 (ite c!1357510 lRes!24 (t!385258 lRes!24))))))))

(assert (=> b!7311425 (= e!4376217 e!4376215)))

(declare-fun bm!665698 () Bool)

(assert (=> bm!665698 (= call!665703 (subseqTail!46 (ite c!1357519 (ite c!1357510 lRes!24 (t!385258 lRes!24)) (t!385258 (ite c!1357510 lRes!24 (t!385258 lRes!24)))) (t!385258 (t!385258 lt!2600509))))))

(declare-fun b!7311426 () Bool)

(declare-fun Unit!164438 () Unit!164430)

(assert (=> b!7311426 (= e!4376215 Unit!164438)))

(declare-fun b!7311427 () Bool)

(declare-fun Unit!164439 () Unit!164430)

(assert (=> b!7311427 (= e!4376218 Unit!164439)))

(declare-fun b!7311428 () Bool)

(assert (=> b!7311428 (= e!4376217 call!665703)))

(declare-fun e!4376216 () Bool)

(declare-fun b!7311429 () Bool)

(assert (=> b!7311429 (= e!4376216 (subseq!795 (ite c!1357510 lRes!24 (t!385258 lRes!24)) (t!385258 lt!2600509)))))

(declare-fun d!2269920 () Bool)

(assert (=> d!2269920 (subseq!795 (tail!14620 (ite c!1357510 lRes!24 (t!385258 lRes!24))) (t!385258 lt!2600509))))

(declare-fun lt!2600524 () Unit!164430)

(assert (=> d!2269920 (= lt!2600524 e!4376218)))

(declare-fun c!1357517 () Bool)

(assert (=> d!2269920 (= c!1357517 (and ((_ is Cons!71012) (ite c!1357510 lRes!24 (t!385258 lRes!24))) ((_ is Cons!71012) (t!385258 lt!2600509))))))

(assert (=> d!2269920 e!4376216))

(declare-fun res!2953665 () Bool)

(assert (=> d!2269920 (=> (not res!2953665) (not e!4376216))))

(assert (=> d!2269920 (= res!2953665 (not (isEmpty!40839 (ite c!1357510 lRes!24 (t!385258 lRes!24)))))))

(assert (=> d!2269920 (= (subseqTail!46 (ite c!1357510 lRes!24 (t!385258 lRes!24)) (t!385258 lt!2600509)) lt!2600524)))

(assert (= (and d!2269920 res!2953665) b!7311429))

(assert (= (and d!2269920 c!1357517) b!7311423))

(assert (= (and d!2269920 (not c!1357517)) b!7311427))

(assert (= (and b!7311423 c!1357519) b!7311428))

(assert (= (and b!7311423 (not c!1357519)) b!7311425))

(assert (= (and b!7311425 c!1357518) b!7311424))

(assert (= (and b!7311425 (not c!1357518)) b!7311426))

(assert (= (or b!7311428 b!7311424) bm!665698))

(declare-fun m!7975488 () Bool)

(assert (=> bm!665698 m!7975488))

(declare-fun m!7975490 () Bool)

(assert (=> d!2269920 m!7975490))

(assert (=> d!2269920 m!7975490))

(declare-fun m!7975492 () Bool)

(assert (=> d!2269920 m!7975492))

(declare-fun m!7975494 () Bool)

(assert (=> d!2269920 m!7975494))

(declare-fun m!7975496 () Bool)

(assert (=> b!7311423 m!7975496))

(declare-fun m!7975498 () Bool)

(assert (=> b!7311429 m!7975498))

(declare-fun m!7975500 () Bool)

(assert (=> b!7311425 m!7975500))

(assert (=> bm!665696 d!2269920))

(declare-fun d!2269922 () Bool)

(declare-fun c!1357522 () Bool)

(assert (=> d!2269922 (= c!1357522 ((_ is Nil!71012) lt!2600522))))

(declare-fun e!4376221 () (InoxSet B!3469))

(assert (=> d!2269922 (= (content!14846 lt!2600522) e!4376221)))

(declare-fun b!7311434 () Bool)

(assert (=> b!7311434 (= e!4376221 ((as const (Array B!3469 Bool)) false))))

(declare-fun b!7311435 () Bool)

(assert (=> b!7311435 (= e!4376221 ((_ map or) (store ((as const (Array B!3469 Bool)) false) (h!77460 lt!2600522) true) (content!14846 (t!385258 lt!2600522))))))

(assert (= (and d!2269922 c!1357522) b!7311434))

(assert (= (and d!2269922 (not c!1357522)) b!7311435))

(declare-fun m!7975502 () Bool)

(assert (=> b!7311435 m!7975502))

(declare-fun m!7975504 () Bool)

(assert (=> b!7311435 m!7975504))

(assert (=> b!7311347 d!2269922))

(assert (=> b!7311333 d!2269880))

(declare-fun b!7311437 () Bool)

(declare-fun e!4376222 () Bool)

(declare-fun e!4376224 () Bool)

(assert (=> b!7311437 (= e!4376222 e!4376224)))

(declare-fun res!2953668 () Bool)

(assert (=> b!7311437 (=> res!2953668 e!4376224)))

(declare-fun e!4376225 () Bool)

(assert (=> b!7311437 (= res!2953668 e!4376225)))

(declare-fun res!2953666 () Bool)

(assert (=> b!7311437 (=> (not res!2953666) (not e!4376225))))

(assert (=> b!7311437 (= res!2953666 (= (h!77460 (t!385258 (t!385258 lRes!24))) (h!77460 (t!385258 lt!2600509))))))

(declare-fun b!7311436 () Bool)

(declare-fun e!4376223 () Bool)

(assert (=> b!7311436 (= e!4376223 e!4376222)))

(declare-fun res!2953667 () Bool)

(assert (=> b!7311436 (=> (not res!2953667) (not e!4376222))))

(assert (=> b!7311436 (= res!2953667 ((_ is Cons!71012) (t!385258 lt!2600509)))))

(declare-fun b!7311439 () Bool)

(assert (=> b!7311439 (= e!4376224 (subseq!795 (t!385258 (t!385258 lRes!24)) (t!385258 (t!385258 lt!2600509))))))

(declare-fun d!2269924 () Bool)

(declare-fun res!2953669 () Bool)

(assert (=> d!2269924 (=> res!2953669 e!4376223)))

(assert (=> d!2269924 (= res!2953669 ((_ is Nil!71012) (t!385258 (t!385258 lRes!24))))))

(assert (=> d!2269924 (= (subseq!795 (t!385258 (t!385258 lRes!24)) (t!385258 lt!2600509)) e!4376223)))

(declare-fun b!7311438 () Bool)

(assert (=> b!7311438 (= e!4376225 (subseq!795 (t!385258 (t!385258 (t!385258 lRes!24))) (t!385258 (t!385258 lt!2600509))))))

(assert (= (and d!2269924 (not res!2953669)) b!7311436))

(assert (= (and b!7311436 res!2953667) b!7311437))

(assert (= (and b!7311437 res!2953666) b!7311438))

(assert (= (and b!7311437 (not res!2953668)) b!7311439))

(assert (=> b!7311439 m!7975466))

(declare-fun m!7975506 () Bool)

(assert (=> b!7311438 m!7975506))

(assert (=> b!7311283 d!2269924))

(declare-fun d!2269926 () Bool)

(assert (=> d!2269926 (= (isEmpty!40839 (t!385258 lRes!24)) ((_ is Nil!71012) (t!385258 lRes!24)))))

(assert (=> b!7311329 d!2269926))

(declare-fun condSetEmpty!53864 () Bool)

(assert (=> setNonEmpty!53861 (= condSetEmpty!53864 (= setRest!53861 ((as const (Array B!3469 Bool)) false)))))

(declare-fun setRes!53864 () Bool)

(assert (=> setNonEmpty!53861 (= tp!2075119 setRes!53864)))

(declare-fun setIsEmpty!53864 () Bool)

(assert (=> setIsEmpty!53864 setRes!53864))

(declare-fun setNonEmpty!53864 () Bool)

(declare-fun tp!2075129 () Bool)

(assert (=> setNonEmpty!53864 (= setRes!53864 (and tp!2075129 tp_is_empty!47331))))

(declare-fun setElem!53864 () B!3469)

(declare-fun setRest!53864 () (InoxSet B!3469))

(assert (=> setNonEmpty!53864 (= setRest!53861 ((_ map or) (store ((as const (Array B!3469 Bool)) false) setElem!53864 true) setRest!53864))))

(assert (= (and setNonEmpty!53861 condSetEmpty!53864) setIsEmpty!53864))

(assert (= (and setNonEmpty!53861 (not condSetEmpty!53864)) setNonEmpty!53864))

(declare-fun b!7311440 () Bool)

(declare-fun e!4376226 () Bool)

(declare-fun tp!2075130 () Bool)

(assert (=> b!7311440 (= e!4376226 (and tp_is_empty!47331 tp!2075130))))

(assert (=> b!7311354 (= tp!2075116 e!4376226)))

(assert (= (and b!7311354 ((_ is Cons!71012) (t!385258 (t!385258 lRes!24)))) b!7311440))

(declare-fun condSetEmpty!53865 () Bool)

(assert (=> setNonEmpty!53858 (= condSetEmpty!53865 (= setRest!53858 ((as const (Array A!767 Bool)) false)))))

(declare-fun setRes!53865 () Bool)

(assert (=> setNonEmpty!53858 (= tp!2075113 setRes!53865)))

(declare-fun setIsEmpty!53865 () Bool)

(assert (=> setIsEmpty!53865 setRes!53865))

(declare-fun setNonEmpty!53865 () Bool)

(declare-fun tp!2075131 () Bool)

(assert (=> setNonEmpty!53865 (= setRes!53865 (and tp!2075131 tp_is_empty!47329))))

(declare-fun setElem!53865 () A!767)

(declare-fun setRest!53865 () (InoxSet A!767))

(assert (=> setNonEmpty!53865 (= setRest!53858 ((_ map or) (store ((as const (Array A!767 Bool)) false) setElem!53865 true) setRest!53865))))

(assert (= (and setNonEmpty!53858 condSetEmpty!53865) setIsEmpty!53865))

(assert (= (and setNonEmpty!53858 (not condSetEmpty!53865)) setNonEmpty!53865))

(check-sat b_and!351215 (not b!7311400) (not b!7311381) tp_is_empty!47331 (not b!7311414) (not b_next!134711) (not b!7311382) (not setNonEmpty!53864) (not b!7311425) (not b!7311438) (not b!7311396) (not d!2269900) (not b!7311435) (not bm!665698) (not setNonEmpty!53865) (not b!7311439) (not b!7311405) (not d!2269920) (not b!7311406) (not b!7311429) (not b!7311399) (not b!7311413) (not b!7311395) (not b_lambda!282091) tp_is_empty!47329 (not b!7311440) (not b!7311423))
(check-sat b_and!351215 (not b_next!134711))

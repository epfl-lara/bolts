; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700040 () Bool)

(assert start!700040)

(declare-fun b!7194371 () Bool)

(assert (=> b!7194371 true))

(declare-fun b!7194362 () Bool)

(declare-fun e!4320250 () Bool)

(declare-fun e!4320255 () Bool)

(assert (=> b!7194362 (= e!4320250 e!4320255)))

(declare-fun res!2928881 () Bool)

(assert (=> b!7194362 (=> (not res!2928881) (not e!4320255))))

(declare-datatypes ((C!37030 0))(
  ( (C!37031 (val!28463 Int)) )
))
(declare-datatypes ((Regex!18378 0))(
  ( (ElementMatch!18378 (c!1339037 C!37030)) (Concat!27223 (regOne!37268 Regex!18378) (regTwo!37268 Regex!18378)) (EmptyExpr!18378) (Star!18378 (reg!18707 Regex!18378)) (EmptyLang!18378) (Union!18378 (regOne!37269 Regex!18378) (regTwo!37269 Regex!18378)) )
))
(declare-datatypes ((List!69856 0))(
  ( (Nil!69732) (Cons!69732 (h!76180 Regex!18378) (t!383881 List!69856)) )
))
(declare-datatypes ((Context!14660 0))(
  ( (Context!14661 (exprs!7830 List!69856)) )
))
(declare-fun c!10544 () Context!14660)

(declare-fun lt!2571502 () C!37030)

(declare-fun derivationStepZipperUp!2344 (Context!14660 C!37030) (Set Context!14660))

(assert (=> b!7194362 (= res!2928881 (= (derivationStepZipperUp!2344 c!10544 lt!2571502) (as set.empty (Set Context!14660))))))

(declare-fun lt!2571501 () (Set Context!14660))

(declare-fun z!3517 () (Set Context!14660))

(declare-fun derivationStepZipper!3239 ((Set Context!14660) C!37030) (Set Context!14660))

(assert (=> b!7194362 (= lt!2571501 (derivationStepZipper!3239 z!3517 lt!2571502))))

(declare-datatypes ((List!69857 0))(
  ( (Nil!69733) (Cons!69733 (h!76181 C!37030) (t!383882 List!69857)) )
))
(declare-fun s!7961 () List!69857)

(declare-fun head!14712 (List!69857) C!37030)

(assert (=> b!7194362 (= lt!2571502 (head!14712 s!7961))))

(declare-fun res!2928878 () Bool)

(assert (=> start!700040 (=> (not res!2928878) (not e!4320250))))

(assert (=> start!700040 (= res!2928878 (= z!3517 (set.insert c!10544 (as set.empty (Set Context!14660)))))))

(assert (=> start!700040 e!4320250))

(declare-fun condSetEmpty!53347 () Bool)

(assert (=> start!700040 (= condSetEmpty!53347 (= z!3517 (as set.empty (Set Context!14660))))))

(declare-fun setRes!53347 () Bool)

(assert (=> start!700040 setRes!53347))

(declare-fun e!4320253 () Bool)

(declare-fun inv!88968 (Context!14660) Bool)

(assert (=> start!700040 (and (inv!88968 c!10544) e!4320253)))

(declare-fun e!4320248 () Bool)

(assert (=> start!700040 e!4320248))

(declare-fun b!7194363 () Bool)

(declare-fun e!4320249 () Bool)

(declare-fun tp!1999938 () Bool)

(assert (=> b!7194363 (= e!4320249 tp!1999938)))

(declare-fun b!7194364 () Bool)

(declare-fun e!4320251 () Bool)

(assert (=> b!7194364 (= e!4320251 false)))

(declare-fun b!7194365 () Bool)

(declare-fun tp_is_empty!46313 () Bool)

(declare-fun tp!1999941 () Bool)

(assert (=> b!7194365 (= e!4320248 (and tp_is_empty!46313 tp!1999941))))

(declare-fun b!7194366 () Bool)

(declare-fun res!2928882 () Bool)

(assert (=> b!7194366 (=> (not res!2928882) (not e!4320250))))

(declare-fun isEmpty!40251 (List!69857) Bool)

(assert (=> b!7194366 (= res!2928882 (not (isEmpty!40251 s!7961)))))

(declare-fun b!7194367 () Bool)

(declare-fun res!2928879 () Bool)

(assert (=> b!7194367 (=> (not res!2928879) (not e!4320250))))

(declare-fun isEmpty!40252 (List!69856) Bool)

(assert (=> b!7194367 (= res!2928879 (not (isEmpty!40252 (exprs!7830 c!10544))))))

(declare-fun b!7194368 () Bool)

(declare-datatypes ((Unit!163395 0))(
  ( (Unit!163396) )
))
(declare-fun e!4320252 () Unit!163395)

(declare-fun Unit!163397 () Unit!163395)

(assert (=> b!7194368 (= e!4320252 Unit!163397)))

(declare-fun b!7194369 () Bool)

(declare-fun lt!2571500 () Bool)

(assert (=> b!7194369 (= e!4320255 (and (not lt!2571500) (= s!7961 Nil!69733)))))

(declare-fun lt!2571499 () Unit!163395)

(assert (=> b!7194369 (= lt!2571499 e!4320252)))

(declare-fun c!1339036 () Bool)

(assert (=> b!7194369 (= c!1339036 lt!2571500)))

(assert (=> b!7194369 (= lt!2571500 (not (= lt!2571501 (as set.empty (Set Context!14660)))))))

(declare-fun b!7194370 () Bool)

(declare-fun e!4320254 () Bool)

(declare-fun tp!1999940 () Bool)

(assert (=> b!7194370 (= e!4320254 tp!1999940)))

(declare-fun Unit!163398 () Unit!163395)

(assert (=> b!7194371 (= e!4320252 Unit!163398)))

(declare-fun empty!3027 () Context!14660)

(assert (=> b!7194371 (and (inv!88968 empty!3027) e!4320249)))

(assert (=> b!7194371 true))

(declare-fun lambda!438031 () Int)

(declare-fun res!2928877 () Bool)

(declare-fun flatMapPost!77 ((Set Context!14660) Int Context!14660) Context!14660)

(declare-datatypes ((List!69858 0))(
  ( (Nil!69734) (Cons!69734 (h!76182 Context!14660) (t!383883 List!69858)) )
))
(declare-fun head!14713 (List!69858) Context!14660)

(declare-fun toList!11317 ((Set Context!14660)) List!69858)

(assert (=> b!7194371 (= res!2928877 (= (flatMapPost!77 z!3517 lambda!438031 (head!14713 (toList!11317 lt!2571501))) empty!3027))))

(assert (=> b!7194371 (=> (not res!2928877) (not e!4320251))))

(assert (=> b!7194371 e!4320251))

(declare-fun tp!1999939 () Bool)

(declare-fun setElem!53347 () Context!14660)

(declare-fun setNonEmpty!53347 () Bool)

(assert (=> setNonEmpty!53347 (= setRes!53347 (and tp!1999939 (inv!88968 setElem!53347) e!4320254))))

(declare-fun setRest!53347 () (Set Context!14660))

(assert (=> setNonEmpty!53347 (= z!3517 (set.union (set.insert setElem!53347 (as set.empty (Set Context!14660))) setRest!53347))))

(declare-fun b!7194372 () Bool)

(declare-fun tp!1999937 () Bool)

(assert (=> b!7194372 (= e!4320253 tp!1999937)))

(declare-fun b!7194373 () Bool)

(declare-fun res!2928880 () Bool)

(assert (=> b!7194373 (=> (not res!2928880) (not e!4320250))))

(declare-fun head!14714 (List!69856) Regex!18378)

(assert (=> b!7194373 (= res!2928880 (= (head!14714 (exprs!7830 c!10544)) EmptyLang!18378))))

(declare-fun setIsEmpty!53347 () Bool)

(assert (=> setIsEmpty!53347 setRes!53347))

(assert (= (and start!700040 res!2928878) b!7194367))

(assert (= (and b!7194367 res!2928879) b!7194373))

(assert (= (and b!7194373 res!2928880) b!7194366))

(assert (= (and b!7194366 res!2928882) b!7194362))

(assert (= (and b!7194362 res!2928881) b!7194369))

(assert (= (and b!7194369 c!1339036) b!7194371))

(assert (= (and b!7194369 (not c!1339036)) b!7194368))

(assert (= b!7194371 b!7194363))

(assert (= (and b!7194371 res!2928877) b!7194364))

(assert (= (and start!700040 condSetEmpty!53347) setIsEmpty!53347))

(assert (= (and start!700040 (not condSetEmpty!53347)) setNonEmpty!53347))

(assert (= setNonEmpty!53347 b!7194370))

(assert (= start!700040 b!7194372))

(assert (= (and start!700040 (is-Cons!69733 s!7961)) b!7194365))

(declare-fun m!7888810 () Bool)

(assert (=> b!7194366 m!7888810))

(declare-fun m!7888812 () Bool)

(assert (=> setNonEmpty!53347 m!7888812))

(declare-fun m!7888814 () Bool)

(assert (=> b!7194367 m!7888814))

(declare-fun m!7888816 () Bool)

(assert (=> b!7194362 m!7888816))

(declare-fun m!7888818 () Bool)

(assert (=> b!7194362 m!7888818))

(declare-fun m!7888820 () Bool)

(assert (=> b!7194362 m!7888820))

(declare-fun m!7888822 () Bool)

(assert (=> start!700040 m!7888822))

(declare-fun m!7888824 () Bool)

(assert (=> start!700040 m!7888824))

(declare-fun m!7888826 () Bool)

(assert (=> b!7194373 m!7888826))

(declare-fun m!7888828 () Bool)

(assert (=> b!7194371 m!7888828))

(declare-fun m!7888830 () Bool)

(assert (=> b!7194371 m!7888830))

(assert (=> b!7194371 m!7888830))

(declare-fun m!7888832 () Bool)

(assert (=> b!7194371 m!7888832))

(assert (=> b!7194371 m!7888832))

(declare-fun m!7888834 () Bool)

(assert (=> b!7194371 m!7888834))

(push 1)

(assert tp_is_empty!46313)

(assert (not b!7194371))

(assert (not b!7194363))

(assert (not b!7194365))

(assert (not b!7194367))

(assert (not b!7194366))

(assert (not setNonEmpty!53347))

(assert (not b!7194370))

(assert (not b!7194362))

(assert (not b!7194372))

(assert (not start!700040))

(assert (not b!7194373))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2241184 () Bool)

(declare-fun lambda!438037 () Int)

(declare-fun forall!17204 (List!69856 Int) Bool)

(assert (=> d!2241184 (= (inv!88968 c!10544) (forall!17204 (exprs!7830 c!10544) lambda!438037))))

(declare-fun bs!1900439 () Bool)

(assert (= bs!1900439 d!2241184))

(declare-fun m!7888862 () Bool)

(assert (=> bs!1900439 m!7888862))

(assert (=> start!700040 d!2241184))

(declare-fun d!2241186 () Bool)

(assert (=> d!2241186 (= (head!14714 (exprs!7830 c!10544)) (h!76180 (exprs!7830 c!10544)))))

(assert (=> b!7194373 d!2241186))

(declare-fun d!2241188 () Bool)

(assert (=> d!2241188 (= (isEmpty!40252 (exprs!7830 c!10544)) (is-Nil!69732 (exprs!7830 c!10544)))))

(assert (=> b!7194367 d!2241188))

(declare-fun d!2241190 () Bool)

(declare-fun c!1339046 () Bool)

(declare-fun e!4320286 () Bool)

(assert (=> d!2241190 (= c!1339046 e!4320286)))

(declare-fun res!2928903 () Bool)

(assert (=> d!2241190 (=> (not res!2928903) (not e!4320286))))

(assert (=> d!2241190 (= res!2928903 (is-Cons!69732 (exprs!7830 c!10544)))))

(declare-fun e!4320288 () (Set Context!14660))

(assert (=> d!2241190 (= (derivationStepZipperUp!2344 c!10544 lt!2571502) e!4320288)))

(declare-fun b!7194424 () Bool)

(declare-fun call!656018 () (Set Context!14660))

(assert (=> b!7194424 (= e!4320288 (set.union call!656018 (derivationStepZipperUp!2344 (Context!14661 (t!383881 (exprs!7830 c!10544))) lt!2571502)))))

(declare-fun b!7194425 () Bool)

(declare-fun e!4320287 () (Set Context!14660))

(assert (=> b!7194425 (= e!4320287 call!656018)))

(declare-fun b!7194426 () Bool)

(declare-fun nullable!7792 (Regex!18378) Bool)

(assert (=> b!7194426 (= e!4320286 (nullable!7792 (h!76180 (exprs!7830 c!10544))))))

(declare-fun b!7194427 () Bool)

(assert (=> b!7194427 (= e!4320288 e!4320287)))

(declare-fun c!1339047 () Bool)

(assert (=> b!7194427 (= c!1339047 (is-Cons!69732 (exprs!7830 c!10544)))))

(declare-fun bm!656013 () Bool)

(declare-fun derivationStepZipperDown!2523 (Regex!18378 Context!14660 C!37030) (Set Context!14660))

(assert (=> bm!656013 (= call!656018 (derivationStepZipperDown!2523 (h!76180 (exprs!7830 c!10544)) (Context!14661 (t!383881 (exprs!7830 c!10544))) lt!2571502))))

(declare-fun b!7194428 () Bool)

(assert (=> b!7194428 (= e!4320287 (as set.empty (Set Context!14660)))))

(assert (= (and d!2241190 res!2928903) b!7194426))

(assert (= (and d!2241190 c!1339046) b!7194424))

(assert (= (and d!2241190 (not c!1339046)) b!7194427))

(assert (= (and b!7194427 c!1339047) b!7194425))

(assert (= (and b!7194427 (not c!1339047)) b!7194428))

(assert (= (or b!7194424 b!7194425) bm!656013))

(declare-fun m!7888864 () Bool)

(assert (=> b!7194424 m!7888864))

(declare-fun m!7888866 () Bool)

(assert (=> b!7194426 m!7888866))

(declare-fun m!7888868 () Bool)

(assert (=> bm!656013 m!7888868))

(assert (=> b!7194362 d!2241190))

(declare-fun bs!1900440 () Bool)

(declare-fun d!2241194 () Bool)

(assert (= bs!1900440 (and d!2241194 b!7194371)))

(declare-fun lambda!438040 () Int)

(assert (=> bs!1900440 (= lambda!438040 lambda!438031)))

(assert (=> d!2241194 true))

(declare-fun flatMap!2682 ((Set Context!14660) Int) (Set Context!14660))

(assert (=> d!2241194 (= (derivationStepZipper!3239 z!3517 lt!2571502) (flatMap!2682 z!3517 lambda!438040))))

(declare-fun bs!1900441 () Bool)

(assert (= bs!1900441 d!2241194))

(declare-fun m!7888870 () Bool)

(assert (=> bs!1900441 m!7888870))

(assert (=> b!7194362 d!2241194))

(declare-fun d!2241196 () Bool)

(assert (=> d!2241196 (= (head!14712 s!7961) (h!76181 s!7961))))

(assert (=> b!7194362 d!2241196))

(declare-fun bs!1900442 () Bool)

(declare-fun d!2241198 () Bool)

(assert (= bs!1900442 (and d!2241198 d!2241184)))

(declare-fun lambda!438041 () Int)

(assert (=> bs!1900442 (= lambda!438041 lambda!438037)))

(assert (=> d!2241198 (= (inv!88968 setElem!53347) (forall!17204 (exprs!7830 setElem!53347) lambda!438041))))

(declare-fun bs!1900443 () Bool)

(assert (= bs!1900443 d!2241198))

(declare-fun m!7888872 () Bool)

(assert (=> bs!1900443 m!7888872))

(assert (=> setNonEmpty!53347 d!2241198))

(declare-fun bs!1900444 () Bool)

(declare-fun d!2241200 () Bool)

(assert (= bs!1900444 (and d!2241200 d!2241184)))

(declare-fun lambda!438042 () Int)

(assert (=> bs!1900444 (= lambda!438042 lambda!438037)))

(declare-fun bs!1900445 () Bool)

(assert (= bs!1900445 (and d!2241200 d!2241198)))

(assert (=> bs!1900445 (= lambda!438042 lambda!438041)))

(assert (=> d!2241200 (= (inv!88968 empty!3027) (forall!17204 (exprs!7830 empty!3027) lambda!438042))))

(declare-fun bs!1900446 () Bool)

(assert (= bs!1900446 d!2241200))

(declare-fun m!7888874 () Bool)

(assert (=> bs!1900446 m!7888874))

(assert (=> b!7194371 d!2241200))

(declare-fun d!2241202 () Bool)

(assert (=> d!2241202 true))

(assert (=> d!2241202 true))

(declare-fun order!28721 () Int)

(declare-fun lambda!438045 () Int)

(declare-fun order!28719 () Int)

(declare-fun dynLambda!28396 (Int Int) Int)

(declare-fun dynLambda!28397 (Int Int) Int)

(assert (=> d!2241202 (< (dynLambda!28396 order!28719 lambda!438031) (dynLambda!28397 order!28721 lambda!438045))))

(declare-fun exists!4090 ((Set Context!14660) Int) Bool)

(assert (=> d!2241202 (= (set.member (head!14713 (toList!11317 lt!2571501)) (flatMap!2682 z!3517 lambda!438031)) (exists!4090 z!3517 lambda!438045))))

(declare-fun lt!2571517 () Context!14660)

(declare-fun choose!55426 ((Set Context!14660) Int Context!14660) Context!14660)

(assert (=> d!2241202 (= lt!2571517 (choose!55426 z!3517 lambda!438031 (head!14713 (toList!11317 lt!2571501))))))

(assert (=> d!2241202 (= (flatMapPost!77 z!3517 lambda!438031 (head!14713 (toList!11317 lt!2571501))) lt!2571517)))

(declare-fun bs!1900447 () Bool)

(assert (= bs!1900447 d!2241202))

(declare-fun m!7888876 () Bool)

(assert (=> bs!1900447 m!7888876))

(assert (=> bs!1900447 m!7888832))

(declare-fun m!7888878 () Bool)

(assert (=> bs!1900447 m!7888878))

(declare-fun m!7888880 () Bool)

(assert (=> bs!1900447 m!7888880))

(assert (=> bs!1900447 m!7888832))

(declare-fun m!7888882 () Bool)

(assert (=> bs!1900447 m!7888882))

(assert (=> b!7194371 d!2241202))

(declare-fun d!2241204 () Bool)

(assert (=> d!2241204 (= (head!14713 (toList!11317 lt!2571501)) (h!76182 (toList!11317 lt!2571501)))))

(assert (=> b!7194371 d!2241204))

(declare-fun d!2241206 () Bool)

(declare-fun e!4320297 () Bool)

(assert (=> d!2241206 e!4320297))

(declare-fun res!2928908 () Bool)

(assert (=> d!2241206 (=> (not res!2928908) (not e!4320297))))

(declare-fun lt!2571520 () List!69858)

(declare-fun noDuplicate!2903 (List!69858) Bool)

(assert (=> d!2241206 (= res!2928908 (noDuplicate!2903 lt!2571520))))

(declare-fun choose!55427 ((Set Context!14660)) List!69858)

(assert (=> d!2241206 (= lt!2571520 (choose!55427 lt!2571501))))

(assert (=> d!2241206 (= (toList!11317 lt!2571501) lt!2571520)))

(declare-fun b!7194446 () Bool)

(declare-fun content!14332 (List!69858) (Set Context!14660))

(assert (=> b!7194446 (= e!4320297 (= (content!14332 lt!2571520) lt!2571501))))

(assert (= (and d!2241206 res!2928908) b!7194446))

(declare-fun m!7888884 () Bool)

(assert (=> d!2241206 m!7888884))

(declare-fun m!7888886 () Bool)

(assert (=> d!2241206 m!7888886))

(declare-fun m!7888888 () Bool)

(assert (=> b!7194446 m!7888888))

(assert (=> b!7194371 d!2241206))

(declare-fun d!2241208 () Bool)

(assert (=> d!2241208 (= (isEmpty!40251 s!7961) (is-Nil!69733 s!7961))))

(assert (=> b!7194366 d!2241208))

(declare-fun b!7194451 () Bool)

(declare-fun e!4320300 () Bool)

(declare-fun tp!1999961 () Bool)

(declare-fun tp!1999962 () Bool)

(assert (=> b!7194451 (= e!4320300 (and tp!1999961 tp!1999962))))

(assert (=> b!7194363 (= tp!1999938 e!4320300)))

(assert (= (and b!7194363 (is-Cons!69732 (exprs!7830 empty!3027))) b!7194451))

(declare-fun b!7194452 () Bool)

(declare-fun e!4320301 () Bool)

(declare-fun tp!1999963 () Bool)

(declare-fun tp!1999964 () Bool)

(assert (=> b!7194452 (= e!4320301 (and tp!1999963 tp!1999964))))

(assert (=> b!7194372 (= tp!1999937 e!4320301)))

(assert (= (and b!7194372 (is-Cons!69732 (exprs!7830 c!10544))) b!7194452))

(declare-fun condSetEmpty!53353 () Bool)

(assert (=> setNonEmpty!53347 (= condSetEmpty!53353 (= setRest!53347 (as set.empty (Set Context!14660))))))

(declare-fun setRes!53353 () Bool)

(assert (=> setNonEmpty!53347 (= tp!1999939 setRes!53353)))

(declare-fun setIsEmpty!53353 () Bool)

(assert (=> setIsEmpty!53353 setRes!53353))

(declare-fun setNonEmpty!53353 () Bool)

(declare-fun e!4320304 () Bool)

(declare-fun tp!1999969 () Bool)

(declare-fun setElem!53353 () Context!14660)

(assert (=> setNonEmpty!53353 (= setRes!53353 (and tp!1999969 (inv!88968 setElem!53353) e!4320304))))

(declare-fun setRest!53353 () (Set Context!14660))

(assert (=> setNonEmpty!53353 (= setRest!53347 (set.union (set.insert setElem!53353 (as set.empty (Set Context!14660))) setRest!53353))))

(declare-fun b!7194457 () Bool)

(declare-fun tp!1999970 () Bool)

(assert (=> b!7194457 (= e!4320304 tp!1999970)))

(assert (= (and setNonEmpty!53347 condSetEmpty!53353) setIsEmpty!53353))

(assert (= (and setNonEmpty!53347 (not condSetEmpty!53353)) setNonEmpty!53353))

(assert (= setNonEmpty!53353 b!7194457))

(declare-fun m!7888890 () Bool)

(assert (=> setNonEmpty!53353 m!7888890))

(declare-fun b!7194462 () Bool)

(declare-fun e!4320307 () Bool)

(declare-fun tp!1999973 () Bool)

(assert (=> b!7194462 (= e!4320307 (and tp_is_empty!46313 tp!1999973))))

(assert (=> b!7194365 (= tp!1999941 e!4320307)))

(assert (= (and b!7194365 (is-Cons!69733 (t!383882 s!7961))) b!7194462))

(declare-fun b!7194463 () Bool)

(declare-fun e!4320308 () Bool)

(declare-fun tp!1999974 () Bool)

(declare-fun tp!1999975 () Bool)

(assert (=> b!7194463 (= e!4320308 (and tp!1999974 tp!1999975))))

(assert (=> b!7194370 (= tp!1999940 e!4320308)))

(assert (= (and b!7194370 (is-Cons!69732 (exprs!7830 setElem!53347))) b!7194463))

(push 1)

(assert (not bm!656013))

(assert tp_is_empty!46313)

(assert (not d!2241194))

(assert (not d!2241202))

(assert (not d!2241200))

(assert (not b!7194462))

(assert (not d!2241206))

(assert (not d!2241198))

(assert (not b!7194446))

(assert (not b!7194463))

(assert (not b!7194457))

(assert (not b!7194452))

(assert (not b!7194451))

(assert (not d!2241184))

(assert (not b!7194424))

(assert (not setNonEmpty!53353))

(assert (not b!7194426))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


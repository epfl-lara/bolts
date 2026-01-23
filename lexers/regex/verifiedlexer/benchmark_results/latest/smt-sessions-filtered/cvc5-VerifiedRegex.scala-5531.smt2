; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278504 () Bool)

(assert start!278504)

(declare-fun b!2862198 () Bool)

(declare-fun res!1188418 () Bool)

(declare-fun e!1811889 () Bool)

(assert (=> b!2862198 (=> (not res!1188418) (not e!1811889))))

(declare-datatypes ((C!17414 0))(
  ( (C!17415 (val!10741 Int)) )
))
(declare-datatypes ((List!34213 0))(
  ( (Nil!34089) (Cons!34089 (h!39509 C!17414) (t!233250 List!34213)) )
))
(declare-fun prefix!919 () List!34213)

(assert (=> b!2862198 (= res!1188418 (is-Nil!34089 prefix!919))))

(declare-fun b!2862199 () Bool)

(declare-fun e!1811891 () Bool)

(declare-fun tp!921513 () Bool)

(assert (=> b!2862199 (= e!1811891 tp!921513)))

(declare-fun setIsEmpty!25257 () Bool)

(declare-fun setRes!25257 () Bool)

(assert (=> setIsEmpty!25257 setRes!25257))

(declare-fun setNonEmpty!25257 () Bool)

(declare-fun tp!921512 () Bool)

(declare-datatypes ((Regex!8616 0))(
  ( (ElementMatch!8616 (c!461341 C!17414)) (Concat!13937 (regOne!17744 Regex!8616) (regTwo!17744 Regex!8616)) (EmptyExpr!8616) (Star!8616 (reg!8945 Regex!8616)) (EmptyLang!8616) (Union!8616 (regOne!17745 Regex!8616) (regTwo!17745 Regex!8616)) )
))
(declare-datatypes ((List!34214 0))(
  ( (Nil!34090) (Cons!34090 (h!39510 Regex!8616) (t!233251 List!34214)) )
))
(declare-datatypes ((Context!5152 0))(
  ( (Context!5153 (exprs!3076 List!34214)) )
))
(declare-fun setElem!25257 () Context!5152)

(declare-fun inv!46128 (Context!5152) Bool)

(assert (=> setNonEmpty!25257 (= setRes!25257 (and tp!921512 (inv!46128 setElem!25257) e!1811891))))

(declare-fun z!960 () (Set Context!5152))

(declare-fun setRest!25257 () (Set Context!5152))

(assert (=> setNonEmpty!25257 (= z!960 (set.union (set.insert setElem!25257 (as set.empty (Set Context!5152))) setRest!25257))))

(declare-fun b!2862200 () Bool)

(declare-datatypes ((Option!6317 0))(
  ( (None!6316) (Some!6316 (v!34438 List!34213)) )
))
(declare-fun isDefined!4948 (Option!6317) Bool)

(declare-fun getLanguageWitness!248 ((Set Context!5152)) Option!6317)

(assert (=> b!2862200 (= e!1811889 (not (isDefined!4948 (getLanguageWitness!248 z!960))))))

(declare-fun b!2862197 () Bool)

(declare-fun e!1811890 () Bool)

(declare-fun tp_is_empty!14969 () Bool)

(declare-fun tp!921511 () Bool)

(assert (=> b!2862197 (= e!1811890 (and tp_is_empty!14969 tp!921511))))

(declare-fun res!1188417 () Bool)

(assert (=> start!278504 (=> (not res!1188417) (not e!1811889))))

(declare-fun prefixMatchZipper!298 ((Set Context!5152) List!34213) Bool)

(assert (=> start!278504 (= res!1188417 (prefixMatchZipper!298 z!960 prefix!919))))

(assert (=> start!278504 e!1811889))

(declare-fun condSetEmpty!25257 () Bool)

(assert (=> start!278504 (= condSetEmpty!25257 (= z!960 (as set.empty (Set Context!5152))))))

(assert (=> start!278504 setRes!25257))

(assert (=> start!278504 e!1811890))

(assert (= (and start!278504 res!1188417) b!2862198))

(assert (= (and b!2862198 res!1188418) b!2862200))

(assert (= (and start!278504 condSetEmpty!25257) setIsEmpty!25257))

(assert (= (and start!278504 (not condSetEmpty!25257)) setNonEmpty!25257))

(assert (= setNonEmpty!25257 b!2862199))

(assert (= (and start!278504 (is-Cons!34089 prefix!919)) b!2862197))

(declare-fun m!3281549 () Bool)

(assert (=> setNonEmpty!25257 m!3281549))

(declare-fun m!3281551 () Bool)

(assert (=> b!2862200 m!3281551))

(assert (=> b!2862200 m!3281551))

(declare-fun m!3281553 () Bool)

(assert (=> b!2862200 m!3281553))

(declare-fun m!3281555 () Bool)

(assert (=> start!278504 m!3281555))

(push 1)

(assert (not b!2862199))

(assert (not start!278504))

(assert (not b!2862200))

(assert (not setNonEmpty!25257))

(assert tp_is_empty!14969)

(assert (not b!2862197))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!827308 () Bool)

(declare-fun isEmpty!18622 (Option!6317) Bool)

(assert (=> d!827308 (= (isDefined!4948 (getLanguageWitness!248 z!960)) (not (isEmpty!18622 (getLanguageWitness!248 z!960))))))

(declare-fun bs!520431 () Bool)

(assert (= bs!520431 d!827308))

(assert (=> bs!520431 m!3281551))

(declare-fun m!3281565 () Bool)

(assert (=> bs!520431 m!3281565))

(assert (=> b!2862200 d!827308))

(declare-fun d!827312 () Bool)

(declare-fun lt!1014620 () Option!6317)

(declare-fun lambda!105224 () Int)

(declare-fun exists!1037 ((Set Context!5152) Int) Bool)

(assert (=> d!827312 (= (isDefined!4948 lt!1014620) (exists!1037 z!960 lambda!105224))))

(declare-fun e!1811905 () Option!6317)

(assert (=> d!827312 (= lt!1014620 e!1811905)))

(declare-fun c!461355 () Bool)

(assert (=> d!827312 (= c!461355 (exists!1037 z!960 lambda!105224))))

(assert (=> d!827312 (= (getLanguageWitness!248 z!960) lt!1014620)))

(declare-fun b!2862221 () Bool)

(declare-fun getLanguageWitness!250 (Context!5152) Option!6317)

(declare-fun getWitness!576 ((Set Context!5152) Int) Context!5152)

(assert (=> b!2862221 (= e!1811905 (getLanguageWitness!250 (getWitness!576 z!960 lambda!105224)))))

(declare-fun b!2862222 () Bool)

(assert (=> b!2862222 (= e!1811905 None!6316)))

(assert (= (and d!827312 c!461355) b!2862221))

(assert (= (and d!827312 (not c!461355)) b!2862222))

(declare-fun m!3281569 () Bool)

(assert (=> d!827312 m!3281569))

(declare-fun m!3281571 () Bool)

(assert (=> d!827312 m!3281571))

(assert (=> d!827312 m!3281571))

(declare-fun m!3281573 () Bool)

(assert (=> b!2862221 m!3281573))

(assert (=> b!2862221 m!3281573))

(declare-fun m!3281575 () Bool)

(assert (=> b!2862221 m!3281575))

(assert (=> b!2862200 d!827312))

(declare-fun d!827316 () Bool)

(declare-fun lambda!105231 () Int)

(declare-fun forall!6963 (List!34214 Int) Bool)

(assert (=> d!827316 (= (inv!46128 setElem!25257) (forall!6963 (exprs!3076 setElem!25257) lambda!105231))))

(declare-fun bs!520433 () Bool)

(assert (= bs!520433 d!827316))

(declare-fun m!3281577 () Bool)

(assert (=> bs!520433 m!3281577))

(assert (=> setNonEmpty!25257 d!827316))

(declare-fun d!827318 () Bool)

(declare-fun c!461363 () Bool)

(declare-fun isEmpty!18623 (List!34213) Bool)

(assert (=> d!827318 (= c!461363 (isEmpty!18623 prefix!919))))

(declare-fun e!1811909 () Bool)

(assert (=> d!827318 (= (prefixMatchZipper!298 z!960 prefix!919) e!1811909)))

(declare-fun b!2862229 () Bool)

(declare-fun lostCauseZipper!538 ((Set Context!5152)) Bool)

(assert (=> b!2862229 (= e!1811909 (not (lostCauseZipper!538 z!960)))))

(declare-fun b!2862230 () Bool)

(declare-fun derivationStepZipper!422 ((Set Context!5152) C!17414) (Set Context!5152))

(declare-fun head!6297 (List!34213) C!17414)

(declare-fun tail!4522 (List!34213) List!34213)

(assert (=> b!2862230 (= e!1811909 (prefixMatchZipper!298 (derivationStepZipper!422 z!960 (head!6297 prefix!919)) (tail!4522 prefix!919)))))

(assert (= (and d!827318 c!461363) b!2862229))

(assert (= (and d!827318 (not c!461363)) b!2862230))

(declare-fun m!3281587 () Bool)

(assert (=> d!827318 m!3281587))

(declare-fun m!3281589 () Bool)

(assert (=> b!2862229 m!3281589))

(declare-fun m!3281591 () Bool)

(assert (=> b!2862230 m!3281591))

(assert (=> b!2862230 m!3281591))

(declare-fun m!3281593 () Bool)

(assert (=> b!2862230 m!3281593))

(declare-fun m!3281595 () Bool)

(assert (=> b!2862230 m!3281595))

(assert (=> b!2862230 m!3281593))

(assert (=> b!2862230 m!3281595))

(declare-fun m!3281597 () Bool)

(assert (=> b!2862230 m!3281597))

(assert (=> start!278504 d!827318))

(declare-fun b!2862235 () Bool)

(declare-fun e!1811912 () Bool)

(declare-fun tp!921525 () Bool)

(assert (=> b!2862235 (= e!1811912 (and tp_is_empty!14969 tp!921525))))

(assert (=> b!2862197 (= tp!921511 e!1811912)))

(assert (= (and b!2862197 (is-Cons!34089 (t!233250 prefix!919))) b!2862235))

(declare-fun condSetEmpty!25263 () Bool)

(assert (=> setNonEmpty!25257 (= condSetEmpty!25263 (= setRest!25257 (as set.empty (Set Context!5152))))))

(declare-fun setRes!25263 () Bool)

(assert (=> setNonEmpty!25257 (= tp!921512 setRes!25263)))

(declare-fun setIsEmpty!25263 () Bool)

(assert (=> setIsEmpty!25263 setRes!25263))

(declare-fun setElem!25263 () Context!5152)

(declare-fun e!1811917 () Bool)

(declare-fun setNonEmpty!25263 () Bool)

(declare-fun tp!921530 () Bool)

(assert (=> setNonEmpty!25263 (= setRes!25263 (and tp!921530 (inv!46128 setElem!25263) e!1811917))))

(declare-fun setRest!25263 () (Set Context!5152))

(assert (=> setNonEmpty!25263 (= setRest!25257 (set.union (set.insert setElem!25263 (as set.empty (Set Context!5152))) setRest!25263))))

(declare-fun b!2862244 () Bool)

(declare-fun tp!921531 () Bool)

(assert (=> b!2862244 (= e!1811917 tp!921531)))

(assert (= (and setNonEmpty!25257 condSetEmpty!25263) setIsEmpty!25263))

(assert (= (and setNonEmpty!25257 (not condSetEmpty!25263)) setNonEmpty!25263))

(assert (= setNonEmpty!25263 b!2862244))

(declare-fun m!3281599 () Bool)

(assert (=> setNonEmpty!25263 m!3281599))

(declare-fun b!2862251 () Bool)

(declare-fun e!1811921 () Bool)

(declare-fun tp!921536 () Bool)

(declare-fun tp!921537 () Bool)

(assert (=> b!2862251 (= e!1811921 (and tp!921536 tp!921537))))

(assert (=> b!2862199 (= tp!921513 e!1811921)))

(assert (= (and b!2862199 (is-Cons!34090 (exprs!3076 setElem!25257))) b!2862251))

(push 1)

(assert (not d!827318))

(assert (not b!2862229))

(assert (not b!2862221))

(assert (not d!827316))

(assert (not b!2862235))

(assert (not d!827312))

(assert (not b!2862230))

(assert (not d!827308))

(assert (not b!2862244))

(assert (not setNonEmpty!25263))

(assert tp_is_empty!14969)

(assert (not b!2862251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!827324 () Bool)

(declare-fun res!1188429 () Bool)

(declare-fun e!1811935 () Bool)

(assert (=> d!827324 (=> res!1188429 e!1811935)))

(assert (=> d!827324 (= res!1188429 (is-Nil!34090 (exprs!3076 setElem!25257)))))

(assert (=> d!827324 (= (forall!6963 (exprs!3076 setElem!25257) lambda!105231) e!1811935)))

(declare-fun b!2862271 () Bool)

(declare-fun e!1811936 () Bool)

(assert (=> b!2862271 (= e!1811935 e!1811936)))

(declare-fun res!1188430 () Bool)

(assert (=> b!2862271 (=> (not res!1188430) (not e!1811936))))

(declare-fun dynLambda!14242 (Int Regex!8616) Bool)

(assert (=> b!2862271 (= res!1188430 (dynLambda!14242 lambda!105231 (h!39510 (exprs!3076 setElem!25257))))))

(declare-fun b!2862272 () Bool)

(assert (=> b!2862272 (= e!1811936 (forall!6963 (t!233251 (exprs!3076 setElem!25257)) lambda!105231))))

(assert (= (and d!827324 (not res!1188429)) b!2862271))

(assert (= (and b!2862271 res!1188430) b!2862272))

(declare-fun b_lambda!85763 () Bool)

(assert (=> (not b_lambda!85763) (not b!2862271)))

(declare-fun m!3281617 () Bool)

(assert (=> b!2862271 m!3281617))

(declare-fun m!3281619 () Bool)

(assert (=> b!2862272 m!3281619))

(assert (=> d!827316 d!827324))

(declare-fun bs!520435 () Bool)

(declare-fun d!827326 () Bool)

(assert (= bs!520435 (and d!827326 d!827312)))

(declare-fun lambda!105250 () Int)

(assert (=> bs!520435 (not (= lambda!105250 lambda!105224))))

(declare-fun bs!520436 () Bool)

(declare-fun b!2862285 () Bool)

(assert (= bs!520436 (and b!2862285 d!827312)))

(declare-fun lambda!105251 () Int)

(assert (=> bs!520436 (= lambda!105251 lambda!105224)))

(declare-fun bs!520437 () Bool)

(assert (= bs!520437 (and b!2862285 d!827326)))

(assert (=> bs!520437 (not (= lambda!105251 lambda!105250))))

(declare-fun bs!520438 () Bool)

(declare-fun b!2862286 () Bool)

(assert (= bs!520438 (and b!2862286 d!827312)))

(declare-fun lambda!105252 () Int)

(assert (=> bs!520438 (= lambda!105252 lambda!105224)))

(declare-fun bs!520439 () Bool)

(assert (= bs!520439 (and b!2862286 d!827326)))

(assert (=> bs!520439 (not (= lambda!105252 lambda!105250))))

(declare-fun bs!520440 () Bool)

(assert (= bs!520440 (and b!2862286 b!2862285)))

(assert (=> bs!520440 (= lambda!105252 lambda!105251)))

(declare-fun bm!184714 () Bool)

(declare-datatypes ((List!34217 0))(
  ( (Nil!34093) (Cons!34093 (h!39513 Context!5152) (t!233254 List!34217)) )
))
(declare-fun call!184720 () List!34217)

(declare-fun toList!1979 ((Set Context!5152)) List!34217)

(assert (=> bm!184714 (= call!184720 (toList!1979 z!960))))

(declare-fun lt!1014641 () Bool)

(assert (=> d!827326 (= lt!1014641 (isEmpty!18622 (getLanguageWitness!248 z!960)))))

(declare-fun forall!6965 ((Set Context!5152) Int) Bool)

(assert (=> d!827326 (= lt!1014641 (forall!6965 z!960 lambda!105250))))

(declare-datatypes ((Unit!47759 0))(
  ( (Unit!47760) )
))
(declare-fun lt!1014645 () Unit!47759)

(declare-fun e!1811950 () Unit!47759)

(assert (=> d!827326 (= lt!1014645 e!1811950)))

(declare-fun c!461378 () Bool)

(assert (=> d!827326 (= c!461378 (not (forall!6965 z!960 lambda!105250)))))

(assert (=> d!827326 (= (lostCauseZipper!538 z!960) lt!1014641)))

(declare-fun Unit!47761 () Unit!47759)

(assert (=> b!2862286 (= e!1811950 Unit!47761)))

(declare-fun lt!1014638 () List!34217)

(assert (=> b!2862286 (= lt!1014638 call!184720)))

(declare-fun lt!1014642 () Unit!47759)

(declare-fun lemmaForallThenNotExists!120 (List!34217 Int) Unit!47759)

(assert (=> b!2862286 (= lt!1014642 (lemmaForallThenNotExists!120 lt!1014638 lambda!105250))))

(declare-fun call!184719 () Bool)

(assert (=> b!2862286 (not call!184719)))

(declare-fun lt!1014643 () Unit!47759)

(assert (=> b!2862286 (= lt!1014643 lt!1014642)))

(declare-fun lt!1014639 () List!34217)

(declare-fun bm!184715 () Bool)

(declare-fun exists!1039 (List!34217 Int) Bool)

(assert (=> bm!184715 (= call!184719 (exists!1039 (ite c!461378 lt!1014639 lt!1014638) (ite c!461378 lambda!105251 lambda!105252)))))

(declare-fun Unit!47762 () Unit!47759)

(assert (=> b!2862285 (= e!1811950 Unit!47762)))

(assert (=> b!2862285 (= lt!1014639 call!184720)))

(declare-fun lt!1014644 () Unit!47759)

(declare-fun lemmaNotForallThenExists!120 (List!34217 Int) Unit!47759)

(assert (=> b!2862285 (= lt!1014644 (lemmaNotForallThenExists!120 lt!1014639 lambda!105250))))

(assert (=> b!2862285 call!184719))

(declare-fun lt!1014640 () Unit!47759)

(assert (=> b!2862285 (= lt!1014640 lt!1014644)))

(assert (= (and d!827326 c!461378) b!2862285))

(assert (= (and d!827326 (not c!461378)) b!2862286))

(assert (= (or b!2862285 b!2862286) bm!184714))

(assert (= (or b!2862285 b!2862286) bm!184715))

(declare-fun m!3281637 () Bool)

(assert (=> bm!184715 m!3281637))

(assert (=> d!827326 m!3281551))

(assert (=> d!827326 m!3281551))

(assert (=> d!827326 m!3281565))

(declare-fun m!3281639 () Bool)

(assert (=> d!827326 m!3281639))

(assert (=> d!827326 m!3281639))

(declare-fun m!3281641 () Bool)

(assert (=> bm!184714 m!3281641))

(declare-fun m!3281643 () Bool)

(assert (=> b!2862285 m!3281643))

(declare-fun m!3281645 () Bool)

(assert (=> b!2862286 m!3281645))

(assert (=> b!2862229 d!827326))

(declare-fun bs!520441 () Bool)

(declare-fun d!827334 () Bool)

(assert (= bs!520441 (and d!827334 d!827316)))

(declare-fun lambda!105255 () Int)

(assert (=> bs!520441 (= lambda!105255 lambda!105231)))

(assert (=> d!827334 (= (inv!46128 setElem!25263) (forall!6963 (exprs!3076 setElem!25263) lambda!105255))))

(declare-fun bs!520442 () Bool)

(assert (= bs!520442 d!827334))

(declare-fun m!3281647 () Bool)

(assert (=> bs!520442 m!3281647))

(assert (=> setNonEmpty!25263 d!827334))

(declare-fun bs!520448 () Bool)

(declare-fun d!827336 () Bool)

(assert (= bs!520448 (and d!827336 d!827316)))

(declare-fun lambda!105262 () Int)

(assert (=> bs!520448 (not (= lambda!105262 lambda!105231))))

(declare-fun bs!520449 () Bool)

(assert (= bs!520449 (and d!827336 d!827334)))

(assert (=> bs!520449 (not (= lambda!105262 lambda!105255))))

(declare-fun b!2862305 () Bool)

(declare-fun e!1811960 () Option!6317)

(declare-fun e!1811961 () Option!6317)

(assert (=> b!2862305 (= e!1811960 e!1811961)))

(declare-fun lt!1014659 () Option!6317)

(declare-fun getLanguageWitness!252 (Regex!8616) Option!6317)

(assert (=> b!2862305 (= lt!1014659 (getLanguageWitness!252 (h!39510 (exprs!3076 (getWitness!576 z!960 lambda!105224)))))))

(declare-fun c!461393 () Bool)

(assert (=> b!2862305 (= c!461393 (is-Some!6316 lt!1014659))))

(declare-fun b!2862306 () Bool)

(assert (=> b!2862306 (= e!1811960 (Some!6316 Nil!34089))))

(declare-fun b!2862307 () Bool)

(declare-fun e!1811959 () Option!6317)

(declare-fun lt!1014660 () Option!6317)

(declare-fun ++!8134 (List!34213 List!34213) List!34213)

(assert (=> b!2862307 (= e!1811959 (Some!6316 (++!8134 (v!34438 lt!1014659) (v!34438 lt!1014660))))))

(declare-fun b!2862308 () Bool)

(declare-fun c!461394 () Bool)

(assert (=> b!2862308 (= c!461394 (is-Some!6316 lt!1014660))))

(assert (=> b!2862308 (= lt!1014660 (getLanguageWitness!250 (Context!5153 (t!233251 (exprs!3076 (getWitness!576 z!960 lambda!105224))))))))

(assert (=> b!2862308 (= e!1811961 e!1811959)))

(declare-fun lt!1014661 () Option!6317)

(declare-fun exists!1040 (List!34214 Int) Bool)

(assert (=> d!827336 (= (isEmpty!18622 lt!1014661) (exists!1040 (exprs!3076 (getWitness!576 z!960 lambda!105224)) lambda!105262))))

(assert (=> d!827336 (= lt!1014661 e!1811960)))

(declare-fun c!461392 () Bool)

(assert (=> d!827336 (= c!461392 (is-Cons!34090 (exprs!3076 (getWitness!576 z!960 lambda!105224))))))

(assert (=> d!827336 (= (getLanguageWitness!250 (getWitness!576 z!960 lambda!105224)) lt!1014661)))

(declare-fun b!2862309 () Bool)

(assert (=> b!2862309 (= e!1811959 None!6316)))

(declare-fun b!2862310 () Bool)

(assert (=> b!2862310 (= e!1811961 None!6316)))

(assert (= (and d!827336 c!461392) b!2862305))

(assert (= (and d!827336 (not c!461392)) b!2862306))

(assert (= (and b!2862305 c!461393) b!2862308))

(assert (= (and b!2862305 (not c!461393)) b!2862310))

(assert (= (and b!2862308 c!461394) b!2862307))

(assert (= (and b!2862308 (not c!461394)) b!2862309))

(declare-fun m!3281661 () Bool)

(assert (=> b!2862305 m!3281661))

(declare-fun m!3281663 () Bool)

(assert (=> b!2862307 m!3281663))

(declare-fun m!3281665 () Bool)

(assert (=> b!2862308 m!3281665))

(declare-fun m!3281667 () Bool)

(assert (=> d!827336 m!3281667))

(declare-fun m!3281669 () Bool)

(assert (=> d!827336 m!3281669))

(assert (=> b!2862221 d!827336))

(declare-fun d!827354 () Bool)

(declare-fun e!1811968 () Bool)

(assert (=> d!827354 e!1811968))

(declare-fun res!1188439 () Bool)

(assert (=> d!827354 (=> (not res!1188439) (not e!1811968))))

(declare-fun lt!1014676 () Context!5152)

(declare-fun dynLambda!14243 (Int Context!5152) Bool)

(assert (=> d!827354 (= res!1188439 (dynLambda!14243 lambda!105224 lt!1014676))))

(declare-fun getWitness!578 (List!34217 Int) Context!5152)

(assert (=> d!827354 (= lt!1014676 (getWitness!578 (toList!1979 z!960) lambda!105224))))

(assert (=> d!827354 (exists!1037 z!960 lambda!105224)))

(assert (=> d!827354 (= (getWitness!576 z!960 lambda!105224) lt!1014676)))

(declare-fun b!2862313 () Bool)

(assert (=> b!2862313 (= e!1811968 (set.member lt!1014676 z!960))))

(assert (= (and d!827354 res!1188439) b!2862313))

(declare-fun b_lambda!85767 () Bool)

(assert (=> (not b_lambda!85767) (not d!827354)))

(declare-fun m!3281671 () Bool)

(assert (=> d!827354 m!3281671))

(assert (=> d!827354 m!3281641))

(assert (=> d!827354 m!3281641))

(declare-fun m!3281673 () Bool)

(assert (=> d!827354 m!3281673))

(assert (=> d!827354 m!3281571))

(declare-fun m!3281675 () Bool)

(assert (=> b!2862313 m!3281675))

(assert (=> b!2862221 d!827354))

(declare-fun d!827356 () Bool)

(assert (=> d!827356 (= (isDefined!4948 lt!1014620) (not (isEmpty!18622 lt!1014620)))))

(declare-fun bs!520450 () Bool)

(assert (= bs!520450 d!827356))

(declare-fun m!3281677 () Bool)

(assert (=> bs!520450 m!3281677))

(assert (=> d!827312 d!827356))

(declare-fun d!827358 () Bool)

(declare-fun lt!1014687 () Bool)

(assert (=> d!827358 (= lt!1014687 (exists!1039 (toList!1979 z!960) lambda!105224))))

(declare-fun choose!16841 ((Set Context!5152) Int) Bool)

(assert (=> d!827358 (= lt!1014687 (choose!16841 z!960 lambda!105224))))

(assert (=> d!827358 (= (exists!1037 z!960 lambda!105224) lt!1014687)))

(declare-fun bs!520452 () Bool)

(assert (= bs!520452 d!827358))

(assert (=> bs!520452 m!3281641))

(assert (=> bs!520452 m!3281641))

(declare-fun m!3281679 () Bool)

(assert (=> bs!520452 m!3281679))

(declare-fun m!3281681 () Bool)

(assert (=> bs!520452 m!3281681))

(assert (=> d!827312 d!827358))

(declare-fun d!827360 () Bool)

(declare-fun c!461402 () Bool)

(assert (=> d!827360 (= c!461402 (isEmpty!18623 (tail!4522 prefix!919)))))

(declare-fun e!1811970 () Bool)

(assert (=> d!827360 (= (prefixMatchZipper!298 (derivationStepZipper!422 z!960 (head!6297 prefix!919)) (tail!4522 prefix!919)) e!1811970)))

(declare-fun b!2862316 () Bool)

(assert (=> b!2862316 (= e!1811970 (not (lostCauseZipper!538 (derivationStepZipper!422 z!960 (head!6297 prefix!919)))))))

(declare-fun b!2862317 () Bool)

(assert (=> b!2862317 (= e!1811970 (prefixMatchZipper!298 (derivationStepZipper!422 (derivationStepZipper!422 z!960 (head!6297 prefix!919)) (head!6297 (tail!4522 prefix!919))) (tail!4522 (tail!4522 prefix!919))))))

(assert (= (and d!827360 c!461402) b!2862316))

(assert (= (and d!827360 (not c!461402)) b!2862317))

(assert (=> d!827360 m!3281595))

(declare-fun m!3281683 () Bool)

(assert (=> d!827360 m!3281683))

(assert (=> b!2862316 m!3281593))

(declare-fun m!3281685 () Bool)

(assert (=> b!2862316 m!3281685))

(assert (=> b!2862317 m!3281595))

(declare-fun m!3281687 () Bool)

(assert (=> b!2862317 m!3281687))

(assert (=> b!2862317 m!3281593))

(assert (=> b!2862317 m!3281687))

(declare-fun m!3281689 () Bool)

(assert (=> b!2862317 m!3281689))

(assert (=> b!2862317 m!3281595))

(declare-fun m!3281691 () Bool)

(assert (=> b!2862317 m!3281691))

(assert (=> b!2862317 m!3281689))

(assert (=> b!2862317 m!3281691))

(declare-fun m!3281693 () Bool)

(assert (=> b!2862317 m!3281693))

(assert (=> b!2862230 d!827360))

(declare-fun d!827362 () Bool)

(assert (=> d!827362 true))

(declare-fun lambda!105278 () Int)

(declare-fun flatMap!202 ((Set Context!5152) Int) (Set Context!5152))

(assert (=> d!827362 (= (derivationStepZipper!422 z!960 (head!6297 prefix!919)) (flatMap!202 z!960 lambda!105278))))

(declare-fun bs!520458 () Bool)

(assert (= bs!520458 d!827362))

(declare-fun m!3281703 () Bool)

(assert (=> bs!520458 m!3281703))

(assert (=> b!2862230 d!827362))

(declare-fun d!827366 () Bool)

(assert (=> d!827366 (= (head!6297 prefix!919) (h!39509 prefix!919))))

(assert (=> b!2862230 d!827366))

(declare-fun d!827368 () Bool)

(assert (=> d!827368 (= (tail!4522 prefix!919) (t!233250 prefix!919))))

(assert (=> b!2862230 d!827368))

(declare-fun d!827370 () Bool)

(assert (=> d!827370 (= (isEmpty!18623 prefix!919) (is-Nil!34089 prefix!919))))

(assert (=> d!827318 d!827370))

(declare-fun d!827372 () Bool)

(assert (=> d!827372 (= (isEmpty!18622 (getLanguageWitness!248 z!960)) (not (is-Some!6316 (getLanguageWitness!248 z!960))))))

(assert (=> d!827308 d!827372))

(declare-fun b!2862320 () Bool)

(declare-fun e!1811971 () Bool)

(declare-fun tp!921553 () Bool)

(declare-fun tp!921554 () Bool)

(assert (=> b!2862320 (= e!1811971 (and tp!921553 tp!921554))))

(assert (=> b!2862244 (= tp!921531 e!1811971)))

(assert (= (and b!2862244 (is-Cons!34090 (exprs!3076 setElem!25263))) b!2862320))

(declare-fun b!2862321 () Bool)

(declare-fun e!1811972 () Bool)

(declare-fun tp!921555 () Bool)

(assert (=> b!2862321 (= e!1811972 (and tp_is_empty!14969 tp!921555))))

(assert (=> b!2862235 (= tp!921525 e!1811972)))

(assert (= (and b!2862235 (is-Cons!34089 (t!233250 (t!233250 prefix!919)))) b!2862321))

(declare-fun e!1811975 () Bool)

(assert (=> b!2862251 (= tp!921536 e!1811975)))

(declare-fun b!2862334 () Bool)

(declare-fun tp!921570 () Bool)

(assert (=> b!2862334 (= e!1811975 tp!921570)))

(declare-fun b!2862335 () Bool)

(declare-fun tp!921568 () Bool)

(declare-fun tp!921569 () Bool)

(assert (=> b!2862335 (= e!1811975 (and tp!921568 tp!921569))))

(declare-fun b!2862332 () Bool)

(assert (=> b!2862332 (= e!1811975 tp_is_empty!14969)))

(declare-fun b!2862333 () Bool)

(declare-fun tp!921567 () Bool)

(declare-fun tp!921566 () Bool)

(assert (=> b!2862333 (= e!1811975 (and tp!921567 tp!921566))))

(assert (= (and b!2862251 (is-ElementMatch!8616 (h!39510 (exprs!3076 setElem!25257)))) b!2862332))

(assert (= (and b!2862251 (is-Concat!13937 (h!39510 (exprs!3076 setElem!25257)))) b!2862333))

(assert (= (and b!2862251 (is-Star!8616 (h!39510 (exprs!3076 setElem!25257)))) b!2862334))

(assert (= (and b!2862251 (is-Union!8616 (h!39510 (exprs!3076 setElem!25257)))) b!2862335))

(declare-fun b!2862336 () Bool)

(declare-fun e!1811976 () Bool)

(declare-fun tp!921571 () Bool)

(declare-fun tp!921572 () Bool)

(assert (=> b!2862336 (= e!1811976 (and tp!921571 tp!921572))))

(assert (=> b!2862251 (= tp!921537 e!1811976)))

(assert (= (and b!2862251 (is-Cons!34090 (t!233251 (exprs!3076 setElem!25257)))) b!2862336))

(declare-fun condSetEmpty!25267 () Bool)

(assert (=> setNonEmpty!25263 (= condSetEmpty!25267 (= setRest!25263 (as set.empty (Set Context!5152))))))

(declare-fun setRes!25267 () Bool)

(assert (=> setNonEmpty!25263 (= tp!921530 setRes!25267)))

(declare-fun setIsEmpty!25267 () Bool)

(assert (=> setIsEmpty!25267 setRes!25267))

(declare-fun setElem!25267 () Context!5152)

(declare-fun e!1811977 () Bool)

(declare-fun setNonEmpty!25267 () Bool)

(declare-fun tp!921573 () Bool)

(assert (=> setNonEmpty!25267 (= setRes!25267 (and tp!921573 (inv!46128 setElem!25267) e!1811977))))

(declare-fun setRest!25267 () (Set Context!5152))

(assert (=> setNonEmpty!25267 (= setRest!25263 (set.union (set.insert setElem!25267 (as set.empty (Set Context!5152))) setRest!25267))))

(declare-fun b!2862337 () Bool)

(declare-fun tp!921574 () Bool)

(assert (=> b!2862337 (= e!1811977 tp!921574)))

(assert (= (and setNonEmpty!25263 condSetEmpty!25267) setIsEmpty!25267))

(assert (= (and setNonEmpty!25263 (not condSetEmpty!25267)) setNonEmpty!25267))

(assert (= setNonEmpty!25267 b!2862337))

(declare-fun m!3281705 () Bool)

(assert (=> setNonEmpty!25267 m!3281705))

(declare-fun b_lambda!85769 () Bool)

(assert (= b_lambda!85767 (or d!827312 b_lambda!85769)))

(declare-fun bs!520459 () Bool)

(declare-fun d!827374 () Bool)

(assert (= bs!520459 (and d!827374 d!827312)))

(declare-fun lostCause!767 (Context!5152) Bool)

(assert (=> bs!520459 (= (dynLambda!14243 lambda!105224 lt!1014676) (not (lostCause!767 lt!1014676)))))

(declare-fun m!3281707 () Bool)

(assert (=> bs!520459 m!3281707))

(assert (=> d!827354 d!827374))

(declare-fun b_lambda!85771 () Bool)

(assert (= b_lambda!85763 (or d!827316 b_lambda!85771)))

(declare-fun bs!520460 () Bool)

(declare-fun d!827376 () Bool)

(assert (= bs!520460 (and d!827376 d!827316)))

(declare-fun validRegex!3486 (Regex!8616) Bool)

(assert (=> bs!520460 (= (dynLambda!14242 lambda!105231 (h!39510 (exprs!3076 setElem!25257))) (validRegex!3486 (h!39510 (exprs!3076 setElem!25257))))))

(declare-fun m!3281709 () Bool)

(assert (=> bs!520460 m!3281709))

(assert (=> b!2862271 d!827376))

(push 1)

(assert (not b!2862286))

(assert tp_is_empty!14969)

(assert (not b!2862272))

(assert (not bs!520459))

(assert (not bs!520460))

(assert (not b!2862321))

(assert (not b!2862333))

(assert (not d!827360))

(assert (not b!2862305))

(assert (not b!2862307))

(assert (not b!2862336))

(assert (not b!2862317))

(assert (not bm!184714))

(assert (not b!2862335))

(assert (not d!827356))

(assert (not b!2862308))

(assert (not b_lambda!85771))

(assert (not setNonEmpty!25267))

(assert (not b!2862316))

(assert (not b!2862334))

(assert (not b!2862337))

(assert (not d!827334))

(assert (not b_lambda!85769))

(assert (not d!827336))

(assert (not d!827358))

(assert (not b!2862285))

(assert (not d!827326))

(assert (not bm!184715))

(assert (not d!827354))

(assert (not d!827362))

(assert (not b!2862320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


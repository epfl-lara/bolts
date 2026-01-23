; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!721400 () Bool)

(assert start!721400)

(declare-fun b!7407300 () Bool)

(assert (=> b!7407300 true))

(declare-fun b!7407294 () Bool)

(declare-fun e!4430255 () Bool)

(declare-fun tp!2119115 () Bool)

(assert (=> b!7407294 (= e!4430255 tp!2119115)))

(declare-fun b!7407295 () Bool)

(declare-fun e!4430253 () Bool)

(declare-datatypes ((C!39066 0))(
  ( (C!39067 (val!29907 Int)) )
))
(declare-datatypes ((Regex!19396 0))(
  ( (ElementMatch!19396 (c!1374818 C!39066)) (Concat!28241 (regOne!39304 Regex!19396) (regTwo!39304 Regex!19396)) (EmptyExpr!19396) (Star!19396 (reg!19725 Regex!19396)) (EmptyLang!19396) (Union!19396 (regOne!39305 Regex!19396) (regTwo!39305 Regex!19396)) )
))
(declare-datatypes ((List!71976 0))(
  ( (Nil!71852) (Cons!71852 (h!78300 Regex!19396) (t!386535 List!71976)) )
))
(declare-datatypes ((Context!16672 0))(
  ( (Context!16673 (exprs!8836 List!71976)) )
))
(declare-fun lt!2618206 () Context!16672)

(declare-fun inv!91852 (Context!16672) Bool)

(assert (=> b!7407295 (= e!4430253 (inv!91852 lt!2618206))))

(declare-fun b!7407296 () Bool)

(declare-fun e!4430251 () Bool)

(declare-fun tp!2119116 () Bool)

(assert (=> b!7407296 (= e!4430251 tp!2119116)))

(declare-fun b!7407297 () Bool)

(declare-fun res!2982219 () Bool)

(declare-fun e!4430252 () Bool)

(assert (=> b!7407297 (=> (not res!2982219) (not e!4430252))))

(declare-fun c!10532 () Context!16672)

(declare-fun a!2228 () C!39066)

(declare-fun head!15176 (List!71976) Regex!19396)

(assert (=> b!7407297 (= res!2982219 (= (head!15176 (exprs!8836 c!10532)) (ElementMatch!19396 a!2228)))))

(declare-fun b!7407298 () Bool)

(declare-fun res!2982215 () Bool)

(assert (=> b!7407298 (=> (not res!2982215) (not e!4430252))))

(declare-datatypes ((List!71977 0))(
  ( (Nil!71853) (Cons!71853 (h!78301 C!39066) (t!386536 List!71977)) )
))
(declare-fun s!7927 () List!71977)

(assert (=> b!7407298 (= res!2982215 (and (is-Cons!71853 s!7927) (= (h!78301 s!7927) a!2228)))))

(declare-fun b!7407299 () Bool)

(declare-fun e!4430256 () Bool)

(assert (=> b!7407299 (= e!4430252 e!4430256)))

(declare-fun res!2982218 () Bool)

(assert (=> b!7407299 (=> (not res!2982218) (not e!4430256))))

(declare-fun lt!2618205 () C!39066)

(declare-fun lt!2618207 () (Set Context!16672))

(declare-fun derivationStepZipperUp!2800 (Context!16672 C!39066) (Set Context!16672))

(assert (=> b!7407299 (= res!2982218 (= (derivationStepZipperUp!2800 c!10532 lt!2618205) lt!2618207))))

(assert (=> b!7407299 (= lt!2618207 (set.insert lt!2618206 (as set.empty (Set Context!16672))))))

(assert (=> b!7407299 (= lt!2618206 (Context!16673 Nil!71852))))

(declare-fun lt!2618204 () (Set Context!16672))

(declare-fun z!3451 () (Set Context!16672))

(declare-fun derivationStepZipper!3670 ((Set Context!16672) C!39066) (Set Context!16672))

(assert (=> b!7407299 (= lt!2618204 (derivationStepZipper!3670 z!3451 lt!2618205))))

(declare-fun head!15177 (List!71977) C!39066)

(assert (=> b!7407299 (= lt!2618205 (head!15177 s!7927))))

(declare-fun res!2982213 () Bool)

(assert (=> start!721400 (=> (not res!2982213) (not e!4430252))))

(assert (=> start!721400 (= res!2982213 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16672)))))))

(assert (=> start!721400 e!4430252))

(declare-fun condSetEmpty!56180 () Bool)

(assert (=> start!721400 (= condSetEmpty!56180 (= z!3451 (as set.empty (Set Context!16672))))))

(declare-fun setRes!56180 () Bool)

(assert (=> start!721400 setRes!56180))

(declare-fun e!4430250 () Bool)

(assert (=> start!721400 (and (inv!91852 c!10532) e!4430250)))

(declare-fun tp_is_empty!49055 () Bool)

(assert (=> start!721400 tp_is_empty!49055))

(declare-fun e!4430254 () Bool)

(assert (=> start!721400 e!4430254))

(assert (=> b!7407300 (= e!4430256 (not e!4430253))))

(declare-fun res!2982216 () Bool)

(assert (=> b!7407300 (=> res!2982216 e!4430253)))

(assert (=> b!7407300 (= res!2982216 (or (not (set.member lt!2618206 lt!2618204)) (= lt!2618204 lt!2618207)))))

(declare-fun lambda!459476 () Int)

(declare-fun empty!3531 () Context!16672)

(declare-fun flatMapPost!203 ((Set Context!16672) Int Context!16672) Context!16672)

(assert (=> b!7407300 (= (flatMapPost!203 z!3451 lambda!459476 lt!2618206) empty!3531)))

(assert (=> b!7407300 true))

(assert (=> b!7407300 (and (inv!91852 empty!3531) e!4430251)))

(declare-fun b!7407301 () Bool)

(declare-fun res!2982217 () Bool)

(assert (=> b!7407301 (=> (not res!2982217) (not e!4430252))))

(declare-fun isEmpty!41036 (List!71976) Bool)

(assert (=> b!7407301 (= res!2982217 (not (isEmpty!41036 (exprs!8836 c!10532))))))

(declare-fun b!7407302 () Bool)

(declare-fun tp!2119114 () Bool)

(assert (=> b!7407302 (= e!4430250 tp!2119114)))

(declare-fun setNonEmpty!56180 () Bool)

(declare-fun setElem!56180 () Context!16672)

(declare-fun tp!2119113 () Bool)

(assert (=> setNonEmpty!56180 (= setRes!56180 (and tp!2119113 (inv!91852 setElem!56180) e!4430255))))

(declare-fun setRest!56180 () (Set Context!16672))

(assert (=> setNonEmpty!56180 (= z!3451 (set.union (set.insert setElem!56180 (as set.empty (Set Context!16672))) setRest!56180))))

(declare-fun b!7407303 () Bool)

(declare-fun tp!2119117 () Bool)

(assert (=> b!7407303 (= e!4430254 (and tp_is_empty!49055 tp!2119117))))

(declare-fun b!7407304 () Bool)

(declare-fun res!2982214 () Bool)

(assert (=> b!7407304 (=> (not res!2982214) (not e!4430252))))

(declare-fun tail!14803 (List!71976) List!71976)

(assert (=> b!7407304 (= res!2982214 (isEmpty!41036 (tail!14803 (exprs!8836 c!10532))))))

(declare-fun setIsEmpty!56180 () Bool)

(assert (=> setIsEmpty!56180 setRes!56180))

(assert (= (and start!721400 res!2982213) b!7407301))

(assert (= (and b!7407301 res!2982217) b!7407297))

(assert (= (and b!7407297 res!2982219) b!7407304))

(assert (= (and b!7407304 res!2982214) b!7407298))

(assert (= (and b!7407298 res!2982215) b!7407299))

(assert (= (and b!7407299 res!2982218) b!7407300))

(assert (= b!7407300 b!7407296))

(assert (= (and b!7407300 (not res!2982216)) b!7407295))

(assert (= (and start!721400 condSetEmpty!56180) setIsEmpty!56180))

(assert (= (and start!721400 (not condSetEmpty!56180)) setNonEmpty!56180))

(assert (= setNonEmpty!56180 b!7407294))

(assert (= start!721400 b!7407302))

(assert (= (and start!721400 (is-Cons!71853 s!7927)) b!7407303))

(declare-fun m!8042644 () Bool)

(assert (=> setNonEmpty!56180 m!8042644))

(declare-fun m!8042646 () Bool)

(assert (=> b!7407299 m!8042646))

(declare-fun m!8042648 () Bool)

(assert (=> b!7407299 m!8042648))

(declare-fun m!8042650 () Bool)

(assert (=> b!7407299 m!8042650))

(declare-fun m!8042652 () Bool)

(assert (=> b!7407299 m!8042652))

(declare-fun m!8042654 () Bool)

(assert (=> b!7407300 m!8042654))

(declare-fun m!8042656 () Bool)

(assert (=> b!7407300 m!8042656))

(declare-fun m!8042658 () Bool)

(assert (=> b!7407300 m!8042658))

(declare-fun m!8042660 () Bool)

(assert (=> b!7407301 m!8042660))

(declare-fun m!8042662 () Bool)

(assert (=> b!7407297 m!8042662))

(declare-fun m!8042664 () Bool)

(assert (=> b!7407295 m!8042664))

(declare-fun m!8042666 () Bool)

(assert (=> b!7407304 m!8042666))

(assert (=> b!7407304 m!8042666))

(declare-fun m!8042668 () Bool)

(assert (=> b!7407304 m!8042668))

(declare-fun m!8042670 () Bool)

(assert (=> start!721400 m!8042670))

(declare-fun m!8042672 () Bool)

(assert (=> start!721400 m!8042672))

(push 1)

(assert (not b!7407301))

(assert (not b!7407294))

(assert (not b!7407304))

(assert (not b!7407299))

(assert (not setNonEmpty!56180))

(assert (not b!7407302))

(assert (not b!7407297))

(assert (not b!7407300))

(assert (not b!7407295))

(assert tp_is_empty!49055)

(assert (not b!7407303))

(assert (not start!721400))

(assert (not b!7407296))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2290584 () Bool)

(declare-fun lambda!459482 () Int)

(declare-fun forall!18181 (List!71976 Int) Bool)

(assert (=> d!2290584 (= (inv!91852 setElem!56180) (forall!18181 (exprs!8836 setElem!56180) lambda!459482))))

(declare-fun bs!1923919 () Bool)

(assert (= bs!1923919 d!2290584))

(declare-fun m!8042704 () Bool)

(assert (=> bs!1923919 m!8042704))

(assert (=> setNonEmpty!56180 d!2290584))

(declare-fun d!2290586 () Bool)

(assert (=> d!2290586 (= (head!15176 (exprs!8836 c!10532)) (h!78300 (exprs!8836 c!10532)))))

(assert (=> b!7407297 d!2290586))

(declare-fun call!681963 () (Set Context!16672))

(declare-fun b!7407362 () Bool)

(declare-fun e!4430292 () (Set Context!16672))

(assert (=> b!7407362 (= e!4430292 (set.union call!681963 (derivationStepZipperUp!2800 (Context!16673 (t!386535 (exprs!8836 c!10532))) lt!2618205)))))

(declare-fun b!7407363 () Bool)

(declare-fun e!4430291 () (Set Context!16672))

(assert (=> b!7407363 (= e!4430291 call!681963)))

(declare-fun b!7407364 () Bool)

(assert (=> b!7407364 (= e!4430291 (as set.empty (Set Context!16672)))))

(declare-fun b!7407365 () Bool)

(assert (=> b!7407365 (= e!4430292 e!4430291)))

(declare-fun c!1374830 () Bool)

(assert (=> b!7407365 (= c!1374830 (is-Cons!71852 (exprs!8836 c!10532)))))

(declare-fun b!7407366 () Bool)

(declare-fun e!4430290 () Bool)

(declare-fun nullable!8442 (Regex!19396) Bool)

(assert (=> b!7407366 (= e!4430290 (nullable!8442 (h!78300 (exprs!8836 c!10532))))))

(declare-fun d!2290588 () Bool)

(declare-fun c!1374831 () Bool)

(assert (=> d!2290588 (= c!1374831 e!4430290)))

(declare-fun res!2982245 () Bool)

(assert (=> d!2290588 (=> (not res!2982245) (not e!4430290))))

(assert (=> d!2290588 (= res!2982245 (is-Cons!71852 (exprs!8836 c!10532)))))

(assert (=> d!2290588 (= (derivationStepZipperUp!2800 c!10532 lt!2618205) e!4430292)))

(declare-fun bm!681958 () Bool)

(declare-fun derivationStepZipperDown!3194 (Regex!19396 Context!16672 C!39066) (Set Context!16672))

(assert (=> bm!681958 (= call!681963 (derivationStepZipperDown!3194 (h!78300 (exprs!8836 c!10532)) (Context!16673 (t!386535 (exprs!8836 c!10532))) lt!2618205))))

(assert (= (and d!2290588 res!2982245) b!7407366))

(assert (= (and d!2290588 c!1374831) b!7407362))

(assert (= (and d!2290588 (not c!1374831)) b!7407365))

(assert (= (and b!7407365 c!1374830) b!7407363))

(assert (= (and b!7407365 (not c!1374830)) b!7407364))

(assert (= (or b!7407362 b!7407363) bm!681958))

(declare-fun m!8042706 () Bool)

(assert (=> b!7407362 m!8042706))

(declare-fun m!8042708 () Bool)

(assert (=> b!7407366 m!8042708))

(declare-fun m!8042710 () Bool)

(assert (=> bm!681958 m!8042710))

(assert (=> b!7407299 d!2290588))

(declare-fun bs!1923920 () Bool)

(declare-fun d!2290590 () Bool)

(assert (= bs!1923920 (and d!2290590 b!7407300)))

(declare-fun lambda!459485 () Int)

(assert (=> bs!1923920 (= (= lt!2618205 a!2228) (= lambda!459485 lambda!459476))))

(assert (=> d!2290590 true))

(declare-fun flatMap!3198 ((Set Context!16672) Int) (Set Context!16672))

(assert (=> d!2290590 (= (derivationStepZipper!3670 z!3451 lt!2618205) (flatMap!3198 z!3451 lambda!459485))))

(declare-fun bs!1923921 () Bool)

(assert (= bs!1923921 d!2290590))

(declare-fun m!8042712 () Bool)

(assert (=> bs!1923921 m!8042712))

(assert (=> b!7407299 d!2290590))

(declare-fun d!2290592 () Bool)

(assert (=> d!2290592 (= (head!15177 s!7927) (h!78301 s!7927))))

(assert (=> b!7407299 d!2290592))

(declare-fun bs!1923922 () Bool)

(declare-fun d!2290594 () Bool)

(assert (= bs!1923922 (and d!2290594 d!2290584)))

(declare-fun lambda!459486 () Int)

(assert (=> bs!1923922 (= lambda!459486 lambda!459482)))

(assert (=> d!2290594 (= (inv!91852 c!10532) (forall!18181 (exprs!8836 c!10532) lambda!459486))))

(declare-fun bs!1923923 () Bool)

(assert (= bs!1923923 d!2290594))

(declare-fun m!8042714 () Bool)

(assert (=> bs!1923923 m!8042714))

(assert (=> start!721400 d!2290594))

(declare-fun d!2290596 () Bool)

(assert (=> d!2290596 true))

(assert (=> d!2290596 true))

(declare-fun order!29483 () Int)

(declare-fun order!29481 () Int)

(declare-fun lambda!459489 () Int)

(declare-fun dynLambda!29623 (Int Int) Int)

(declare-fun dynLambda!29624 (Int Int) Int)

(assert (=> d!2290596 (< (dynLambda!29623 order!29481 lambda!459476) (dynLambda!29624 order!29483 lambda!459489))))

(declare-fun exists!4754 ((Set Context!16672) Int) Bool)

(assert (=> d!2290596 (= (set.member lt!2618206 (flatMap!3198 z!3451 lambda!459476)) (exists!4754 z!3451 lambda!459489))))

(declare-fun lt!2618222 () Context!16672)

(declare-fun choose!57420 ((Set Context!16672) Int Context!16672) Context!16672)

(assert (=> d!2290596 (= lt!2618222 (choose!57420 z!3451 lambda!459476 lt!2618206))))

(assert (=> d!2290596 (= (flatMapPost!203 z!3451 lambda!459476 lt!2618206) lt!2618222)))

(declare-fun bs!1923924 () Bool)

(assert (= bs!1923924 d!2290596))

(declare-fun m!8042722 () Bool)

(assert (=> bs!1923924 m!8042722))

(declare-fun m!8042724 () Bool)

(assert (=> bs!1923924 m!8042724))

(declare-fun m!8042726 () Bool)

(assert (=> bs!1923924 m!8042726))

(declare-fun m!8042728 () Bool)

(assert (=> bs!1923924 m!8042728))

(assert (=> b!7407300 d!2290596))

(declare-fun bs!1923925 () Bool)

(declare-fun d!2290600 () Bool)

(assert (= bs!1923925 (and d!2290600 d!2290584)))

(declare-fun lambda!459492 () Int)

(assert (=> bs!1923925 (= lambda!459492 lambda!459482)))

(declare-fun bs!1923926 () Bool)

(assert (= bs!1923926 (and d!2290600 d!2290594)))

(assert (=> bs!1923926 (= lambda!459492 lambda!459486)))

(assert (=> d!2290600 (= (inv!91852 empty!3531) (forall!18181 (exprs!8836 empty!3531) lambda!459492))))

(declare-fun bs!1923927 () Bool)

(assert (= bs!1923927 d!2290600))

(declare-fun m!8042730 () Bool)

(assert (=> bs!1923927 m!8042730))

(assert (=> b!7407300 d!2290600))

(declare-fun bs!1923928 () Bool)

(declare-fun d!2290602 () Bool)

(assert (= bs!1923928 (and d!2290602 d!2290584)))

(declare-fun lambda!459493 () Int)

(assert (=> bs!1923928 (= lambda!459493 lambda!459482)))

(declare-fun bs!1923929 () Bool)

(assert (= bs!1923929 (and d!2290602 d!2290594)))

(assert (=> bs!1923929 (= lambda!459493 lambda!459486)))

(declare-fun bs!1923930 () Bool)

(assert (= bs!1923930 (and d!2290602 d!2290600)))

(assert (=> bs!1923930 (= lambda!459493 lambda!459492)))

(assert (=> d!2290602 (= (inv!91852 lt!2618206) (forall!18181 (exprs!8836 lt!2618206) lambda!459493))))

(declare-fun bs!1923931 () Bool)

(assert (= bs!1923931 d!2290602))

(declare-fun m!8042732 () Bool)

(assert (=> bs!1923931 m!8042732))

(assert (=> b!7407295 d!2290602))

(declare-fun d!2290604 () Bool)

(assert (=> d!2290604 (= (isEmpty!41036 (tail!14803 (exprs!8836 c!10532))) (is-Nil!71852 (tail!14803 (exprs!8836 c!10532))))))

(assert (=> b!7407304 d!2290604))

(declare-fun d!2290606 () Bool)

(assert (=> d!2290606 (= (tail!14803 (exprs!8836 c!10532)) (t!386535 (exprs!8836 c!10532)))))

(assert (=> b!7407304 d!2290606))

(declare-fun d!2290610 () Bool)

(assert (=> d!2290610 (= (isEmpty!41036 (exprs!8836 c!10532)) (is-Nil!71852 (exprs!8836 c!10532)))))

(assert (=> b!7407301 d!2290610))

(declare-fun condSetEmpty!56186 () Bool)

(assert (=> setNonEmpty!56180 (= condSetEmpty!56186 (= setRest!56180 (as set.empty (Set Context!16672))))))

(declare-fun setRes!56186 () Bool)

(assert (=> setNonEmpty!56180 (= tp!2119113 setRes!56186)))

(declare-fun setIsEmpty!56186 () Bool)

(assert (=> setIsEmpty!56186 setRes!56186))

(declare-fun tp!2119137 () Bool)

(declare-fun setElem!56186 () Context!16672)

(declare-fun setNonEmpty!56186 () Bool)

(declare-fun e!4430298 () Bool)

(assert (=> setNonEmpty!56186 (= setRes!56186 (and tp!2119137 (inv!91852 setElem!56186) e!4430298))))

(declare-fun setRest!56186 () (Set Context!16672))

(assert (=> setNonEmpty!56186 (= setRest!56180 (set.union (set.insert setElem!56186 (as set.empty (Set Context!16672))) setRest!56186))))

(declare-fun b!7407381 () Bool)

(declare-fun tp!2119138 () Bool)

(assert (=> b!7407381 (= e!4430298 tp!2119138)))

(assert (= (and setNonEmpty!56180 condSetEmpty!56186) setIsEmpty!56186))

(assert (= (and setNonEmpty!56180 (not condSetEmpty!56186)) setNonEmpty!56186))

(assert (= setNonEmpty!56186 b!7407381))

(declare-fun m!8042736 () Bool)

(assert (=> setNonEmpty!56186 m!8042736))

(declare-fun b!7407386 () Bool)

(declare-fun e!4430301 () Bool)

(declare-fun tp!2119143 () Bool)

(declare-fun tp!2119144 () Bool)

(assert (=> b!7407386 (= e!4430301 (and tp!2119143 tp!2119144))))

(assert (=> b!7407302 (= tp!2119114 e!4430301)))

(assert (= (and b!7407302 (is-Cons!71852 (exprs!8836 c!10532))) b!7407386))

(declare-fun b!7407391 () Bool)

(declare-fun e!4430304 () Bool)

(declare-fun tp!2119147 () Bool)

(assert (=> b!7407391 (= e!4430304 (and tp_is_empty!49055 tp!2119147))))

(assert (=> b!7407303 (= tp!2119117 e!4430304)))

(assert (= (and b!7407303 (is-Cons!71853 (t!386536 s!7927))) b!7407391))

(declare-fun b!7407392 () Bool)

(declare-fun e!4430305 () Bool)

(declare-fun tp!2119148 () Bool)

(declare-fun tp!2119149 () Bool)

(assert (=> b!7407392 (= e!4430305 (and tp!2119148 tp!2119149))))

(assert (=> b!7407294 (= tp!2119115 e!4430305)))

(assert (= (and b!7407294 (is-Cons!71852 (exprs!8836 setElem!56180))) b!7407392))

(declare-fun b!7407393 () Bool)

(declare-fun e!4430306 () Bool)

(declare-fun tp!2119150 () Bool)

(declare-fun tp!2119151 () Bool)

(assert (=> b!7407393 (= e!4430306 (and tp!2119150 tp!2119151))))

(assert (=> b!7407296 (= tp!2119116 e!4430306)))

(assert (= (and b!7407296 (is-Cons!71852 (exprs!8836 empty!3531))) b!7407393))

(push 1)

(assert (not d!2290594))

(assert (not b!7407381))

(assert (not b!7407393))

(assert (not d!2290590))

(assert (not d!2290584))

(assert (not d!2290602))

(assert (not d!2290600))

(assert (not b!7407362))

(assert tp_is_empty!49055)

(assert (not b!7407392))

(assert (not b!7407366))

(assert (not b!7407386))

(assert (not d!2290596))

(assert (not setNonEmpty!56186))

(assert (not b!7407391))

(assert (not bm!681958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2290630 () Bool)

(declare-fun choose!57422 ((Set Context!16672) Int) (Set Context!16672))

(assert (=> d!2290630 (= (flatMap!3198 z!3451 lambda!459485) (choose!57422 z!3451 lambda!459485))))

(declare-fun bs!1923945 () Bool)

(assert (= bs!1923945 d!2290630))

(declare-fun m!8042756 () Bool)

(assert (=> bs!1923945 m!8042756))

(assert (=> d!2290590 d!2290630))

(declare-fun bs!1923946 () Bool)

(declare-fun d!2290632 () Bool)

(assert (= bs!1923946 (and d!2290632 d!2290584)))

(declare-fun lambda!459504 () Int)

(assert (=> bs!1923946 (= lambda!459504 lambda!459482)))

(declare-fun bs!1923947 () Bool)

(assert (= bs!1923947 (and d!2290632 d!2290594)))

(assert (=> bs!1923947 (= lambda!459504 lambda!459486)))

(declare-fun bs!1923948 () Bool)

(assert (= bs!1923948 (and d!2290632 d!2290600)))

(assert (=> bs!1923948 (= lambda!459504 lambda!459492)))

(declare-fun bs!1923949 () Bool)

(assert (= bs!1923949 (and d!2290632 d!2290602)))

(assert (=> bs!1923949 (= lambda!459504 lambda!459493)))

(assert (=> d!2290632 (= (inv!91852 setElem!56186) (forall!18181 (exprs!8836 setElem!56186) lambda!459504))))

(declare-fun bs!1923950 () Bool)

(assert (= bs!1923950 d!2290632))

(declare-fun m!8042758 () Bool)

(assert (=> bs!1923950 m!8042758))

(assert (=> setNonEmpty!56186 d!2290632))

(declare-fun d!2290634 () Bool)

(assert (=> d!2290634 (= (flatMap!3198 z!3451 lambda!459476) (choose!57422 z!3451 lambda!459476))))

(declare-fun bs!1923951 () Bool)

(assert (= bs!1923951 d!2290634))

(declare-fun m!8042760 () Bool)

(assert (=> bs!1923951 m!8042760))

(assert (=> d!2290596 d!2290634))

(declare-fun d!2290636 () Bool)

(declare-fun lt!2618228 () Bool)

(declare-datatypes ((List!71980 0))(
  ( (Nil!71856) (Cons!71856 (h!78304 Context!16672) (t!386539 List!71980)) )
))
(declare-fun exists!4756 (List!71980 Int) Bool)

(declare-fun toList!11749 ((Set Context!16672)) List!71980)

(assert (=> d!2290636 (= lt!2618228 (exists!4756 (toList!11749 z!3451) lambda!459489))))

(declare-fun choose!57423 ((Set Context!16672) Int) Bool)

(assert (=> d!2290636 (= lt!2618228 (choose!57423 z!3451 lambda!459489))))

(assert (=> d!2290636 (= (exists!4754 z!3451 lambda!459489) lt!2618228)))

(declare-fun bs!1923952 () Bool)

(assert (= bs!1923952 d!2290636))

(declare-fun m!8042762 () Bool)

(assert (=> bs!1923952 m!8042762))

(assert (=> bs!1923952 m!8042762))

(declare-fun m!8042764 () Bool)

(assert (=> bs!1923952 m!8042764))

(declare-fun m!8042766 () Bool)

(assert (=> bs!1923952 m!8042766))

(assert (=> d!2290596 d!2290636))

(declare-fun bs!1923953 () Bool)

(declare-fun d!2290638 () Bool)

(assert (= bs!1923953 (and d!2290638 d!2290596)))

(declare-fun lambda!459507 () Int)

(assert (=> bs!1923953 (= lambda!459507 lambda!459489)))

(assert (=> d!2290638 true))

(assert (=> d!2290638 true))

(assert (=> d!2290638 (< (dynLambda!29623 order!29481 lambda!459476) (dynLambda!29624 order!29483 lambda!459507))))

(assert (=> d!2290638 (= (set.member lt!2618206 (flatMap!3198 z!3451 lambda!459476)) (exists!4754 z!3451 lambda!459507))))

(declare-fun _$3!539 () Context!16672)

(declare-fun e!4430320 () Bool)

(assert (=> d!2290638 (and (inv!91852 _$3!539) e!4430320)))

(assert (=> d!2290638 (= (choose!57420 z!3451 lambda!459476 lt!2618206) _$3!539)))

(declare-fun b!7407419 () Bool)

(declare-fun tp!2119173 () Bool)

(assert (=> b!7407419 (= e!4430320 tp!2119173)))

(assert (= d!2290638 b!7407419))

(assert (=> d!2290638 m!8042722))

(assert (=> d!2290638 m!8042724))

(declare-fun m!8042768 () Bool)

(assert (=> d!2290638 m!8042768))

(declare-fun m!8042770 () Bool)

(assert (=> d!2290638 m!8042770))

(assert (=> d!2290596 d!2290638))

(declare-fun d!2290640 () Bool)

(declare-fun res!2982251 () Bool)

(declare-fun e!4430325 () Bool)

(assert (=> d!2290640 (=> res!2982251 e!4430325)))

(assert (=> d!2290640 (= res!2982251 (is-Nil!71852 (exprs!8836 empty!3531)))))

(assert (=> d!2290640 (= (forall!18181 (exprs!8836 empty!3531) lambda!459492) e!4430325)))

(declare-fun b!7407424 () Bool)

(declare-fun e!4430326 () Bool)

(assert (=> b!7407424 (= e!4430325 e!4430326)))

(declare-fun res!2982252 () Bool)

(assert (=> b!7407424 (=> (not res!2982252) (not e!4430326))))

(declare-fun dynLambda!29627 (Int Regex!19396) Bool)

(assert (=> b!7407424 (= res!2982252 (dynLambda!29627 lambda!459492 (h!78300 (exprs!8836 empty!3531))))))

(declare-fun b!7407425 () Bool)

(assert (=> b!7407425 (= e!4430326 (forall!18181 (t!386535 (exprs!8836 empty!3531)) lambda!459492))))

(assert (= (and d!2290640 (not res!2982251)) b!7407424))

(assert (= (and b!7407424 res!2982252) b!7407425))

(declare-fun b_lambda!286183 () Bool)

(assert (=> (not b_lambda!286183) (not b!7407424)))

(declare-fun m!8042772 () Bool)

(assert (=> b!7407424 m!8042772))

(declare-fun m!8042774 () Bool)

(assert (=> b!7407425 m!8042774))

(assert (=> d!2290600 d!2290640))

(declare-fun b!7407426 () Bool)

(declare-fun call!681965 () (Set Context!16672))

(declare-fun e!4430329 () (Set Context!16672))

(assert (=> b!7407426 (= e!4430329 (set.union call!681965 (derivationStepZipperUp!2800 (Context!16673 (t!386535 (exprs!8836 (Context!16673 (t!386535 (exprs!8836 c!10532)))))) lt!2618205)))))

(declare-fun b!7407427 () Bool)

(declare-fun e!4430328 () (Set Context!16672))

(assert (=> b!7407427 (= e!4430328 call!681965)))

(declare-fun b!7407428 () Bool)

(assert (=> b!7407428 (= e!4430328 (as set.empty (Set Context!16672)))))

(declare-fun b!7407429 () Bool)

(assert (=> b!7407429 (= e!4430329 e!4430328)))

(declare-fun c!1374838 () Bool)

(assert (=> b!7407429 (= c!1374838 (is-Cons!71852 (exprs!8836 (Context!16673 (t!386535 (exprs!8836 c!10532))))))))

(declare-fun b!7407430 () Bool)

(declare-fun e!4430327 () Bool)

(assert (=> b!7407430 (= e!4430327 (nullable!8442 (h!78300 (exprs!8836 (Context!16673 (t!386535 (exprs!8836 c!10532)))))))))

(declare-fun d!2290642 () Bool)

(declare-fun c!1374839 () Bool)

(assert (=> d!2290642 (= c!1374839 e!4430327)))

(declare-fun res!2982253 () Bool)

(assert (=> d!2290642 (=> (not res!2982253) (not e!4430327))))

(assert (=> d!2290642 (= res!2982253 (is-Cons!71852 (exprs!8836 (Context!16673 (t!386535 (exprs!8836 c!10532))))))))

(assert (=> d!2290642 (= (derivationStepZipperUp!2800 (Context!16673 (t!386535 (exprs!8836 c!10532))) lt!2618205) e!4430329)))

(declare-fun bm!681960 () Bool)

(assert (=> bm!681960 (= call!681965 (derivationStepZipperDown!3194 (h!78300 (exprs!8836 (Context!16673 (t!386535 (exprs!8836 c!10532))))) (Context!16673 (t!386535 (exprs!8836 (Context!16673 (t!386535 (exprs!8836 c!10532)))))) lt!2618205))))

(assert (= (and d!2290642 res!2982253) b!7407430))

(assert (= (and d!2290642 c!1374839) b!7407426))

(assert (= (and d!2290642 (not c!1374839)) b!7407429))

(assert (= (and b!7407429 c!1374838) b!7407427))

(assert (= (and b!7407429 (not c!1374838)) b!7407428))

(assert (= (or b!7407426 b!7407427) bm!681960))

(declare-fun m!8042776 () Bool)

(assert (=> b!7407426 m!8042776))

(declare-fun m!8042778 () Bool)

(assert (=> b!7407430 m!8042778))

(declare-fun m!8042780 () Bool)

(assert (=> bm!681960 m!8042780))

(assert (=> b!7407362 d!2290642))

(declare-fun d!2290644 () Bool)

(declare-fun nullableFct!3398 (Regex!19396) Bool)

(assert (=> d!2290644 (= (nullable!8442 (h!78300 (exprs!8836 c!10532))) (nullableFct!3398 (h!78300 (exprs!8836 c!10532))))))

(declare-fun bs!1923954 () Bool)

(assert (= bs!1923954 d!2290644))

(declare-fun m!8042782 () Bool)

(assert (=> bs!1923954 m!8042782))

(assert (=> b!7407366 d!2290644))

(declare-fun d!2290646 () Bool)

(declare-fun res!2982254 () Bool)

(declare-fun e!4430330 () Bool)

(assert (=> d!2290646 (=> res!2982254 e!4430330)))

(assert (=> d!2290646 (= res!2982254 (is-Nil!71852 (exprs!8836 setElem!56180)))))

(assert (=> d!2290646 (= (forall!18181 (exprs!8836 setElem!56180) lambda!459482) e!4430330)))

(declare-fun b!7407431 () Bool)

(declare-fun e!4430331 () Bool)

(assert (=> b!7407431 (= e!4430330 e!4430331)))

(declare-fun res!2982255 () Bool)

(assert (=> b!7407431 (=> (not res!2982255) (not e!4430331))))

(assert (=> b!7407431 (= res!2982255 (dynLambda!29627 lambda!459482 (h!78300 (exprs!8836 setElem!56180))))))

(declare-fun b!7407432 () Bool)

(assert (=> b!7407432 (= e!4430331 (forall!18181 (t!386535 (exprs!8836 setElem!56180)) lambda!459482))))

(assert (= (and d!2290646 (not res!2982254)) b!7407431))

(assert (= (and b!7407431 res!2982255) b!7407432))

(declare-fun b_lambda!286185 () Bool)

(assert (=> (not b_lambda!286185) (not b!7407431)))

(declare-fun m!8042784 () Bool)

(assert (=> b!7407431 m!8042784))

(declare-fun m!8042786 () Bool)

(assert (=> b!7407432 m!8042786))

(assert (=> d!2290584 d!2290646))

(declare-fun d!2290648 () Bool)

(declare-fun res!2982256 () Bool)

(declare-fun e!4430332 () Bool)

(assert (=> d!2290648 (=> res!2982256 e!4430332)))

(assert (=> d!2290648 (= res!2982256 (is-Nil!71852 (exprs!8836 lt!2618206)))))

(assert (=> d!2290648 (= (forall!18181 (exprs!8836 lt!2618206) lambda!459493) e!4430332)))

(declare-fun b!7407433 () Bool)

(declare-fun e!4430333 () Bool)

(assert (=> b!7407433 (= e!4430332 e!4430333)))

(declare-fun res!2982257 () Bool)

(assert (=> b!7407433 (=> (not res!2982257) (not e!4430333))))

(assert (=> b!7407433 (= res!2982257 (dynLambda!29627 lambda!459493 (h!78300 (exprs!8836 lt!2618206))))))

(declare-fun b!7407434 () Bool)

(assert (=> b!7407434 (= e!4430333 (forall!18181 (t!386535 (exprs!8836 lt!2618206)) lambda!459493))))

(assert (= (and d!2290648 (not res!2982256)) b!7407433))

(assert (= (and b!7407433 res!2982257) b!7407434))

(declare-fun b_lambda!286187 () Bool)

(assert (=> (not b_lambda!286187) (not b!7407433)))

(declare-fun m!8042788 () Bool)

(assert (=> b!7407433 m!8042788))

(declare-fun m!8042790 () Bool)

(assert (=> b!7407434 m!8042790))

(assert (=> d!2290602 d!2290648))

(declare-fun b!7407457 () Bool)

(declare-fun e!4430351 () (Set Context!16672))

(declare-fun e!4430350 () (Set Context!16672))

(assert (=> b!7407457 (= e!4430351 e!4430350)))

(declare-fun c!1374853 () Bool)

(assert (=> b!7407457 (= c!1374853 (is-Concat!28241 (h!78300 (exprs!8836 c!10532))))))

(declare-fun b!7407458 () Bool)

(declare-fun e!4430348 () (Set Context!16672))

(assert (=> b!7407458 (= e!4430348 (as set.empty (Set Context!16672)))))

(declare-fun b!7407459 () Bool)

(declare-fun call!681981 () (Set Context!16672))

(assert (=> b!7407459 (= e!4430350 call!681981)))

(declare-fun b!7407460 () Bool)

(declare-fun c!1374850 () Bool)

(assert (=> b!7407460 (= c!1374850 (is-Star!19396 (h!78300 (exprs!8836 c!10532))))))

(assert (=> b!7407460 (= e!4430350 e!4430348)))

(declare-fun b!7407461 () Bool)

(assert (=> b!7407461 (= e!4430348 call!681981)))

(declare-fun b!7407462 () Bool)

(declare-fun e!4430349 () (Set Context!16672))

(assert (=> b!7407462 (= e!4430349 (set.insert (Context!16673 (t!386535 (exprs!8836 c!10532))) (as set.empty (Set Context!16672))))))

(declare-fun b!7407463 () Bool)

(declare-fun c!1374852 () Bool)

(declare-fun e!4430346 () Bool)

(assert (=> b!7407463 (= c!1374852 e!4430346)))

(declare-fun res!2982260 () Bool)

(assert (=> b!7407463 (=> (not res!2982260) (not e!4430346))))

(assert (=> b!7407463 (= res!2982260 (is-Concat!28241 (h!78300 (exprs!8836 c!10532))))))

(declare-fun e!4430347 () (Set Context!16672))

(assert (=> b!7407463 (= e!4430347 e!4430351)))

(declare-fun b!7407464 () Bool)

(declare-fun call!681982 () (Set Context!16672))

(declare-fun call!681978 () (Set Context!16672))

(assert (=> b!7407464 (= e!4430351 (set.union call!681982 call!681978))))

(declare-fun call!681979 () (Set Context!16672))

(declare-fun c!1374854 () Bool)

(declare-fun bm!681974 () Bool)

(declare-fun call!681980 () List!71976)

(assert (=> bm!681974 (= call!681979 (derivationStepZipperDown!3194 (ite c!1374854 (regTwo!39305 (h!78300 (exprs!8836 c!10532))) (ite c!1374852 (regTwo!39304 (h!78300 (exprs!8836 c!10532))) (ite c!1374853 (regOne!39304 (h!78300 (exprs!8836 c!10532))) (reg!19725 (h!78300 (exprs!8836 c!10532)))))) (ite (or c!1374854 c!1374852) (Context!16673 (t!386535 (exprs!8836 c!10532))) (Context!16673 call!681980)) lt!2618205))))

(declare-fun call!681983 () List!71976)

(declare-fun bm!681975 () Bool)

(declare-fun $colon$colon!3337 (List!71976 Regex!19396) List!71976)

(assert (=> bm!681975 (= call!681983 ($colon$colon!3337 (exprs!8836 (Context!16673 (t!386535 (exprs!8836 c!10532)))) (ite (or c!1374852 c!1374853) (regTwo!39304 (h!78300 (exprs!8836 c!10532))) (h!78300 (exprs!8836 c!10532)))))))

(declare-fun d!2290650 () Bool)

(declare-fun c!1374851 () Bool)

(assert (=> d!2290650 (= c!1374851 (and (is-ElementMatch!19396 (h!78300 (exprs!8836 c!10532))) (= (c!1374818 (h!78300 (exprs!8836 c!10532))) lt!2618205)))))

(assert (=> d!2290650 (= (derivationStepZipperDown!3194 (h!78300 (exprs!8836 c!10532)) (Context!16673 (t!386535 (exprs!8836 c!10532))) lt!2618205) e!4430349)))

(declare-fun bm!681973 () Bool)

(assert (=> bm!681973 (= call!681978 call!681979)))

(declare-fun b!7407465 () Bool)

(assert (=> b!7407465 (= e!4430349 e!4430347)))

(assert (=> b!7407465 (= c!1374854 (is-Union!19396 (h!78300 (exprs!8836 c!10532))))))

(declare-fun bm!681976 () Bool)

(assert (=> bm!681976 (= call!681981 call!681978)))

(declare-fun bm!681977 () Bool)

(assert (=> bm!681977 (= call!681982 (derivationStepZipperDown!3194 (ite c!1374854 (regOne!39305 (h!78300 (exprs!8836 c!10532))) (regOne!39304 (h!78300 (exprs!8836 c!10532)))) (ite c!1374854 (Context!16673 (t!386535 (exprs!8836 c!10532))) (Context!16673 call!681983)) lt!2618205))))

(declare-fun b!7407466 () Bool)

(assert (=> b!7407466 (= e!4430347 (set.union call!681982 call!681979))))

(declare-fun bm!681978 () Bool)

(assert (=> bm!681978 (= call!681980 call!681983)))

(declare-fun b!7407467 () Bool)

(assert (=> b!7407467 (= e!4430346 (nullable!8442 (regOne!39304 (h!78300 (exprs!8836 c!10532)))))))

(assert (= (and d!2290650 c!1374851) b!7407462))

(assert (= (and d!2290650 (not c!1374851)) b!7407465))

(assert (= (and b!7407465 c!1374854) b!7407466))

(assert (= (and b!7407465 (not c!1374854)) b!7407463))

(assert (= (and b!7407463 res!2982260) b!7407467))

(assert (= (and b!7407463 c!1374852) b!7407464))

(assert (= (and b!7407463 (not c!1374852)) b!7407457))

(assert (= (and b!7407457 c!1374853) b!7407459))

(assert (= (and b!7407457 (not c!1374853)) b!7407460))

(assert (= (and b!7407460 c!1374850) b!7407461))

(assert (= (and b!7407460 (not c!1374850)) b!7407458))

(assert (= (or b!7407459 b!7407461) bm!681978))

(assert (= (or b!7407459 b!7407461) bm!681976))

(assert (= (or b!7407464 bm!681978) bm!681975))

(assert (= (or b!7407464 bm!681976) bm!681973))

(assert (= (or b!7407466 b!7407464) bm!681977))

(assert (= (or b!7407466 bm!681973) bm!681974))

(declare-fun m!8042792 () Bool)

(assert (=> bm!681974 m!8042792))

(declare-fun m!8042794 () Bool)

(assert (=> bm!681975 m!8042794))

(declare-fun m!8042796 () Bool)

(assert (=> b!7407462 m!8042796))

(declare-fun m!8042798 () Bool)

(assert (=> b!7407467 m!8042798))

(declare-fun m!8042800 () Bool)

(assert (=> bm!681977 m!8042800))

(assert (=> bm!681958 d!2290650))

(declare-fun d!2290652 () Bool)

(declare-fun res!2982261 () Bool)

(declare-fun e!4430352 () Bool)

(assert (=> d!2290652 (=> res!2982261 e!4430352)))

(assert (=> d!2290652 (= res!2982261 (is-Nil!71852 (exprs!8836 c!10532)))))

(assert (=> d!2290652 (= (forall!18181 (exprs!8836 c!10532) lambda!459486) e!4430352)))

(declare-fun b!7407468 () Bool)

(declare-fun e!4430353 () Bool)

(assert (=> b!7407468 (= e!4430352 e!4430353)))

(declare-fun res!2982262 () Bool)

(assert (=> b!7407468 (=> (not res!2982262) (not e!4430353))))

(assert (=> b!7407468 (= res!2982262 (dynLambda!29627 lambda!459486 (h!78300 (exprs!8836 c!10532))))))

(declare-fun b!7407469 () Bool)

(assert (=> b!7407469 (= e!4430353 (forall!18181 (t!386535 (exprs!8836 c!10532)) lambda!459486))))

(assert (= (and d!2290652 (not res!2982261)) b!7407468))

(assert (= (and b!7407468 res!2982262) b!7407469))

(declare-fun b_lambda!286189 () Bool)

(assert (=> (not b_lambda!286189) (not b!7407468)))

(declare-fun m!8042802 () Bool)

(assert (=> b!7407468 m!8042802))

(declare-fun m!8042804 () Bool)

(assert (=> b!7407469 m!8042804))

(assert (=> d!2290594 d!2290652))

(declare-fun e!4430356 () Bool)

(assert (=> b!7407386 (= tp!2119143 e!4430356)))

(declare-fun b!7407481 () Bool)

(declare-fun tp!2119185 () Bool)

(declare-fun tp!2119184 () Bool)

(assert (=> b!7407481 (= e!4430356 (and tp!2119185 tp!2119184))))

(declare-fun b!7407482 () Bool)

(declare-fun tp!2119186 () Bool)

(assert (=> b!7407482 (= e!4430356 tp!2119186)))

(declare-fun b!7407480 () Bool)

(assert (=> b!7407480 (= e!4430356 tp_is_empty!49055)))

(declare-fun b!7407483 () Bool)

(declare-fun tp!2119187 () Bool)

(declare-fun tp!2119188 () Bool)

(assert (=> b!7407483 (= e!4430356 (and tp!2119187 tp!2119188))))

(assert (= (and b!7407386 (is-ElementMatch!19396 (h!78300 (exprs!8836 c!10532)))) b!7407480))

(assert (= (and b!7407386 (is-Concat!28241 (h!78300 (exprs!8836 c!10532)))) b!7407481))

(assert (= (and b!7407386 (is-Star!19396 (h!78300 (exprs!8836 c!10532)))) b!7407482))

(assert (= (and b!7407386 (is-Union!19396 (h!78300 (exprs!8836 c!10532)))) b!7407483))

(declare-fun b!7407484 () Bool)

(declare-fun e!4430357 () Bool)

(declare-fun tp!2119189 () Bool)

(declare-fun tp!2119190 () Bool)

(assert (=> b!7407484 (= e!4430357 (and tp!2119189 tp!2119190))))

(assert (=> b!7407386 (= tp!2119144 e!4430357)))

(assert (= (and b!7407386 (is-Cons!71852 (t!386535 (exprs!8836 c!10532)))) b!7407484))

(declare-fun condSetEmpty!56190 () Bool)

(assert (=> setNonEmpty!56186 (= condSetEmpty!56190 (= setRest!56186 (as set.empty (Set Context!16672))))))

(declare-fun setRes!56190 () Bool)

(assert (=> setNonEmpty!56186 (= tp!2119137 setRes!56190)))

(declare-fun setIsEmpty!56190 () Bool)

(assert (=> setIsEmpty!56190 setRes!56190))

(declare-fun setNonEmpty!56190 () Bool)

(declare-fun setElem!56190 () Context!16672)

(declare-fun e!4430358 () Bool)

(declare-fun tp!2119191 () Bool)

(assert (=> setNonEmpty!56190 (= setRes!56190 (and tp!2119191 (inv!91852 setElem!56190) e!4430358))))

(declare-fun setRest!56190 () (Set Context!16672))

(assert (=> setNonEmpty!56190 (= setRest!56186 (set.union (set.insert setElem!56190 (as set.empty (Set Context!16672))) setRest!56190))))

(declare-fun b!7407485 () Bool)

(declare-fun tp!2119192 () Bool)

(assert (=> b!7407485 (= e!4430358 tp!2119192)))

(assert (= (and setNonEmpty!56186 condSetEmpty!56190) setIsEmpty!56190))

(assert (= (and setNonEmpty!56186 (not condSetEmpty!56190)) setNonEmpty!56190))

(assert (= setNonEmpty!56190 b!7407485))

(declare-fun m!8042806 () Bool)

(assert (=> setNonEmpty!56190 m!8042806))

(declare-fun b!7407486 () Bool)

(declare-fun e!4430359 () Bool)

(declare-fun tp!2119193 () Bool)

(declare-fun tp!2119194 () Bool)

(assert (=> b!7407486 (= e!4430359 (and tp!2119193 tp!2119194))))

(assert (=> b!7407381 (= tp!2119138 e!4430359)))

(assert (= (and b!7407381 (is-Cons!71852 (exprs!8836 setElem!56186))) b!7407486))

(declare-fun e!4430360 () Bool)

(assert (=> b!7407393 (= tp!2119150 e!4430360)))

(declare-fun b!7407488 () Bool)

(declare-fun tp!2119196 () Bool)

(declare-fun tp!2119195 () Bool)

(assert (=> b!7407488 (= e!4430360 (and tp!2119196 tp!2119195))))

(declare-fun b!7407489 () Bool)

(declare-fun tp!2119197 () Bool)

(assert (=> b!7407489 (= e!4430360 tp!2119197)))

(declare-fun b!7407487 () Bool)

(assert (=> b!7407487 (= e!4430360 tp_is_empty!49055)))

(declare-fun b!7407490 () Bool)

(declare-fun tp!2119198 () Bool)

(declare-fun tp!2119199 () Bool)

(assert (=> b!7407490 (= e!4430360 (and tp!2119198 tp!2119199))))

(assert (= (and b!7407393 (is-ElementMatch!19396 (h!78300 (exprs!8836 empty!3531)))) b!7407487))

(assert (= (and b!7407393 (is-Concat!28241 (h!78300 (exprs!8836 empty!3531)))) b!7407488))

(assert (= (and b!7407393 (is-Star!19396 (h!78300 (exprs!8836 empty!3531)))) b!7407489))

(assert (= (and b!7407393 (is-Union!19396 (h!78300 (exprs!8836 empty!3531)))) b!7407490))

(declare-fun b!7407491 () Bool)

(declare-fun e!4430361 () Bool)

(declare-fun tp!2119200 () Bool)

(declare-fun tp!2119201 () Bool)

(assert (=> b!7407491 (= e!4430361 (and tp!2119200 tp!2119201))))

(assert (=> b!7407393 (= tp!2119151 e!4430361)))

(assert (= (and b!7407393 (is-Cons!71852 (t!386535 (exprs!8836 empty!3531)))) b!7407491))

(declare-fun e!4430362 () Bool)

(assert (=> b!7407392 (= tp!2119148 e!4430362)))

(declare-fun b!7407493 () Bool)

(declare-fun tp!2119203 () Bool)

(declare-fun tp!2119202 () Bool)

(assert (=> b!7407493 (= e!4430362 (and tp!2119203 tp!2119202))))

(declare-fun b!7407494 () Bool)

(declare-fun tp!2119204 () Bool)

(assert (=> b!7407494 (= e!4430362 tp!2119204)))

(declare-fun b!7407492 () Bool)

(assert (=> b!7407492 (= e!4430362 tp_is_empty!49055)))

(declare-fun b!7407495 () Bool)

(declare-fun tp!2119205 () Bool)

(declare-fun tp!2119206 () Bool)

(assert (=> b!7407495 (= e!4430362 (and tp!2119205 tp!2119206))))

(assert (= (and b!7407392 (is-ElementMatch!19396 (h!78300 (exprs!8836 setElem!56180)))) b!7407492))

(assert (= (and b!7407392 (is-Concat!28241 (h!78300 (exprs!8836 setElem!56180)))) b!7407493))

(assert (= (and b!7407392 (is-Star!19396 (h!78300 (exprs!8836 setElem!56180)))) b!7407494))

(assert (= (and b!7407392 (is-Union!19396 (h!78300 (exprs!8836 setElem!56180)))) b!7407495))

(declare-fun b!7407496 () Bool)

(declare-fun e!4430363 () Bool)

(declare-fun tp!2119207 () Bool)

(declare-fun tp!2119208 () Bool)

(assert (=> b!7407496 (= e!4430363 (and tp!2119207 tp!2119208))))

(assert (=> b!7407392 (= tp!2119149 e!4430363)))

(assert (= (and b!7407392 (is-Cons!71852 (t!386535 (exprs!8836 setElem!56180)))) b!7407496))

(declare-fun b!7407497 () Bool)

(declare-fun e!4430364 () Bool)

(declare-fun tp!2119209 () Bool)

(assert (=> b!7407497 (= e!4430364 (and tp_is_empty!49055 tp!2119209))))

(assert (=> b!7407391 (= tp!2119147 e!4430364)))

(assert (= (and b!7407391 (is-Cons!71853 (t!386536 (t!386536 s!7927)))) b!7407497))

(declare-fun b_lambda!286191 () Bool)

(assert (= b_lambda!286183 (or d!2290600 b_lambda!286191)))

(declare-fun bs!1923955 () Bool)

(declare-fun d!2290654 () Bool)

(assert (= bs!1923955 (and d!2290654 d!2290600)))

(declare-fun validRegex!9957 (Regex!19396) Bool)

(assert (=> bs!1923955 (= (dynLambda!29627 lambda!459492 (h!78300 (exprs!8836 empty!3531))) (validRegex!9957 (h!78300 (exprs!8836 empty!3531))))))

(declare-fun m!8042808 () Bool)

(assert (=> bs!1923955 m!8042808))

(assert (=> b!7407424 d!2290654))

(declare-fun b_lambda!286193 () Bool)

(assert (= b_lambda!286185 (or d!2290584 b_lambda!286193)))

(declare-fun bs!1923956 () Bool)

(declare-fun d!2290656 () Bool)

(assert (= bs!1923956 (and d!2290656 d!2290584)))

(assert (=> bs!1923956 (= (dynLambda!29627 lambda!459482 (h!78300 (exprs!8836 setElem!56180))) (validRegex!9957 (h!78300 (exprs!8836 setElem!56180))))))

(declare-fun m!8042810 () Bool)

(assert (=> bs!1923956 m!8042810))

(assert (=> b!7407431 d!2290656))

(declare-fun b_lambda!286195 () Bool)

(assert (= b_lambda!286187 (or d!2290602 b_lambda!286195)))

(declare-fun bs!1923957 () Bool)

(declare-fun d!2290658 () Bool)

(assert (= bs!1923957 (and d!2290658 d!2290602)))

(assert (=> bs!1923957 (= (dynLambda!29627 lambda!459493 (h!78300 (exprs!8836 lt!2618206))) (validRegex!9957 (h!78300 (exprs!8836 lt!2618206))))))

(declare-fun m!8042812 () Bool)

(assert (=> bs!1923957 m!8042812))

(assert (=> b!7407433 d!2290658))

(declare-fun b_lambda!286197 () Bool)

(assert (= b_lambda!286189 (or d!2290594 b_lambda!286197)))

(declare-fun bs!1923958 () Bool)

(declare-fun d!2290660 () Bool)

(assert (= bs!1923958 (and d!2290660 d!2290594)))

(assert (=> bs!1923958 (= (dynLambda!29627 lambda!459486 (h!78300 (exprs!8836 c!10532))) (validRegex!9957 (h!78300 (exprs!8836 c!10532))))))

(declare-fun m!8042814 () Bool)

(assert (=> bs!1923958 m!8042814))

(assert (=> b!7407468 d!2290660))

(push 1)

(assert (not d!2290644))

(assert (not b!7407485))

(assert (not b!7407497))

(assert (not bm!681977))

(assert (not setNonEmpty!56190))

(assert (not bm!681974))

(assert (not d!2290636))

(assert (not b!7407430))

(assert (not b!7407482))

(assert (not bs!1923956))

(assert (not b!7407483))

(assert (not bs!1923955))

(assert (not bs!1923958))

(assert (not b!7407493))

(assert (not b!7407469))

(assert (not b_lambda!286191))

(assert (not b!7407490))

(assert (not b!7407489))

(assert (not b!7407419))

(assert (not bm!681960))

(assert (not b_lambda!286193))

(assert (not b!7407495))

(assert (not b!7407434))

(assert (not b!7407467))

(assert tp_is_empty!49055)

(assert (not b!7407426))

(assert (not b!7407481))

(assert (not b!7407484))

(assert (not b_lambda!286197))

(assert (not d!2290632))

(assert (not bs!1923957))

(assert (not b!7407486))

(assert (not d!2290634))

(assert (not b_lambda!286195))

(assert (not b!7407491))

(assert (not d!2290638))

(assert (not b!7407432))

(assert (not bm!681975))

(assert (not b!7407425))

(assert (not b!7407496))

(assert (not b!7407488))

(assert (not b!7407494))

(assert (not d!2290630))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


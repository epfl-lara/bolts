; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!721228 () Bool)

(assert start!721228)

(declare-fun setRes!56128 () Bool)

(declare-fun tp!2118634 () Bool)

(declare-fun setNonEmpty!56128 () Bool)

(declare-fun e!4429719 () Bool)

(declare-datatypes ((C!39052 0))(
  ( (C!39053 (val!29900 Int)) )
))
(declare-datatypes ((Regex!19389 0))(
  ( (ElementMatch!19389 (c!1374664 C!39052)) (Concat!28234 (regOne!39290 Regex!19389) (regTwo!39290 Regex!19389)) (EmptyExpr!19389) (Star!19389 (reg!19718 Regex!19389)) (EmptyLang!19389) (Union!19389 (regOne!39291 Regex!19389) (regTwo!39291 Regex!19389)) )
))
(declare-datatypes ((List!71960 0))(
  ( (Nil!71836) (Cons!71836 (h!78284 Regex!19389) (t!386519 List!71960)) )
))
(declare-datatypes ((Context!16658 0))(
  ( (Context!16659 (exprs!8829 List!71960)) )
))
(declare-fun setElem!56128 () Context!16658)

(declare-fun inv!91833 (Context!16658) Bool)

(assert (=> setNonEmpty!56128 (= setRes!56128 (and tp!2118634 (inv!91833 setElem!56128) e!4429719))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3451 () (InoxSet Context!16658))

(declare-fun setRest!56128 () (InoxSet Context!16658))

(assert (=> setNonEmpty!56128 (= z!3451 ((_ map or) (store ((as const (Array Context!16658 Bool)) false) setElem!56128 true) setRest!56128))))

(declare-fun b!7406357 () Bool)

(declare-fun tp!2118637 () Bool)

(assert (=> b!7406357 (= e!4429719 tp!2118637)))

(declare-fun b!7406358 () Bool)

(declare-fun res!2981968 () Bool)

(declare-fun e!4429720 () Bool)

(assert (=> b!7406358 (=> (not res!2981968) (not e!4429720))))

(declare-fun c!10532 () Context!16658)

(declare-fun isEmpty!41029 (List!71960) Bool)

(declare-fun tail!14796 (List!71960) List!71960)

(assert (=> b!7406358 (= res!2981968 (isEmpty!41029 (tail!14796 (exprs!8829 c!10532))))))

(declare-fun b!7406359 () Bool)

(declare-fun e!4429718 () Bool)

(declare-fun tp!2118636 () Bool)

(assert (=> b!7406359 (= e!4429718 tp!2118636)))

(declare-fun res!2981972 () Bool)

(assert (=> start!721228 (=> (not res!2981972) (not e!4429720))))

(assert (=> start!721228 (= res!2981972 (= z!3451 (store ((as const (Array Context!16658 Bool)) false) c!10532 true)))))

(assert (=> start!721228 e!4429720))

(declare-fun condSetEmpty!56128 () Bool)

(assert (=> start!721228 (= condSetEmpty!56128 (= z!3451 ((as const (Array Context!16658 Bool)) false)))))

(assert (=> start!721228 setRes!56128))

(assert (=> start!721228 (and (inv!91833 c!10532) e!4429718)))

(declare-fun tp_is_empty!49041 () Bool)

(assert (=> start!721228 tp_is_empty!49041))

(declare-fun e!4429721 () Bool)

(assert (=> start!721228 e!4429721))

(declare-fun b!7406360 () Bool)

(declare-fun res!2981971 () Bool)

(assert (=> b!7406360 (=> (not res!2981971) (not e!4429720))))

(declare-datatypes ((List!71961 0))(
  ( (Nil!71837) (Cons!71837 (h!78285 C!39052) (t!386520 List!71961)) )
))
(declare-fun s!7927 () List!71961)

(declare-fun a!2228 () C!39052)

(get-info :version)

(assert (=> b!7406360 (= res!2981971 (and ((_ is Cons!71837) s!7927) (= (h!78285 s!7927) a!2228)))))

(declare-fun b!7406361 () Bool)

(declare-fun res!2981969 () Bool)

(assert (=> b!7406361 (=> (not res!2981969) (not e!4429720))))

(declare-fun head!15162 (List!71960) Regex!19389)

(assert (=> b!7406361 (= res!2981969 (= (head!15162 (exprs!8829 c!10532)) (ElementMatch!19389 a!2228)))))

(declare-fun b!7406362 () Bool)

(declare-fun res!2981970 () Bool)

(assert (=> b!7406362 (=> (not res!2981970) (not e!4429720))))

(assert (=> b!7406362 (= res!2981970 (not (isEmpty!41029 (exprs!8829 c!10532))))))

(declare-fun b!7406363 () Bool)

(declare-fun tp!2118635 () Bool)

(assert (=> b!7406363 (= e!4429721 (and tp_is_empty!49041 tp!2118635))))

(declare-fun b!7406364 () Bool)

(assert (=> b!7406364 (= e!4429720 (not (inv!91833 (Context!16659 Nil!71836))))))

(declare-fun lt!2618153 () (InoxSet Context!16658))

(declare-fun derivationStepZipperUp!2793 (Context!16658 C!39052) (InoxSet Context!16658))

(declare-fun head!15163 (List!71961) C!39052)

(assert (=> b!7406364 (= lt!2618153 (derivationStepZipperUp!2793 c!10532 (head!15163 s!7927)))))

(declare-fun setIsEmpty!56128 () Bool)

(assert (=> setIsEmpty!56128 setRes!56128))

(assert (= (and start!721228 res!2981972) b!7406362))

(assert (= (and b!7406362 res!2981970) b!7406361))

(assert (= (and b!7406361 res!2981969) b!7406358))

(assert (= (and b!7406358 res!2981968) b!7406360))

(assert (= (and b!7406360 res!2981971) b!7406364))

(assert (= (and start!721228 condSetEmpty!56128) setIsEmpty!56128))

(assert (= (and start!721228 (not condSetEmpty!56128)) setNonEmpty!56128))

(assert (= setNonEmpty!56128 b!7406357))

(assert (= start!721228 b!7406359))

(assert (= (and start!721228 ((_ is Cons!71837) s!7927)) b!7406363))

(declare-fun m!8042062 () Bool)

(assert (=> b!7406364 m!8042062))

(declare-fun m!8042064 () Bool)

(assert (=> b!7406364 m!8042064))

(assert (=> b!7406364 m!8042064))

(declare-fun m!8042066 () Bool)

(assert (=> b!7406364 m!8042066))

(declare-fun m!8042068 () Bool)

(assert (=> b!7406358 m!8042068))

(assert (=> b!7406358 m!8042068))

(declare-fun m!8042070 () Bool)

(assert (=> b!7406358 m!8042070))

(declare-fun m!8042072 () Bool)

(assert (=> setNonEmpty!56128 m!8042072))

(declare-fun m!8042074 () Bool)

(assert (=> b!7406361 m!8042074))

(declare-fun m!8042076 () Bool)

(assert (=> start!721228 m!8042076))

(declare-fun m!8042078 () Bool)

(assert (=> start!721228 m!8042078))

(declare-fun m!8042080 () Bool)

(assert (=> b!7406362 m!8042080))

(check-sat (not b!7406363) tp_is_empty!49041 (not start!721228) (not b!7406361) (not b!7406358) (not setNonEmpty!56128) (not b!7406359) (not b!7406364) (not b!7406362) (not b!7406357))
(check-sat)
(get-model)

(declare-fun d!2290286 () Bool)

(assert (=> d!2290286 (= (isEmpty!41029 (tail!14796 (exprs!8829 c!10532))) ((_ is Nil!71836) (tail!14796 (exprs!8829 c!10532))))))

(assert (=> b!7406358 d!2290286))

(declare-fun d!2290292 () Bool)

(assert (=> d!2290292 (= (tail!14796 (exprs!8829 c!10532)) (t!386519 (exprs!8829 c!10532)))))

(assert (=> b!7406358 d!2290292))

(declare-fun d!2290294 () Bool)

(assert (=> d!2290294 (= (isEmpty!41029 (exprs!8829 c!10532)) ((_ is Nil!71836) (exprs!8829 c!10532)))))

(assert (=> b!7406362 d!2290294))

(declare-fun d!2290296 () Bool)

(declare-fun lambda!459396 () Int)

(declare-fun forall!18174 (List!71960 Int) Bool)

(assert (=> d!2290296 (= (inv!91833 setElem!56128) (forall!18174 (exprs!8829 setElem!56128) lambda!459396))))

(declare-fun bs!1923794 () Bool)

(assert (= bs!1923794 d!2290296))

(declare-fun m!8042096 () Bool)

(assert (=> bs!1923794 m!8042096))

(assert (=> setNonEmpty!56128 d!2290296))

(declare-fun d!2290308 () Bool)

(assert (=> d!2290308 (= (head!15162 (exprs!8829 c!10532)) (h!78284 (exprs!8829 c!10532)))))

(assert (=> b!7406361 d!2290308))

(declare-fun bs!1923795 () Bool)

(declare-fun d!2290310 () Bool)

(assert (= bs!1923795 (and d!2290310 d!2290296)))

(declare-fun lambda!459397 () Int)

(assert (=> bs!1923795 (= lambda!459397 lambda!459396)))

(assert (=> d!2290310 (= (inv!91833 c!10532) (forall!18174 (exprs!8829 c!10532) lambda!459397))))

(declare-fun bs!1923796 () Bool)

(assert (= bs!1923796 d!2290310))

(declare-fun m!8042098 () Bool)

(assert (=> bs!1923796 m!8042098))

(assert (=> start!721228 d!2290310))

(declare-fun bs!1923797 () Bool)

(declare-fun d!2290312 () Bool)

(assert (= bs!1923797 (and d!2290312 d!2290296)))

(declare-fun lambda!459398 () Int)

(assert (=> bs!1923797 (= lambda!459398 lambda!459396)))

(declare-fun bs!1923798 () Bool)

(assert (= bs!1923798 (and d!2290312 d!2290310)))

(assert (=> bs!1923798 (= lambda!459398 lambda!459397)))

(assert (=> d!2290312 (= (inv!91833 (Context!16659 Nil!71836)) (forall!18174 (exprs!8829 (Context!16659 Nil!71836)) lambda!459398))))

(declare-fun bs!1923799 () Bool)

(assert (= bs!1923799 d!2290312))

(declare-fun m!8042100 () Bool)

(assert (=> bs!1923799 m!8042100))

(assert (=> b!7406364 d!2290312))

(declare-fun b!7406406 () Bool)

(declare-fun e!4429748 () (InoxSet Context!16658))

(declare-fun e!4429749 () (InoxSet Context!16658))

(assert (=> b!7406406 (= e!4429748 e!4429749)))

(declare-fun c!1374676 () Bool)

(assert (=> b!7406406 (= c!1374676 ((_ is Cons!71836) (exprs!8829 c!10532)))))

(declare-fun d!2290314 () Bool)

(declare-fun c!1374675 () Bool)

(declare-fun e!4429747 () Bool)

(assert (=> d!2290314 (= c!1374675 e!4429747)))

(declare-fun res!2981978 () Bool)

(assert (=> d!2290314 (=> (not res!2981978) (not e!4429747))))

(assert (=> d!2290314 (= res!2981978 ((_ is Cons!71836) (exprs!8829 c!10532)))))

(assert (=> d!2290314 (= (derivationStepZipperUp!2793 c!10532 (head!15163 s!7927)) e!4429748)))

(declare-fun b!7406407 () Bool)

(declare-fun nullable!8435 (Regex!19389) Bool)

(assert (=> b!7406407 (= e!4429747 (nullable!8435 (h!78284 (exprs!8829 c!10532))))))

(declare-fun bm!681840 () Bool)

(declare-fun call!681845 () (InoxSet Context!16658))

(declare-fun derivationStepZipperDown!3187 (Regex!19389 Context!16658 C!39052) (InoxSet Context!16658))

(assert (=> bm!681840 (= call!681845 (derivationStepZipperDown!3187 (h!78284 (exprs!8829 c!10532)) (Context!16659 (t!386519 (exprs!8829 c!10532))) (head!15163 s!7927)))))

(declare-fun b!7406408 () Bool)

(assert (=> b!7406408 (= e!4429748 ((_ map or) call!681845 (derivationStepZipperUp!2793 (Context!16659 (t!386519 (exprs!8829 c!10532))) (head!15163 s!7927))))))

(declare-fun b!7406409 () Bool)

(assert (=> b!7406409 (= e!4429749 ((as const (Array Context!16658 Bool)) false))))

(declare-fun b!7406410 () Bool)

(assert (=> b!7406410 (= e!4429749 call!681845)))

(assert (= (and d!2290314 res!2981978) b!7406407))

(assert (= (and d!2290314 c!1374675) b!7406408))

(assert (= (and d!2290314 (not c!1374675)) b!7406406))

(assert (= (and b!7406406 c!1374676) b!7406410))

(assert (= (and b!7406406 (not c!1374676)) b!7406409))

(assert (= (or b!7406408 b!7406410) bm!681840))

(declare-fun m!8042102 () Bool)

(assert (=> b!7406407 m!8042102))

(assert (=> bm!681840 m!8042064))

(declare-fun m!8042104 () Bool)

(assert (=> bm!681840 m!8042104))

(assert (=> b!7406408 m!8042064))

(declare-fun m!8042106 () Bool)

(assert (=> b!7406408 m!8042106))

(assert (=> b!7406364 d!2290314))

(declare-fun d!2290316 () Bool)

(assert (=> d!2290316 (= (head!15163 s!7927) (h!78285 s!7927))))

(assert (=> b!7406364 d!2290316))

(declare-fun b!7406415 () Bool)

(declare-fun e!4429752 () Bool)

(declare-fun tp!2118657 () Bool)

(assert (=> b!7406415 (= e!4429752 (and tp_is_empty!49041 tp!2118657))))

(assert (=> b!7406363 (= tp!2118635 e!4429752)))

(assert (= (and b!7406363 ((_ is Cons!71837) (t!386520 s!7927))) b!7406415))

(declare-fun b!7406420 () Bool)

(declare-fun e!4429755 () Bool)

(declare-fun tp!2118662 () Bool)

(declare-fun tp!2118663 () Bool)

(assert (=> b!7406420 (= e!4429755 (and tp!2118662 tp!2118663))))

(assert (=> b!7406357 (= tp!2118637 e!4429755)))

(assert (= (and b!7406357 ((_ is Cons!71836) (exprs!8829 setElem!56128))) b!7406420))

(declare-fun condSetEmpty!56134 () Bool)

(assert (=> setNonEmpty!56128 (= condSetEmpty!56134 (= setRest!56128 ((as const (Array Context!16658 Bool)) false)))))

(declare-fun setRes!56134 () Bool)

(assert (=> setNonEmpty!56128 (= tp!2118634 setRes!56134)))

(declare-fun setIsEmpty!56134 () Bool)

(assert (=> setIsEmpty!56134 setRes!56134))

(declare-fun e!4429758 () Bool)

(declare-fun setNonEmpty!56134 () Bool)

(declare-fun setElem!56134 () Context!16658)

(declare-fun tp!2118669 () Bool)

(assert (=> setNonEmpty!56134 (= setRes!56134 (and tp!2118669 (inv!91833 setElem!56134) e!4429758))))

(declare-fun setRest!56134 () (InoxSet Context!16658))

(assert (=> setNonEmpty!56134 (= setRest!56128 ((_ map or) (store ((as const (Array Context!16658 Bool)) false) setElem!56134 true) setRest!56134))))

(declare-fun b!7406425 () Bool)

(declare-fun tp!2118668 () Bool)

(assert (=> b!7406425 (= e!4429758 tp!2118668)))

(assert (= (and setNonEmpty!56128 condSetEmpty!56134) setIsEmpty!56134))

(assert (= (and setNonEmpty!56128 (not condSetEmpty!56134)) setNonEmpty!56134))

(assert (= setNonEmpty!56134 b!7406425))

(declare-fun m!8042108 () Bool)

(assert (=> setNonEmpty!56134 m!8042108))

(declare-fun b!7406426 () Bool)

(declare-fun e!4429759 () Bool)

(declare-fun tp!2118670 () Bool)

(declare-fun tp!2118671 () Bool)

(assert (=> b!7406426 (= e!4429759 (and tp!2118670 tp!2118671))))

(assert (=> b!7406359 (= tp!2118636 e!4429759)))

(assert (= (and b!7406359 ((_ is Cons!71836) (exprs!8829 c!10532))) b!7406426))

(check-sat (not b!7406426) (not b!7406415) tp_is_empty!49041 (not setNonEmpty!56134) (not d!2290310) (not b!7406425) (not d!2290312) (not b!7406408) (not d!2290296) (not b!7406407) (not b!7406420) (not bm!681840))
(check-sat)
(get-model)

(declare-fun d!2290322 () Bool)

(declare-fun nullableFct!3393 (Regex!19389) Bool)

(assert (=> d!2290322 (= (nullable!8435 (h!78284 (exprs!8829 c!10532))) (nullableFct!3393 (h!78284 (exprs!8829 c!10532))))))

(declare-fun bs!1923800 () Bool)

(assert (= bs!1923800 d!2290322))

(declare-fun m!8042116 () Bool)

(assert (=> bs!1923800 m!8042116))

(assert (=> b!7406407 d!2290322))

(declare-fun d!2290324 () Bool)

(declare-fun res!2981987 () Bool)

(declare-fun e!4429785 () Bool)

(assert (=> d!2290324 (=> res!2981987 e!4429785)))

(assert (=> d!2290324 (= res!2981987 ((_ is Nil!71836) (exprs!8829 setElem!56128)))))

(assert (=> d!2290324 (= (forall!18174 (exprs!8829 setElem!56128) lambda!459396) e!4429785)))

(declare-fun b!7406469 () Bool)

(declare-fun e!4429786 () Bool)

(assert (=> b!7406469 (= e!4429785 e!4429786)))

(declare-fun res!2981988 () Bool)

(assert (=> b!7406469 (=> (not res!2981988) (not e!4429786))))

(declare-fun dynLambda!29610 (Int Regex!19389) Bool)

(assert (=> b!7406469 (= res!2981988 (dynLambda!29610 lambda!459396 (h!78284 (exprs!8829 setElem!56128))))))

(declare-fun b!7406470 () Bool)

(assert (=> b!7406470 (= e!4429786 (forall!18174 (t!386519 (exprs!8829 setElem!56128)) lambda!459396))))

(assert (= (and d!2290324 (not res!2981987)) b!7406469))

(assert (= (and b!7406469 res!2981988) b!7406470))

(declare-fun b_lambda!286103 () Bool)

(assert (=> (not b_lambda!286103) (not b!7406469)))

(declare-fun m!8042118 () Bool)

(assert (=> b!7406469 m!8042118))

(declare-fun m!8042120 () Bool)

(assert (=> b!7406470 m!8042120))

(assert (=> d!2290296 d!2290324))

(declare-fun d!2290326 () Bool)

(declare-fun res!2981989 () Bool)

(declare-fun e!4429787 () Bool)

(assert (=> d!2290326 (=> res!2981989 e!4429787)))

(assert (=> d!2290326 (= res!2981989 ((_ is Nil!71836) (exprs!8829 (Context!16659 Nil!71836))))))

(assert (=> d!2290326 (= (forall!18174 (exprs!8829 (Context!16659 Nil!71836)) lambda!459398) e!4429787)))

(declare-fun b!7406471 () Bool)

(declare-fun e!4429788 () Bool)

(assert (=> b!7406471 (= e!4429787 e!4429788)))

(declare-fun res!2981990 () Bool)

(assert (=> b!7406471 (=> (not res!2981990) (not e!4429788))))

(assert (=> b!7406471 (= res!2981990 (dynLambda!29610 lambda!459398 (h!78284 (exprs!8829 (Context!16659 Nil!71836)))))))

(declare-fun b!7406472 () Bool)

(assert (=> b!7406472 (= e!4429788 (forall!18174 (t!386519 (exprs!8829 (Context!16659 Nil!71836))) lambda!459398))))

(assert (= (and d!2290326 (not res!2981989)) b!7406471))

(assert (= (and b!7406471 res!2981990) b!7406472))

(declare-fun b_lambda!286105 () Bool)

(assert (=> (not b_lambda!286105) (not b!7406471)))

(declare-fun m!8042132 () Bool)

(assert (=> b!7406471 m!8042132))

(declare-fun m!8042134 () Bool)

(assert (=> b!7406472 m!8042134))

(assert (=> d!2290312 d!2290326))

(declare-fun bs!1923801 () Bool)

(declare-fun d!2290330 () Bool)

(assert (= bs!1923801 (and d!2290330 d!2290296)))

(declare-fun lambda!459399 () Int)

(assert (=> bs!1923801 (= lambda!459399 lambda!459396)))

(declare-fun bs!1923802 () Bool)

(assert (= bs!1923802 (and d!2290330 d!2290310)))

(assert (=> bs!1923802 (= lambda!459399 lambda!459397)))

(declare-fun bs!1923803 () Bool)

(assert (= bs!1923803 (and d!2290330 d!2290312)))

(assert (=> bs!1923803 (= lambda!459399 lambda!459398)))

(assert (=> d!2290330 (= (inv!91833 setElem!56134) (forall!18174 (exprs!8829 setElem!56134) lambda!459399))))

(declare-fun bs!1923804 () Bool)

(assert (= bs!1923804 d!2290330))

(declare-fun m!8042136 () Bool)

(assert (=> bs!1923804 m!8042136))

(assert (=> setNonEmpty!56134 d!2290330))

(declare-fun b!7406475 () Bool)

(declare-fun e!4429792 () (InoxSet Context!16658))

(declare-fun e!4429793 () (InoxSet Context!16658))

(assert (=> b!7406475 (= e!4429792 e!4429793)))

(declare-fun c!1374695 () Bool)

(assert (=> b!7406475 (= c!1374695 ((_ is Cons!71836) (exprs!8829 (Context!16659 (t!386519 (exprs!8829 c!10532))))))))

(declare-fun d!2290332 () Bool)

(declare-fun c!1374694 () Bool)

(declare-fun e!4429791 () Bool)

(assert (=> d!2290332 (= c!1374694 e!4429791)))

(declare-fun res!2981993 () Bool)

(assert (=> d!2290332 (=> (not res!2981993) (not e!4429791))))

(assert (=> d!2290332 (= res!2981993 ((_ is Cons!71836) (exprs!8829 (Context!16659 (t!386519 (exprs!8829 c!10532))))))))

(assert (=> d!2290332 (= (derivationStepZipperUp!2793 (Context!16659 (t!386519 (exprs!8829 c!10532))) (head!15163 s!7927)) e!4429792)))

(declare-fun b!7406476 () Bool)

(assert (=> b!7406476 (= e!4429791 (nullable!8435 (h!78284 (exprs!8829 (Context!16659 (t!386519 (exprs!8829 c!10532)))))))))

(declare-fun bm!681860 () Bool)

(declare-fun call!681865 () (InoxSet Context!16658))

(assert (=> bm!681860 (= call!681865 (derivationStepZipperDown!3187 (h!78284 (exprs!8829 (Context!16659 (t!386519 (exprs!8829 c!10532))))) (Context!16659 (t!386519 (exprs!8829 (Context!16659 (t!386519 (exprs!8829 c!10532)))))) (head!15163 s!7927)))))

(declare-fun b!7406477 () Bool)

(assert (=> b!7406477 (= e!4429792 ((_ map or) call!681865 (derivationStepZipperUp!2793 (Context!16659 (t!386519 (exprs!8829 (Context!16659 (t!386519 (exprs!8829 c!10532)))))) (head!15163 s!7927))))))

(declare-fun b!7406478 () Bool)

(assert (=> b!7406478 (= e!4429793 ((as const (Array Context!16658 Bool)) false))))

(declare-fun b!7406479 () Bool)

(assert (=> b!7406479 (= e!4429793 call!681865)))

(assert (= (and d!2290332 res!2981993) b!7406476))

(assert (= (and d!2290332 c!1374694) b!7406477))

(assert (= (and d!2290332 (not c!1374694)) b!7406475))

(assert (= (and b!7406475 c!1374695) b!7406479))

(assert (= (and b!7406475 (not c!1374695)) b!7406478))

(assert (= (or b!7406477 b!7406479) bm!681860))

(declare-fun m!8042138 () Bool)

(assert (=> b!7406476 m!8042138))

(assert (=> bm!681860 m!8042064))

(declare-fun m!8042140 () Bool)

(assert (=> bm!681860 m!8042140))

(assert (=> b!7406477 m!8042064))

(declare-fun m!8042142 () Bool)

(assert (=> b!7406477 m!8042142))

(assert (=> b!7406408 d!2290332))

(declare-fun d!2290334 () Bool)

(declare-fun res!2981996 () Bool)

(declare-fun e!4429796 () Bool)

(assert (=> d!2290334 (=> res!2981996 e!4429796)))

(assert (=> d!2290334 (= res!2981996 ((_ is Nil!71836) (exprs!8829 c!10532)))))

(assert (=> d!2290334 (= (forall!18174 (exprs!8829 c!10532) lambda!459397) e!4429796)))

(declare-fun b!7406482 () Bool)

(declare-fun e!4429797 () Bool)

(assert (=> b!7406482 (= e!4429796 e!4429797)))

(declare-fun res!2981997 () Bool)

(assert (=> b!7406482 (=> (not res!2981997) (not e!4429797))))

(assert (=> b!7406482 (= res!2981997 (dynLambda!29610 lambda!459397 (h!78284 (exprs!8829 c!10532))))))

(declare-fun b!7406483 () Bool)

(assert (=> b!7406483 (= e!4429797 (forall!18174 (t!386519 (exprs!8829 c!10532)) lambda!459397))))

(assert (= (and d!2290334 (not res!2981996)) b!7406482))

(assert (= (and b!7406482 res!2981997) b!7406483))

(declare-fun b_lambda!286107 () Bool)

(assert (=> (not b_lambda!286107) (not b!7406482)))

(declare-fun m!8042144 () Bool)

(assert (=> b!7406482 m!8042144))

(declare-fun m!8042146 () Bool)

(assert (=> b!7406483 m!8042146))

(assert (=> d!2290310 d!2290334))

(declare-fun bm!681873 () Bool)

(declare-fun call!681880 () (InoxSet Context!16658))

(declare-fun call!681881 () (InoxSet Context!16658))

(assert (=> bm!681873 (= call!681880 call!681881)))

(declare-fun b!7406535 () Bool)

(declare-fun e!4429825 () (InoxSet Context!16658))

(declare-fun call!681883 () (InoxSet Context!16658))

(declare-fun call!681879 () (InoxSet Context!16658))

(assert (=> b!7406535 (= e!4429825 ((_ map or) call!681883 call!681879))))

(declare-fun b!7406537 () Bool)

(declare-fun e!4429830 () (InoxSet Context!16658))

(assert (=> b!7406537 (= e!4429830 call!681880)))

(declare-fun b!7406538 () Bool)

(declare-fun e!4429826 () (InoxSet Context!16658))

(assert (=> b!7406538 (= e!4429826 ((_ map or) call!681879 call!681881))))

(declare-fun c!1374710 () Bool)

(declare-fun c!1374708 () Bool)

(declare-fun bm!681874 () Bool)

(declare-fun call!681882 () List!71960)

(declare-fun $colon$colon!3333 (List!71960 Regex!19389) List!71960)

(assert (=> bm!681874 (= call!681882 ($colon$colon!3333 (exprs!8829 (Context!16659 (t!386519 (exprs!8829 c!10532)))) (ite (or c!1374708 c!1374710) (regTwo!39290 (h!78284 (exprs!8829 c!10532))) (h!78284 (exprs!8829 c!10532)))))))

(declare-fun b!7406539 () Bool)

(declare-fun e!4429829 () (InoxSet Context!16658))

(assert (=> b!7406539 (= e!4429829 e!4429825)))

(declare-fun c!1374707 () Bool)

(assert (=> b!7406539 (= c!1374707 ((_ is Union!19389) (h!78284 (exprs!8829 c!10532))))))

(declare-fun bm!681875 () Bool)

(declare-fun call!681878 () List!71960)

(assert (=> bm!681875 (= call!681883 (derivationStepZipperDown!3187 (ite c!1374707 (regOne!39291 (h!78284 (exprs!8829 c!10532))) (ite c!1374708 (regTwo!39290 (h!78284 (exprs!8829 c!10532))) (ite c!1374710 (regOne!39290 (h!78284 (exprs!8829 c!10532))) (reg!19718 (h!78284 (exprs!8829 c!10532)))))) (ite (or c!1374707 c!1374708) (Context!16659 (t!386519 (exprs!8829 c!10532))) (Context!16659 call!681878)) (head!15163 s!7927)))))

(declare-fun bm!681876 () Bool)

(assert (=> bm!681876 (= call!681881 call!681883)))

(declare-fun b!7406540 () Bool)

(declare-fun e!4429828 () Bool)

(assert (=> b!7406540 (= e!4429828 (nullable!8435 (regOne!39290 (h!78284 (exprs!8829 c!10532)))))))

(declare-fun b!7406541 () Bool)

(assert (=> b!7406541 (= e!4429830 ((as const (Array Context!16658 Bool)) false))))

(declare-fun d!2290336 () Bool)

(declare-fun c!1374706 () Bool)

(assert (=> d!2290336 (= c!1374706 (and ((_ is ElementMatch!19389) (h!78284 (exprs!8829 c!10532))) (= (c!1374664 (h!78284 (exprs!8829 c!10532))) (head!15163 s!7927))))))

(assert (=> d!2290336 (= (derivationStepZipperDown!3187 (h!78284 (exprs!8829 c!10532)) (Context!16659 (t!386519 (exprs!8829 c!10532))) (head!15163 s!7927)) e!4429829)))

(declare-fun b!7406536 () Bool)

(declare-fun e!4429827 () (InoxSet Context!16658))

(assert (=> b!7406536 (= e!4429827 call!681880)))

(declare-fun bm!681877 () Bool)

(assert (=> bm!681877 (= call!681879 (derivationStepZipperDown!3187 (ite c!1374707 (regTwo!39291 (h!78284 (exprs!8829 c!10532))) (regOne!39290 (h!78284 (exprs!8829 c!10532)))) (ite c!1374707 (Context!16659 (t!386519 (exprs!8829 c!10532))) (Context!16659 call!681882)) (head!15163 s!7927)))))

(declare-fun b!7406542 () Bool)

(declare-fun c!1374709 () Bool)

(assert (=> b!7406542 (= c!1374709 ((_ is Star!19389) (h!78284 (exprs!8829 c!10532))))))

(assert (=> b!7406542 (= e!4429827 e!4429830)))

(declare-fun bm!681878 () Bool)

(assert (=> bm!681878 (= call!681878 call!681882)))

(declare-fun b!7406543 () Bool)

(assert (=> b!7406543 (= c!1374708 e!4429828)))

(declare-fun res!2982006 () Bool)

(assert (=> b!7406543 (=> (not res!2982006) (not e!4429828))))

(assert (=> b!7406543 (= res!2982006 ((_ is Concat!28234) (h!78284 (exprs!8829 c!10532))))))

(assert (=> b!7406543 (= e!4429825 e!4429826)))

(declare-fun b!7406544 () Bool)

(assert (=> b!7406544 (= e!4429829 (store ((as const (Array Context!16658 Bool)) false) (Context!16659 (t!386519 (exprs!8829 c!10532))) true))))

(declare-fun b!7406545 () Bool)

(assert (=> b!7406545 (= e!4429826 e!4429827)))

(assert (=> b!7406545 (= c!1374710 ((_ is Concat!28234) (h!78284 (exprs!8829 c!10532))))))

(assert (= (and d!2290336 c!1374706) b!7406544))

(assert (= (and d!2290336 (not c!1374706)) b!7406539))

(assert (= (and b!7406539 c!1374707) b!7406535))

(assert (= (and b!7406539 (not c!1374707)) b!7406543))

(assert (= (and b!7406543 res!2982006) b!7406540))

(assert (= (and b!7406543 c!1374708) b!7406538))

(assert (= (and b!7406543 (not c!1374708)) b!7406545))

(assert (= (and b!7406545 c!1374710) b!7406536))

(assert (= (and b!7406545 (not c!1374710)) b!7406542))

(assert (= (and b!7406542 c!1374709) b!7406537))

(assert (= (and b!7406542 (not c!1374709)) b!7406541))

(assert (= (or b!7406536 b!7406537) bm!681878))

(assert (= (or b!7406536 b!7406537) bm!681873))

(assert (= (or b!7406538 bm!681878) bm!681874))

(assert (= (or b!7406538 bm!681873) bm!681876))

(assert (= (or b!7406535 bm!681876) bm!681875))

(assert (= (or b!7406535 b!7406538) bm!681877))

(assert (=> bm!681877 m!8042064))

(declare-fun m!8042172 () Bool)

(assert (=> bm!681877 m!8042172))

(assert (=> bm!681875 m!8042064))

(declare-fun m!8042174 () Bool)

(assert (=> bm!681875 m!8042174))

(declare-fun m!8042176 () Bool)

(assert (=> bm!681874 m!8042176))

(declare-fun m!8042178 () Bool)

(assert (=> b!7406544 m!8042178))

(declare-fun m!8042180 () Bool)

(assert (=> b!7406540 m!8042180))

(assert (=> bm!681840 d!2290336))

(declare-fun b!7406559 () Bool)

(declare-fun e!4429833 () Bool)

(declare-fun tp!2118713 () Bool)

(declare-fun tp!2118711 () Bool)

(assert (=> b!7406559 (= e!4429833 (and tp!2118713 tp!2118711))))

(assert (=> b!7406420 (= tp!2118662 e!4429833)))

(declare-fun b!7406558 () Bool)

(declare-fun tp!2118714 () Bool)

(assert (=> b!7406558 (= e!4429833 tp!2118714)))

(declare-fun b!7406557 () Bool)

(declare-fun tp!2118715 () Bool)

(declare-fun tp!2118712 () Bool)

(assert (=> b!7406557 (= e!4429833 (and tp!2118715 tp!2118712))))

(declare-fun b!7406556 () Bool)

(assert (=> b!7406556 (= e!4429833 tp_is_empty!49041)))

(assert (= (and b!7406420 ((_ is ElementMatch!19389) (h!78284 (exprs!8829 setElem!56128)))) b!7406556))

(assert (= (and b!7406420 ((_ is Concat!28234) (h!78284 (exprs!8829 setElem!56128)))) b!7406557))

(assert (= (and b!7406420 ((_ is Star!19389) (h!78284 (exprs!8829 setElem!56128)))) b!7406558))

(assert (= (and b!7406420 ((_ is Union!19389) (h!78284 (exprs!8829 setElem!56128)))) b!7406559))

(declare-fun b!7406560 () Bool)

(declare-fun e!4429834 () Bool)

(declare-fun tp!2118716 () Bool)

(declare-fun tp!2118717 () Bool)

(assert (=> b!7406560 (= e!4429834 (and tp!2118716 tp!2118717))))

(assert (=> b!7406420 (= tp!2118663 e!4429834)))

(assert (= (and b!7406420 ((_ is Cons!71836) (t!386519 (exprs!8829 setElem!56128)))) b!7406560))

(declare-fun b!7406564 () Bool)

(declare-fun e!4429835 () Bool)

(declare-fun tp!2118720 () Bool)

(declare-fun tp!2118718 () Bool)

(assert (=> b!7406564 (= e!4429835 (and tp!2118720 tp!2118718))))

(assert (=> b!7406426 (= tp!2118670 e!4429835)))

(declare-fun b!7406563 () Bool)

(declare-fun tp!2118721 () Bool)

(assert (=> b!7406563 (= e!4429835 tp!2118721)))

(declare-fun b!7406562 () Bool)

(declare-fun tp!2118722 () Bool)

(declare-fun tp!2118719 () Bool)

(assert (=> b!7406562 (= e!4429835 (and tp!2118722 tp!2118719))))

(declare-fun b!7406561 () Bool)

(assert (=> b!7406561 (= e!4429835 tp_is_empty!49041)))

(assert (= (and b!7406426 ((_ is ElementMatch!19389) (h!78284 (exprs!8829 c!10532)))) b!7406561))

(assert (= (and b!7406426 ((_ is Concat!28234) (h!78284 (exprs!8829 c!10532)))) b!7406562))

(assert (= (and b!7406426 ((_ is Star!19389) (h!78284 (exprs!8829 c!10532)))) b!7406563))

(assert (= (and b!7406426 ((_ is Union!19389) (h!78284 (exprs!8829 c!10532)))) b!7406564))

(declare-fun b!7406565 () Bool)

(declare-fun e!4429836 () Bool)

(declare-fun tp!2118723 () Bool)

(declare-fun tp!2118724 () Bool)

(assert (=> b!7406565 (= e!4429836 (and tp!2118723 tp!2118724))))

(assert (=> b!7406426 (= tp!2118671 e!4429836)))

(assert (= (and b!7406426 ((_ is Cons!71836) (t!386519 (exprs!8829 c!10532)))) b!7406565))

(declare-fun b!7406566 () Bool)

(declare-fun e!4429837 () Bool)

(declare-fun tp!2118725 () Bool)

(declare-fun tp!2118726 () Bool)

(assert (=> b!7406566 (= e!4429837 (and tp!2118725 tp!2118726))))

(assert (=> b!7406425 (= tp!2118668 e!4429837)))

(assert (= (and b!7406425 ((_ is Cons!71836) (exprs!8829 setElem!56134))) b!7406566))

(declare-fun b!7406567 () Bool)

(declare-fun e!4429838 () Bool)

(declare-fun tp!2118727 () Bool)

(assert (=> b!7406567 (= e!4429838 (and tp_is_empty!49041 tp!2118727))))

(assert (=> b!7406415 (= tp!2118657 e!4429838)))

(assert (= (and b!7406415 ((_ is Cons!71837) (t!386520 (t!386520 s!7927)))) b!7406567))

(declare-fun condSetEmpty!56136 () Bool)

(assert (=> setNonEmpty!56134 (= condSetEmpty!56136 (= setRest!56134 ((as const (Array Context!16658 Bool)) false)))))

(declare-fun setRes!56136 () Bool)

(assert (=> setNonEmpty!56134 (= tp!2118669 setRes!56136)))

(declare-fun setIsEmpty!56136 () Bool)

(assert (=> setIsEmpty!56136 setRes!56136))

(declare-fun setElem!56136 () Context!16658)

(declare-fun e!4429839 () Bool)

(declare-fun tp!2118729 () Bool)

(declare-fun setNonEmpty!56136 () Bool)

(assert (=> setNonEmpty!56136 (= setRes!56136 (and tp!2118729 (inv!91833 setElem!56136) e!4429839))))

(declare-fun setRest!56136 () (InoxSet Context!16658))

(assert (=> setNonEmpty!56136 (= setRest!56134 ((_ map or) (store ((as const (Array Context!16658 Bool)) false) setElem!56136 true) setRest!56136))))

(declare-fun b!7406568 () Bool)

(declare-fun tp!2118728 () Bool)

(assert (=> b!7406568 (= e!4429839 tp!2118728)))

(assert (= (and setNonEmpty!56134 condSetEmpty!56136) setIsEmpty!56136))

(assert (= (and setNonEmpty!56134 (not condSetEmpty!56136)) setNonEmpty!56136))

(assert (= setNonEmpty!56136 b!7406568))

(declare-fun m!8042182 () Bool)

(assert (=> setNonEmpty!56136 m!8042182))

(declare-fun b_lambda!286121 () Bool)

(assert (= b_lambda!286107 (or d!2290310 b_lambda!286121)))

(declare-fun bs!1923813 () Bool)

(declare-fun d!2290352 () Bool)

(assert (= bs!1923813 (and d!2290352 d!2290310)))

(declare-fun validRegex!9952 (Regex!19389) Bool)

(assert (=> bs!1923813 (= (dynLambda!29610 lambda!459397 (h!78284 (exprs!8829 c!10532))) (validRegex!9952 (h!78284 (exprs!8829 c!10532))))))

(declare-fun m!8042184 () Bool)

(assert (=> bs!1923813 m!8042184))

(assert (=> b!7406482 d!2290352))

(declare-fun b_lambda!286123 () Bool)

(assert (= b_lambda!286103 (or d!2290296 b_lambda!286123)))

(declare-fun bs!1923814 () Bool)

(declare-fun d!2290354 () Bool)

(assert (= bs!1923814 (and d!2290354 d!2290296)))

(assert (=> bs!1923814 (= (dynLambda!29610 lambda!459396 (h!78284 (exprs!8829 setElem!56128))) (validRegex!9952 (h!78284 (exprs!8829 setElem!56128))))))

(declare-fun m!8042186 () Bool)

(assert (=> bs!1923814 m!8042186))

(assert (=> b!7406469 d!2290354))

(declare-fun b_lambda!286125 () Bool)

(assert (= b_lambda!286105 (or d!2290312 b_lambda!286125)))

(declare-fun bs!1923815 () Bool)

(declare-fun d!2290356 () Bool)

(assert (= bs!1923815 (and d!2290356 d!2290312)))

(assert (=> bs!1923815 (= (dynLambda!29610 lambda!459398 (h!78284 (exprs!8829 (Context!16659 Nil!71836)))) (validRegex!9952 (h!78284 (exprs!8829 (Context!16659 Nil!71836)))))))

(declare-fun m!8042188 () Bool)

(assert (=> bs!1923815 m!8042188))

(assert (=> b!7406471 d!2290356))

(check-sat (not b!7406562) (not b!7406476) (not b_lambda!286123) tp_is_empty!49041 (not bm!681860) (not b!7406560) (not b!7406557) (not b!7406483) (not setNonEmpty!56136) (not b!7406540) (not d!2290330) (not b!7406559) (not bm!681877) (not d!2290322) (not b!7406566) (not b!7406563) (not bs!1923813) (not b!7406564) (not b_lambda!286121) (not b!7406470) (not b!7406568) (not b!7406567) (not b!7406477) (not bm!681875) (not b!7406558) (not b_lambda!286125) (not bs!1923815) (not b!7406565) (not bm!681874) (not b!7406472) (not bs!1923814))
(check-sat)

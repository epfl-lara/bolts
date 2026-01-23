; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!721650 () Bool)

(assert start!721650)

(declare-fun b!7408557 () Bool)

(assert (=> b!7408557 true))

(declare-fun b!7408552 () Bool)

(assert (=> b!7408552 true))

(declare-fun lambda!459695 () Int)

(declare-fun lambda!459694 () Int)

(assert (=> b!7408552 (not (= lambda!459695 lambda!459694))))

(assert (=> b!7408552 true))

(assert (=> b!7408552 true))

(declare-fun tp!2119636 () Bool)

(declare-fun setNonEmpty!56237 () Bool)

(declare-fun e!4430974 () Bool)

(declare-datatypes ((C!39084 0))(
  ( (C!39085 (val!29916 Int)) )
))
(declare-datatypes ((Regex!19405 0))(
  ( (ElementMatch!19405 (c!1375091 C!39084)) (Concat!28250 (regOne!39322 Regex!19405) (regTwo!39322 Regex!19405)) (EmptyExpr!19405) (Star!19405 (reg!19734 Regex!19405)) (EmptyLang!19405) (Union!19405 (regOne!39323 Regex!19405) (regTwo!39323 Regex!19405)) )
))
(declare-datatypes ((List!72002 0))(
  ( (Nil!71878) (Cons!71878 (h!78326 Regex!19405) (t!386561 List!72002)) )
))
(declare-datatypes ((Context!16690 0))(
  ( (Context!16691 (exprs!8845 List!72002)) )
))
(declare-fun setElem!56237 () Context!16690)

(declare-fun setRes!56237 () Bool)

(declare-fun inv!91873 (Context!16690) Bool)

(assert (=> setNonEmpty!56237 (= setRes!56237 (and tp!2119636 (inv!91873 setElem!56237) e!4430974))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3451 () (InoxSet Context!16690))

(declare-fun setRest!56237 () (InoxSet Context!16690))

(assert (=> setNonEmpty!56237 (= z!3451 ((_ map or) (store ((as const (Array Context!16690 Bool)) false) setElem!56237 true) setRest!56237))))

(declare-fun res!2982605 () Bool)

(declare-fun e!4430968 () Bool)

(assert (=> start!721650 (=> (not res!2982605) (not e!4430968))))

(declare-fun c!10532 () Context!16690)

(assert (=> start!721650 (= res!2982605 (= z!3451 (store ((as const (Array Context!16690 Bool)) false) c!10532 true)))))

(assert (=> start!721650 e!4430968))

(declare-fun condSetEmpty!56237 () Bool)

(assert (=> start!721650 (= condSetEmpty!56237 (= z!3451 ((as const (Array Context!16690 Bool)) false)))))

(assert (=> start!721650 setRes!56237))

(declare-fun e!4430969 () Bool)

(assert (=> start!721650 (and (inv!91873 c!10532) e!4430969)))

(declare-fun tp_is_empty!49073 () Bool)

(assert (=> start!721650 tp_is_empty!49073))

(declare-fun e!4430970 () Bool)

(assert (=> start!721650 e!4430970))

(declare-fun b!7408549 () Bool)

(declare-fun res!2982600 () Bool)

(assert (=> b!7408549 (=> (not res!2982600) (not e!4430968))))

(declare-datatypes ((List!72003 0))(
  ( (Nil!71879) (Cons!71879 (h!78327 C!39084) (t!386562 List!72003)) )
))
(declare-fun s!7927 () List!72003)

(declare-fun a!2228 () C!39084)

(get-info :version)

(assert (=> b!7408549 (= res!2982600 (and ((_ is Cons!71879) s!7927) (= (h!78327 s!7927) a!2228)))))

(declare-fun b!7408550 () Bool)

(declare-fun tp!2119638 () Bool)

(assert (=> b!7408550 (= e!4430969 tp!2119638)))

(declare-fun b!7408551 () Bool)

(declare-fun res!2982604 () Bool)

(assert (=> b!7408551 (=> (not res!2982604) (not e!4430968))))

(declare-fun isEmpty!41045 (List!72002) Bool)

(assert (=> b!7408551 (= res!2982604 (not (isEmpty!41045 (exprs!8845 c!10532))))))

(declare-fun setIsEmpty!56237 () Bool)

(assert (=> setIsEmpty!56237 setRes!56237))

(declare-datatypes ((Unit!165684 0))(
  ( (Unit!165685) )
))
(declare-fun e!4430972 () Unit!165684)

(declare-fun Unit!165686 () Unit!165684)

(assert (=> b!7408552 (= e!4430972 Unit!165686)))

(declare-fun lt!2618484 () Context!16690)

(declare-fun lt!2618486 () (InoxSet Context!16690))

(declare-fun getWitness!2444 ((InoxSet Context!16690) Int) Context!16690)

(assert (=> b!7408552 (= lt!2618484 (getWitness!2444 lt!2618486 lambda!459694))))

(declare-fun lt!2618481 () Context!16690)

(declare-fun lambda!459693 () Int)

(declare-fun flatMapPost!212 ((InoxSet Context!16690) Int Context!16690) Context!16690)

(assert (=> b!7408552 (= (flatMapPost!212 z!3451 lambda!459693 lt!2618484) lt!2618481)))

(declare-fun lt!2618483 () Context!16690)

(assert (=> b!7408552 (= lt!2618483 (getWitness!2444 z!3451 lambda!459695))))

(assert (=> b!7408552 false))

(declare-fun b!7408553 () Bool)

(declare-fun res!2982602 () Bool)

(assert (=> b!7408553 (=> (not res!2982602) (not e!4430968))))

(declare-fun tail!14812 (List!72002) List!72002)

(assert (=> b!7408553 (= res!2982602 (isEmpty!41045 (tail!14812 (exprs!8845 c!10532))))))

(declare-fun b!7408554 () Bool)

(declare-fun e!4430975 () Bool)

(declare-fun tp!2119637 () Bool)

(assert (=> b!7408554 (= e!4430975 tp!2119637)))

(declare-fun b!7408555 () Bool)

(declare-fun Unit!165687 () Unit!165684)

(assert (=> b!7408555 (= e!4430972 Unit!165687)))

(declare-fun b!7408556 () Bool)

(declare-fun e!4430973 () Bool)

(assert (=> b!7408556 (= e!4430968 e!4430973)))

(declare-fun res!2982603 () Bool)

(assert (=> b!7408556 (=> (not res!2982603) (not e!4430973))))

(declare-fun lt!2618489 () C!39084)

(declare-fun lt!2618482 () (InoxSet Context!16690))

(declare-fun derivationStepZipperUp!2809 (Context!16690 C!39084) (InoxSet Context!16690))

(assert (=> b!7408556 (= res!2982603 (= (derivationStepZipperUp!2809 c!10532 lt!2618489) lt!2618482))))

(declare-fun lt!2618487 () Context!16690)

(assert (=> b!7408556 (= lt!2618482 (store ((as const (Array Context!16690 Bool)) false) lt!2618487 true))))

(assert (=> b!7408556 (= lt!2618487 (Context!16691 Nil!71878))))

(declare-fun derivationStepZipper!3679 ((InoxSet Context!16690) C!39084) (InoxSet Context!16690))

(assert (=> b!7408556 (= lt!2618486 (derivationStepZipper!3679 z!3451 lt!2618489))))

(declare-fun head!15196 (List!72003) C!39084)

(assert (=> b!7408556 (= lt!2618489 (head!15196 s!7927))))

(declare-fun e!4430971 () Bool)

(assert (=> b!7408557 (= e!4430973 (not e!4430971))))

(declare-fun res!2982606 () Bool)

(assert (=> b!7408557 (=> res!2982606 e!4430971)))

(assert (=> b!7408557 (= res!2982606 (not (select lt!2618486 lt!2618487)))))

(assert (=> b!7408557 (= (flatMapPost!212 z!3451 lambda!459693 lt!2618487) lt!2618481)))

(declare-fun empty!3567 () Context!16690)

(assert (=> b!7408557 (= lt!2618481 empty!3567)))

(assert (=> b!7408557 true))

(assert (=> b!7408557 (and (inv!91873 empty!3567) e!4430975)))

(declare-fun b!7408558 () Bool)

(declare-fun tp!2119640 () Bool)

(assert (=> b!7408558 (= e!4430974 tp!2119640)))

(declare-fun b!7408559 () Bool)

(declare-fun tp!2119639 () Bool)

(assert (=> b!7408559 (= e!4430970 (and tp_is_empty!49073 tp!2119639))))

(declare-fun b!7408560 () Bool)

(declare-fun lt!2618485 () Bool)

(assert (=> b!7408560 (= e!4430971 lt!2618485)))

(declare-fun lt!2618488 () Unit!165684)

(assert (=> b!7408560 (= lt!2618488 e!4430972)))

(declare-fun c!1375090 () Bool)

(assert (=> b!7408560 (= c!1375090 (not lt!2618485))))

(assert (=> b!7408560 (= lt!2618485 (= lt!2618486 lt!2618482))))

(declare-fun b!7408561 () Bool)

(declare-fun res!2982601 () Bool)

(assert (=> b!7408561 (=> (not res!2982601) (not e!4430968))))

(declare-fun head!15197 (List!72002) Regex!19405)

(assert (=> b!7408561 (= res!2982601 (= (head!15197 (exprs!8845 c!10532)) (ElementMatch!19405 a!2228)))))

(assert (= (and start!721650 res!2982605) b!7408551))

(assert (= (and b!7408551 res!2982604) b!7408561))

(assert (= (and b!7408561 res!2982601) b!7408553))

(assert (= (and b!7408553 res!2982602) b!7408549))

(assert (= (and b!7408549 res!2982600) b!7408556))

(assert (= (and b!7408556 res!2982603) b!7408557))

(assert (= b!7408557 b!7408554))

(assert (= (and b!7408557 (not res!2982606)) b!7408560))

(assert (= (and b!7408560 c!1375090) b!7408552))

(assert (= (and b!7408560 (not c!1375090)) b!7408555))

(assert (= (and start!721650 condSetEmpty!56237) setIsEmpty!56237))

(assert (= (and start!721650 (not condSetEmpty!56237)) setNonEmpty!56237))

(assert (= setNonEmpty!56237 b!7408558))

(assert (= start!721650 b!7408550))

(assert (= (and start!721650 ((_ is Cons!71879) s!7927)) b!7408559))

(declare-fun m!8043798 () Bool)

(assert (=> b!7408551 m!8043798))

(declare-fun m!8043800 () Bool)

(assert (=> setNonEmpty!56237 m!8043800))

(declare-fun m!8043802 () Bool)

(assert (=> b!7408553 m!8043802))

(assert (=> b!7408553 m!8043802))

(declare-fun m!8043804 () Bool)

(assert (=> b!7408553 m!8043804))

(declare-fun m!8043806 () Bool)

(assert (=> start!721650 m!8043806))

(declare-fun m!8043808 () Bool)

(assert (=> start!721650 m!8043808))

(declare-fun m!8043810 () Bool)

(assert (=> b!7408556 m!8043810))

(declare-fun m!8043812 () Bool)

(assert (=> b!7408556 m!8043812))

(declare-fun m!8043814 () Bool)

(assert (=> b!7408556 m!8043814))

(declare-fun m!8043816 () Bool)

(assert (=> b!7408556 m!8043816))

(declare-fun m!8043818 () Bool)

(assert (=> b!7408552 m!8043818))

(declare-fun m!8043820 () Bool)

(assert (=> b!7408552 m!8043820))

(declare-fun m!8043822 () Bool)

(assert (=> b!7408552 m!8043822))

(declare-fun m!8043824 () Bool)

(assert (=> b!7408557 m!8043824))

(declare-fun m!8043826 () Bool)

(assert (=> b!7408557 m!8043826))

(declare-fun m!8043828 () Bool)

(assert (=> b!7408557 m!8043828))

(declare-fun m!8043830 () Bool)

(assert (=> b!7408561 m!8043830))

(check-sat (not b!7408554) tp_is_empty!49073 (not start!721650) (not b!7408558) (not b!7408551) (not b!7408552) (not setNonEmpty!56237) (not b!7408556) (not b!7408550) (not b!7408557) (not b!7408561) (not b!7408553) (not b!7408559))
(check-sat)

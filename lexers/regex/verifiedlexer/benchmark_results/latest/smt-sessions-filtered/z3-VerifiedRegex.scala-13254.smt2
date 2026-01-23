; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!721196 () Bool)

(assert start!721196)

(declare-fun b!7406110 () Bool)

(assert (=> b!7406110 true))

(declare-fun b!7406111 () Bool)

(declare-fun m!8041866 () Bool)

(assert (=> b!7406111 m!8041866))

(assert (=> b!7406111 true))

(assert (=> b!7406111 true))

(declare-fun b!7406100 () Bool)

(declare-fun e!4429580 () Bool)

(declare-fun e!4429577 () Bool)

(assert (=> b!7406100 (= e!4429580 e!4429577)))

(declare-fun res!2981854 () Bool)

(assert (=> b!7406100 (=> (not res!2981854) (not e!4429577))))

(declare-datatypes ((C!39040 0))(
  ( (C!39041 (val!29894 Int)) )
))
(declare-datatypes ((Regex!19383 0))(
  ( (ElementMatch!19383 (c!1374652 C!39040)) (Concat!28228 (regOne!39278 Regex!19383) (regTwo!39278 Regex!19383)) (EmptyExpr!19383) (Star!19383 (reg!19712 Regex!19383)) (EmptyLang!19383) (Union!19383 (regOne!39279 Regex!19383) (regTwo!39279 Regex!19383)) )
))
(declare-datatypes ((List!71947 0))(
  ( (Nil!71823) (Cons!71823 (h!78271 Regex!19383) (t!386506 List!71947)) )
))
(declare-datatypes ((Context!16646 0))(
  ( (Context!16647 (exprs!8823 List!71947)) )
))
(declare-fun c!10532 () Context!16646)

(declare-datatypes ((List!71948 0))(
  ( (Nil!71824) (Cons!71824 (h!78272 C!39040) (t!386507 List!71948)) )
))
(declare-fun s!7927 () List!71948)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperUp!2789 (Context!16646 C!39040) (InoxSet Context!16646))

(assert (=> b!7406100 (= res!2981854 (= (derivationStepZipperUp!2789 c!10532 (h!78272 s!7927)) ((as const (Array Context!16646 Bool)) false)))))

(declare-fun lt!2618128 () (InoxSet Context!16646))

(declare-fun z!3451 () (InoxSet Context!16646))

(declare-fun derivationStepZipper!3665 ((InoxSet Context!16646) C!39040) (InoxSet Context!16646))

(assert (=> b!7406100 (= lt!2618128 (derivationStepZipper!3665 z!3451 (h!78272 s!7927)))))

(declare-fun res!2981856 () Bool)

(assert (=> start!721196 (=> (not res!2981856) (not e!4429580))))

(assert (=> start!721196 (= res!2981856 (= z!3451 (store ((as const (Array Context!16646 Bool)) false) c!10532 true)))))

(assert (=> start!721196 e!4429580))

(declare-fun condSetEmpty!56102 () Bool)

(assert (=> start!721196 (= condSetEmpty!56102 (= z!3451 ((as const (Array Context!16646 Bool)) false)))))

(declare-fun setRes!56102 () Bool)

(assert (=> start!721196 setRes!56102))

(declare-fun e!4429576 () Bool)

(declare-fun inv!91818 (Context!16646) Bool)

(assert (=> start!721196 (and (inv!91818 c!10532) e!4429576)))

(declare-fun tp_is_empty!49029 () Bool)

(assert (=> start!721196 tp_is_empty!49029))

(declare-fun e!4429578 () Bool)

(assert (=> start!721196 e!4429578))

(declare-fun setElem!56102 () Context!16646)

(declare-fun tp!2118480 () Bool)

(declare-fun setNonEmpty!56102 () Bool)

(declare-fun e!4429575 () Bool)

(assert (=> setNonEmpty!56102 (= setRes!56102 (and tp!2118480 (inv!91818 setElem!56102) e!4429575))))

(declare-fun setRest!56102 () (InoxSet Context!16646))

(assert (=> setNonEmpty!56102 (= z!3451 ((_ map or) (store ((as const (Array Context!16646 Bool)) false) setElem!56102 true) setRest!56102))))

(declare-fun b!7406101 () Bool)

(declare-fun res!2981855 () Bool)

(declare-fun e!4429579 () Bool)

(assert (=> b!7406101 (=> (not res!2981855) (not e!4429579))))

(declare-fun lt!2618127 () Context!16646)

(assert (=> b!7406101 (= res!2981855 (select lt!2618128 lt!2618127))))

(declare-fun b!7406102 () Bool)

(declare-fun tp!2118478 () Bool)

(assert (=> b!7406102 (= e!4429575 tp!2118478)))

(declare-fun b!7406103 () Bool)

(declare-fun res!2981857 () Bool)

(assert (=> b!7406103 (=> (not res!2981857) (not e!4429577))))

(assert (=> b!7406103 (= res!2981857 (not (= lt!2618128 ((as const (Array Context!16646 Bool)) false))))))

(declare-fun b!7406104 () Bool)

(declare-fun e!4429581 () Bool)

(declare-fun tp!2118481 () Bool)

(assert (=> b!7406104 (= e!4429581 tp!2118481)))

(declare-fun setIsEmpty!56102 () Bool)

(assert (=> setIsEmpty!56102 setRes!56102))

(declare-fun b!7406105 () Bool)

(declare-fun tp!2118477 () Bool)

(assert (=> b!7406105 (= e!4429576 tp!2118477)))

(declare-fun b!7406106 () Bool)

(declare-fun res!2981861 () Bool)

(assert (=> b!7406106 (=> (not res!2981861) (not e!4429580))))

(declare-fun a!2228 () C!39040)

(declare-fun head!15152 (List!71947) Regex!19383)

(assert (=> b!7406106 (= res!2981861 (= (head!15152 (exprs!8823 c!10532)) (ElementMatch!19383 a!2228)))))

(declare-fun b!7406107 () Bool)

(declare-fun tp!2118479 () Bool)

(assert (=> b!7406107 (= e!4429578 (and tp_is_empty!49029 tp!2118479))))

(declare-fun b!7406108 () Bool)

(declare-fun res!2981858 () Bool)

(assert (=> b!7406108 (=> (not res!2981858) (not e!4429580))))

(declare-fun isEmpty!41023 (List!71947) Bool)

(assert (=> b!7406108 (= res!2981858 (not (isEmpty!41023 (exprs!8823 c!10532))))))

(declare-fun b!7406109 () Bool)

(declare-fun res!2981860 () Bool)

(assert (=> b!7406109 (=> (not res!2981860) (not e!4429580))))

(get-info :version)

(assert (=> b!7406109 (= res!2981860 (and (or (not ((_ is Cons!71824) s!7927)) (not (= (h!78272 s!7927) a!2228))) ((_ is Cons!71824) s!7927) (not (= (h!78272 s!7927) a!2228))))))

(assert (=> b!7406110 (= e!4429577 e!4429579)))

(declare-fun res!2981859 () Bool)

(assert (=> b!7406110 (=> (not res!2981859) (not e!4429579))))

(declare-fun lambda!459369 () Int)

(declare-fun flatMap!3193 ((InoxSet Context!16646) Int) (InoxSet Context!16646))

(assert (=> b!7406110 (= res!2981859 (select (flatMap!3193 z!3451 lambda!459369) lt!2618127))))

(declare-datatypes ((List!71949 0))(
  ( (Nil!71825) (Cons!71825 (h!78273 Context!16646) (t!386508 List!71949)) )
))
(declare-fun head!15153 (List!71949) Context!16646)

(declare-fun toList!11744 ((InoxSet Context!16646)) List!71949)

(assert (=> b!7406110 (= lt!2618127 (head!15153 (toList!11744 lt!2618128)))))

(assert (=> b!7406111 (= e!4429579 (not true))))

(declare-fun lt!2618129 () Bool)

(declare-fun lambda!459370 () Int)

(declare-fun exists!4747 ((InoxSet Context!16646) Int) Bool)

(assert (=> b!7406111 (= lt!2618129 (exists!4747 z!3451 lambda!459370))))

(declare-fun empty!3503 () Context!16646)

(declare-fun flatMapPost!196 ((InoxSet Context!16646) Int Context!16646) Context!16646)

(assert (=> b!7406111 (= (flatMapPost!196 z!3451 lambda!459369 lt!2618127) empty!3503)))

(assert (=> b!7406111 true))

(assert (=> b!7406111 (and (inv!91818 empty!3503) e!4429581)))

(declare-fun b!7406112 () Bool)

(declare-fun res!2981862 () Bool)

(assert (=> b!7406112 (=> (not res!2981862) (not e!4429580))))

(declare-fun tail!14790 (List!71947) List!71947)

(assert (=> b!7406112 (= res!2981862 (isEmpty!41023 (tail!14790 (exprs!8823 c!10532))))))

(assert (= (and start!721196 res!2981856) b!7406108))

(assert (= (and b!7406108 res!2981858) b!7406106))

(assert (= (and b!7406106 res!2981861) b!7406112))

(assert (= (and b!7406112 res!2981862) b!7406109))

(assert (= (and b!7406109 res!2981860) b!7406100))

(assert (= (and b!7406100 res!2981854) b!7406103))

(assert (= (and b!7406103 res!2981857) b!7406110))

(assert (= (and b!7406110 res!2981859) b!7406101))

(assert (= (and b!7406101 res!2981855) b!7406111))

(assert (= b!7406111 b!7406104))

(assert (= (and start!721196 condSetEmpty!56102) setIsEmpty!56102))

(assert (= (and start!721196 (not condSetEmpty!56102)) setNonEmpty!56102))

(assert (= setNonEmpty!56102 b!7406102))

(assert (= start!721196 b!7406105))

(assert (= (and start!721196 ((_ is Cons!71824) s!7927)) b!7406107))

(declare-fun m!8041868 () Bool)

(assert (=> b!7406111 m!8041868))

(declare-fun m!8041870 () Bool)

(assert (=> b!7406111 m!8041870))

(declare-fun m!8041872 () Bool)

(assert (=> b!7406111 m!8041872))

(declare-fun m!8041874 () Bool)

(assert (=> b!7406100 m!8041874))

(declare-fun m!8041876 () Bool)

(assert (=> b!7406100 m!8041876))

(declare-fun m!8041878 () Bool)

(assert (=> b!7406106 m!8041878))

(declare-fun m!8041880 () Bool)

(assert (=> b!7406108 m!8041880))

(declare-fun m!8041882 () Bool)

(assert (=> b!7406101 m!8041882))

(declare-fun m!8041884 () Bool)

(assert (=> b!7406110 m!8041884))

(declare-fun m!8041886 () Bool)

(assert (=> b!7406110 m!8041886))

(declare-fun m!8041888 () Bool)

(assert (=> b!7406110 m!8041888))

(assert (=> b!7406110 m!8041888))

(declare-fun m!8041890 () Bool)

(assert (=> b!7406110 m!8041890))

(declare-fun m!8041892 () Bool)

(assert (=> start!721196 m!8041892))

(declare-fun m!8041894 () Bool)

(assert (=> start!721196 m!8041894))

(declare-fun m!8041896 () Bool)

(assert (=> setNonEmpty!56102 m!8041896))

(declare-fun m!8041898 () Bool)

(assert (=> b!7406112 m!8041898))

(assert (=> b!7406112 m!8041898))

(declare-fun m!8041900 () Bool)

(assert (=> b!7406112 m!8041900))

(check-sat (not b!7406112) (not b!7406111) (not setNonEmpty!56102) (not b!7406100) (not b!7406108) (not b!7406107) (not b!7406102) (not start!721196) (not b!7406105) (not b!7406110) (not b!7406104) tp_is_empty!49029 (not b!7406106))
(check-sat)

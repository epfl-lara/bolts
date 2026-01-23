; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545886 () Bool)

(assert start!545886)

(declare-fun b_free!133529 () Bool)

(declare-fun b_next!134319 () Bool)

(assert (=> start!545886 (= b_free!133529 (not b_next!134319))))

(declare-fun tp!1447809 () Bool)

(declare-fun b_and!350497 () Bool)

(assert (=> start!545886 (= tp!1447809 b_and!350497)))

(declare-fun b!5162238 () Bool)

(declare-datatypes ((A!479 0))(
  ( (A!480 (val!24326 Int)) )
))
(declare-datatypes ((List!59992 0))(
  ( (Nil!59868) (Cons!59868 (h!66316 A!479) (t!373077 List!59992)) )
))
(declare-fun lt!2122416 () List!59992)

(declare-fun lt!2122417 () List!59992)

(declare-fun p!1744 () Int)

(declare-fun e!3216402 () Bool)

(declare-fun forall!14046 (List!59992 Int) Bool)

(declare-fun ++!13080 (List!59992 List!59992) List!59992)

(assert (=> b!5162238 (= e!3216402 (not (forall!14046 (++!13080 lt!2122416 lt!2122417) p!1744)))))

(declare-datatypes ((Unit!151295 0))(
  ( (Unit!151296) )
))
(declare-fun lt!2122415 () Unit!151295)

(declare-fun lemmaConcatPreservesForall!144 (List!59992 List!59992 Int) Unit!151295)

(assert (=> b!5162238 (= lt!2122415 (lemmaConcatPreservesForall!144 lt!2122416 lt!2122417 p!1744))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s2!450 () (InoxSet A!479))

(declare-fun toList!8421 ((InoxSet A!479)) List!59992)

(assert (=> b!5162238 (= lt!2122417 (toList!8421 s2!450))))

(declare-fun s1!479 () (InoxSet A!479))

(assert (=> b!5162238 (= lt!2122416 (toList!8421 s1!479))))

(declare-fun setNonEmpty!31311 () Bool)

(declare-fun setRes!31311 () Bool)

(declare-fun tp!1447807 () Bool)

(declare-fun tp_is_empty!38231 () Bool)

(assert (=> setNonEmpty!31311 (= setRes!31311 (and tp!1447807 tp_is_empty!38231))))

(declare-fun setElem!31311 () A!479)

(declare-fun setRest!31312 () (InoxSet A!479))

(assert (=> setNonEmpty!31311 (= s2!450 ((_ map or) (store ((as const (Array A!479 Bool)) false) setElem!31311 true) setRest!31312))))

(declare-fun setIsEmpty!31311 () Bool)

(assert (=> setIsEmpty!31311 setRes!31311))

(declare-fun setIsEmpty!31312 () Bool)

(declare-fun setRes!31312 () Bool)

(assert (=> setIsEmpty!31312 setRes!31312))

(declare-fun setNonEmpty!31312 () Bool)

(declare-fun tp!1447808 () Bool)

(assert (=> setNonEmpty!31312 (= setRes!31312 (and tp!1447808 tp_is_empty!38231))))

(declare-fun setElem!31312 () A!479)

(declare-fun setRest!31311 () (InoxSet A!479))

(assert (=> setNonEmpty!31312 (= s1!479 ((_ map or) (store ((as const (Array A!479 Bool)) false) setElem!31312 true) setRest!31311))))

(declare-fun b!5162239 () Bool)

(declare-fun res!2194623 () Bool)

(assert (=> b!5162239 (=> (not res!2194623) (not e!3216402))))

(declare-fun forall!14047 ((InoxSet A!479) Int) Bool)

(assert (=> b!5162239 (= res!2194623 (forall!14047 s2!450 p!1744))))

(declare-fun res!2194624 () Bool)

(assert (=> start!545886 (=> (not res!2194624) (not e!3216402))))

(assert (=> start!545886 (= res!2194624 (forall!14047 s1!479 p!1744))))

(assert (=> start!545886 e!3216402))

(declare-fun condSetEmpty!31311 () Bool)

(assert (=> start!545886 (= condSetEmpty!31311 (= s1!479 ((as const (Array A!479 Bool)) false)))))

(assert (=> start!545886 setRes!31312))

(assert (=> start!545886 tp!1447809))

(declare-fun condSetEmpty!31312 () Bool)

(assert (=> start!545886 (= condSetEmpty!31312 (= s2!450 ((as const (Array A!479 Bool)) false)))))

(assert (=> start!545886 setRes!31311))

(assert (= (and start!545886 res!2194624) b!5162239))

(assert (= (and b!5162239 res!2194623) b!5162238))

(assert (= (and start!545886 condSetEmpty!31311) setIsEmpty!31312))

(assert (= (and start!545886 (not condSetEmpty!31311)) setNonEmpty!31312))

(assert (= (and start!545886 condSetEmpty!31312) setIsEmpty!31311))

(assert (= (and start!545886 (not condSetEmpty!31312)) setNonEmpty!31311))

(declare-fun m!6212746 () Bool)

(assert (=> b!5162238 m!6212746))

(declare-fun m!6212748 () Bool)

(assert (=> b!5162238 m!6212748))

(declare-fun m!6212750 () Bool)

(assert (=> b!5162238 m!6212750))

(assert (=> b!5162238 m!6212748))

(declare-fun m!6212752 () Bool)

(assert (=> b!5162238 m!6212752))

(declare-fun m!6212754 () Bool)

(assert (=> b!5162238 m!6212754))

(declare-fun m!6212756 () Bool)

(assert (=> b!5162239 m!6212756))

(declare-fun m!6212758 () Bool)

(assert (=> start!545886 m!6212758))

(check-sat (not b!5162238) (not start!545886) (not setNonEmpty!31311) (not b_next!134319) (not b!5162239) b_and!350497 tp_is_empty!38231 (not setNonEmpty!31312))
(check-sat b_and!350497 (not b_next!134319))
(get-model)

(declare-fun d!1665826 () Bool)

(declare-fun lt!2122425 () Bool)

(assert (=> d!1665826 (= lt!2122425 (forall!14046 (toList!8421 s1!479) p!1744))))

(declare-fun choose!38152 ((InoxSet A!479) Int) Bool)

(assert (=> d!1665826 (= lt!2122425 (choose!38152 s1!479 p!1744))))

(assert (=> d!1665826 (= (forall!14047 s1!479 p!1744) lt!2122425)))

(declare-fun bs!1202631 () Bool)

(assert (= bs!1202631 d!1665826))

(assert (=> bs!1202631 m!6212750))

(assert (=> bs!1202631 m!6212750))

(declare-fun m!6212766 () Bool)

(assert (=> bs!1202631 m!6212766))

(declare-fun m!6212768 () Bool)

(assert (=> bs!1202631 m!6212768))

(assert (=> start!545886 d!1665826))

(declare-fun b!5162265 () Bool)

(declare-fun e!3216417 () List!59992)

(assert (=> b!5162265 (= e!3216417 (Cons!59868 (h!66316 lt!2122416) (++!13080 (t!373077 lt!2122416) lt!2122417)))))

(declare-fun d!1665828 () Bool)

(declare-fun e!3216418 () Bool)

(assert (=> d!1665828 e!3216418))

(declare-fun res!2194639 () Bool)

(assert (=> d!1665828 (=> (not res!2194639) (not e!3216418))))

(declare-fun lt!2122433 () List!59992)

(declare-fun content!10601 (List!59992) (InoxSet A!479))

(assert (=> d!1665828 (= res!2194639 (= (content!10601 lt!2122433) ((_ map or) (content!10601 lt!2122416) (content!10601 lt!2122417))))))

(assert (=> d!1665828 (= lt!2122433 e!3216417)))

(declare-fun c!888156 () Bool)

(get-info :version)

(assert (=> d!1665828 (= c!888156 ((_ is Nil!59868) lt!2122416))))

(assert (=> d!1665828 (= (++!13080 lt!2122416 lt!2122417) lt!2122433)))

(declare-fun b!5162266 () Bool)

(declare-fun res!2194640 () Bool)

(assert (=> b!5162266 (=> (not res!2194640) (not e!3216418))))

(declare-fun size!39569 (List!59992) Int)

(assert (=> b!5162266 (= res!2194640 (= (size!39569 lt!2122433) (+ (size!39569 lt!2122416) (size!39569 lt!2122417))))))

(declare-fun b!5162264 () Bool)

(assert (=> b!5162264 (= e!3216417 lt!2122417)))

(declare-fun b!5162267 () Bool)

(assert (=> b!5162267 (= e!3216418 (or (not (= lt!2122417 Nil!59868)) (= lt!2122433 lt!2122416)))))

(assert (= (and d!1665828 c!888156) b!5162264))

(assert (= (and d!1665828 (not c!888156)) b!5162265))

(assert (= (and d!1665828 res!2194639) b!5162266))

(assert (= (and b!5162266 res!2194640) b!5162267))

(declare-fun m!6212794 () Bool)

(assert (=> b!5162265 m!6212794))

(declare-fun m!6212796 () Bool)

(assert (=> d!1665828 m!6212796))

(declare-fun m!6212798 () Bool)

(assert (=> d!1665828 m!6212798))

(declare-fun m!6212800 () Bool)

(assert (=> d!1665828 m!6212800))

(declare-fun m!6212802 () Bool)

(assert (=> b!5162266 m!6212802))

(declare-fun m!6212804 () Bool)

(assert (=> b!5162266 m!6212804))

(declare-fun m!6212806 () Bool)

(assert (=> b!5162266 m!6212806))

(assert (=> b!5162238 d!1665828))

(declare-fun d!1665836 () Bool)

(declare-fun e!3216427 () Bool)

(assert (=> d!1665836 e!3216427))

(declare-fun res!2194649 () Bool)

(assert (=> d!1665836 (=> (not res!2194649) (not e!3216427))))

(declare-fun lt!2122436 () List!59992)

(declare-fun noDuplicate!1124 (List!59992) Bool)

(assert (=> d!1665836 (= res!2194649 (noDuplicate!1124 lt!2122436))))

(declare-fun choose!38154 ((InoxSet A!479)) List!59992)

(assert (=> d!1665836 (= lt!2122436 (choose!38154 s2!450))))

(assert (=> d!1665836 (= (toList!8421 s2!450) lt!2122436)))

(declare-fun b!5162276 () Bool)

(assert (=> b!5162276 (= e!3216427 (= (content!10601 lt!2122436) s2!450))))

(assert (= (and d!1665836 res!2194649) b!5162276))

(declare-fun m!6212812 () Bool)

(assert (=> d!1665836 m!6212812))

(declare-fun m!6212814 () Bool)

(assert (=> d!1665836 m!6212814))

(declare-fun m!6212816 () Bool)

(assert (=> b!5162276 m!6212816))

(assert (=> b!5162238 d!1665836))

(declare-fun d!1665840 () Bool)

(assert (=> d!1665840 (forall!14046 (++!13080 lt!2122416 lt!2122417) p!1744)))

(declare-fun lt!2122442 () Unit!151295)

(declare-fun choose!38155 (List!59992 List!59992 Int) Unit!151295)

(assert (=> d!1665840 (= lt!2122442 (choose!38155 lt!2122416 lt!2122417 p!1744))))

(assert (=> d!1665840 (forall!14046 lt!2122416 p!1744)))

(assert (=> d!1665840 (= (lemmaConcatPreservesForall!144 lt!2122416 lt!2122417 p!1744) lt!2122442)))

(declare-fun bs!1202634 () Bool)

(assert (= bs!1202634 d!1665840))

(assert (=> bs!1202634 m!6212748))

(assert (=> bs!1202634 m!6212748))

(assert (=> bs!1202634 m!6212752))

(declare-fun m!6212822 () Bool)

(assert (=> bs!1202634 m!6212822))

(declare-fun m!6212824 () Bool)

(assert (=> bs!1202634 m!6212824))

(assert (=> b!5162238 d!1665840))

(declare-fun d!1665844 () Bool)

(declare-fun res!2194654 () Bool)

(declare-fun e!3216432 () Bool)

(assert (=> d!1665844 (=> res!2194654 e!3216432)))

(assert (=> d!1665844 (= res!2194654 ((_ is Nil!59868) (++!13080 lt!2122416 lt!2122417)))))

(assert (=> d!1665844 (= (forall!14046 (++!13080 lt!2122416 lt!2122417) p!1744) e!3216432)))

(declare-fun b!5162283 () Bool)

(declare-fun e!3216433 () Bool)

(assert (=> b!5162283 (= e!3216432 e!3216433)))

(declare-fun res!2194655 () Bool)

(assert (=> b!5162283 (=> (not res!2194655) (not e!3216433))))

(declare-fun dynLambda!23830 (Int A!479) Bool)

(assert (=> b!5162283 (= res!2194655 (dynLambda!23830 p!1744 (h!66316 (++!13080 lt!2122416 lt!2122417))))))

(declare-fun b!5162284 () Bool)

(assert (=> b!5162284 (= e!3216433 (forall!14046 (t!373077 (++!13080 lt!2122416 lt!2122417)) p!1744))))

(assert (= (and d!1665844 (not res!2194654)) b!5162283))

(assert (= (and b!5162283 res!2194655) b!5162284))

(declare-fun b_lambda!200617 () Bool)

(assert (=> (not b_lambda!200617) (not b!5162283)))

(declare-fun t!373081 () Bool)

(declare-fun tb!261887 () Bool)

(assert (=> (and start!545886 (= p!1744 p!1744) t!373081) tb!261887))

(declare-fun result!330344 () Bool)

(assert (=> tb!261887 (= result!330344 true)))

(assert (=> b!5162283 t!373081))

(declare-fun b_and!350501 () Bool)

(assert (= b_and!350497 (and (=> t!373081 result!330344) b_and!350501)))

(declare-fun m!6212830 () Bool)

(assert (=> b!5162283 m!6212830))

(declare-fun m!6212832 () Bool)

(assert (=> b!5162284 m!6212832))

(assert (=> b!5162238 d!1665844))

(declare-fun d!1665846 () Bool)

(declare-fun e!3216434 () Bool)

(assert (=> d!1665846 e!3216434))

(declare-fun res!2194656 () Bool)

(assert (=> d!1665846 (=> (not res!2194656) (not e!3216434))))

(declare-fun lt!2122444 () List!59992)

(assert (=> d!1665846 (= res!2194656 (noDuplicate!1124 lt!2122444))))

(assert (=> d!1665846 (= lt!2122444 (choose!38154 s1!479))))

(assert (=> d!1665846 (= (toList!8421 s1!479) lt!2122444)))

(declare-fun b!5162285 () Bool)

(assert (=> b!5162285 (= e!3216434 (= (content!10601 lt!2122444) s1!479))))

(assert (= (and d!1665846 res!2194656) b!5162285))

(declare-fun m!6212834 () Bool)

(assert (=> d!1665846 m!6212834))

(declare-fun m!6212836 () Bool)

(assert (=> d!1665846 m!6212836))

(declare-fun m!6212838 () Bool)

(assert (=> b!5162285 m!6212838))

(assert (=> b!5162238 d!1665846))

(declare-fun d!1665848 () Bool)

(declare-fun lt!2122445 () Bool)

(assert (=> d!1665848 (= lt!2122445 (forall!14046 (toList!8421 s2!450) p!1744))))

(assert (=> d!1665848 (= lt!2122445 (choose!38152 s2!450 p!1744))))

(assert (=> d!1665848 (= (forall!14047 s2!450 p!1744) lt!2122445)))

(declare-fun bs!1202636 () Bool)

(assert (= bs!1202636 d!1665848))

(assert (=> bs!1202636 m!6212754))

(assert (=> bs!1202636 m!6212754))

(declare-fun m!6212840 () Bool)

(assert (=> bs!1202636 m!6212840))

(declare-fun m!6212842 () Bool)

(assert (=> bs!1202636 m!6212842))

(assert (=> b!5162239 d!1665848))

(declare-fun condSetEmpty!31319 () Bool)

(assert (=> setNonEmpty!31312 (= condSetEmpty!31319 (= setRest!31311 ((as const (Array A!479 Bool)) false)))))

(declare-fun setRes!31319 () Bool)

(assert (=> setNonEmpty!31312 (= tp!1447808 setRes!31319)))

(declare-fun setIsEmpty!31319 () Bool)

(assert (=> setIsEmpty!31319 setRes!31319))

(declare-fun setNonEmpty!31319 () Bool)

(declare-fun tp!1447816 () Bool)

(assert (=> setNonEmpty!31319 (= setRes!31319 (and tp!1447816 tp_is_empty!38231))))

(declare-fun setElem!31319 () A!479)

(declare-fun setRest!31319 () (InoxSet A!479))

(assert (=> setNonEmpty!31319 (= setRest!31311 ((_ map or) (store ((as const (Array A!479 Bool)) false) setElem!31319 true) setRest!31319))))

(assert (= (and setNonEmpty!31312 condSetEmpty!31319) setIsEmpty!31319))

(assert (= (and setNonEmpty!31312 (not condSetEmpty!31319)) setNonEmpty!31319))

(declare-fun condSetEmpty!31320 () Bool)

(assert (=> setNonEmpty!31311 (= condSetEmpty!31320 (= setRest!31312 ((as const (Array A!479 Bool)) false)))))

(declare-fun setRes!31320 () Bool)

(assert (=> setNonEmpty!31311 (= tp!1447807 setRes!31320)))

(declare-fun setIsEmpty!31320 () Bool)

(assert (=> setIsEmpty!31320 setRes!31320))

(declare-fun setNonEmpty!31320 () Bool)

(declare-fun tp!1447817 () Bool)

(assert (=> setNonEmpty!31320 (= setRes!31320 (and tp!1447817 tp_is_empty!38231))))

(declare-fun setElem!31320 () A!479)

(declare-fun setRest!31320 () (InoxSet A!479))

(assert (=> setNonEmpty!31320 (= setRest!31312 ((_ map or) (store ((as const (Array A!479 Bool)) false) setElem!31320 true) setRest!31320))))

(assert (= (and setNonEmpty!31311 condSetEmpty!31320) setIsEmpty!31320))

(assert (= (and setNonEmpty!31311 (not condSetEmpty!31320)) setNonEmpty!31320))

(declare-fun b_lambda!200619 () Bool)

(assert (= b_lambda!200617 (or (and start!545886 b_free!133529) b_lambda!200619)))

(check-sat (not setNonEmpty!31320) (not d!1665848) (not d!1665826) tp_is_empty!38231 (not b_next!134319) (not b!5162265) (not setNonEmpty!31319) (not d!1665846) (not d!1665828) (not d!1665836) (not b!5162276) (not b!5162266) (not b!5162285) b_and!350501 (not d!1665840) (not b_lambda!200619) (not b!5162284))
(check-sat b_and!350501 (not b_next!134319))

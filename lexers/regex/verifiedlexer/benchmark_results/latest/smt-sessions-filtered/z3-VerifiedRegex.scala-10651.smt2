; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546304 () Bool)

(assert start!546304)

(declare-fun setIsEmpty!31459 () Bool)

(declare-fun setRes!31459 () Bool)

(assert (=> setIsEmpty!31459 setRes!31459))

(declare-fun e!3217629 () Bool)

(declare-fun setNonEmpty!31459 () Bool)

(declare-fun tp!1448396 () Bool)

(declare-datatypes ((C!29368 0))(
  ( (C!29369 (val!24386 Int)) )
))
(declare-datatypes ((Regex!14549 0))(
  ( (ElementMatch!14549 (c!888476 C!29368)) (Concat!23394 (regOne!29610 Regex!14549) (regTwo!29610 Regex!14549)) (EmptyExpr!14549) (Star!14549 (reg!14878 Regex!14549)) (EmptyLang!14549) (Union!14549 (regOne!29611 Regex!14549) (regTwo!29611 Regex!14549)) )
))
(declare-datatypes ((List!60053 0))(
  ( (Nil!59929) (Cons!59929 (h!66377 Regex!14549) (t!373206 List!60053)) )
))
(declare-datatypes ((Context!7866 0))(
  ( (Context!7867 (exprs!4433 List!60053)) )
))
(declare-fun setElem!31460 () Context!7866)

(declare-fun inv!79619 (Context!7866) Bool)

(assert (=> setNonEmpty!31459 (= setRes!31459 (and tp!1448396 (inv!79619 setElem!31460) e!3217629))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4581 () (InoxSet Context!7866))

(declare-fun setRest!31460 () (InoxSet Context!7866))

(assert (=> setNonEmpty!31459 (= z!4581 ((_ map or) (store ((as const (Array Context!7866 Bool)) false) setElem!31460 true) setRest!31460))))

(declare-fun b!5164076 () Bool)

(declare-fun e!3217630 () Bool)

(declare-datatypes ((List!60054 0))(
  ( (Nil!59930) (Cons!59930 (h!66378 C!29368) (t!373207 List!60054)) )
))
(declare-fun input!5817 () List!60054)

(declare-fun testedP!294 () List!60054)

(declare-fun size!39585 (List!60054) Int)

(assert (=> b!5164076 (= e!3217630 (< (size!39585 input!5817) (size!39585 testedP!294)))))

(declare-fun setIsEmpty!31460 () Bool)

(declare-fun setRes!31460 () Bool)

(assert (=> setIsEmpty!31460 setRes!31460))

(declare-fun b!5164077 () Bool)

(declare-fun e!3217631 () Bool)

(declare-fun tp_is_empty!38351 () Bool)

(declare-fun tp!1448395 () Bool)

(assert (=> b!5164077 (= e!3217631 (and tp_is_empty!38351 tp!1448395))))

(declare-fun b!5164078 () Bool)

(declare-fun tp!1448398 () Bool)

(assert (=> b!5164078 (= e!3217629 tp!1448398)))

(declare-fun res!2195427 () Bool)

(assert (=> start!546304 (=> (not res!2195427) (not e!3217630))))

(declare-fun isPrefix!5682 (List!60054 List!60054) Bool)

(assert (=> start!546304 (= res!2195427 (isPrefix!5682 testedP!294 input!5817))))

(assert (=> start!546304 e!3217630))

(declare-fun e!3217627 () Bool)

(assert (=> start!546304 e!3217627))

(assert (=> start!546304 e!3217631))

(declare-fun condSetEmpty!31459 () Bool)

(declare-fun baseZ!62 () (InoxSet Context!7866))

(assert (=> start!546304 (= condSetEmpty!31459 (= baseZ!62 ((as const (Array Context!7866 Bool)) false)))))

(assert (=> start!546304 setRes!31460))

(declare-fun condSetEmpty!31460 () Bool)

(assert (=> start!546304 (= condSetEmpty!31460 (= z!4581 ((as const (Array Context!7866 Bool)) false)))))

(assert (=> start!546304 setRes!31459))

(declare-fun b!5164079 () Bool)

(declare-fun tp!1448394 () Bool)

(assert (=> b!5164079 (= e!3217627 (and tp_is_empty!38351 tp!1448394))))

(declare-fun b!5164080 () Bool)

(declare-fun e!3217628 () Bool)

(declare-fun tp!1448397 () Bool)

(assert (=> b!5164080 (= e!3217628 tp!1448397)))

(declare-fun tp!1448399 () Bool)

(declare-fun setElem!31459 () Context!7866)

(declare-fun setNonEmpty!31460 () Bool)

(assert (=> setNonEmpty!31460 (= setRes!31460 (and tp!1448399 (inv!79619 setElem!31459) e!3217628))))

(declare-fun setRest!31459 () (InoxSet Context!7866))

(assert (=> setNonEmpty!31460 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7866 Bool)) false) setElem!31459 true) setRest!31459))))

(declare-fun b!5164081 () Bool)

(declare-fun res!2195428 () Bool)

(assert (=> b!5164081 (=> (not res!2195428) (not e!3217630))))

(declare-fun derivationZipper!172 ((InoxSet Context!7866) List!60054) (InoxSet Context!7866))

(assert (=> b!5164081 (= res!2195428 (= (derivationZipper!172 baseZ!62 testedP!294) z!4581))))

(assert (= (and start!546304 res!2195427) b!5164081))

(assert (= (and b!5164081 res!2195428) b!5164076))

(get-info :version)

(assert (= (and start!546304 ((_ is Cons!59930) testedP!294)) b!5164079))

(assert (= (and start!546304 ((_ is Cons!59930) input!5817)) b!5164077))

(assert (= (and start!546304 condSetEmpty!31459) setIsEmpty!31460))

(assert (= (and start!546304 (not condSetEmpty!31459)) setNonEmpty!31460))

(assert (= setNonEmpty!31460 b!5164080))

(assert (= (and start!546304 condSetEmpty!31460) setIsEmpty!31459))

(assert (= (and start!546304 (not condSetEmpty!31460)) setNonEmpty!31459))

(assert (= setNonEmpty!31459 b!5164078))

(declare-fun m!6214744 () Bool)

(assert (=> start!546304 m!6214744))

(declare-fun m!6214746 () Bool)

(assert (=> b!5164081 m!6214746))

(declare-fun m!6214748 () Bool)

(assert (=> setNonEmpty!31460 m!6214748))

(declare-fun m!6214750 () Bool)

(assert (=> setNonEmpty!31459 m!6214750))

(declare-fun m!6214752 () Bool)

(assert (=> b!5164076 m!6214752))

(declare-fun m!6214754 () Bool)

(assert (=> b!5164076 m!6214754))

(check-sat (not b!5164081) (not b!5164080) (not setNonEmpty!31459) (not b!5164076) (not b!5164077) (not b!5164078) (not b!5164079) (not start!546304) (not setNonEmpty!31460) tp_is_empty!38351)
(check-sat)
(get-model)

(declare-fun d!1666286 () Bool)

(declare-fun c!888479 () Bool)

(assert (=> d!1666286 (= c!888479 ((_ is Cons!59930) testedP!294))))

(declare-fun e!3217634 () (InoxSet Context!7866))

(assert (=> d!1666286 (= (derivationZipper!172 baseZ!62 testedP!294) e!3217634)))

(declare-fun b!5164086 () Bool)

(declare-fun derivationStepZipper!936 ((InoxSet Context!7866) C!29368) (InoxSet Context!7866))

(assert (=> b!5164086 (= e!3217634 (derivationZipper!172 (derivationStepZipper!936 baseZ!62 (h!66378 testedP!294)) (t!373207 testedP!294)))))

(declare-fun b!5164087 () Bool)

(assert (=> b!5164087 (= e!3217634 baseZ!62)))

(assert (= (and d!1666286 c!888479) b!5164086))

(assert (= (and d!1666286 (not c!888479)) b!5164087))

(declare-fun m!6214756 () Bool)

(assert (=> b!5164086 m!6214756))

(assert (=> b!5164086 m!6214756))

(declare-fun m!6214758 () Bool)

(assert (=> b!5164086 m!6214758))

(assert (=> b!5164081 d!1666286))

(declare-fun d!1666290 () Bool)

(declare-fun lt!2123599 () Int)

(assert (=> d!1666290 (>= lt!2123599 0)))

(declare-fun e!3217637 () Int)

(assert (=> d!1666290 (= lt!2123599 e!3217637)))

(declare-fun c!888482 () Bool)

(assert (=> d!1666290 (= c!888482 ((_ is Nil!59930) input!5817))))

(assert (=> d!1666290 (= (size!39585 input!5817) lt!2123599)))

(declare-fun b!5164092 () Bool)

(assert (=> b!5164092 (= e!3217637 0)))

(declare-fun b!5164093 () Bool)

(assert (=> b!5164093 (= e!3217637 (+ 1 (size!39585 (t!373207 input!5817))))))

(assert (= (and d!1666290 c!888482) b!5164092))

(assert (= (and d!1666290 (not c!888482)) b!5164093))

(declare-fun m!6214760 () Bool)

(assert (=> b!5164093 m!6214760))

(assert (=> b!5164076 d!1666290))

(declare-fun d!1666292 () Bool)

(declare-fun lt!2123600 () Int)

(assert (=> d!1666292 (>= lt!2123600 0)))

(declare-fun e!3217638 () Int)

(assert (=> d!1666292 (= lt!2123600 e!3217638)))

(declare-fun c!888483 () Bool)

(assert (=> d!1666292 (= c!888483 ((_ is Nil!59930) testedP!294))))

(assert (=> d!1666292 (= (size!39585 testedP!294) lt!2123600)))

(declare-fun b!5164094 () Bool)

(assert (=> b!5164094 (= e!3217638 0)))

(declare-fun b!5164095 () Bool)

(assert (=> b!5164095 (= e!3217638 (+ 1 (size!39585 (t!373207 testedP!294))))))

(assert (= (and d!1666292 c!888483) b!5164094))

(assert (= (and d!1666292 (not c!888483)) b!5164095))

(declare-fun m!6214762 () Bool)

(assert (=> b!5164095 m!6214762))

(assert (=> b!5164076 d!1666292))

(declare-fun d!1666294 () Bool)

(declare-fun lambda!257728 () Int)

(declare-fun forall!14097 (List!60053 Int) Bool)

(assert (=> d!1666294 (= (inv!79619 setElem!31459) (forall!14097 (exprs!4433 setElem!31459) lambda!257728))))

(declare-fun bs!1202740 () Bool)

(assert (= bs!1202740 d!1666294))

(declare-fun m!6214768 () Bool)

(assert (=> bs!1202740 m!6214768))

(assert (=> setNonEmpty!31460 d!1666294))

(declare-fun bs!1202741 () Bool)

(declare-fun d!1666298 () Bool)

(assert (= bs!1202741 (and d!1666298 d!1666294)))

(declare-fun lambda!257729 () Int)

(assert (=> bs!1202741 (= lambda!257729 lambda!257728)))

(assert (=> d!1666298 (= (inv!79619 setElem!31460) (forall!14097 (exprs!4433 setElem!31460) lambda!257729))))

(declare-fun bs!1202742 () Bool)

(assert (= bs!1202742 d!1666298))

(declare-fun m!6214770 () Bool)

(assert (=> bs!1202742 m!6214770))

(assert (=> setNonEmpty!31459 d!1666298))

(declare-fun b!5164112 () Bool)

(declare-fun e!3217648 () Bool)

(declare-fun tail!10113 (List!60054) List!60054)

(assert (=> b!5164112 (= e!3217648 (isPrefix!5682 (tail!10113 testedP!294) (tail!10113 input!5817)))))

(declare-fun b!5164110 () Bool)

(declare-fun e!3217650 () Bool)

(assert (=> b!5164110 (= e!3217650 e!3217648)))

(declare-fun res!2195437 () Bool)

(assert (=> b!5164110 (=> (not res!2195437) (not e!3217648))))

(assert (=> b!5164110 (= res!2195437 (not ((_ is Nil!59930) input!5817)))))

(declare-fun b!5164113 () Bool)

(declare-fun e!3217649 () Bool)

(assert (=> b!5164113 (= e!3217649 (>= (size!39585 input!5817) (size!39585 testedP!294)))))

(declare-fun b!5164111 () Bool)

(declare-fun res!2195440 () Bool)

(assert (=> b!5164111 (=> (not res!2195440) (not e!3217648))))

(declare-fun head!11002 (List!60054) C!29368)

(assert (=> b!5164111 (= res!2195440 (= (head!11002 testedP!294) (head!11002 input!5817)))))

(declare-fun d!1666300 () Bool)

(assert (=> d!1666300 e!3217649))

(declare-fun res!2195438 () Bool)

(assert (=> d!1666300 (=> res!2195438 e!3217649)))

(declare-fun lt!2123603 () Bool)

(assert (=> d!1666300 (= res!2195438 (not lt!2123603))))

(assert (=> d!1666300 (= lt!2123603 e!3217650)))

(declare-fun res!2195439 () Bool)

(assert (=> d!1666300 (=> res!2195439 e!3217650)))

(assert (=> d!1666300 (= res!2195439 ((_ is Nil!59930) testedP!294))))

(assert (=> d!1666300 (= (isPrefix!5682 testedP!294 input!5817) lt!2123603)))

(assert (= (and d!1666300 (not res!2195439)) b!5164110))

(assert (= (and b!5164110 res!2195437) b!5164111))

(assert (= (and b!5164111 res!2195440) b!5164112))

(assert (= (and d!1666300 (not res!2195438)) b!5164113))

(declare-fun m!6214772 () Bool)

(assert (=> b!5164112 m!6214772))

(declare-fun m!6214774 () Bool)

(assert (=> b!5164112 m!6214774))

(assert (=> b!5164112 m!6214772))

(assert (=> b!5164112 m!6214774))

(declare-fun m!6214776 () Bool)

(assert (=> b!5164112 m!6214776))

(assert (=> b!5164113 m!6214752))

(assert (=> b!5164113 m!6214754))

(declare-fun m!6214778 () Bool)

(assert (=> b!5164111 m!6214778))

(declare-fun m!6214780 () Bool)

(assert (=> b!5164111 m!6214780))

(assert (=> start!546304 d!1666300))

(declare-fun b!5164118 () Bool)

(declare-fun e!3217653 () Bool)

(declare-fun tp!1448402 () Bool)

(assert (=> b!5164118 (= e!3217653 (and tp_is_empty!38351 tp!1448402))))

(assert (=> b!5164077 (= tp!1448395 e!3217653)))

(assert (= (and b!5164077 ((_ is Cons!59930) (t!373207 input!5817))) b!5164118))

(declare-fun b!5164123 () Bool)

(declare-fun e!3217656 () Bool)

(declare-fun tp!1448407 () Bool)

(declare-fun tp!1448408 () Bool)

(assert (=> b!5164123 (= e!3217656 (and tp!1448407 tp!1448408))))

(assert (=> b!5164080 (= tp!1448397 e!3217656)))

(assert (= (and b!5164080 ((_ is Cons!59929) (exprs!4433 setElem!31459))) b!5164123))

(declare-fun condSetEmpty!31463 () Bool)

(assert (=> setNonEmpty!31460 (= condSetEmpty!31463 (= setRest!31459 ((as const (Array Context!7866 Bool)) false)))))

(declare-fun setRes!31463 () Bool)

(assert (=> setNonEmpty!31460 (= tp!1448399 setRes!31463)))

(declare-fun setIsEmpty!31463 () Bool)

(assert (=> setIsEmpty!31463 setRes!31463))

(declare-fun setNonEmpty!31463 () Bool)

(declare-fun e!3217659 () Bool)

(declare-fun setElem!31463 () Context!7866)

(declare-fun tp!1448413 () Bool)

(assert (=> setNonEmpty!31463 (= setRes!31463 (and tp!1448413 (inv!79619 setElem!31463) e!3217659))))

(declare-fun setRest!31463 () (InoxSet Context!7866))

(assert (=> setNonEmpty!31463 (= setRest!31459 ((_ map or) (store ((as const (Array Context!7866 Bool)) false) setElem!31463 true) setRest!31463))))

(declare-fun b!5164128 () Bool)

(declare-fun tp!1448414 () Bool)

(assert (=> b!5164128 (= e!3217659 tp!1448414)))

(assert (= (and setNonEmpty!31460 condSetEmpty!31463) setIsEmpty!31463))

(assert (= (and setNonEmpty!31460 (not condSetEmpty!31463)) setNonEmpty!31463))

(assert (= setNonEmpty!31463 b!5164128))

(declare-fun m!6214782 () Bool)

(assert (=> setNonEmpty!31463 m!6214782))

(declare-fun b!5164129 () Bool)

(declare-fun e!3217660 () Bool)

(declare-fun tp!1448415 () Bool)

(assert (=> b!5164129 (= e!3217660 (and tp_is_empty!38351 tp!1448415))))

(assert (=> b!5164079 (= tp!1448394 e!3217660)))

(assert (= (and b!5164079 ((_ is Cons!59930) (t!373207 testedP!294))) b!5164129))

(declare-fun condSetEmpty!31464 () Bool)

(assert (=> setNonEmpty!31459 (= condSetEmpty!31464 (= setRest!31460 ((as const (Array Context!7866 Bool)) false)))))

(declare-fun setRes!31464 () Bool)

(assert (=> setNonEmpty!31459 (= tp!1448396 setRes!31464)))

(declare-fun setIsEmpty!31464 () Bool)

(assert (=> setIsEmpty!31464 setRes!31464))

(declare-fun e!3217661 () Bool)

(declare-fun setElem!31464 () Context!7866)

(declare-fun tp!1448416 () Bool)

(declare-fun setNonEmpty!31464 () Bool)

(assert (=> setNonEmpty!31464 (= setRes!31464 (and tp!1448416 (inv!79619 setElem!31464) e!3217661))))

(declare-fun setRest!31464 () (InoxSet Context!7866))

(assert (=> setNonEmpty!31464 (= setRest!31460 ((_ map or) (store ((as const (Array Context!7866 Bool)) false) setElem!31464 true) setRest!31464))))

(declare-fun b!5164130 () Bool)

(declare-fun tp!1448417 () Bool)

(assert (=> b!5164130 (= e!3217661 tp!1448417)))

(assert (= (and setNonEmpty!31459 condSetEmpty!31464) setIsEmpty!31464))

(assert (= (and setNonEmpty!31459 (not condSetEmpty!31464)) setNonEmpty!31464))

(assert (= setNonEmpty!31464 b!5164130))

(declare-fun m!6214784 () Bool)

(assert (=> setNonEmpty!31464 m!6214784))

(declare-fun b!5164131 () Bool)

(declare-fun e!3217662 () Bool)

(declare-fun tp!1448418 () Bool)

(declare-fun tp!1448419 () Bool)

(assert (=> b!5164131 (= e!3217662 (and tp!1448418 tp!1448419))))

(assert (=> b!5164078 (= tp!1448398 e!3217662)))

(assert (= (and b!5164078 ((_ is Cons!59929) (exprs!4433 setElem!31460))) b!5164131))

(check-sat (not d!1666294) (not setNonEmpty!31463) (not b!5164128) (not b!5164130) (not d!1666298) tp_is_empty!38351 (not b!5164086) (not b!5164118) (not b!5164131) (not b!5164093) (not b!5164112) (not b!5164123) (not b!5164129) (not b!5164113) (not b!5164111) (not b!5164095) (not setNonEmpty!31464))
(check-sat)

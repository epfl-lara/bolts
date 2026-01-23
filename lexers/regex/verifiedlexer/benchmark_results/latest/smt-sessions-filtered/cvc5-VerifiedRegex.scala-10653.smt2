; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546322 () Bool)

(assert start!546322)

(declare-fun setNonEmpty!31485 () Bool)

(declare-fun tp!1448492 () Bool)

(declare-fun setRes!31486 () Bool)

(declare-fun e!3217719 () Bool)

(declare-datatypes ((C!29374 0))(
  ( (C!29375 (val!24389 Int)) )
))
(declare-datatypes ((Regex!14552 0))(
  ( (ElementMatch!14552 (c!888489 C!29374)) (Concat!23397 (regOne!29616 Regex!14552) (regTwo!29616 Regex!14552)) (EmptyExpr!14552) (Star!14552 (reg!14881 Regex!14552)) (EmptyLang!14552) (Union!14552 (regOne!29617 Regex!14552) (regTwo!29617 Regex!14552)) )
))
(declare-datatypes ((List!60059 0))(
  ( (Nil!59935) (Cons!59935 (h!66383 Regex!14552) (t!373212 List!60059)) )
))
(declare-datatypes ((Context!7872 0))(
  ( (Context!7873 (exprs!4436 List!60059)) )
))
(declare-fun setElem!31486 () Context!7872)

(declare-fun inv!79628 (Context!7872) Bool)

(assert (=> setNonEmpty!31485 (= setRes!31486 (and tp!1448492 (inv!79628 setElem!31486) e!3217719))))

(declare-fun z!4581 () (Set Context!7872))

(declare-fun setRest!31486 () (Set Context!7872))

(assert (=> setNonEmpty!31485 (= z!4581 (set.union (set.insert setElem!31486 (as set.empty (Set Context!7872))) setRest!31486))))

(declare-fun b!5164198 () Bool)

(declare-fun e!3217718 () Bool)

(declare-fun tp_is_empty!38357 () Bool)

(declare-fun tp!1448489 () Bool)

(assert (=> b!5164198 (= e!3217718 (and tp_is_empty!38357 tp!1448489))))

(declare-fun b!5164199 () Bool)

(declare-fun e!3217716 () Bool)

(declare-fun tp!1448488 () Bool)

(assert (=> b!5164199 (= e!3217716 (and tp_is_empty!38357 tp!1448488))))

(declare-datatypes ((List!60060 0))(
  ( (Nil!59936) (Cons!59936 (h!66384 C!29374) (t!373213 List!60060)) )
))
(declare-fun input!5817 () List!60060)

(declare-fun e!3217715 () Bool)

(declare-fun testedP!294 () List!60060)

(declare-fun lt!2123623 () List!60060)

(declare-fun b!5164200 () Bool)

(declare-fun ++!13095 (List!60060 List!60060) List!60060)

(assert (=> b!5164200 (= e!3217715 (not (= (++!13095 testedP!294 lt!2123623) input!5817)))))

(declare-fun lt!2123622 () Int)

(declare-fun size!39588 (List!60060) Int)

(assert (=> b!5164200 (= lt!2123622 (size!39588 input!5817))))

(declare-fun getSuffix!3335 (List!60060 List!60060) List!60060)

(assert (=> b!5164200 (= lt!2123623 (getSuffix!3335 input!5817 testedP!294))))

(declare-fun lt!2123624 () Int)

(assert (=> b!5164200 (= lt!2123624 (size!39588 testedP!294))))

(declare-fun setNonEmpty!31486 () Bool)

(declare-fun e!3217717 () Bool)

(declare-fun setRes!31485 () Bool)

(declare-fun setElem!31485 () Context!7872)

(declare-fun tp!1448490 () Bool)

(assert (=> setNonEmpty!31486 (= setRes!31485 (and tp!1448490 (inv!79628 setElem!31485) e!3217717))))

(declare-fun baseZ!62 () (Set Context!7872))

(declare-fun setRest!31485 () (Set Context!7872))

(assert (=> setNonEmpty!31486 (= baseZ!62 (set.union (set.insert setElem!31485 (as set.empty (Set Context!7872))) setRest!31485))))

(declare-fun setIsEmpty!31486 () Bool)

(assert (=> setIsEmpty!31486 setRes!31486))

(declare-fun b!5164201 () Bool)

(declare-fun tp!1448493 () Bool)

(assert (=> b!5164201 (= e!3217717 tp!1448493)))

(declare-fun res!2195457 () Bool)

(assert (=> start!546322 (=> (not res!2195457) (not e!3217715))))

(declare-fun isPrefix!5685 (List!60060 List!60060) Bool)

(assert (=> start!546322 (= res!2195457 (isPrefix!5685 testedP!294 input!5817))))

(assert (=> start!546322 e!3217715))

(assert (=> start!546322 e!3217718))

(assert (=> start!546322 e!3217716))

(declare-fun condSetEmpty!31485 () Bool)

(assert (=> start!546322 (= condSetEmpty!31485 (= baseZ!62 (as set.empty (Set Context!7872))))))

(assert (=> start!546322 setRes!31485))

(declare-fun condSetEmpty!31486 () Bool)

(assert (=> start!546322 (= condSetEmpty!31486 (= z!4581 (as set.empty (Set Context!7872))))))

(assert (=> start!546322 setRes!31486))

(declare-fun setIsEmpty!31485 () Bool)

(assert (=> setIsEmpty!31485 setRes!31485))

(declare-fun b!5164202 () Bool)

(declare-fun tp!1448491 () Bool)

(assert (=> b!5164202 (= e!3217719 tp!1448491)))

(declare-fun b!5164203 () Bool)

(declare-fun res!2195458 () Bool)

(assert (=> b!5164203 (=> (not res!2195458) (not e!3217715))))

(declare-fun derivationZipper!175 ((Set Context!7872) List!60060) (Set Context!7872))

(assert (=> b!5164203 (= res!2195458 (= (derivationZipper!175 baseZ!62 testedP!294) z!4581))))

(assert (= (and start!546322 res!2195457) b!5164203))

(assert (= (and b!5164203 res!2195458) b!5164200))

(assert (= (and start!546322 (is-Cons!59936 testedP!294)) b!5164198))

(assert (= (and start!546322 (is-Cons!59936 input!5817)) b!5164199))

(assert (= (and start!546322 condSetEmpty!31485) setIsEmpty!31485))

(assert (= (and start!546322 (not condSetEmpty!31485)) setNonEmpty!31486))

(assert (= setNonEmpty!31486 b!5164201))

(assert (= (and start!546322 condSetEmpty!31486) setIsEmpty!31486))

(assert (= (and start!546322 (not condSetEmpty!31486)) setNonEmpty!31485))

(assert (= setNonEmpty!31485 b!5164202))

(declare-fun m!6214810 () Bool)

(assert (=> b!5164203 m!6214810))

(declare-fun m!6214812 () Bool)

(assert (=> setNonEmpty!31485 m!6214812))

(declare-fun m!6214814 () Bool)

(assert (=> start!546322 m!6214814))

(declare-fun m!6214816 () Bool)

(assert (=> b!5164200 m!6214816))

(declare-fun m!6214818 () Bool)

(assert (=> b!5164200 m!6214818))

(declare-fun m!6214820 () Bool)

(assert (=> b!5164200 m!6214820))

(declare-fun m!6214822 () Bool)

(assert (=> b!5164200 m!6214822))

(declare-fun m!6214824 () Bool)

(assert (=> setNonEmpty!31486 m!6214824))

(push 1)

(assert (not setNonEmpty!31485))

(assert (not b!5164201))

(assert (not start!546322))

(assert (not b!5164203))

(assert (not b!5164199))

(assert (not b!5164198))

(assert (not b!5164200))

(assert (not b!5164202))

(assert tp_is_empty!38357)

(assert (not setNonEmpty!31486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5164231 () Bool)

(declare-fun res!2195475 () Bool)

(declare-fun e!3217741 () Bool)

(assert (=> b!5164231 (=> (not res!2195475) (not e!3217741))))

(declare-fun head!11003 (List!60060) C!29374)

(assert (=> b!5164231 (= res!2195475 (= (head!11003 testedP!294) (head!11003 input!5817)))))

(declare-fun b!5164230 () Bool)

(declare-fun e!3217743 () Bool)

(assert (=> b!5164230 (= e!3217743 e!3217741)))

(declare-fun res!2195476 () Bool)

(assert (=> b!5164230 (=> (not res!2195476) (not e!3217741))))

(assert (=> b!5164230 (= res!2195476 (not (is-Nil!59936 input!5817)))))

(declare-fun d!1666304 () Bool)

(declare-fun e!3217742 () Bool)

(assert (=> d!1666304 e!3217742))

(declare-fun res!2195473 () Bool)

(assert (=> d!1666304 (=> res!2195473 e!3217742)))

(declare-fun lt!2123636 () Bool)

(assert (=> d!1666304 (= res!2195473 (not lt!2123636))))

(assert (=> d!1666304 (= lt!2123636 e!3217743)))

(declare-fun res!2195474 () Bool)

(assert (=> d!1666304 (=> res!2195474 e!3217743)))

(assert (=> d!1666304 (= res!2195474 (is-Nil!59936 testedP!294))))

(assert (=> d!1666304 (= (isPrefix!5685 testedP!294 input!5817) lt!2123636)))

(declare-fun b!5164233 () Bool)

(assert (=> b!5164233 (= e!3217742 (>= (size!39588 input!5817) (size!39588 testedP!294)))))

(declare-fun b!5164232 () Bool)

(declare-fun tail!10114 (List!60060) List!60060)

(assert (=> b!5164232 (= e!3217741 (isPrefix!5685 (tail!10114 testedP!294) (tail!10114 input!5817)))))

(assert (= (and d!1666304 (not res!2195474)) b!5164230))

(assert (= (and b!5164230 res!2195476) b!5164231))

(assert (= (and b!5164231 res!2195475) b!5164232))

(assert (= (and d!1666304 (not res!2195473)) b!5164233))

(declare-fun m!6214842 () Bool)

(assert (=> b!5164231 m!6214842))

(declare-fun m!6214844 () Bool)

(assert (=> b!5164231 m!6214844))

(assert (=> b!5164233 m!6214818))

(assert (=> b!5164233 m!6214822))

(declare-fun m!6214846 () Bool)

(assert (=> b!5164232 m!6214846))

(declare-fun m!6214848 () Bool)

(assert (=> b!5164232 m!6214848))

(assert (=> b!5164232 m!6214846))

(assert (=> b!5164232 m!6214848))

(declare-fun m!6214850 () Bool)

(assert (=> b!5164232 m!6214850))

(assert (=> start!546322 d!1666304))

(declare-fun d!1666308 () Bool)

(declare-fun lambda!257735 () Int)

(declare-fun forall!14098 (List!60059 Int) Bool)

(assert (=> d!1666308 (= (inv!79628 setElem!31486) (forall!14098 (exprs!4436 setElem!31486) lambda!257735))))

(declare-fun bs!1202747 () Bool)

(assert (= bs!1202747 d!1666308))

(declare-fun m!6214856 () Bool)

(assert (=> bs!1202747 m!6214856))

(assert (=> setNonEmpty!31485 d!1666308))

(declare-fun bs!1202748 () Bool)

(declare-fun d!1666312 () Bool)

(assert (= bs!1202748 (and d!1666312 d!1666308)))

(declare-fun lambda!257736 () Int)

(assert (=> bs!1202748 (= lambda!257736 lambda!257735)))

(assert (=> d!1666312 (= (inv!79628 setElem!31485) (forall!14098 (exprs!4436 setElem!31485) lambda!257736))))

(declare-fun bs!1202749 () Bool)

(assert (= bs!1202749 d!1666312))

(declare-fun m!6214858 () Bool)

(assert (=> bs!1202749 m!6214858))

(assert (=> setNonEmpty!31486 d!1666312))

(declare-fun d!1666314 () Bool)

(declare-fun c!888496 () Bool)

(assert (=> d!1666314 (= c!888496 (is-Cons!59936 testedP!294))))

(declare-fun e!3217749 () (Set Context!7872))

(assert (=> d!1666314 (= (derivationZipper!175 baseZ!62 testedP!294) e!3217749)))

(declare-fun b!5164244 () Bool)

(declare-fun derivationStepZipper!937 ((Set Context!7872) C!29374) (Set Context!7872))

(assert (=> b!5164244 (= e!3217749 (derivationZipper!175 (derivationStepZipper!937 baseZ!62 (h!66384 testedP!294)) (t!373213 testedP!294)))))

(declare-fun b!5164245 () Bool)

(assert (=> b!5164245 (= e!3217749 baseZ!62)))

(assert (= (and d!1666314 c!888496) b!5164244))

(assert (= (and d!1666314 (not c!888496)) b!5164245))

(declare-fun m!6214860 () Bool)

(assert (=> b!5164244 m!6214860))

(assert (=> b!5164244 m!6214860))

(declare-fun m!6214862 () Bool)

(assert (=> b!5164244 m!6214862))

(assert (=> b!5164203 d!1666314))

(declare-fun b!5164255 () Bool)

(declare-fun e!3217755 () List!60060)

(assert (=> b!5164255 (= e!3217755 (Cons!59936 (h!66384 testedP!294) (++!13095 (t!373213 testedP!294) lt!2123623)))))

(declare-fun b!5164256 () Bool)

(declare-fun res!2195482 () Bool)

(declare-fun e!3217754 () Bool)

(assert (=> b!5164256 (=> (not res!2195482) (not e!3217754))))

(declare-fun lt!2123639 () List!60060)

(assert (=> b!5164256 (= res!2195482 (= (size!39588 lt!2123639) (+ (size!39588 testedP!294) (size!39588 lt!2123623))))))

(declare-fun b!5164254 () Bool)

(assert (=> b!5164254 (= e!3217755 lt!2123623)))

(declare-fun b!5164257 () Bool)

(assert (=> b!5164257 (= e!3217754 (or (not (= lt!2123623 Nil!59936)) (= lt!2123639 testedP!294)))))

(declare-fun d!1666316 () Bool)

(assert (=> d!1666316 e!3217754))

(declare-fun res!2195481 () Bool)

(assert (=> d!1666316 (=> (not res!2195481) (not e!3217754))))

(declare-fun content!10623 (List!60060) (Set C!29374))

(assert (=> d!1666316 (= res!2195481 (= (content!10623 lt!2123639) (set.union (content!10623 testedP!294) (content!10623 lt!2123623))))))

(assert (=> d!1666316 (= lt!2123639 e!3217755)))

(declare-fun c!888499 () Bool)

(assert (=> d!1666316 (= c!888499 (is-Nil!59936 testedP!294))))

(assert (=> d!1666316 (= (++!13095 testedP!294 lt!2123623) lt!2123639)))

(assert (= (and d!1666316 c!888499) b!5164254))

(assert (= (and d!1666316 (not c!888499)) b!5164255))

(assert (= (and d!1666316 res!2195481) b!5164256))

(assert (= (and b!5164256 res!2195482) b!5164257))

(declare-fun m!6214864 () Bool)

(assert (=> b!5164255 m!6214864))

(declare-fun m!6214866 () Bool)

(assert (=> b!5164256 m!6214866))

(assert (=> b!5164256 m!6214822))

(declare-fun m!6214868 () Bool)

(assert (=> b!5164256 m!6214868))

(declare-fun m!6214870 () Bool)

(assert (=> d!1666316 m!6214870))

(declare-fun m!6214872 () Bool)

(assert (=> d!1666316 m!6214872))

(declare-fun m!6214874 () Bool)

(assert (=> d!1666316 m!6214874))

(assert (=> b!5164200 d!1666316))

(declare-fun d!1666318 () Bool)

(declare-fun lt!2123642 () Int)

(assert (=> d!1666318 (>= lt!2123642 0)))

(declare-fun e!3217758 () Int)

(assert (=> d!1666318 (= lt!2123642 e!3217758)))

(declare-fun c!888502 () Bool)

(assert (=> d!1666318 (= c!888502 (is-Nil!59936 input!5817))))

(assert (=> d!1666318 (= (size!39588 input!5817) lt!2123642)))

(declare-fun b!5164262 () Bool)

(assert (=> b!5164262 (= e!3217758 0)))

(declare-fun b!5164263 () Bool)

(assert (=> b!5164263 (= e!3217758 (+ 1 (size!39588 (t!373213 input!5817))))))

(assert (= (and d!1666318 c!888502) b!5164262))

(assert (= (and d!1666318 (not c!888502)) b!5164263))

(declare-fun m!6214876 () Bool)

(assert (=> b!5164263 m!6214876))

(assert (=> b!5164200 d!1666318))

(declare-fun d!1666320 () Bool)

(declare-fun lt!2123645 () List!60060)

(assert (=> d!1666320 (= (++!13095 testedP!294 lt!2123645) input!5817)))

(declare-fun e!3217761 () List!60060)

(assert (=> d!1666320 (= lt!2123645 e!3217761)))

(declare-fun c!888505 () Bool)

(assert (=> d!1666320 (= c!888505 (is-Cons!59936 testedP!294))))

(assert (=> d!1666320 (>= (size!39588 input!5817) (size!39588 testedP!294))))

(assert (=> d!1666320 (= (getSuffix!3335 input!5817 testedP!294) lt!2123645)))

(declare-fun b!5164268 () Bool)

(assert (=> b!5164268 (= e!3217761 (getSuffix!3335 (tail!10114 input!5817) (t!373213 testedP!294)))))

(declare-fun b!5164269 () Bool)

(assert (=> b!5164269 (= e!3217761 input!5817)))

(assert (= (and d!1666320 c!888505) b!5164268))

(assert (= (and d!1666320 (not c!888505)) b!5164269))

(declare-fun m!6214878 () Bool)

(assert (=> d!1666320 m!6214878))

(assert (=> d!1666320 m!6214818))

(assert (=> d!1666320 m!6214822))

(assert (=> b!5164268 m!6214848))

(assert (=> b!5164268 m!6214848))

(declare-fun m!6214880 () Bool)

(assert (=> b!5164268 m!6214880))

(assert (=> b!5164200 d!1666320))

(declare-fun d!1666322 () Bool)

(declare-fun lt!2123646 () Int)

(assert (=> d!1666322 (>= lt!2123646 0)))

(declare-fun e!3217762 () Int)

(assert (=> d!1666322 (= lt!2123646 e!3217762)))

(declare-fun c!888506 () Bool)

(assert (=> d!1666322 (= c!888506 (is-Nil!59936 testedP!294))))

(assert (=> d!1666322 (= (size!39588 testedP!294) lt!2123646)))

(declare-fun b!5164270 () Bool)

(assert (=> b!5164270 (= e!3217762 0)))

(declare-fun b!5164271 () Bool)

(assert (=> b!5164271 (= e!3217762 (+ 1 (size!39588 (t!373213 testedP!294))))))

(assert (= (and d!1666322 c!888506) b!5164270))

(assert (= (and d!1666322 (not c!888506)) b!5164271))

(declare-fun m!6214882 () Bool)

(assert (=> b!5164271 m!6214882))

(assert (=> b!5164200 d!1666322))

(declare-fun condSetEmpty!31495 () Bool)

(assert (=> setNonEmpty!31485 (= condSetEmpty!31495 (= setRest!31486 (as set.empty (Set Context!7872))))))

(declare-fun setRes!31495 () Bool)

(assert (=> setNonEmpty!31485 (= tp!1448492 setRes!31495)))

(declare-fun setIsEmpty!31495 () Bool)

(assert (=> setIsEmpty!31495 setRes!31495))

(declare-fun setElem!31495 () Context!7872)

(declare-fun setNonEmpty!31495 () Bool)

(declare-fun e!3217765 () Bool)

(declare-fun tp!1448517 () Bool)

(assert (=> setNonEmpty!31495 (= setRes!31495 (and tp!1448517 (inv!79628 setElem!31495) e!3217765))))

(declare-fun setRest!31495 () (Set Context!7872))

(assert (=> setNonEmpty!31495 (= setRest!31486 (set.union (set.insert setElem!31495 (as set.empty (Set Context!7872))) setRest!31495))))

(declare-fun b!5164276 () Bool)

(declare-fun tp!1448516 () Bool)

(assert (=> b!5164276 (= e!3217765 tp!1448516)))

(assert (= (and setNonEmpty!31485 condSetEmpty!31495) setIsEmpty!31495))

(assert (= (and setNonEmpty!31485 (not condSetEmpty!31495)) setNonEmpty!31495))

(assert (= setNonEmpty!31495 b!5164276))

(declare-fun m!6214884 () Bool)

(assert (=> setNonEmpty!31495 m!6214884))

(declare-fun b!5164281 () Bool)

(declare-fun e!3217768 () Bool)

(declare-fun tp!1448522 () Bool)

(declare-fun tp!1448523 () Bool)

(assert (=> b!5164281 (= e!3217768 (and tp!1448522 tp!1448523))))

(assert (=> b!5164201 (= tp!1448493 e!3217768)))

(assert (= (and b!5164201 (is-Cons!59935 (exprs!4436 setElem!31485))) b!5164281))

(declare-fun condSetEmpty!31496 () Bool)

(assert (=> setNonEmpty!31486 (= condSetEmpty!31496 (= setRest!31485 (as set.empty (Set Context!7872))))))

(declare-fun setRes!31496 () Bool)

(assert (=> setNonEmpty!31486 (= tp!1448490 setRes!31496)))

(declare-fun setIsEmpty!31496 () Bool)

(assert (=> setIsEmpty!31496 setRes!31496))

(declare-fun setElem!31496 () Context!7872)

(declare-fun tp!1448525 () Bool)

(declare-fun setNonEmpty!31496 () Bool)

(declare-fun e!3217769 () Bool)

(assert (=> setNonEmpty!31496 (= setRes!31496 (and tp!1448525 (inv!79628 setElem!31496) e!3217769))))

(declare-fun setRest!31496 () (Set Context!7872))

(assert (=> setNonEmpty!31496 (= setRest!31485 (set.union (set.insert setElem!31496 (as set.empty (Set Context!7872))) setRest!31496))))

(declare-fun b!5164282 () Bool)

(declare-fun tp!1448524 () Bool)

(assert (=> b!5164282 (= e!3217769 tp!1448524)))

(assert (= (and setNonEmpty!31486 condSetEmpty!31496) setIsEmpty!31496))

(assert (= (and setNonEmpty!31486 (not condSetEmpty!31496)) setNonEmpty!31496))

(assert (= setNonEmpty!31496 b!5164282))

(declare-fun m!6214886 () Bool)

(assert (=> setNonEmpty!31496 m!6214886))

(declare-fun b!5164287 () Bool)

(declare-fun e!3217772 () Bool)

(declare-fun tp!1448528 () Bool)

(assert (=> b!5164287 (= e!3217772 (and tp_is_empty!38357 tp!1448528))))

(assert (=> b!5164198 (= tp!1448489 e!3217772)))

(assert (= (and b!5164198 (is-Cons!59936 (t!373213 testedP!294))) b!5164287))

(declare-fun b!5164288 () Bool)

(declare-fun e!3217773 () Bool)

(declare-fun tp!1448529 () Bool)

(declare-fun tp!1448530 () Bool)

(assert (=> b!5164288 (= e!3217773 (and tp!1448529 tp!1448530))))

(assert (=> b!5164202 (= tp!1448491 e!3217773)))

(assert (= (and b!5164202 (is-Cons!59935 (exprs!4436 setElem!31486))) b!5164288))

(declare-fun b!5164289 () Bool)

(declare-fun e!3217774 () Bool)

(declare-fun tp!1448531 () Bool)

(assert (=> b!5164289 (= e!3217774 (and tp_is_empty!38357 tp!1448531))))

(assert (=> b!5164199 (= tp!1448488 e!3217774)))

(assert (= (and b!5164199 (is-Cons!59936 (t!373213 input!5817))) b!5164289))

(push 1)

(assert (not b!5164231))

(assert (not b!5164289))

(assert (not setNonEmpty!31495))

(assert (not b!5164256))

(assert (not d!1666308))

(assert (not setNonEmpty!31496))

(assert (not b!5164288))

(assert (not b!5164255))

(assert (not b!5164244))

(assert (not b!5164268))

(assert (not d!1666312))

(assert (not b!5164263))

(assert tp_is_empty!38357)

(assert (not b!5164232))

(assert (not b!5164287))

(assert (not b!5164233))

(assert (not d!1666316))

(assert (not b!5164282))

(assert (not d!1666320))

(assert (not b!5164276))

(assert (not b!5164281))

(assert (not b!5164271))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


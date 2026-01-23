; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!547762 () Bool)

(assert start!547762)

(declare-fun res!2198796 () Bool)

(declare-fun e!3223654 () Bool)

(assert (=> start!547762 (=> (not res!2198796) (not e!3223654))))

(declare-datatypes ((C!29554 0))(
  ( (C!29555 (val!24479 Int)) )
))
(declare-datatypes ((List!60253 0))(
  ( (Nil!60129) (Cons!60129 (h!66577 C!29554) (t!373406 List!60253)) )
))
(declare-fun testedP!294 () List!60253)

(declare-fun input!5817 () List!60253)

(declare-fun isPrefix!5775 (List!60253 List!60253) Bool)

(assert (=> start!547762 (= res!2198796 (isPrefix!5775 testedP!294 input!5817))))

(assert (=> start!547762 e!3223654))

(declare-fun e!3223655 () Bool)

(assert (=> start!547762 e!3223655))

(declare-fun e!3223651 () Bool)

(assert (=> start!547762 e!3223651))

(declare-fun condSetEmpty!32185 () Bool)

(declare-datatypes ((Regex!14642 0))(
  ( (ElementMatch!14642 (c!890701 C!29554)) (Concat!23487 (regOne!29796 Regex!14642) (regTwo!29796 Regex!14642)) (EmptyExpr!14642) (Star!14642 (reg!14971 Regex!14642)) (EmptyLang!14642) (Union!14642 (regOne!29797 Regex!14642) (regTwo!29797 Regex!14642)) )
))
(declare-datatypes ((List!60254 0))(
  ( (Nil!60130) (Cons!60130 (h!66578 Regex!14642) (t!373407 List!60254)) )
))
(declare-datatypes ((Context!8052 0))(
  ( (Context!8053 (exprs!4526 List!60254)) )
))
(declare-fun baseZ!62 () (Set Context!8052))

(assert (=> start!547762 (= condSetEmpty!32185 (= baseZ!62 (as set.empty (Set Context!8052))))))

(declare-fun setRes!32186 () Bool)

(assert (=> start!547762 setRes!32186))

(declare-fun condSetEmpty!32186 () Bool)

(declare-fun z!4581 () (Set Context!8052))

(assert (=> start!547762 (= condSetEmpty!32186 (= z!4581 (as set.empty (Set Context!8052))))))

(declare-fun setRes!32185 () Bool)

(assert (=> start!547762 setRes!32185))

(declare-fun b!5173514 () Bool)

(declare-fun size!39678 (List!60253) Int)

(assert (=> b!5173514 (= e!3223654 (< (- (size!39678 input!5817) (size!39678 testedP!294)) 0))))

(declare-fun b!5173515 () Bool)

(declare-fun res!2198795 () Bool)

(assert (=> b!5173515 (=> (not res!2198795) (not e!3223654))))

(declare-fun derivationZipper!265 ((Set Context!8052) List!60253) (Set Context!8052))

(assert (=> b!5173515 (= res!2198795 (= (derivationZipper!265 baseZ!62 testedP!294) z!4581))))

(declare-fun setIsEmpty!32185 () Bool)

(assert (=> setIsEmpty!32185 setRes!32186))

(declare-fun setElem!32185 () Context!8052)

(declare-fun setNonEmpty!32185 () Bool)

(declare-fun e!3223653 () Bool)

(declare-fun tp!1451403 () Bool)

(declare-fun inv!79853 (Context!8052) Bool)

(assert (=> setNonEmpty!32185 (= setRes!32185 (and tp!1451403 (inv!79853 setElem!32185) e!3223653))))

(declare-fun setRest!32186 () (Set Context!8052))

(assert (=> setNonEmpty!32185 (= z!4581 (set.union (set.insert setElem!32185 (as set.empty (Set Context!8052))) setRest!32186))))

(declare-fun b!5173516 () Bool)

(declare-fun tp!1451400 () Bool)

(assert (=> b!5173516 (= e!3223653 tp!1451400)))

(declare-fun b!5173517 () Bool)

(declare-fun tp_is_empty!38537 () Bool)

(declare-fun tp!1451405 () Bool)

(assert (=> b!5173517 (= e!3223651 (and tp_is_empty!38537 tp!1451405))))

(declare-fun e!3223652 () Bool)

(declare-fun setElem!32186 () Context!8052)

(declare-fun setNonEmpty!32186 () Bool)

(declare-fun tp!1451402 () Bool)

(assert (=> setNonEmpty!32186 (= setRes!32186 (and tp!1451402 (inv!79853 setElem!32186) e!3223652))))

(declare-fun setRest!32185 () (Set Context!8052))

(assert (=> setNonEmpty!32186 (= baseZ!62 (set.union (set.insert setElem!32186 (as set.empty (Set Context!8052))) setRest!32185))))

(declare-fun b!5173518 () Bool)

(declare-fun tp!1451401 () Bool)

(assert (=> b!5173518 (= e!3223655 (and tp_is_empty!38537 tp!1451401))))

(declare-fun b!5173519 () Bool)

(declare-fun tp!1451404 () Bool)

(assert (=> b!5173519 (= e!3223652 tp!1451404)))

(declare-fun setIsEmpty!32186 () Bool)

(assert (=> setIsEmpty!32186 setRes!32185))

(assert (= (and start!547762 res!2198796) b!5173515))

(assert (= (and b!5173515 res!2198795) b!5173514))

(assert (= (and start!547762 (is-Cons!60129 testedP!294)) b!5173518))

(assert (= (and start!547762 (is-Cons!60129 input!5817)) b!5173517))

(assert (= (and start!547762 condSetEmpty!32185) setIsEmpty!32185))

(assert (= (and start!547762 (not condSetEmpty!32185)) setNonEmpty!32186))

(assert (= setNonEmpty!32186 b!5173519))

(assert (= (and start!547762 condSetEmpty!32186) setIsEmpty!32186))

(assert (= (and start!547762 (not condSetEmpty!32186)) setNonEmpty!32185))

(assert (= setNonEmpty!32185 b!5173516))

(declare-fun m!6227196 () Bool)

(assert (=> b!5173514 m!6227196))

(declare-fun m!6227198 () Bool)

(assert (=> b!5173514 m!6227198))

(declare-fun m!6227200 () Bool)

(assert (=> setNonEmpty!32185 m!6227200))

(declare-fun m!6227202 () Bool)

(assert (=> b!5173515 m!6227202))

(declare-fun m!6227204 () Bool)

(assert (=> setNonEmpty!32186 m!6227204))

(declare-fun m!6227206 () Bool)

(assert (=> start!547762 m!6227206))

(push 1)

(assert (not b!5173518))

(assert (not setNonEmpty!32186))

(assert (not start!547762))

(assert (not setNonEmpty!32185))

(assert (not b!5173517))

(assert (not b!5173515))

(assert (not b!5173514))

(assert (not b!5173519))

(assert (not b!5173516))

(assert tp_is_empty!38537)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1669697 () Bool)

(declare-fun c!890705 () Bool)

(assert (=> d!1669697 (= c!890705 (is-Cons!60129 testedP!294))))

(declare-fun e!3223673 () (Set Context!8052))

(assert (=> d!1669697 (= (derivationZipper!265 baseZ!62 testedP!294) e!3223673)))

(declare-fun b!5173542 () Bool)

(declare-fun derivationStepZipper!992 ((Set Context!8052) C!29554) (Set Context!8052))

(assert (=> b!5173542 (= e!3223673 (derivationZipper!265 (derivationStepZipper!992 baseZ!62 (h!66577 testedP!294)) (t!373406 testedP!294)))))

(declare-fun b!5173543 () Bool)

(assert (=> b!5173543 (= e!3223673 baseZ!62)))

(assert (= (and d!1669697 c!890705) b!5173542))

(assert (= (and d!1669697 (not c!890705)) b!5173543))

(declare-fun m!6227220 () Bool)

(assert (=> b!5173542 m!6227220))

(assert (=> b!5173542 m!6227220))

(declare-fun m!6227222 () Bool)

(assert (=> b!5173542 m!6227222))

(assert (=> b!5173515 d!1669697))

(declare-fun d!1669701 () Bool)

(declare-fun lt!2130823 () Int)

(assert (=> d!1669701 (>= lt!2130823 0)))

(declare-fun e!3223676 () Int)

(assert (=> d!1669701 (= lt!2130823 e!3223676)))

(declare-fun c!890708 () Bool)

(assert (=> d!1669701 (= c!890708 (is-Nil!60129 input!5817))))

(assert (=> d!1669701 (= (size!39678 input!5817) lt!2130823)))

(declare-fun b!5173548 () Bool)

(assert (=> b!5173548 (= e!3223676 0)))

(declare-fun b!5173549 () Bool)

(assert (=> b!5173549 (= e!3223676 (+ 1 (size!39678 (t!373406 input!5817))))))

(assert (= (and d!1669701 c!890708) b!5173548))

(assert (= (and d!1669701 (not c!890708)) b!5173549))

(declare-fun m!6227224 () Bool)

(assert (=> b!5173549 m!6227224))

(assert (=> b!5173514 d!1669701))

(declare-fun d!1669703 () Bool)

(declare-fun lt!2130824 () Int)

(assert (=> d!1669703 (>= lt!2130824 0)))

(declare-fun e!3223677 () Int)

(assert (=> d!1669703 (= lt!2130824 e!3223677)))

(declare-fun c!890709 () Bool)

(assert (=> d!1669703 (= c!890709 (is-Nil!60129 testedP!294))))

(assert (=> d!1669703 (= (size!39678 testedP!294) lt!2130824)))

(declare-fun b!5173550 () Bool)

(assert (=> b!5173550 (= e!3223677 0)))

(declare-fun b!5173551 () Bool)

(assert (=> b!5173551 (= e!3223677 (+ 1 (size!39678 (t!373406 testedP!294))))))

(assert (= (and d!1669703 c!890709) b!5173550))

(assert (= (and d!1669703 (not c!890709)) b!5173551))

(declare-fun m!6227226 () Bool)

(assert (=> b!5173551 m!6227226))

(assert (=> b!5173514 d!1669703))

(declare-fun d!1669705 () Bool)

(declare-fun lambda!258332 () Int)

(declare-fun forall!14144 (List!60254 Int) Bool)

(assert (=> d!1669705 (= (inv!79853 setElem!32186) (forall!14144 (exprs!4526 setElem!32186) lambda!258332))))

(declare-fun bs!1203808 () Bool)

(assert (= bs!1203808 d!1669705))

(declare-fun m!6227228 () Bool)

(assert (=> bs!1203808 m!6227228))

(assert (=> setNonEmpty!32186 d!1669705))

(declare-fun b!5173562 () Bool)

(declare-fun e!3223686 () Bool)

(declare-fun tail!10163 (List!60253) List!60253)

(assert (=> b!5173562 (= e!3223686 (isPrefix!5775 (tail!10163 testedP!294) (tail!10163 input!5817)))))

(declare-fun b!5173563 () Bool)

(declare-fun e!3223684 () Bool)

(assert (=> b!5173563 (= e!3223684 (>= (size!39678 input!5817) (size!39678 testedP!294)))))

(declare-fun d!1669707 () Bool)

(assert (=> d!1669707 e!3223684))

(declare-fun res!2198813 () Bool)

(assert (=> d!1669707 (=> res!2198813 e!3223684)))

(declare-fun lt!2130827 () Bool)

(assert (=> d!1669707 (= res!2198813 (not lt!2130827))))

(declare-fun e!3223685 () Bool)

(assert (=> d!1669707 (= lt!2130827 e!3223685)))

(declare-fun res!2198814 () Bool)

(assert (=> d!1669707 (=> res!2198814 e!3223685)))

(assert (=> d!1669707 (= res!2198814 (is-Nil!60129 testedP!294))))

(assert (=> d!1669707 (= (isPrefix!5775 testedP!294 input!5817) lt!2130827)))

(declare-fun b!5173560 () Bool)

(assert (=> b!5173560 (= e!3223685 e!3223686)))

(declare-fun res!2198811 () Bool)

(assert (=> b!5173560 (=> (not res!2198811) (not e!3223686))))

(assert (=> b!5173560 (= res!2198811 (not (is-Nil!60129 input!5817)))))

(declare-fun b!5173561 () Bool)

(declare-fun res!2198812 () Bool)

(assert (=> b!5173561 (=> (not res!2198812) (not e!3223686))))

(declare-fun head!11064 (List!60253) C!29554)

(assert (=> b!5173561 (= res!2198812 (= (head!11064 testedP!294) (head!11064 input!5817)))))

(assert (= (and d!1669707 (not res!2198814)) b!5173560))

(assert (= (and b!5173560 res!2198811) b!5173561))

(assert (= (and b!5173561 res!2198812) b!5173562))

(assert (= (and d!1669707 (not res!2198813)) b!5173563))

(declare-fun m!6227230 () Bool)

(assert (=> b!5173562 m!6227230))

(declare-fun m!6227232 () Bool)

(assert (=> b!5173562 m!6227232))

(assert (=> b!5173562 m!6227230))

(assert (=> b!5173562 m!6227232))

(declare-fun m!6227234 () Bool)

(assert (=> b!5173562 m!6227234))

(assert (=> b!5173563 m!6227196))

(assert (=> b!5173563 m!6227198))

(declare-fun m!6227236 () Bool)

(assert (=> b!5173561 m!6227236))

(declare-fun m!6227238 () Bool)

(assert (=> b!5173561 m!6227238))

(assert (=> start!547762 d!1669707))

(declare-fun bs!1203809 () Bool)

(declare-fun d!1669709 () Bool)

(assert (= bs!1203809 (and d!1669709 d!1669705)))

(declare-fun lambda!258333 () Int)

(assert (=> bs!1203809 (= lambda!258333 lambda!258332)))

(assert (=> d!1669709 (= (inv!79853 setElem!32185) (forall!14144 (exprs!4526 setElem!32185) lambda!258333))))

(declare-fun bs!1203810 () Bool)

(assert (= bs!1203810 d!1669709))

(declare-fun m!6227240 () Bool)

(assert (=> bs!1203810 m!6227240))

(assert (=> setNonEmpty!32185 d!1669709))

(declare-fun b!5173568 () Bool)

(declare-fun e!3223689 () Bool)

(declare-fun tp!1451426 () Bool)

(assert (=> b!5173568 (= e!3223689 (and tp_is_empty!38537 tp!1451426))))

(assert (=> b!5173518 (= tp!1451401 e!3223689)))

(assert (= (and b!5173518 (is-Cons!60129 (t!373406 testedP!294))) b!5173568))

(declare-fun b!5173569 () Bool)

(declare-fun e!3223690 () Bool)

(declare-fun tp!1451427 () Bool)

(assert (=> b!5173569 (= e!3223690 (and tp_is_empty!38537 tp!1451427))))

(assert (=> b!5173517 (= tp!1451405 e!3223690)))

(assert (= (and b!5173517 (is-Cons!60129 (t!373406 input!5817))) b!5173569))

(declare-fun condSetEmpty!32195 () Bool)

(assert (=> setNonEmpty!32186 (= condSetEmpty!32195 (= setRest!32185 (as set.empty (Set Context!8052))))))

(declare-fun setRes!32195 () Bool)

(assert (=> setNonEmpty!32186 (= tp!1451402 setRes!32195)))

(declare-fun setIsEmpty!32195 () Bool)

(assert (=> setIsEmpty!32195 setRes!32195))

(declare-fun e!3223693 () Bool)

(declare-fun setElem!32195 () Context!8052)

(declare-fun setNonEmpty!32195 () Bool)

(declare-fun tp!1451432 () Bool)

(assert (=> setNonEmpty!32195 (= setRes!32195 (and tp!1451432 (inv!79853 setElem!32195) e!3223693))))

(declare-fun setRest!32195 () (Set Context!8052))

(assert (=> setNonEmpty!32195 (= setRest!32185 (set.union (set.insert setElem!32195 (as set.empty (Set Context!8052))) setRest!32195))))

(declare-fun b!5173574 () Bool)

(declare-fun tp!1451433 () Bool)

(assert (=> b!5173574 (= e!3223693 tp!1451433)))

(assert (= (and setNonEmpty!32186 condSetEmpty!32195) setIsEmpty!32195))

(assert (= (and setNonEmpty!32186 (not condSetEmpty!32195)) setNonEmpty!32195))

(assert (= setNonEmpty!32195 b!5173574))

(declare-fun m!6227242 () Bool)

(assert (=> setNonEmpty!32195 m!6227242))

(declare-fun b!5173579 () Bool)

(declare-fun e!3223696 () Bool)

(declare-fun tp!1451438 () Bool)

(declare-fun tp!1451439 () Bool)

(assert (=> b!5173579 (= e!3223696 (and tp!1451438 tp!1451439))))

(assert (=> b!5173516 (= tp!1451400 e!3223696)))

(assert (= (and b!5173516 (is-Cons!60130 (exprs!4526 setElem!32185))) b!5173579))

(declare-fun b!5173580 () Bool)

(declare-fun e!3223697 () Bool)

(declare-fun tp!1451440 () Bool)

(declare-fun tp!1451441 () Bool)

(assert (=> b!5173580 (= e!3223697 (and tp!1451440 tp!1451441))))

(assert (=> b!5173519 (= tp!1451404 e!3223697)))

(assert (= (and b!5173519 (is-Cons!60130 (exprs!4526 setElem!32186))) b!5173580))

(declare-fun condSetEmpty!32196 () Bool)

(assert (=> setNonEmpty!32185 (= condSetEmpty!32196 (= setRest!32186 (as set.empty (Set Context!8052))))))

(declare-fun setRes!32196 () Bool)

(assert (=> setNonEmpty!32185 (= tp!1451403 setRes!32196)))

(declare-fun setIsEmpty!32196 () Bool)

(assert (=> setIsEmpty!32196 setRes!32196))

(declare-fun setElem!32196 () Context!8052)

(declare-fun tp!1451442 () Bool)

(declare-fun setNonEmpty!32196 () Bool)

(declare-fun e!3223698 () Bool)

(assert (=> setNonEmpty!32196 (= setRes!32196 (and tp!1451442 (inv!79853 setElem!32196) e!3223698))))

(declare-fun setRest!32196 () (Set Context!8052))

(assert (=> setNonEmpty!32196 (= setRest!32186 (set.union (set.insert setElem!32196 (as set.empty (Set Context!8052))) setRest!32196))))

(declare-fun b!5173581 () Bool)

(declare-fun tp!1451443 () Bool)

(assert (=> b!5173581 (= e!3223698 tp!1451443)))

(assert (= (and setNonEmpty!32185 condSetEmpty!32196) setIsEmpty!32196))

(assert (= (and setNonEmpty!32185 (not condSetEmpty!32196)) setNonEmpty!32196))

(assert (= setNonEmpty!32196 b!5173581))

(declare-fun m!6227244 () Bool)

(assert (=> setNonEmpty!32196 m!6227244))

(push 1)

(assert (not b!5173563))

(assert tp_is_empty!38537)

(assert (not b!5173549))

(assert (not b!5173568))

(assert (not setNonEmpty!32195))

(assert (not b!5173542))

(assert (not b!5173579))

(assert (not b!5173574))

(assert (not b!5173569))

(assert (not b!5173551))

(assert (not b!5173580))

(assert (not b!5173581))

(assert (not d!1669705))

(assert (not d!1669709))

(assert (not setNonEmpty!32196))

(assert (not b!5173562))

(assert (not b!5173561))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


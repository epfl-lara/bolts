; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!548828 () Bool)

(assert start!548828)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29612 0))(
  ( (C!29613 (val!24508 Int)) )
))
(declare-datatypes ((Regex!14671 0))(
  ( (ElementMatch!14671 (c!893224 C!29612)) (Concat!23516 (regOne!29854 Regex!14671) (regTwo!29854 Regex!14671)) (EmptyExpr!14671) (Star!14671 (reg!15000 Regex!14671)) (EmptyLang!14671) (Union!14671 (regOne!29855 Regex!14671) (regTwo!29855 Regex!14671)) )
))
(declare-datatypes ((List!60321 0))(
  ( (Nil!60197) (Cons!60197 (h!66645 Regex!14671) (t!373474 List!60321)) )
))
(declare-datatypes ((Context!8110 0))(
  ( (Context!8111 (exprs!4555 List!60321)) )
))
(declare-fun baseZ!87 () (InoxSet Context!8110))

(declare-fun e!3228782 () Bool)

(declare-fun b!5182283 () Bool)

(declare-datatypes ((List!60322 0))(
  ( (Nil!60198) (Cons!60198 (h!66646 C!29612) (t!373475 List!60322)) )
))
(declare-fun input!5952 () List!60322)

(declare-fun z!4835 () (InoxSet Context!8110))

(declare-fun derivationZipper!294 ((InoxSet Context!8110) List!60322) (InoxSet Context!8110))

(declare-fun derivationStepZipper!1017 ((InoxSet Context!8110) C!29612) (InoxSet Context!8110))

(assert (=> b!5182283 (= e!3228782 (not (= (derivationZipper!294 (derivationStepZipper!1017 baseZ!87 (h!66646 input!5952)) (t!373475 input!5952)) z!4835)))))

(declare-fun res!2201452 () Bool)

(assert (=> start!548828 (=> (not res!2201452) (not e!3228782))))

(assert (=> start!548828 (= res!2201452 (= (derivationZipper!294 baseZ!87 input!5952) z!4835))))

(assert (=> start!548828 e!3228782))

(declare-fun condSetEmpty!32494 () Bool)

(assert (=> start!548828 (= condSetEmpty!32494 (= baseZ!87 ((as const (Array Context!8110 Bool)) false)))))

(declare-fun setRes!32493 () Bool)

(assert (=> start!548828 setRes!32493))

(declare-fun e!3228781 () Bool)

(assert (=> start!548828 e!3228781))

(declare-fun condSetEmpty!32493 () Bool)

(assert (=> start!548828 (= condSetEmpty!32493 (= z!4835 ((as const (Array Context!8110 Bool)) false)))))

(declare-fun setRes!32494 () Bool)

(assert (=> start!548828 setRes!32494))

(declare-fun b!5182284 () Bool)

(declare-fun e!3228779 () Bool)

(declare-fun tp!1453427 () Bool)

(assert (=> b!5182284 (= e!3228779 tp!1453427)))

(declare-fun b!5182285 () Bool)

(declare-fun e!3228780 () Bool)

(declare-fun tp!1453423 () Bool)

(assert (=> b!5182285 (= e!3228780 tp!1453423)))

(declare-fun setIsEmpty!32493 () Bool)

(assert (=> setIsEmpty!32493 setRes!32493))

(declare-fun b!5182286 () Bool)

(declare-fun res!2201451 () Bool)

(assert (=> b!5182286 (=> (not res!2201451) (not e!3228782))))

(get-info :version)

(assert (=> b!5182286 (= res!2201451 ((_ is Cons!60198) input!5952))))

(declare-fun tp!1453426 () Bool)

(declare-fun setNonEmpty!32493 () Bool)

(declare-fun setElem!32493 () Context!8110)

(declare-fun inv!79924 (Context!8110) Bool)

(assert (=> setNonEmpty!32493 (= setRes!32494 (and tp!1453426 (inv!79924 setElem!32493) e!3228780))))

(declare-fun setRest!32494 () (InoxSet Context!8110))

(assert (=> setNonEmpty!32493 (= z!4835 ((_ map or) (store ((as const (Array Context!8110 Bool)) false) setElem!32493 true) setRest!32494))))

(declare-fun setIsEmpty!32494 () Bool)

(assert (=> setIsEmpty!32494 setRes!32494))

(declare-fun b!5182287 () Bool)

(declare-fun tp_is_empty!38595 () Bool)

(declare-fun tp!1453425 () Bool)

(assert (=> b!5182287 (= e!3228781 (and tp_is_empty!38595 tp!1453425))))

(declare-fun setElem!32494 () Context!8110)

(declare-fun setNonEmpty!32494 () Bool)

(declare-fun tp!1453424 () Bool)

(assert (=> setNonEmpty!32494 (= setRes!32493 (and tp!1453424 (inv!79924 setElem!32494) e!3228779))))

(declare-fun setRest!32493 () (InoxSet Context!8110))

(assert (=> setNonEmpty!32494 (= baseZ!87 ((_ map or) (store ((as const (Array Context!8110 Bool)) false) setElem!32494 true) setRest!32493))))

(assert (= (and start!548828 res!2201452) b!5182286))

(assert (= (and b!5182286 res!2201451) b!5182283))

(assert (= (and start!548828 condSetEmpty!32494) setIsEmpty!32493))

(assert (= (and start!548828 (not condSetEmpty!32494)) setNonEmpty!32494))

(assert (= setNonEmpty!32494 b!5182284))

(assert (= (and start!548828 ((_ is Cons!60198) input!5952)) b!5182287))

(assert (= (and start!548828 condSetEmpty!32493) setIsEmpty!32494))

(assert (= (and start!548828 (not condSetEmpty!32493)) setNonEmpty!32493))

(assert (= setNonEmpty!32493 b!5182285))

(declare-fun m!6242514 () Bool)

(assert (=> b!5182283 m!6242514))

(assert (=> b!5182283 m!6242514))

(declare-fun m!6242516 () Bool)

(assert (=> b!5182283 m!6242516))

(declare-fun m!6242518 () Bool)

(assert (=> start!548828 m!6242518))

(declare-fun m!6242520 () Bool)

(assert (=> setNonEmpty!32493 m!6242520))

(declare-fun m!6242522 () Bool)

(assert (=> setNonEmpty!32494 m!6242522))

(check-sat tp_is_empty!38595 (not setNonEmpty!32493) (not b!5182287) (not start!548828) (not b!5182283) (not b!5182285) (not setNonEmpty!32494) (not b!5182284))
(check-sat)
(get-model)

(declare-fun d!1675799 () Bool)

(declare-fun lambda!259072 () Int)

(declare-fun forall!14183 (List!60321 Int) Bool)

(assert (=> d!1675799 (= (inv!79924 setElem!32494) (forall!14183 (exprs!4555 setElem!32494) lambda!259072))))

(declare-fun bs!1208014 () Bool)

(assert (= bs!1208014 d!1675799))

(declare-fun m!6242524 () Bool)

(assert (=> bs!1208014 m!6242524))

(assert (=> setNonEmpty!32494 d!1675799))

(declare-fun d!1675803 () Bool)

(declare-fun c!893227 () Bool)

(assert (=> d!1675803 (= c!893227 ((_ is Cons!60198) (t!373475 input!5952)))))

(declare-fun e!3228785 () (InoxSet Context!8110))

(assert (=> d!1675803 (= (derivationZipper!294 (derivationStepZipper!1017 baseZ!87 (h!66646 input!5952)) (t!373475 input!5952)) e!3228785)))

(declare-fun b!5182292 () Bool)

(assert (=> b!5182292 (= e!3228785 (derivationZipper!294 (derivationStepZipper!1017 (derivationStepZipper!1017 baseZ!87 (h!66646 input!5952)) (h!66646 (t!373475 input!5952))) (t!373475 (t!373475 input!5952))))))

(declare-fun b!5182293 () Bool)

(assert (=> b!5182293 (= e!3228785 (derivationStepZipper!1017 baseZ!87 (h!66646 input!5952)))))

(assert (= (and d!1675803 c!893227) b!5182292))

(assert (= (and d!1675803 (not c!893227)) b!5182293))

(assert (=> b!5182292 m!6242514))

(declare-fun m!6242526 () Bool)

(assert (=> b!5182292 m!6242526))

(assert (=> b!5182292 m!6242526))

(declare-fun m!6242528 () Bool)

(assert (=> b!5182292 m!6242528))

(assert (=> b!5182283 d!1675803))

(declare-fun d!1675805 () Bool)

(assert (=> d!1675805 true))

(declare-fun lambda!259075 () Int)

(declare-fun flatMap!467 ((InoxSet Context!8110) Int) (InoxSet Context!8110))

(assert (=> d!1675805 (= (derivationStepZipper!1017 baseZ!87 (h!66646 input!5952)) (flatMap!467 baseZ!87 lambda!259075))))

(declare-fun bs!1208015 () Bool)

(assert (= bs!1208015 d!1675805))

(declare-fun m!6242530 () Bool)

(assert (=> bs!1208015 m!6242530))

(assert (=> b!5182283 d!1675805))

(declare-fun bs!1208016 () Bool)

(declare-fun d!1675807 () Bool)

(assert (= bs!1208016 (and d!1675807 d!1675799)))

(declare-fun lambda!259078 () Int)

(assert (=> bs!1208016 (= lambda!259078 lambda!259072)))

(assert (=> d!1675807 (= (inv!79924 setElem!32493) (forall!14183 (exprs!4555 setElem!32493) lambda!259078))))

(declare-fun bs!1208017 () Bool)

(assert (= bs!1208017 d!1675807))

(declare-fun m!6242532 () Bool)

(assert (=> bs!1208017 m!6242532))

(assert (=> setNonEmpty!32493 d!1675807))

(declare-fun d!1675809 () Bool)

(declare-fun c!893230 () Bool)

(assert (=> d!1675809 (= c!893230 ((_ is Cons!60198) input!5952))))

(declare-fun e!3228786 () (InoxSet Context!8110))

(assert (=> d!1675809 (= (derivationZipper!294 baseZ!87 input!5952) e!3228786)))

(declare-fun b!5182296 () Bool)

(assert (=> b!5182296 (= e!3228786 (derivationZipper!294 (derivationStepZipper!1017 baseZ!87 (h!66646 input!5952)) (t!373475 input!5952)))))

(declare-fun b!5182297 () Bool)

(assert (=> b!5182297 (= e!3228786 baseZ!87)))

(assert (= (and d!1675809 c!893230) b!5182296))

(assert (= (and d!1675809 (not c!893230)) b!5182297))

(assert (=> b!5182296 m!6242514))

(assert (=> b!5182296 m!6242514))

(assert (=> b!5182296 m!6242516))

(assert (=> start!548828 d!1675809))

(declare-fun condSetEmpty!32497 () Bool)

(assert (=> setNonEmpty!32494 (= condSetEmpty!32497 (= setRest!32493 ((as const (Array Context!8110 Bool)) false)))))

(declare-fun setRes!32497 () Bool)

(assert (=> setNonEmpty!32494 (= tp!1453424 setRes!32497)))

(declare-fun setIsEmpty!32497 () Bool)

(assert (=> setIsEmpty!32497 setRes!32497))

(declare-fun e!3228789 () Bool)

(declare-fun setElem!32497 () Context!8110)

(declare-fun tp!1453433 () Bool)

(declare-fun setNonEmpty!32497 () Bool)

(assert (=> setNonEmpty!32497 (= setRes!32497 (and tp!1453433 (inv!79924 setElem!32497) e!3228789))))

(declare-fun setRest!32497 () (InoxSet Context!8110))

(assert (=> setNonEmpty!32497 (= setRest!32493 ((_ map or) (store ((as const (Array Context!8110 Bool)) false) setElem!32497 true) setRest!32497))))

(declare-fun b!5182302 () Bool)

(declare-fun tp!1453432 () Bool)

(assert (=> b!5182302 (= e!3228789 tp!1453432)))

(assert (= (and setNonEmpty!32494 condSetEmpty!32497) setIsEmpty!32497))

(assert (= (and setNonEmpty!32494 (not condSetEmpty!32497)) setNonEmpty!32497))

(assert (= setNonEmpty!32497 b!5182302))

(declare-fun m!6242536 () Bool)

(assert (=> setNonEmpty!32497 m!6242536))

(declare-fun condSetEmpty!32498 () Bool)

(assert (=> setNonEmpty!32493 (= condSetEmpty!32498 (= setRest!32494 ((as const (Array Context!8110 Bool)) false)))))

(declare-fun setRes!32498 () Bool)

(assert (=> setNonEmpty!32493 (= tp!1453426 setRes!32498)))

(declare-fun setIsEmpty!32498 () Bool)

(assert (=> setIsEmpty!32498 setRes!32498))

(declare-fun e!3228790 () Bool)

(declare-fun tp!1453435 () Bool)

(declare-fun setElem!32498 () Context!8110)

(declare-fun setNonEmpty!32498 () Bool)

(assert (=> setNonEmpty!32498 (= setRes!32498 (and tp!1453435 (inv!79924 setElem!32498) e!3228790))))

(declare-fun setRest!32498 () (InoxSet Context!8110))

(assert (=> setNonEmpty!32498 (= setRest!32494 ((_ map or) (store ((as const (Array Context!8110 Bool)) false) setElem!32498 true) setRest!32498))))

(declare-fun b!5182303 () Bool)

(declare-fun tp!1453434 () Bool)

(assert (=> b!5182303 (= e!3228790 tp!1453434)))

(assert (= (and setNonEmpty!32493 condSetEmpty!32498) setIsEmpty!32498))

(assert (= (and setNonEmpty!32493 (not condSetEmpty!32498)) setNonEmpty!32498))

(assert (= setNonEmpty!32498 b!5182303))

(declare-fun m!6242538 () Bool)

(assert (=> setNonEmpty!32498 m!6242538))

(declare-fun b!5182308 () Bool)

(declare-fun e!3228793 () Bool)

(declare-fun tp!1453440 () Bool)

(declare-fun tp!1453441 () Bool)

(assert (=> b!5182308 (= e!3228793 (and tp!1453440 tp!1453441))))

(assert (=> b!5182284 (= tp!1453427 e!3228793)))

(assert (= (and b!5182284 ((_ is Cons!60197) (exprs!4555 setElem!32494))) b!5182308))

(declare-fun b!5182309 () Bool)

(declare-fun e!3228794 () Bool)

(declare-fun tp!1453442 () Bool)

(declare-fun tp!1453443 () Bool)

(assert (=> b!5182309 (= e!3228794 (and tp!1453442 tp!1453443))))

(assert (=> b!5182285 (= tp!1453423 e!3228794)))

(assert (= (and b!5182285 ((_ is Cons!60197) (exprs!4555 setElem!32493))) b!5182309))

(declare-fun b!5182314 () Bool)

(declare-fun e!3228797 () Bool)

(declare-fun tp!1453446 () Bool)

(assert (=> b!5182314 (= e!3228797 (and tp_is_empty!38595 tp!1453446))))

(assert (=> b!5182287 (= tp!1453425 e!3228797)))

(assert (= (and b!5182287 ((_ is Cons!60198) (t!373475 input!5952))) b!5182314))

(check-sat (not b!5182292) tp_is_empty!38595 (not setNonEmpty!32497) (not b!5182308) (not d!1675807) (not b!5182302) (not b!5182303) (not setNonEmpty!32498) (not b!5182314) (not b!5182296) (not d!1675805) (not d!1675799) (not b!5182309))
(check-sat)

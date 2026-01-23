; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!548844 () Bool)

(assert start!548844)

(declare-fun setRes!32513 () Bool)

(declare-datatypes ((C!29616 0))(
  ( (C!29617 (val!24510 Int)) )
))
(declare-datatypes ((Regex!14673 0))(
  ( (ElementMatch!14673 (c!893238 C!29616)) (Concat!23518 (regOne!29858 Regex!14673) (regTwo!29858 Regex!14673)) (EmptyExpr!14673) (Star!14673 (reg!15002 Regex!14673)) (EmptyLang!14673) (Union!14673 (regOne!29859 Regex!14673) (regTwo!29859 Regex!14673)) )
))
(declare-datatypes ((List!60325 0))(
  ( (Nil!60201) (Cons!60201 (h!66649 Regex!14673) (t!373478 List!60325)) )
))
(declare-datatypes ((Context!8114 0))(
  ( (Context!8115 (exprs!4557 List!60325)) )
))
(declare-fun setElem!32514 () Context!8114)

(declare-fun tp!1453492 () Bool)

(declare-fun e!3228834 () Bool)

(declare-fun setNonEmpty!32513 () Bool)

(declare-fun inv!79929 (Context!8114) Bool)

(assert (=> setNonEmpty!32513 (= setRes!32513 (and tp!1453492 (inv!79929 setElem!32514) e!3228834))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!87 () (InoxSet Context!8114))

(declare-fun setRest!32514 () (InoxSet Context!8114))

(assert (=> setNonEmpty!32513 (= baseZ!87 ((_ map or) (store ((as const (Array Context!8114 Bool)) false) setElem!32514 true) setRest!32514))))

(declare-fun b!5182372 () Bool)

(declare-fun res!2201468 () Bool)

(declare-fun e!3228833 () Bool)

(assert (=> b!5182372 (=> (not res!2201468) (not e!3228833))))

(declare-datatypes ((List!60326 0))(
  ( (Nil!60202) (Cons!60202 (h!66650 C!29616) (t!373479 List!60326)) )
))
(declare-fun input!5952 () List!60326)

(get-info :version)

(assert (=> b!5182372 (= res!2201468 ((_ is Cons!60202) input!5952))))

(declare-fun b!5182373 () Bool)

(declare-fun tp!1453491 () Bool)

(assert (=> b!5182373 (= e!3228834 tp!1453491)))

(declare-fun b!5182374 () Bool)

(declare-fun res!2201470 () Bool)

(assert (=> b!5182374 (=> (not res!2201470) (not e!3228833))))

(declare-fun z!4835 () (InoxSet Context!8114))

(declare-fun derivationZipper!296 ((InoxSet Context!8114) List!60326) (InoxSet Context!8114))

(declare-fun derivationStepZipper!1019 ((InoxSet Context!8114) C!29616) (InoxSet Context!8114))

(assert (=> b!5182374 (= res!2201470 (= (derivationZipper!296 (derivationStepZipper!1019 baseZ!87 (h!66650 input!5952)) (t!373479 input!5952)) z!4835))))

(declare-fun res!2201469 () Bool)

(assert (=> start!548844 (=> (not res!2201469) (not e!3228833))))

(assert (=> start!548844 (= res!2201469 (= (derivationZipper!296 baseZ!87 input!5952) z!4835))))

(assert (=> start!548844 e!3228833))

(declare-fun condSetEmpty!32514 () Bool)

(assert (=> start!548844 (= condSetEmpty!32514 (= baseZ!87 ((as const (Array Context!8114 Bool)) false)))))

(assert (=> start!548844 setRes!32513))

(declare-fun e!3228836 () Bool)

(assert (=> start!548844 e!3228836))

(declare-fun condSetEmpty!32513 () Bool)

(assert (=> start!548844 (= condSetEmpty!32513 (= z!4835 ((as const (Array Context!8114 Bool)) false)))))

(declare-fun setRes!32514 () Bool)

(assert (=> start!548844 setRes!32514))

(declare-fun b!5182375 () Bool)

(declare-fun e!3228835 () Bool)

(declare-fun tp!1453495 () Bool)

(assert (=> b!5182375 (= e!3228835 tp!1453495)))

(declare-fun setIsEmpty!32513 () Bool)

(assert (=> setIsEmpty!32513 setRes!32513))

(declare-fun b!5182376 () Bool)

(declare-fun size!39701 (List!60326) Int)

(assert (=> b!5182376 (= e!3228833 (>= (size!39701 (t!373479 input!5952)) (size!39701 input!5952)))))

(declare-fun b!5182377 () Bool)

(declare-fun tp_is_empty!38599 () Bool)

(declare-fun tp!1453494 () Bool)

(assert (=> b!5182377 (= e!3228836 (and tp_is_empty!38599 tp!1453494))))

(declare-fun setElem!32513 () Context!8114)

(declare-fun tp!1453493 () Bool)

(declare-fun setNonEmpty!32514 () Bool)

(assert (=> setNonEmpty!32514 (= setRes!32514 (and tp!1453493 (inv!79929 setElem!32513) e!3228835))))

(declare-fun setRest!32513 () (InoxSet Context!8114))

(assert (=> setNonEmpty!32514 (= z!4835 ((_ map or) (store ((as const (Array Context!8114 Bool)) false) setElem!32513 true) setRest!32513))))

(declare-fun setIsEmpty!32514 () Bool)

(assert (=> setIsEmpty!32514 setRes!32514))

(assert (= (and start!548844 res!2201469) b!5182372))

(assert (= (and b!5182372 res!2201468) b!5182374))

(assert (= (and b!5182374 res!2201470) b!5182376))

(assert (= (and start!548844 condSetEmpty!32514) setIsEmpty!32513))

(assert (= (and start!548844 (not condSetEmpty!32514)) setNonEmpty!32513))

(assert (= setNonEmpty!32513 b!5182373))

(assert (= (and start!548844 ((_ is Cons!60202) input!5952)) b!5182377))

(assert (= (and start!548844 condSetEmpty!32513) setIsEmpty!32514))

(assert (= (and start!548844 (not condSetEmpty!32513)) setNonEmpty!32514))

(assert (= setNonEmpty!32514 b!5182375))

(declare-fun m!6242566 () Bool)

(assert (=> start!548844 m!6242566))

(declare-fun m!6242568 () Bool)

(assert (=> setNonEmpty!32513 m!6242568))

(declare-fun m!6242570 () Bool)

(assert (=> b!5182376 m!6242570))

(declare-fun m!6242572 () Bool)

(assert (=> b!5182376 m!6242572))

(declare-fun m!6242574 () Bool)

(assert (=> b!5182374 m!6242574))

(assert (=> b!5182374 m!6242574))

(declare-fun m!6242576 () Bool)

(assert (=> b!5182374 m!6242576))

(declare-fun m!6242578 () Bool)

(assert (=> setNonEmpty!32514 m!6242578))

(check-sat (not b!5182373) (not b!5182376) (not b!5182377) (not setNonEmpty!32514) (not start!548844) (not b!5182375) (not setNonEmpty!32513) tp_is_empty!38599 (not b!5182374))
(check-sat)
(get-model)

(declare-fun d!1675820 () Bool)

(declare-fun lambda!259093 () Int)

(declare-fun forall!14186 (List!60325 Int) Bool)

(assert (=> d!1675820 (= (inv!79929 setElem!32513) (forall!14186 (exprs!4557 setElem!32513) lambda!259093))))

(declare-fun bs!1208028 () Bool)

(assert (= bs!1208028 d!1675820))

(declare-fun m!6242596 () Bool)

(assert (=> bs!1208028 m!6242596))

(assert (=> setNonEmpty!32514 d!1675820))

(declare-fun d!1675836 () Bool)

(declare-fun c!893251 () Bool)

(assert (=> d!1675836 (= c!893251 ((_ is Cons!60202) input!5952))))

(declare-fun e!3228858 () (InoxSet Context!8114))

(assert (=> d!1675836 (= (derivationZipper!296 baseZ!87 input!5952) e!3228858)))

(declare-fun b!5182417 () Bool)

(assert (=> b!5182417 (= e!3228858 (derivationZipper!296 (derivationStepZipper!1019 baseZ!87 (h!66650 input!5952)) (t!373479 input!5952)))))

(declare-fun b!5182418 () Bool)

(assert (=> b!5182418 (= e!3228858 baseZ!87)))

(assert (= (and d!1675836 c!893251) b!5182417))

(assert (= (and d!1675836 (not c!893251)) b!5182418))

(assert (=> b!5182417 m!6242574))

(assert (=> b!5182417 m!6242574))

(assert (=> b!5182417 m!6242576))

(assert (=> start!548844 d!1675836))

(declare-fun d!1675838 () Bool)

(declare-fun c!893252 () Bool)

(assert (=> d!1675838 (= c!893252 ((_ is Cons!60202) (t!373479 input!5952)))))

(declare-fun e!3228859 () (InoxSet Context!8114))

(assert (=> d!1675838 (= (derivationZipper!296 (derivationStepZipper!1019 baseZ!87 (h!66650 input!5952)) (t!373479 input!5952)) e!3228859)))

(declare-fun b!5182419 () Bool)

(assert (=> b!5182419 (= e!3228859 (derivationZipper!296 (derivationStepZipper!1019 (derivationStepZipper!1019 baseZ!87 (h!66650 input!5952)) (h!66650 (t!373479 input!5952))) (t!373479 (t!373479 input!5952))))))

(declare-fun b!5182420 () Bool)

(assert (=> b!5182420 (= e!3228859 (derivationStepZipper!1019 baseZ!87 (h!66650 input!5952)))))

(assert (= (and d!1675838 c!893252) b!5182419))

(assert (= (and d!1675838 (not c!893252)) b!5182420))

(assert (=> b!5182419 m!6242574))

(declare-fun m!6242598 () Bool)

(assert (=> b!5182419 m!6242598))

(assert (=> b!5182419 m!6242598))

(declare-fun m!6242600 () Bool)

(assert (=> b!5182419 m!6242600))

(assert (=> b!5182374 d!1675838))

(declare-fun d!1675840 () Bool)

(assert (=> d!1675840 true))

(declare-fun lambda!259096 () Int)

(declare-fun flatMap!470 ((InoxSet Context!8114) Int) (InoxSet Context!8114))

(assert (=> d!1675840 (= (derivationStepZipper!1019 baseZ!87 (h!66650 input!5952)) (flatMap!470 baseZ!87 lambda!259096))))

(declare-fun bs!1208029 () Bool)

(assert (= bs!1208029 d!1675840))

(declare-fun m!6242602 () Bool)

(assert (=> bs!1208029 m!6242602))

(assert (=> b!5182374 d!1675840))

(declare-fun bs!1208030 () Bool)

(declare-fun d!1675842 () Bool)

(assert (= bs!1208030 (and d!1675842 d!1675820)))

(declare-fun lambda!259097 () Int)

(assert (=> bs!1208030 (= lambda!259097 lambda!259093)))

(assert (=> d!1675842 (= (inv!79929 setElem!32514) (forall!14186 (exprs!4557 setElem!32514) lambda!259097))))

(declare-fun bs!1208031 () Bool)

(assert (= bs!1208031 d!1675842))

(declare-fun m!6242604 () Bool)

(assert (=> bs!1208031 m!6242604))

(assert (=> setNonEmpty!32513 d!1675842))

(declare-fun d!1675844 () Bool)

(declare-fun lt!2136041 () Int)

(assert (=> d!1675844 (>= lt!2136041 0)))

(declare-fun e!3228862 () Int)

(assert (=> d!1675844 (= lt!2136041 e!3228862)))

(declare-fun c!893257 () Bool)

(assert (=> d!1675844 (= c!893257 ((_ is Nil!60202) (t!373479 input!5952)))))

(assert (=> d!1675844 (= (size!39701 (t!373479 input!5952)) lt!2136041)))

(declare-fun b!5182427 () Bool)

(assert (=> b!5182427 (= e!3228862 0)))

(declare-fun b!5182428 () Bool)

(assert (=> b!5182428 (= e!3228862 (+ 1 (size!39701 (t!373479 (t!373479 input!5952)))))))

(assert (= (and d!1675844 c!893257) b!5182427))

(assert (= (and d!1675844 (not c!893257)) b!5182428))

(declare-fun m!6242606 () Bool)

(assert (=> b!5182428 m!6242606))

(assert (=> b!5182376 d!1675844))

(declare-fun d!1675846 () Bool)

(declare-fun lt!2136042 () Int)

(assert (=> d!1675846 (>= lt!2136042 0)))

(declare-fun e!3228863 () Int)

(assert (=> d!1675846 (= lt!2136042 e!3228863)))

(declare-fun c!893258 () Bool)

(assert (=> d!1675846 (= c!893258 ((_ is Nil!60202) input!5952))))

(assert (=> d!1675846 (= (size!39701 input!5952) lt!2136042)))

(declare-fun b!5182429 () Bool)

(assert (=> b!5182429 (= e!3228863 0)))

(declare-fun b!5182430 () Bool)

(assert (=> b!5182430 (= e!3228863 (+ 1 (size!39701 (t!373479 input!5952))))))

(assert (= (and d!1675846 c!893258) b!5182429))

(assert (= (and d!1675846 (not c!893258)) b!5182430))

(assert (=> b!5182430 m!6242570))

(assert (=> b!5182376 d!1675846))

(declare-fun condSetEmpty!32521 () Bool)

(assert (=> setNonEmpty!32514 (= condSetEmpty!32521 (= setRest!32513 ((as const (Array Context!8114 Bool)) false)))))

(declare-fun setRes!32521 () Bool)

(assert (=> setNonEmpty!32514 (= tp!1453493 setRes!32521)))

(declare-fun setIsEmpty!32521 () Bool)

(assert (=> setIsEmpty!32521 setRes!32521))

(declare-fun e!3228866 () Bool)

(declare-fun setNonEmpty!32521 () Bool)

(declare-fun tp!1453519 () Bool)

(declare-fun setElem!32521 () Context!8114)

(assert (=> setNonEmpty!32521 (= setRes!32521 (and tp!1453519 (inv!79929 setElem!32521) e!3228866))))

(declare-fun setRest!32521 () (InoxSet Context!8114))

(assert (=> setNonEmpty!32521 (= setRest!32513 ((_ map or) (store ((as const (Array Context!8114 Bool)) false) setElem!32521 true) setRest!32521))))

(declare-fun b!5182435 () Bool)

(declare-fun tp!1453520 () Bool)

(assert (=> b!5182435 (= e!3228866 tp!1453520)))

(assert (= (and setNonEmpty!32514 condSetEmpty!32521) setIsEmpty!32521))

(assert (= (and setNonEmpty!32514 (not condSetEmpty!32521)) setNonEmpty!32521))

(assert (= setNonEmpty!32521 b!5182435))

(declare-fun m!6242608 () Bool)

(assert (=> setNonEmpty!32521 m!6242608))

(declare-fun b!5182440 () Bool)

(declare-fun e!3228869 () Bool)

(declare-fun tp!1453525 () Bool)

(declare-fun tp!1453526 () Bool)

(assert (=> b!5182440 (= e!3228869 (and tp!1453525 tp!1453526))))

(assert (=> b!5182375 (= tp!1453495 e!3228869)))

(assert (= (and b!5182375 ((_ is Cons!60201) (exprs!4557 setElem!32513))) b!5182440))

(declare-fun condSetEmpty!32522 () Bool)

(assert (=> setNonEmpty!32513 (= condSetEmpty!32522 (= setRest!32514 ((as const (Array Context!8114 Bool)) false)))))

(declare-fun setRes!32522 () Bool)

(assert (=> setNonEmpty!32513 (= tp!1453492 setRes!32522)))

(declare-fun setIsEmpty!32522 () Bool)

(assert (=> setIsEmpty!32522 setRes!32522))

(declare-fun setElem!32522 () Context!8114)

(declare-fun tp!1453527 () Bool)

(declare-fun setNonEmpty!32522 () Bool)

(declare-fun e!3228870 () Bool)

(assert (=> setNonEmpty!32522 (= setRes!32522 (and tp!1453527 (inv!79929 setElem!32522) e!3228870))))

(declare-fun setRest!32522 () (InoxSet Context!8114))

(assert (=> setNonEmpty!32522 (= setRest!32514 ((_ map or) (store ((as const (Array Context!8114 Bool)) false) setElem!32522 true) setRest!32522))))

(declare-fun b!5182441 () Bool)

(declare-fun tp!1453528 () Bool)

(assert (=> b!5182441 (= e!3228870 tp!1453528)))

(assert (= (and setNonEmpty!32513 condSetEmpty!32522) setIsEmpty!32522))

(assert (= (and setNonEmpty!32513 (not condSetEmpty!32522)) setNonEmpty!32522))

(assert (= setNonEmpty!32522 b!5182441))

(declare-fun m!6242610 () Bool)

(assert (=> setNonEmpty!32522 m!6242610))

(declare-fun b!5182442 () Bool)

(declare-fun e!3228871 () Bool)

(declare-fun tp!1453529 () Bool)

(declare-fun tp!1453530 () Bool)

(assert (=> b!5182442 (= e!3228871 (and tp!1453529 tp!1453530))))

(assert (=> b!5182373 (= tp!1453491 e!3228871)))

(assert (= (and b!5182373 ((_ is Cons!60201) (exprs!4557 setElem!32514))) b!5182442))

(declare-fun b!5182447 () Bool)

(declare-fun e!3228874 () Bool)

(declare-fun tp!1453533 () Bool)

(assert (=> b!5182447 (= e!3228874 (and tp_is_empty!38599 tp!1453533))))

(assert (=> b!5182377 (= tp!1453494 e!3228874)))

(assert (= (and b!5182377 ((_ is Cons!60202) (t!373479 input!5952))) b!5182447))

(check-sat (not b!5182428) (not b!5182447) (not d!1675842) (not b!5182441) (not d!1675840) (not setNonEmpty!32522) (not b!5182417) (not b!5182435) tp_is_empty!38599 (not b!5182419) (not setNonEmpty!32521) (not b!5182442) (not d!1675820) (not b!5182440) (not b!5182430))
(check-sat)

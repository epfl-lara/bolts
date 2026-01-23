; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!548812 () Bool)

(assert start!548812)

(declare-datatypes ((C!29608 0))(
  ( (C!29609 (val!24506 Int)) )
))
(declare-datatypes ((Regex!14669 0))(
  ( (ElementMatch!14669 (c!893210 C!29608)) (Concat!23514 (regOne!29850 Regex!14669) (regTwo!29850 Regex!14669)) (EmptyExpr!14669) (Star!14669 (reg!14998 Regex!14669)) (EmptyLang!14669) (Union!14669 (regOne!29851 Regex!14669) (regTwo!29851 Regex!14669)) )
))
(declare-datatypes ((List!60317 0))(
  ( (Nil!60193) (Cons!60193 (h!66641 Regex!14669) (t!373470 List!60317)) )
))
(declare-datatypes ((Context!8106 0))(
  ( (Context!8107 (exprs!4553 List!60317)) )
))
(declare-fun setElem!32474 () Context!8106)

(declare-fun tp!1453356 () Bool)

(declare-fun e!3228724 () Bool)

(declare-fun setNonEmpty!32473 () Bool)

(declare-fun setRes!32474 () Bool)

(declare-fun inv!79919 (Context!8106) Bool)

(assert (=> setNonEmpty!32473 (= setRes!32474 (and tp!1453356 (inv!79919 setElem!32474) e!3228724))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!87 () (InoxSet Context!8106))

(declare-fun setRest!32474 () (InoxSet Context!8106))

(assert (=> setNonEmpty!32473 (= baseZ!87 ((_ map or) (store ((as const (Array Context!8106 Bool)) false) setElem!32474 true) setRest!32474))))

(declare-fun b!5182196 () Bool)

(declare-fun e!3228723 () Bool)

(declare-datatypes ((List!60318 0))(
  ( (Nil!60194) (Cons!60194 (h!66642 C!29608) (t!373471 List!60318)) )
))
(declare-fun input!5952 () List!60318)

(declare-fun size!39699 (List!60318) Int)

(assert (=> b!5182196 (= e!3228723 (< (size!39699 input!5952) 0))))

(declare-fun b!5182197 () Bool)

(declare-fun tp!1453358 () Bool)

(assert (=> b!5182197 (= e!3228724 tp!1453358)))

(declare-fun b!5182198 () Bool)

(declare-fun e!3228722 () Bool)

(declare-fun tp_is_empty!38591 () Bool)

(declare-fun tp!1453355 () Bool)

(assert (=> b!5182198 (= e!3228722 (and tp_is_empty!38591 tp!1453355))))

(declare-fun setIsEmpty!32473 () Bool)

(declare-fun setRes!32473 () Bool)

(assert (=> setIsEmpty!32473 setRes!32473))

(declare-fun setNonEmpty!32474 () Bool)

(declare-fun setElem!32473 () Context!8106)

(declare-fun e!3228721 () Bool)

(declare-fun tp!1453359 () Bool)

(assert (=> setNonEmpty!32474 (= setRes!32473 (and tp!1453359 (inv!79919 setElem!32473) e!3228721))))

(declare-fun z!4835 () (InoxSet Context!8106))

(declare-fun setRest!32473 () (InoxSet Context!8106))

(assert (=> setNonEmpty!32474 (= z!4835 ((_ map or) (store ((as const (Array Context!8106 Bool)) false) setElem!32473 true) setRest!32473))))

(declare-fun b!5182199 () Bool)

(declare-fun tp!1453357 () Bool)

(assert (=> b!5182199 (= e!3228721 tp!1453357)))

(declare-fun setIsEmpty!32474 () Bool)

(assert (=> setIsEmpty!32474 setRes!32474))

(declare-fun res!2201440 () Bool)

(assert (=> start!548812 (=> (not res!2201440) (not e!3228723))))

(declare-fun derivationZipper!292 ((InoxSet Context!8106) List!60318) (InoxSet Context!8106))

(assert (=> start!548812 (= res!2201440 (= (derivationZipper!292 baseZ!87 input!5952) z!4835))))

(assert (=> start!548812 e!3228723))

(declare-fun condSetEmpty!32473 () Bool)

(assert (=> start!548812 (= condSetEmpty!32473 (= baseZ!87 ((as const (Array Context!8106 Bool)) false)))))

(assert (=> start!548812 setRes!32474))

(assert (=> start!548812 e!3228722))

(declare-fun condSetEmpty!32474 () Bool)

(assert (=> start!548812 (= condSetEmpty!32474 (= z!4835 ((as const (Array Context!8106 Bool)) false)))))

(assert (=> start!548812 setRes!32473))

(assert (= (and start!548812 res!2201440) b!5182196))

(assert (= (and start!548812 condSetEmpty!32473) setIsEmpty!32474))

(assert (= (and start!548812 (not condSetEmpty!32473)) setNonEmpty!32473))

(assert (= setNonEmpty!32473 b!5182197))

(get-info :version)

(assert (= (and start!548812 ((_ is Cons!60194) input!5952)) b!5182198))

(assert (= (and start!548812 condSetEmpty!32474) setIsEmpty!32473))

(assert (= (and start!548812 (not condSetEmpty!32474)) setNonEmpty!32474))

(assert (= setNonEmpty!32474 b!5182199))

(declare-fun m!6242468 () Bool)

(assert (=> setNonEmpty!32473 m!6242468))

(declare-fun m!6242470 () Bool)

(assert (=> b!5182196 m!6242470))

(declare-fun m!6242472 () Bool)

(assert (=> setNonEmpty!32474 m!6242472))

(declare-fun m!6242474 () Bool)

(assert (=> start!548812 m!6242474))

(check-sat (not setNonEmpty!32474) (not start!548812) tp_is_empty!38591 (not b!5182197) (not setNonEmpty!32473) (not b!5182199) (not b!5182196) (not b!5182198))
(check-sat)
(get-model)

(declare-fun d!1675784 () Bool)

(declare-fun lt!2136031 () Int)

(assert (=> d!1675784 (>= lt!2136031 0)))

(declare-fun e!3228729 () Int)

(assert (=> d!1675784 (= lt!2136031 e!3228729)))

(declare-fun c!893215 () Bool)

(assert (=> d!1675784 (= c!893215 ((_ is Nil!60194) input!5952))))

(assert (=> d!1675784 (= (size!39699 input!5952) lt!2136031)))

(declare-fun b!5182208 () Bool)

(assert (=> b!5182208 (= e!3228729 0)))

(declare-fun b!5182209 () Bool)

(assert (=> b!5182209 (= e!3228729 (+ 1 (size!39699 (t!373471 input!5952))))))

(assert (= (and d!1675784 c!893215) b!5182208))

(assert (= (and d!1675784 (not c!893215)) b!5182209))

(declare-fun m!6242476 () Bool)

(assert (=> b!5182209 m!6242476))

(assert (=> b!5182196 d!1675784))

(declare-fun d!1675786 () Bool)

(declare-fun lambda!259066 () Int)

(declare-fun forall!14182 (List!60317 Int) Bool)

(assert (=> d!1675786 (= (inv!79919 setElem!32474) (forall!14182 (exprs!4553 setElem!32474) lambda!259066))))

(declare-fun bs!1208006 () Bool)

(assert (= bs!1208006 d!1675786))

(declare-fun m!6242482 () Bool)

(assert (=> bs!1208006 m!6242482))

(assert (=> setNonEmpty!32473 d!1675786))

(declare-fun d!1675790 () Bool)

(declare-fun c!893221 () Bool)

(assert (=> d!1675790 (= c!893221 ((_ is Cons!60194) input!5952))))

(declare-fun e!3228735 () (InoxSet Context!8106))

(assert (=> d!1675790 (= (derivationZipper!292 baseZ!87 input!5952) e!3228735)))

(declare-fun b!5182220 () Bool)

(declare-fun derivationStepZipper!1015 ((InoxSet Context!8106) C!29608) (InoxSet Context!8106))

(assert (=> b!5182220 (= e!3228735 (derivationZipper!292 (derivationStepZipper!1015 baseZ!87 (h!66642 input!5952)) (t!373471 input!5952)))))

(declare-fun b!5182221 () Bool)

(assert (=> b!5182221 (= e!3228735 baseZ!87)))

(assert (= (and d!1675790 c!893221) b!5182220))

(assert (= (and d!1675790 (not c!893221)) b!5182221))

(declare-fun m!6242488 () Bool)

(assert (=> b!5182220 m!6242488))

(assert (=> b!5182220 m!6242488))

(declare-fun m!6242490 () Bool)

(assert (=> b!5182220 m!6242490))

(assert (=> start!548812 d!1675790))

(declare-fun bs!1208010 () Bool)

(declare-fun d!1675796 () Bool)

(assert (= bs!1208010 (and d!1675796 d!1675786)))

(declare-fun lambda!259069 () Int)

(assert (=> bs!1208010 (= lambda!259069 lambda!259066)))

(assert (=> d!1675796 (= (inv!79919 setElem!32473) (forall!14182 (exprs!4553 setElem!32473) lambda!259069))))

(declare-fun bs!1208011 () Bool)

(assert (= bs!1208011 d!1675796))

(declare-fun m!6242492 () Bool)

(assert (=> bs!1208011 m!6242492))

(assert (=> setNonEmpty!32474 d!1675796))

(declare-fun b!5182232 () Bool)

(declare-fun e!3228741 () Bool)

(declare-fun tp!1453366 () Bool)

(declare-fun tp!1453367 () Bool)

(assert (=> b!5182232 (= e!3228741 (and tp!1453366 tp!1453367))))

(assert (=> b!5182199 (= tp!1453357 e!3228741)))

(assert (= (and b!5182199 ((_ is Cons!60193) (exprs!4553 setElem!32473))) b!5182232))

(declare-fun condSetEmpty!32479 () Bool)

(assert (=> setNonEmpty!32473 (= condSetEmpty!32479 (= setRest!32474 ((as const (Array Context!8106 Bool)) false)))))

(declare-fun setRes!32479 () Bool)

(assert (=> setNonEmpty!32473 (= tp!1453356 setRes!32479)))

(declare-fun setIsEmpty!32479 () Bool)

(assert (=> setIsEmpty!32479 setRes!32479))

(declare-fun e!3228750 () Bool)

(declare-fun setNonEmpty!32479 () Bool)

(declare-fun setElem!32479 () Context!8106)

(declare-fun tp!1453383 () Bool)

(assert (=> setNonEmpty!32479 (= setRes!32479 (and tp!1453383 (inv!79919 setElem!32479) e!3228750))))

(declare-fun setRest!32479 () (InoxSet Context!8106))

(assert (=> setNonEmpty!32479 (= setRest!32474 ((_ map or) (store ((as const (Array Context!8106 Bool)) false) setElem!32479 true) setRest!32479))))

(declare-fun b!5182247 () Bool)

(declare-fun tp!1453384 () Bool)

(assert (=> b!5182247 (= e!3228750 tp!1453384)))

(assert (= (and setNonEmpty!32473 condSetEmpty!32479) setIsEmpty!32479))

(assert (= (and setNonEmpty!32473 (not condSetEmpty!32479)) setNonEmpty!32479))

(assert (= setNonEmpty!32479 b!5182247))

(declare-fun m!6242496 () Bool)

(assert (=> setNonEmpty!32479 m!6242496))

(declare-fun b!5182248 () Bool)

(declare-fun e!3228751 () Bool)

(declare-fun tp!1453385 () Bool)

(declare-fun tp!1453386 () Bool)

(assert (=> b!5182248 (= e!3228751 (and tp!1453385 tp!1453386))))

(assert (=> b!5182197 (= tp!1453358 e!3228751)))

(assert (= (and b!5182197 ((_ is Cons!60193) (exprs!4553 setElem!32474))) b!5182248))

(declare-fun b!5182254 () Bool)

(declare-fun e!3228755 () Bool)

(declare-fun tp!1453391 () Bool)

(assert (=> b!5182254 (= e!3228755 (and tp_is_empty!38591 tp!1453391))))

(assert (=> b!5182198 (= tp!1453355 e!3228755)))

(assert (= (and b!5182198 ((_ is Cons!60194) (t!373471 input!5952))) b!5182254))

(declare-fun condSetEmpty!32481 () Bool)

(assert (=> setNonEmpty!32474 (= condSetEmpty!32481 (= setRest!32473 ((as const (Array Context!8106 Bool)) false)))))

(declare-fun setRes!32481 () Bool)

(assert (=> setNonEmpty!32474 (= tp!1453359 setRes!32481)))

(declare-fun setIsEmpty!32481 () Bool)

(assert (=> setIsEmpty!32481 setRes!32481))

(declare-fun setNonEmpty!32481 () Bool)

(declare-fun setElem!32481 () Context!8106)

(declare-fun e!3228756 () Bool)

(declare-fun tp!1453392 () Bool)

(assert (=> setNonEmpty!32481 (= setRes!32481 (and tp!1453392 (inv!79919 setElem!32481) e!3228756))))

(declare-fun setRest!32481 () (InoxSet Context!8106))

(assert (=> setNonEmpty!32481 (= setRest!32473 ((_ map or) (store ((as const (Array Context!8106 Bool)) false) setElem!32481 true) setRest!32481))))

(declare-fun b!5182255 () Bool)

(declare-fun tp!1453393 () Bool)

(assert (=> b!5182255 (= e!3228756 tp!1453393)))

(assert (= (and setNonEmpty!32474 condSetEmpty!32481) setIsEmpty!32481))

(assert (= (and setNonEmpty!32474 (not condSetEmpty!32481)) setNonEmpty!32481))

(assert (= setNonEmpty!32481 b!5182255))

(declare-fun m!6242500 () Bool)

(assert (=> setNonEmpty!32481 m!6242500))

(check-sat (not b!5182232) (not b!5182254) tp_is_empty!38591 (not d!1675786) (not b!5182247) (not b!5182255) (not b!5182248) (not b!5182209) (not b!5182220) (not setNonEmpty!32479) (not setNonEmpty!32481) (not d!1675796))
(check-sat)

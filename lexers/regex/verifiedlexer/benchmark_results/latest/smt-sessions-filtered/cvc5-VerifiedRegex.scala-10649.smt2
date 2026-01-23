; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546248 () Bool)

(assert start!546248)

(declare-fun res!2195331 () Bool)

(declare-fun e!3217394 () Bool)

(assert (=> start!546248 (=> (not res!2195331) (not e!3217394))))

(declare-datatypes ((C!29358 0))(
  ( (C!29359 (val!24381 Int)) )
))
(declare-datatypes ((List!60043 0))(
  ( (Nil!59919) (Cons!59919 (h!66367 C!29358) (t!373196 List!60043)) )
))
(declare-fun input!5707 () List!60043)

(declare-fun isPrefix!5677 (List!60043 List!60043) Bool)

(assert (=> start!546248 (= res!2195331 (isPrefix!5677 Nil!59919 input!5707))))

(assert (=> start!546248 e!3217394))

(declare-fun e!3217395 () Bool)

(assert (=> start!546248 e!3217395))

(declare-fun condSetEmpty!31427 () Bool)

(declare-datatypes ((Regex!14544 0))(
  ( (ElementMatch!14544 (c!888389 C!29358)) (Concat!23389 (regOne!29600 Regex!14544) (regTwo!29600 Regex!14544)) (EmptyExpr!14544) (Star!14544 (reg!14873 Regex!14544)) (EmptyLang!14544) (Union!14544 (regOne!29601 Regex!14544) (regTwo!29601 Regex!14544)) )
))
(declare-datatypes ((List!60044 0))(
  ( (Nil!59920) (Cons!59920 (h!66368 Regex!14544) (t!373197 List!60044)) )
))
(declare-datatypes ((Context!7856 0))(
  ( (Context!7857 (exprs!4428 List!60044)) )
))
(declare-fun z!4413 () (Set Context!7856))

(assert (=> start!546248 (= condSetEmpty!31427 (= z!4413 (as set.empty (Set Context!7856))))))

(declare-fun setRes!31427 () Bool)

(assert (=> start!546248 setRes!31427))

(declare-fun b!5163716 () Bool)

(declare-fun derivationZipper!167 ((Set Context!7856) List!60043) (Set Context!7856))

(assert (=> b!5163716 (= e!3217394 (not (= (derivationZipper!167 z!4413 Nil!59919) z!4413)))))

(declare-fun b!5163717 () Bool)

(declare-fun e!3217393 () Bool)

(declare-fun tp!1448274 () Bool)

(assert (=> b!5163717 (= e!3217393 tp!1448274)))

(declare-fun setIsEmpty!31427 () Bool)

(assert (=> setIsEmpty!31427 setRes!31427))

(declare-fun b!5163718 () Bool)

(declare-fun tp_is_empty!38341 () Bool)

(declare-fun tp!1448275 () Bool)

(assert (=> b!5163718 (= e!3217395 (and tp_is_empty!38341 tp!1448275))))

(declare-fun tp!1448276 () Bool)

(declare-fun setNonEmpty!31427 () Bool)

(declare-fun setElem!31427 () Context!7856)

(declare-fun inv!79608 (Context!7856) Bool)

(assert (=> setNonEmpty!31427 (= setRes!31427 (and tp!1448276 (inv!79608 setElem!31427) e!3217393))))

(declare-fun setRest!31427 () (Set Context!7856))

(assert (=> setNonEmpty!31427 (= z!4413 (set.union (set.insert setElem!31427 (as set.empty (Set Context!7856))) setRest!31427))))

(assert (= (and start!546248 res!2195331) b!5163716))

(assert (= (and start!546248 (is-Cons!59919 input!5707)) b!5163718))

(assert (= (and start!546248 condSetEmpty!31427) setIsEmpty!31427))

(assert (= (and start!546248 (not condSetEmpty!31427)) setNonEmpty!31427))

(assert (= setNonEmpty!31427 b!5163717))

(declare-fun m!6214382 () Bool)

(assert (=> start!546248 m!6214382))

(declare-fun m!6214384 () Bool)

(assert (=> b!5163716 m!6214384))

(declare-fun m!6214386 () Bool)

(assert (=> setNonEmpty!31427 m!6214386))

(push 1)

(assert (not b!5163718))

(assert (not b!5163716))

(assert (not b!5163717))

(assert tp_is_empty!38341)

(assert (not setNonEmpty!31427))

(assert (not start!546248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1666222 () Bool)

(declare-fun e!3217411 () Bool)

(assert (=> d!1666222 e!3217411))

(declare-fun res!2195346 () Bool)

(assert (=> d!1666222 (=> res!2195346 e!3217411)))

(declare-fun lt!2123326 () Bool)

(assert (=> d!1666222 (= res!2195346 (not lt!2123326))))

(declare-fun e!3217413 () Bool)

(assert (=> d!1666222 (= lt!2123326 e!3217413)))

(declare-fun res!2195344 () Bool)

(assert (=> d!1666222 (=> res!2195344 e!3217413)))

(assert (=> d!1666222 (= res!2195344 (is-Nil!59919 Nil!59919))))

(assert (=> d!1666222 (= (isPrefix!5677 Nil!59919 input!5707) lt!2123326)))

(declare-fun b!5163737 () Bool)

(declare-fun res!2195345 () Bool)

(declare-fun e!3217412 () Bool)

(assert (=> b!5163737 (=> (not res!2195345) (not e!3217412))))

(declare-fun head!10999 (List!60043) C!29358)

(assert (=> b!5163737 (= res!2195345 (= (head!10999 Nil!59919) (head!10999 input!5707)))))

(declare-fun b!5163739 () Bool)

(declare-fun size!39581 (List!60043) Int)

(assert (=> b!5163739 (= e!3217411 (>= (size!39581 input!5707) (size!39581 Nil!59919)))))

(declare-fun b!5163738 () Bool)

(declare-fun tail!10110 (List!60043) List!60043)

(assert (=> b!5163738 (= e!3217412 (isPrefix!5677 (tail!10110 Nil!59919) (tail!10110 input!5707)))))

(declare-fun b!5163736 () Bool)

(assert (=> b!5163736 (= e!3217413 e!3217412)))

(declare-fun res!2195343 () Bool)

(assert (=> b!5163736 (=> (not res!2195343) (not e!3217412))))

(assert (=> b!5163736 (= res!2195343 (not (is-Nil!59919 input!5707)))))

(assert (= (and d!1666222 (not res!2195344)) b!5163736))

(assert (= (and b!5163736 res!2195343) b!5163737))

(assert (= (and b!5163737 res!2195345) b!5163738))

(assert (= (and d!1666222 (not res!2195346)) b!5163739))

(declare-fun m!6214394 () Bool)

(assert (=> b!5163737 m!6214394))

(declare-fun m!6214396 () Bool)

(assert (=> b!5163737 m!6214396))

(declare-fun m!6214398 () Bool)

(assert (=> b!5163739 m!6214398))

(declare-fun m!6214400 () Bool)

(assert (=> b!5163739 m!6214400))

(declare-fun m!6214402 () Bool)

(assert (=> b!5163738 m!6214402))

(declare-fun m!6214404 () Bool)

(assert (=> b!5163738 m!6214404))

(assert (=> b!5163738 m!6214402))

(assert (=> b!5163738 m!6214404))

(declare-fun m!6214406 () Bool)

(assert (=> b!5163738 m!6214406))

(assert (=> start!546248 d!1666222))

(declare-fun d!1666224 () Bool)

(declare-fun lambda!257716 () Int)

(declare-fun forall!14094 (List!60044 Int) Bool)

(assert (=> d!1666224 (= (inv!79608 setElem!31427) (forall!14094 (exprs!4428 setElem!31427) lambda!257716))))

(declare-fun bs!1202733 () Bool)

(assert (= bs!1202733 d!1666224))

(declare-fun m!6214412 () Bool)

(assert (=> bs!1202733 m!6214412))

(assert (=> setNonEmpty!31427 d!1666224))

(declare-fun d!1666230 () Bool)

(declare-fun c!888396 () Bool)

(assert (=> d!1666230 (= c!888396 (is-Cons!59919 Nil!59919))))

(declare-fun e!3217419 () (Set Context!7856))

(assert (=> d!1666230 (= (derivationZipper!167 z!4413 Nil!59919) e!3217419)))

(declare-fun b!5163750 () Bool)

(declare-fun derivationStepZipper!933 ((Set Context!7856) C!29358) (Set Context!7856))

(assert (=> b!5163750 (= e!3217419 (derivationZipper!167 (derivationStepZipper!933 z!4413 (h!66367 Nil!59919)) (t!373196 Nil!59919)))))

(declare-fun b!5163751 () Bool)

(assert (=> b!5163751 (= e!3217419 z!4413)))

(assert (= (and d!1666230 c!888396) b!5163750))

(assert (= (and d!1666230 (not c!888396)) b!5163751))

(declare-fun m!6214414 () Bool)

(assert (=> b!5163750 m!6214414))

(assert (=> b!5163750 m!6214414))

(declare-fun m!6214416 () Bool)

(assert (=> b!5163750 m!6214416))

(assert (=> b!5163716 d!1666230))

(declare-fun b!5163756 () Bool)

(declare-fun e!3217422 () Bool)

(declare-fun tp!1448288 () Bool)

(assert (=> b!5163756 (= e!3217422 (and tp_is_empty!38341 tp!1448288))))

(assert (=> b!5163718 (= tp!1448275 e!3217422)))

(assert (= (and b!5163718 (is-Cons!59919 (t!373196 input!5707))) b!5163756))

(declare-fun condSetEmpty!31433 () Bool)

(assert (=> setNonEmpty!31427 (= condSetEmpty!31433 (= setRest!31427 (as set.empty (Set Context!7856))))))

(declare-fun setRes!31433 () Bool)

(assert (=> setNonEmpty!31427 (= tp!1448276 setRes!31433)))

(declare-fun setIsEmpty!31433 () Bool)

(assert (=> setIsEmpty!31433 setRes!31433))

(declare-fun tp!1448293 () Bool)

(declare-fun setNonEmpty!31433 () Bool)

(declare-fun e!3217425 () Bool)

(declare-fun setElem!31433 () Context!7856)

(assert (=> setNonEmpty!31433 (= setRes!31433 (and tp!1448293 (inv!79608 setElem!31433) e!3217425))))

(declare-fun setRest!31433 () (Set Context!7856))

(assert (=> setNonEmpty!31433 (= setRest!31427 (set.union (set.insert setElem!31433 (as set.empty (Set Context!7856))) setRest!31433))))

(declare-fun b!5163761 () Bool)

(declare-fun tp!1448294 () Bool)

(assert (=> b!5163761 (= e!3217425 tp!1448294)))

(assert (= (and setNonEmpty!31427 condSetEmpty!31433) setIsEmpty!31433))

(assert (= (and setNonEmpty!31427 (not condSetEmpty!31433)) setNonEmpty!31433))

(assert (= setNonEmpty!31433 b!5163761))

(declare-fun m!6214418 () Bool)

(assert (=> setNonEmpty!31433 m!6214418))

(declare-fun b!5163766 () Bool)

(declare-fun e!3217428 () Bool)

(declare-fun tp!1448299 () Bool)

(declare-fun tp!1448300 () Bool)

(assert (=> b!5163766 (= e!3217428 (and tp!1448299 tp!1448300))))

(assert (=> b!5163717 (= tp!1448274 e!3217428)))

(assert (= (and b!5163717 (is-Cons!59920 (exprs!4428 setElem!31427))) b!5163766))

(push 1)

(assert (not d!1666224))

(assert (not b!5163739))

(assert (not b!5163761))

(assert tp_is_empty!38341)

(assert (not b!5163750))

(assert (not b!5163737))

(assert (not b!5163756))

(assert (not b!5163766))

(assert (not b!5163738))

(assert (not setNonEmpty!31433))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


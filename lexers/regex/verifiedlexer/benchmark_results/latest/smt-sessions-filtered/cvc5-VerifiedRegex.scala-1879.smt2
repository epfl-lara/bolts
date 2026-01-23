; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92644 () Bool)

(assert start!92644)

(declare-fun b!1086630 () Bool)

(declare-fun e!687282 () Bool)

(declare-fun tp!325481 () Bool)

(assert (=> b!1086630 (= e!687282 tp!325481)))

(declare-datatypes ((C!6602 0))(
  ( (C!6603 (val!3549 Int)) )
))
(declare-datatypes ((Regex!3016 0))(
  ( (ElementMatch!3016 (c!183856 C!6602)) (Concat!4849 (regOne!6544 Regex!3016) (regTwo!6544 Regex!3016)) (EmptyExpr!3016) (Star!3016 (reg!3345 Regex!3016)) (EmptyLang!3016) (Union!3016 (regOne!6545 Regex!3016) (regTwo!6545 Regex!3016)) )
))
(declare-datatypes ((List!10351 0))(
  ( (Nil!10335) (Cons!10335 (h!15736 Regex!3016) (t!101397 List!10351)) )
))
(declare-datatypes ((Context!992 0))(
  ( (Context!993 (exprs!996 List!10351)) )
))
(declare-datatypes ((List!10352 0))(
  ( (Nil!10336) (Cons!10336 (h!15737 Context!992) (t!101398 List!10352)) )
))
(declare-fun zl!316 () List!10352)

(declare-fun b!1086631 () Bool)

(declare-fun tp!325483 () Bool)

(declare-fun e!687283 () Bool)

(declare-fun inv!13254 (Context!992) Bool)

(assert (=> b!1086631 (= e!687283 (and (inv!13254 (h!15737 zl!316)) e!687282 tp!325483))))

(declare-fun setElem!7623 () Context!992)

(declare-fun setRes!7623 () Bool)

(declare-fun setNonEmpty!7623 () Bool)

(declare-fun tp!325484 () Bool)

(declare-fun e!687281 () Bool)

(assert (=> setNonEmpty!7623 (= setRes!7623 (and tp!325484 (inv!13254 setElem!7623) e!687281))))

(declare-fun z!1122 () (Set Context!992))

(declare-fun setRest!7623 () (Set Context!992))

(assert (=> setNonEmpty!7623 (= z!1122 (set.union (set.insert setElem!7623 (as set.empty (Set Context!992))) setRest!7623))))

(declare-fun b!1086632 () Bool)

(declare-fun e!687285 () Bool)

(declare-datatypes ((List!10353 0))(
  ( (Nil!10337) (Cons!10337 (h!15738 C!6602) (t!101399 List!10353)) )
))
(declare-fun s!2287 () List!10353)

(declare-fun matchZipper!64 ((Set Context!992) List!10353) Bool)

(declare-fun content!1485 (List!10352) (Set Context!992))

(assert (=> b!1086632 (= e!687285 (not (matchZipper!64 (content!1485 zl!316) s!2287)))))

(declare-fun b!1086633 () Bool)

(declare-fun tp!325485 () Bool)

(assert (=> b!1086633 (= e!687281 tp!325485)))

(declare-fun res!483214 () Bool)

(assert (=> start!92644 (=> (not res!483214) (not e!687285))))

(declare-fun toList!634 ((Set Context!992)) List!10352)

(assert (=> start!92644 (= res!483214 (= (toList!634 z!1122) zl!316))))

(assert (=> start!92644 e!687285))

(declare-fun condSetEmpty!7623 () Bool)

(assert (=> start!92644 (= condSetEmpty!7623 (= z!1122 (as set.empty (Set Context!992))))))

(assert (=> start!92644 setRes!7623))

(assert (=> start!92644 e!687283))

(declare-fun e!687284 () Bool)

(assert (=> start!92644 e!687284))

(declare-fun setIsEmpty!7623 () Bool)

(assert (=> setIsEmpty!7623 setRes!7623))

(declare-fun b!1086634 () Bool)

(declare-fun tp_is_empty!5663 () Bool)

(declare-fun tp!325482 () Bool)

(assert (=> b!1086634 (= e!687284 (and tp_is_empty!5663 tp!325482))))

(declare-fun b!1086635 () Bool)

(declare-fun res!483215 () Bool)

(assert (=> b!1086635 (=> (not res!483215) (not e!687285))))

(assert (=> b!1086635 (= res!483215 (matchZipper!64 z!1122 s!2287))))

(assert (= (and start!92644 res!483214) b!1086635))

(assert (= (and b!1086635 res!483215) b!1086632))

(assert (= (and start!92644 condSetEmpty!7623) setIsEmpty!7623))

(assert (= (and start!92644 (not condSetEmpty!7623)) setNonEmpty!7623))

(assert (= setNonEmpty!7623 b!1086633))

(assert (= b!1086631 b!1086630))

(assert (= (and start!92644 (is-Cons!10336 zl!316)) b!1086631))

(assert (= (and start!92644 (is-Cons!10337 s!2287)) b!1086634))

(declare-fun m!1236667 () Bool)

(assert (=> b!1086632 m!1236667))

(assert (=> b!1086632 m!1236667))

(declare-fun m!1236669 () Bool)

(assert (=> b!1086632 m!1236669))

(declare-fun m!1236671 () Bool)

(assert (=> start!92644 m!1236671))

(declare-fun m!1236673 () Bool)

(assert (=> b!1086631 m!1236673))

(declare-fun m!1236675 () Bool)

(assert (=> b!1086635 m!1236675))

(declare-fun m!1236677 () Bool)

(assert (=> setNonEmpty!7623 m!1236677))

(push 1)

(assert (not b!1086632))

(assert (not b!1086633))

(assert tp_is_empty!5663)

(assert (not b!1086635))

(assert (not b!1086631))

(assert (not b!1086630))

(assert (not start!92644))

(assert (not b!1086634))

(assert (not setNonEmpty!7623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!305314 () Bool)

(declare-fun lambda!40301 () Int)

(declare-fun forall!2274 (List!10351 Int) Bool)

(assert (=> d!305314 (= (inv!13254 (h!15737 zl!316)) (forall!2274 (exprs!996 (h!15737 zl!316)) lambda!40301))))

(declare-fun bs!256801 () Bool)

(assert (= bs!256801 d!305314))

(declare-fun m!1236719 () Bool)

(assert (=> bs!256801 m!1236719))

(assert (=> b!1086631 d!305314))

(declare-fun d!305326 () Bool)

(declare-fun e!687313 () Bool)

(assert (=> d!305326 e!687313))

(declare-fun res!483227 () Bool)

(assert (=> d!305326 (=> (not res!483227) (not e!687313))))

(declare-fun lt!363587 () List!10352)

(declare-fun noDuplicate!191 (List!10352) Bool)

(assert (=> d!305326 (= res!483227 (noDuplicate!191 lt!363587))))

(declare-fun choose!6952 ((Set Context!992)) List!10352)

(assert (=> d!305326 (= lt!363587 (choose!6952 z!1122))))

(assert (=> d!305326 (= (toList!634 z!1122) lt!363587)))

(declare-fun b!1086673 () Bool)

(assert (=> b!1086673 (= e!687313 (= (content!1485 lt!363587) z!1122))))

(assert (= (and d!305326 res!483227) b!1086673))

(declare-fun m!1236721 () Bool)

(assert (=> d!305326 m!1236721))

(declare-fun m!1236723 () Bool)

(assert (=> d!305326 m!1236723))

(declare-fun m!1236725 () Bool)

(assert (=> b!1086673 m!1236725))

(assert (=> start!92644 d!305326))

(declare-fun bs!256802 () Bool)

(declare-fun d!305328 () Bool)

(assert (= bs!256802 (and d!305328 d!305314)))

(declare-fun lambda!40302 () Int)

(assert (=> bs!256802 (= lambda!40302 lambda!40301)))

(assert (=> d!305328 (= (inv!13254 setElem!7623) (forall!2274 (exprs!996 setElem!7623) lambda!40302))))

(declare-fun bs!256803 () Bool)

(assert (= bs!256803 d!305328))

(declare-fun m!1236727 () Bool)

(assert (=> bs!256803 m!1236727))

(assert (=> setNonEmpty!7623 d!305328))

(declare-fun d!305330 () Bool)

(declare-fun c!183867 () Bool)

(declare-fun isEmpty!6630 (List!10353) Bool)

(assert (=> d!305330 (= c!183867 (isEmpty!6630 s!2287))))

(declare-fun e!687316 () Bool)

(assert (=> d!305330 (= (matchZipper!64 z!1122 s!2287) e!687316)))

(declare-fun b!1086678 () Bool)

(declare-fun nullableZipper!29 ((Set Context!992)) Bool)

(assert (=> b!1086678 (= e!687316 (nullableZipper!29 z!1122))))

(declare-fun b!1086679 () Bool)

(declare-fun derivationStepZipper!27 ((Set Context!992) C!6602) (Set Context!992))

(declare-fun head!2015 (List!10353) C!6602)

(declare-fun tail!1577 (List!10353) List!10353)

(assert (=> b!1086679 (= e!687316 (matchZipper!64 (derivationStepZipper!27 z!1122 (head!2015 s!2287)) (tail!1577 s!2287)))))

(assert (= (and d!305330 c!183867) b!1086678))

(assert (= (and d!305330 (not c!183867)) b!1086679))

(declare-fun m!1236729 () Bool)

(assert (=> d!305330 m!1236729))

(declare-fun m!1236731 () Bool)

(assert (=> b!1086678 m!1236731))

(declare-fun m!1236733 () Bool)

(assert (=> b!1086679 m!1236733))

(assert (=> b!1086679 m!1236733))

(declare-fun m!1236735 () Bool)

(assert (=> b!1086679 m!1236735))

(declare-fun m!1236737 () Bool)

(assert (=> b!1086679 m!1236737))

(assert (=> b!1086679 m!1236735))

(assert (=> b!1086679 m!1236737))

(declare-fun m!1236739 () Bool)

(assert (=> b!1086679 m!1236739))

(assert (=> b!1086635 d!305330))

(declare-fun d!305332 () Bool)

(declare-fun c!183868 () Bool)

(assert (=> d!305332 (= c!183868 (isEmpty!6630 s!2287))))

(declare-fun e!687317 () Bool)

(assert (=> d!305332 (= (matchZipper!64 (content!1485 zl!316) s!2287) e!687317)))

(declare-fun b!1086680 () Bool)

(assert (=> b!1086680 (= e!687317 (nullableZipper!29 (content!1485 zl!316)))))

(declare-fun b!1086681 () Bool)

(assert (=> b!1086681 (= e!687317 (matchZipper!64 (derivationStepZipper!27 (content!1485 zl!316) (head!2015 s!2287)) (tail!1577 s!2287)))))

(assert (= (and d!305332 c!183868) b!1086680))

(assert (= (and d!305332 (not c!183868)) b!1086681))

(assert (=> d!305332 m!1236729))

(assert (=> b!1086680 m!1236667))

(declare-fun m!1236741 () Bool)

(assert (=> b!1086680 m!1236741))

(assert (=> b!1086681 m!1236733))

(assert (=> b!1086681 m!1236667))

(assert (=> b!1086681 m!1236733))

(declare-fun m!1236743 () Bool)

(assert (=> b!1086681 m!1236743))

(assert (=> b!1086681 m!1236737))

(assert (=> b!1086681 m!1236743))

(assert (=> b!1086681 m!1236737))

(declare-fun m!1236745 () Bool)

(assert (=> b!1086681 m!1236745))

(assert (=> b!1086632 d!305332))

(declare-fun d!305334 () Bool)

(declare-fun c!183871 () Bool)

(assert (=> d!305334 (= c!183871 (is-Nil!10336 zl!316))))

(declare-fun e!687320 () (Set Context!992))

(assert (=> d!305334 (= (content!1485 zl!316) e!687320)))

(declare-fun b!1086686 () Bool)

(assert (=> b!1086686 (= e!687320 (as set.empty (Set Context!992)))))

(declare-fun b!1086687 () Bool)

(assert (=> b!1086687 (= e!687320 (set.union (set.insert (h!15737 zl!316) (as set.empty (Set Context!992))) (content!1485 (t!101398 zl!316))))))

(assert (= (and d!305334 c!183871) b!1086686))

(assert (= (and d!305334 (not c!183871)) b!1086687))

(declare-fun m!1236747 () Bool)

(assert (=> b!1086687 m!1236747))

(declare-fun m!1236749 () Bool)

(assert (=> b!1086687 m!1236749))

(assert (=> b!1086632 d!305334))

(declare-fun b!1086692 () Bool)

(declare-fun e!687323 () Bool)

(declare-fun tp!325505 () Bool)

(declare-fun tp!325506 () Bool)

(assert (=> b!1086692 (= e!687323 (and tp!325505 tp!325506))))

(assert (=> b!1086633 (= tp!325485 e!687323)))

(assert (= (and b!1086633 (is-Cons!10335 (exprs!996 setElem!7623))) b!1086692))

(declare-fun b!1086700 () Bool)

(declare-fun e!687329 () Bool)

(declare-fun tp!325511 () Bool)

(assert (=> b!1086700 (= e!687329 tp!325511)))

(declare-fun e!687328 () Bool)

(declare-fun tp!325512 () Bool)

(declare-fun b!1086699 () Bool)

(assert (=> b!1086699 (= e!687328 (and (inv!13254 (h!15737 (t!101398 zl!316))) e!687329 tp!325512))))

(assert (=> b!1086631 (= tp!325483 e!687328)))

(assert (= b!1086699 b!1086700))

(assert (= (and b!1086631 (is-Cons!10336 (t!101398 zl!316))) b!1086699))

(declare-fun m!1236751 () Bool)

(assert (=> b!1086699 m!1236751))

(declare-fun b!1086705 () Bool)

(declare-fun e!687332 () Bool)

(declare-fun tp!325515 () Bool)

(assert (=> b!1086705 (= e!687332 (and tp_is_empty!5663 tp!325515))))

(assert (=> b!1086634 (= tp!325482 e!687332)))

(assert (= (and b!1086634 (is-Cons!10337 (t!101399 s!2287))) b!1086705))

(declare-fun b!1086706 () Bool)

(declare-fun e!687333 () Bool)

(declare-fun tp!325516 () Bool)

(declare-fun tp!325517 () Bool)

(assert (=> b!1086706 (= e!687333 (and tp!325516 tp!325517))))

(assert (=> b!1086630 (= tp!325481 e!687333)))

(assert (= (and b!1086630 (is-Cons!10335 (exprs!996 (h!15737 zl!316)))) b!1086706))

(declare-fun condSetEmpty!7629 () Bool)

(assert (=> setNonEmpty!7623 (= condSetEmpty!7629 (= setRest!7623 (as set.empty (Set Context!992))))))

(declare-fun setRes!7629 () Bool)

(assert (=> setNonEmpty!7623 (= tp!325484 setRes!7629)))

(declare-fun setIsEmpty!7629 () Bool)

(assert (=> setIsEmpty!7629 setRes!7629))

(declare-fun tp!325522 () Bool)

(declare-fun e!687336 () Bool)

(declare-fun setNonEmpty!7629 () Bool)

(declare-fun setElem!7629 () Context!992)

(assert (=> setNonEmpty!7629 (= setRes!7629 (and tp!325522 (inv!13254 setElem!7629) e!687336))))

(declare-fun setRest!7629 () (Set Context!992))

(assert (=> setNonEmpty!7629 (= setRest!7623 (set.union (set.insert setElem!7629 (as set.empty (Set Context!992))) setRest!7629))))

(declare-fun b!1086711 () Bool)

(declare-fun tp!325523 () Bool)

(assert (=> b!1086711 (= e!687336 tp!325523)))

(assert (= (and setNonEmpty!7623 condSetEmpty!7629) setIsEmpty!7629))

(assert (= (and setNonEmpty!7623 (not condSetEmpty!7629)) setNonEmpty!7629))

(assert (= setNonEmpty!7629 b!1086711))

(declare-fun m!1236753 () Bool)

(assert (=> setNonEmpty!7629 m!1236753))

(push 1)

(assert (not b!1086692))

(assert (not b!1086680))

(assert (not b!1086706))

(assert tp_is_empty!5663)

(assert (not b!1086705))

(assert (not d!305332))

(assert (not b!1086700))

(assert (not setNonEmpty!7629))

(assert (not b!1086678))

(assert (not b!1086699))

(assert (not b!1086687))

(assert (not d!305330))

(assert (not d!305326))

(assert (not d!305314))

(assert (not b!1086673))

(assert (not b!1086679))

(assert (not d!305328))

(assert (not b!1086711))

(assert (not b!1086681))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


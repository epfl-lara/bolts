; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!282992 () Bool)

(assert start!282992)

(declare-fun setIsEmpty!25806 () Bool)

(declare-fun setRes!25806 () Bool)

(assert (=> setIsEmpty!25806 setRes!25806))

(declare-fun b!2907559 () Bool)

(declare-fun e!1835389 () Bool)

(declare-fun tp_is_empty!15411 () Bool)

(declare-fun tp!934036 () Bool)

(assert (=> b!2907559 (= e!1835389 (and tp_is_empty!15411 tp!934036))))

(declare-fun b!2907560 () Bool)

(declare-fun e!1835386 () Bool)

(declare-fun tp!934037 () Bool)

(assert (=> b!2907560 (= e!1835386 (and tp_is_empty!15411 tp!934037))))

(declare-fun res!1200690 () Bool)

(declare-fun e!1835388 () Bool)

(assert (=> start!282992 (=> (not res!1200690) (not e!1835388))))

(declare-datatypes ((C!18006 0))(
  ( (C!18007 (val!11037 Int)) )
))
(declare-datatypes ((List!34737 0))(
  ( (Nil!34613) (Cons!34613 (h!40033 C!18006) (t!233780 List!34737)) )
))
(declare-fun prefix!909 () List!34737)

(declare-fun s!2253 () List!34737)

(declare-fun isPrefix!2749 (List!34737 List!34737) Bool)

(assert (=> start!282992 (= res!1200690 (isPrefix!2749 prefix!909 s!2253))))

(assert (=> start!282992 e!1835388))

(assert (=> start!282992 e!1835389))

(assert (=> start!282992 e!1835386))

(declare-fun condSetEmpty!25806 () Bool)

(declare-datatypes ((Regex!8912 0))(
  ( (ElementMatch!8912 (c!473843 C!18006)) (Concat!14233 (regOne!18336 Regex!8912) (regTwo!18336 Regex!8912)) (EmptyExpr!8912) (Star!8912 (reg!9241 Regex!8912)) (EmptyLang!8912) (Union!8912 (regOne!18337 Regex!8912) (regTwo!18337 Regex!8912)) )
))
(declare-datatypes ((List!34738 0))(
  ( (Nil!34614) (Cons!34614 (h!40034 Regex!8912) (t!233781 List!34738)) )
))
(declare-datatypes ((Context!5480 0))(
  ( (Context!5481 (exprs!3240 List!34738)) )
))
(declare-fun z!929 () (Set Context!5480))

(assert (=> start!282992 (= condSetEmpty!25806 (= z!929 (as set.empty (Set Context!5480))))))

(assert (=> start!282992 setRes!25806))

(declare-fun setNonEmpty!25806 () Bool)

(declare-fun e!1835387 () Bool)

(declare-fun setElem!25806 () Context!5480)

(declare-fun tp!934039 () Bool)

(declare-fun inv!46736 (Context!5480) Bool)

(assert (=> setNonEmpty!25806 (= setRes!25806 (and tp!934039 (inv!46736 setElem!25806) e!1835387))))

(declare-fun setRest!25806 () (Set Context!5480))

(assert (=> setNonEmpty!25806 (= z!929 (set.union (set.insert setElem!25806 (as set.empty (Set Context!5480))) setRest!25806))))

(declare-fun b!2907561 () Bool)

(declare-fun tp!934038 () Bool)

(assert (=> b!2907561 (= e!1835387 tp!934038)))

(declare-fun b!2907562 () Bool)

(declare-fun res!1200693 () Bool)

(assert (=> b!2907562 (=> (not res!1200693) (not e!1835388))))

(assert (=> b!2907562 (= res!1200693 (not (is-Nil!34613 prefix!909)))))

(declare-fun b!2907563 () Bool)

(declare-fun res!1200691 () Bool)

(assert (=> b!2907563 (=> (not res!1200691) (not e!1835388))))

(declare-fun tail!4665 (List!34737) List!34737)

(assert (=> b!2907563 (= res!1200691 (isPrefix!2749 (t!233780 prefix!909) (tail!4665 s!2253)))))

(declare-fun b!2907564 () Bool)

(declare-fun res!1200692 () Bool)

(assert (=> b!2907564 (=> (not res!1200692) (not e!1835388))))

(declare-fun prefixMatchZipper!356 ((Set Context!5480) List!34737) Bool)

(assert (=> b!2907564 (= res!1200692 (not (prefixMatchZipper!356 z!929 prefix!909)))))

(declare-fun b!2907565 () Bool)

(declare-fun derivationStepZipper!502 ((Set Context!5480) C!18006) (Set Context!5480))

(assert (=> b!2907565 (= e!1835388 (prefixMatchZipper!356 (derivationStepZipper!502 z!929 (h!40033 prefix!909)) (t!233780 prefix!909)))))

(assert (= (and start!282992 res!1200690) b!2907564))

(assert (= (and b!2907564 res!1200692) b!2907562))

(assert (= (and b!2907562 res!1200693) b!2907563))

(assert (= (and b!2907563 res!1200691) b!2907565))

(assert (= (and start!282992 (is-Cons!34613 prefix!909)) b!2907559))

(assert (= (and start!282992 (is-Cons!34613 s!2253)) b!2907560))

(assert (= (and start!282992 condSetEmpty!25806) setIsEmpty!25806))

(assert (= (and start!282992 (not condSetEmpty!25806)) setNonEmpty!25806))

(assert (= setNonEmpty!25806 b!2907561))

(declare-fun m!3309259 () Bool)

(assert (=> start!282992 m!3309259))

(declare-fun m!3309261 () Bool)

(assert (=> b!2907564 m!3309261))

(declare-fun m!3309263 () Bool)

(assert (=> b!2907565 m!3309263))

(assert (=> b!2907565 m!3309263))

(declare-fun m!3309265 () Bool)

(assert (=> b!2907565 m!3309265))

(declare-fun m!3309267 () Bool)

(assert (=> b!2907563 m!3309267))

(assert (=> b!2907563 m!3309267))

(declare-fun m!3309269 () Bool)

(assert (=> b!2907563 m!3309269))

(declare-fun m!3309271 () Bool)

(assert (=> setNonEmpty!25806 m!3309271))

(push 1)

(assert (not start!282992))

(assert (not b!2907559))

(assert tp_is_empty!15411)

(assert (not b!2907565))

(assert (not b!2907561))

(assert (not setNonEmpty!25806))

(assert (not b!2907560))

(assert (not b!2907564))

(assert (not b!2907563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2907595 () Bool)

(declare-fun e!1835409 () Bool)

(declare-fun e!1835408 () Bool)

(assert (=> b!2907595 (= e!1835409 e!1835408)))

(declare-fun res!1200716 () Bool)

(assert (=> b!2907595 (=> (not res!1200716) (not e!1835408))))

(assert (=> b!2907595 (= res!1200716 (not (is-Nil!34613 s!2253)))))

(declare-fun b!2907596 () Bool)

(declare-fun res!1200715 () Bool)

(assert (=> b!2907596 (=> (not res!1200715) (not e!1835408))))

(declare-fun head!6434 (List!34737) C!18006)

(assert (=> b!2907596 (= res!1200715 (= (head!6434 prefix!909) (head!6434 s!2253)))))

(declare-fun d!836486 () Bool)

(declare-fun e!1835410 () Bool)

(assert (=> d!836486 e!1835410))

(declare-fun res!1200717 () Bool)

(assert (=> d!836486 (=> res!1200717 e!1835410)))

(declare-fun lt!1022802 () Bool)

(assert (=> d!836486 (= res!1200717 (not lt!1022802))))

(assert (=> d!836486 (= lt!1022802 e!1835409)))

(declare-fun res!1200714 () Bool)

(assert (=> d!836486 (=> res!1200714 e!1835409)))

(assert (=> d!836486 (= res!1200714 (is-Nil!34613 prefix!909))))

(assert (=> d!836486 (= (isPrefix!2749 prefix!909 s!2253) lt!1022802)))

(declare-fun b!2907598 () Bool)

(declare-fun size!26383 (List!34737) Int)

(assert (=> b!2907598 (= e!1835410 (>= (size!26383 s!2253) (size!26383 prefix!909)))))

(declare-fun b!2907597 () Bool)

(assert (=> b!2907597 (= e!1835408 (isPrefix!2749 (tail!4665 prefix!909) (tail!4665 s!2253)))))

(assert (= (and d!836486 (not res!1200714)) b!2907595))

(assert (= (and b!2907595 res!1200716) b!2907596))

(assert (= (and b!2907596 res!1200715) b!2907597))

(assert (= (and d!836486 (not res!1200717)) b!2907598))

(declare-fun m!3309287 () Bool)

(assert (=> b!2907596 m!3309287))

(declare-fun m!3309289 () Bool)

(assert (=> b!2907596 m!3309289))

(declare-fun m!3309291 () Bool)

(assert (=> b!2907598 m!3309291))

(declare-fun m!3309293 () Bool)

(assert (=> b!2907598 m!3309293))

(declare-fun m!3309295 () Bool)

(assert (=> b!2907597 m!3309295))

(assert (=> b!2907597 m!3309267))

(assert (=> b!2907597 m!3309295))

(assert (=> b!2907597 m!3309267))

(declare-fun m!3309297 () Bool)

(assert (=> b!2907597 m!3309297))

(assert (=> start!282992 d!836486))

(declare-fun b!2907599 () Bool)

(declare-fun e!1835412 () Bool)

(declare-fun e!1835411 () Bool)

(assert (=> b!2907599 (= e!1835412 e!1835411)))

(declare-fun res!1200720 () Bool)

(assert (=> b!2907599 (=> (not res!1200720) (not e!1835411))))

(assert (=> b!2907599 (= res!1200720 (not (is-Nil!34613 (tail!4665 s!2253))))))

(declare-fun b!2907600 () Bool)

(declare-fun res!1200719 () Bool)

(assert (=> b!2907600 (=> (not res!1200719) (not e!1835411))))

(assert (=> b!2907600 (= res!1200719 (= (head!6434 (t!233780 prefix!909)) (head!6434 (tail!4665 s!2253))))))

(declare-fun d!836490 () Bool)

(declare-fun e!1835413 () Bool)

(assert (=> d!836490 e!1835413))

(declare-fun res!1200721 () Bool)

(assert (=> d!836490 (=> res!1200721 e!1835413)))

(declare-fun lt!1022803 () Bool)

(assert (=> d!836490 (= res!1200721 (not lt!1022803))))

(assert (=> d!836490 (= lt!1022803 e!1835412)))

(declare-fun res!1200718 () Bool)

(assert (=> d!836490 (=> res!1200718 e!1835412)))

(assert (=> d!836490 (= res!1200718 (is-Nil!34613 (t!233780 prefix!909)))))

(assert (=> d!836490 (= (isPrefix!2749 (t!233780 prefix!909) (tail!4665 s!2253)) lt!1022803)))

(declare-fun b!2907602 () Bool)

(assert (=> b!2907602 (= e!1835413 (>= (size!26383 (tail!4665 s!2253)) (size!26383 (t!233780 prefix!909))))))

(declare-fun b!2907601 () Bool)

(assert (=> b!2907601 (= e!1835411 (isPrefix!2749 (tail!4665 (t!233780 prefix!909)) (tail!4665 (tail!4665 s!2253))))))

(assert (= (and d!836490 (not res!1200718)) b!2907599))

(assert (= (and b!2907599 res!1200720) b!2907600))

(assert (= (and b!2907600 res!1200719) b!2907601))

(assert (= (and d!836490 (not res!1200721)) b!2907602))

(declare-fun m!3309299 () Bool)

(assert (=> b!2907600 m!3309299))

(assert (=> b!2907600 m!3309267))

(declare-fun m!3309301 () Bool)

(assert (=> b!2907600 m!3309301))

(assert (=> b!2907602 m!3309267))

(declare-fun m!3309303 () Bool)

(assert (=> b!2907602 m!3309303))

(declare-fun m!3309305 () Bool)

(assert (=> b!2907602 m!3309305))

(declare-fun m!3309307 () Bool)

(assert (=> b!2907601 m!3309307))

(assert (=> b!2907601 m!3309267))

(declare-fun m!3309309 () Bool)

(assert (=> b!2907601 m!3309309))

(assert (=> b!2907601 m!3309307))

(assert (=> b!2907601 m!3309309))

(declare-fun m!3309311 () Bool)

(assert (=> b!2907601 m!3309311))

(assert (=> b!2907563 d!836490))

(declare-fun d!836492 () Bool)

(assert (=> d!836492 (= (tail!4665 s!2253) (t!233780 s!2253))))

(assert (=> b!2907563 d!836492))

(declare-fun d!836494 () Bool)

(declare-fun c!473847 () Bool)

(declare-fun isEmpty!18894 (List!34737) Bool)

(assert (=> d!836494 (= c!473847 (isEmpty!18894 (t!233780 prefix!909)))))

(declare-fun e!1835425 () Bool)

(assert (=> d!836494 (= (prefixMatchZipper!356 (derivationStepZipper!502 z!929 (h!40033 prefix!909)) (t!233780 prefix!909)) e!1835425)))

(declare-fun b!2907619 () Bool)

(declare-fun lostCauseZipper!605 ((Set Context!5480)) Bool)

(assert (=> b!2907619 (= e!1835425 (not (lostCauseZipper!605 (derivationStepZipper!502 z!929 (h!40033 prefix!909)))))))

(declare-fun b!2907620 () Bool)

(assert (=> b!2907620 (= e!1835425 (prefixMatchZipper!356 (derivationStepZipper!502 (derivationStepZipper!502 z!929 (h!40033 prefix!909)) (head!6434 (t!233780 prefix!909))) (tail!4665 (t!233780 prefix!909))))))

(assert (= (and d!836494 c!473847) b!2907619))

(assert (= (and d!836494 (not c!473847)) b!2907620))

(declare-fun m!3309327 () Bool)

(assert (=> d!836494 m!3309327))

(assert (=> b!2907619 m!3309263))

(declare-fun m!3309329 () Bool)

(assert (=> b!2907619 m!3309329))

(assert (=> b!2907620 m!3309299))

(assert (=> b!2907620 m!3309263))

(assert (=> b!2907620 m!3309299))

(declare-fun m!3309331 () Bool)

(assert (=> b!2907620 m!3309331))

(assert (=> b!2907620 m!3309307))

(assert (=> b!2907620 m!3309331))

(assert (=> b!2907620 m!3309307))

(declare-fun m!3309333 () Bool)

(assert (=> b!2907620 m!3309333))

(assert (=> b!2907565 d!836494))

(declare-fun d!836500 () Bool)

(assert (=> d!836500 true))

(declare-fun lambda!107802 () Int)

(declare-fun flatMap!239 ((Set Context!5480) Int) (Set Context!5480))

(assert (=> d!836500 (= (derivationStepZipper!502 z!929 (h!40033 prefix!909)) (flatMap!239 z!929 lambda!107802))))

(declare-fun bs!524176 () Bool)

(assert (= bs!524176 d!836500))

(declare-fun m!3309343 () Bool)

(assert (=> bs!524176 m!3309343))

(assert (=> b!2907565 d!836500))

(declare-fun d!836504 () Bool)

(declare-fun c!473855 () Bool)

(assert (=> d!836504 (= c!473855 (isEmpty!18894 prefix!909))))

(declare-fun e!1835429 () Bool)

(assert (=> d!836504 (= (prefixMatchZipper!356 z!929 prefix!909) e!1835429)))

(declare-fun b!2907629 () Bool)

(assert (=> b!2907629 (= e!1835429 (not (lostCauseZipper!605 z!929)))))

(declare-fun b!2907630 () Bool)

(assert (=> b!2907630 (= e!1835429 (prefixMatchZipper!356 (derivationStepZipper!502 z!929 (head!6434 prefix!909)) (tail!4665 prefix!909)))))

(assert (= (and d!836504 c!473855) b!2907629))

(assert (= (and d!836504 (not c!473855)) b!2907630))

(declare-fun m!3309345 () Bool)

(assert (=> d!836504 m!3309345))

(declare-fun m!3309347 () Bool)

(assert (=> b!2907629 m!3309347))

(assert (=> b!2907630 m!3309287))

(assert (=> b!2907630 m!3309287))

(declare-fun m!3309349 () Bool)

(assert (=> b!2907630 m!3309349))

(assert (=> b!2907630 m!3309295))

(assert (=> b!2907630 m!3309349))

(assert (=> b!2907630 m!3309295))

(declare-fun m!3309351 () Bool)

(assert (=> b!2907630 m!3309351))

(assert (=> b!2907564 d!836504))

(declare-fun d!836506 () Bool)

(declare-fun lambda!107805 () Int)

(declare-fun forall!7116 (List!34738 Int) Bool)

(assert (=> d!836506 (= (inv!46736 setElem!25806) (forall!7116 (exprs!3240 setElem!25806) lambda!107805))))

(declare-fun bs!524177 () Bool)

(assert (= bs!524177 d!836506))

(declare-fun m!3309353 () Bool)

(assert (=> bs!524177 m!3309353))

(assert (=> setNonEmpty!25806 d!836506))

(declare-fun b!2907635 () Bool)

(declare-fun e!1835432 () Bool)

(declare-fun tp!934054 () Bool)

(assert (=> b!2907635 (= e!1835432 (and tp_is_empty!15411 tp!934054))))

(assert (=> b!2907559 (= tp!934036 e!1835432)))

(assert (= (and b!2907559 (is-Cons!34613 (t!233780 prefix!909))) b!2907635))

(declare-fun b!2907636 () Bool)

(declare-fun e!1835433 () Bool)

(declare-fun tp!934055 () Bool)

(assert (=> b!2907636 (= e!1835433 (and tp_is_empty!15411 tp!934055))))

(assert (=> b!2907560 (= tp!934037 e!1835433)))

(assert (= (and b!2907560 (is-Cons!34613 (t!233780 s!2253))) b!2907636))

(declare-fun b!2907641 () Bool)

(declare-fun e!1835436 () Bool)

(declare-fun tp!934060 () Bool)

(declare-fun tp!934061 () Bool)

(assert (=> b!2907641 (= e!1835436 (and tp!934060 tp!934061))))

(assert (=> b!2907561 (= tp!934038 e!1835436)))

(assert (= (and b!2907561 (is-Cons!34614 (exprs!3240 setElem!25806))) b!2907641))

(declare-fun condSetEmpty!25812 () Bool)

(assert (=> setNonEmpty!25806 (= condSetEmpty!25812 (= setRest!25806 (as set.empty (Set Context!5480))))))

(declare-fun setRes!25812 () Bool)

(assert (=> setNonEmpty!25806 (= tp!934039 setRes!25812)))

(declare-fun setIsEmpty!25812 () Bool)

(assert (=> setIsEmpty!25812 setRes!25812))

(declare-fun setElem!25812 () Context!5480)

(declare-fun e!1835439 () Bool)

(declare-fun setNonEmpty!25812 () Bool)

(declare-fun tp!934067 () Bool)

(assert (=> setNonEmpty!25812 (= setRes!25812 (and tp!934067 (inv!46736 setElem!25812) e!1835439))))

(declare-fun setRest!25812 () (Set Context!5480))

(assert (=> setNonEmpty!25812 (= setRest!25806 (set.union (set.insert setElem!25812 (as set.empty (Set Context!5480))) setRest!25812))))

(declare-fun b!2907646 () Bool)

(declare-fun tp!934066 () Bool)

(assert (=> b!2907646 (= e!1835439 tp!934066)))

(assert (= (and setNonEmpty!25806 condSetEmpty!25812) setIsEmpty!25812))

(assert (= (and setNonEmpty!25806 (not condSetEmpty!25812)) setNonEmpty!25812))

(assert (= setNonEmpty!25812 b!2907646))

(declare-fun m!3309355 () Bool)

(assert (=> setNonEmpty!25812 m!3309355))

(push 1)

(assert (not d!836504))

(assert (not d!836500))

(assert tp_is_empty!15411)

(assert (not b!2907600))

(assert (not setNonEmpty!25812))

(assert (not b!2907619))

(assert (not b!2907597))

(assert (not d!836494))

(assert (not b!2907596))

(assert (not b!2907601))

(assert (not d!836506))

(assert (not b!2907641))

(assert (not b!2907635))

(assert (not b!2907636))

(assert (not b!2907620))

(assert (not b!2907598))

(assert (not b!2907602))

(assert (not b!2907630))

(assert (not b!2907629))

(assert (not b!2907646))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!836514 () Bool)

(assert (=> d!836514 (= (isEmpty!18894 prefix!909) (is-Nil!34613 prefix!909))))

(assert (=> d!836504 d!836514))

(declare-fun d!836516 () Bool)

(assert (=> d!836516 (= (head!6434 (t!233780 prefix!909)) (h!40033 (t!233780 prefix!909)))))

(assert (=> b!2907600 d!836516))

(declare-fun d!836518 () Bool)

(assert (=> d!836518 (= (head!6434 (tail!4665 s!2253)) (h!40033 (tail!4665 s!2253)))))

(assert (=> b!2907600 d!836518))

(declare-fun b!2907670 () Bool)

(declare-fun e!1835454 () Bool)

(declare-fun e!1835453 () Bool)

(assert (=> b!2907670 (= e!1835454 e!1835453)))

(declare-fun res!1200740 () Bool)

(assert (=> b!2907670 (=> (not res!1200740) (not e!1835453))))

(assert (=> b!2907670 (= res!1200740 (not (is-Nil!34613 (tail!4665 (tail!4665 s!2253)))))))

(declare-fun b!2907671 () Bool)

(declare-fun res!1200739 () Bool)

(assert (=> b!2907671 (=> (not res!1200739) (not e!1835453))))

(assert (=> b!2907671 (= res!1200739 (= (head!6434 (tail!4665 (t!233780 prefix!909))) (head!6434 (tail!4665 (tail!4665 s!2253)))))))

(declare-fun d!836520 () Bool)

(declare-fun e!1835455 () Bool)

(assert (=> d!836520 e!1835455))

(declare-fun res!1200741 () Bool)

(assert (=> d!836520 (=> res!1200741 e!1835455)))

(declare-fun lt!1022808 () Bool)

(assert (=> d!836520 (= res!1200741 (not lt!1022808))))

(assert (=> d!836520 (= lt!1022808 e!1835454)))

(declare-fun res!1200738 () Bool)

(assert (=> d!836520 (=> res!1200738 e!1835454)))

(assert (=> d!836520 (= res!1200738 (is-Nil!34613 (tail!4665 (t!233780 prefix!909))))))

(assert (=> d!836520 (= (isPrefix!2749 (tail!4665 (t!233780 prefix!909)) (tail!4665 (tail!4665 s!2253))) lt!1022808)))

(declare-fun b!2907673 () Bool)

(assert (=> b!2907673 (= e!1835455 (>= (size!26383 (tail!4665 (tail!4665 s!2253))) (size!26383 (tail!4665 (t!233780 prefix!909)))))))

(declare-fun b!2907672 () Bool)

(assert (=> b!2907672 (= e!1835453 (isPrefix!2749 (tail!4665 (tail!4665 (t!233780 prefix!909))) (tail!4665 (tail!4665 (tail!4665 s!2253)))))))

(assert (= (and d!836520 (not res!1200738)) b!2907670))

(assert (= (and b!2907670 res!1200740) b!2907671))

(assert (= (and b!2907671 res!1200739) b!2907672))

(assert (= (and d!836520 (not res!1200741)) b!2907673))

(assert (=> b!2907671 m!3309307))

(declare-fun m!3309381 () Bool)

(assert (=> b!2907671 m!3309381))

(assert (=> b!2907671 m!3309309))

(declare-fun m!3309383 () Bool)

(assert (=> b!2907671 m!3309383))

(assert (=> b!2907673 m!3309309))

(declare-fun m!3309385 () Bool)

(assert (=> b!2907673 m!3309385))

(assert (=> b!2907673 m!3309307))

(declare-fun m!3309387 () Bool)

(assert (=> b!2907673 m!3309387))

(assert (=> b!2907672 m!3309307))

(declare-fun m!3309389 () Bool)

(assert (=> b!2907672 m!3309389))

(assert (=> b!2907672 m!3309309))

(declare-fun m!3309391 () Bool)

(assert (=> b!2907672 m!3309391))

(assert (=> b!2907672 m!3309389))

(assert (=> b!2907672 m!3309391))

(declare-fun m!3309393 () Bool)

(assert (=> b!2907672 m!3309393))

(assert (=> b!2907601 d!836520))

(declare-fun d!836522 () Bool)

(assert (=> d!836522 (= (tail!4665 (t!233780 prefix!909)) (t!233780 (t!233780 prefix!909)))))

(assert (=> b!2907601 d!836522))

(declare-fun d!836524 () Bool)

(assert (=> d!836524 (= (tail!4665 (tail!4665 s!2253)) (t!233780 (tail!4665 s!2253)))))

(assert (=> b!2907601 d!836524))

(declare-fun d!836526 () Bool)

(declare-fun lt!1022811 () Int)

(assert (=> d!836526 (>= lt!1022811 0)))

(declare-fun e!1835459 () Int)

(assert (=> d!836526 (= lt!1022811 e!1835459)))

(declare-fun c!473859 () Bool)

(assert (=> d!836526 (= c!473859 (is-Nil!34613 (tail!4665 s!2253)))))

(assert (=> d!836526 (= (size!26383 (tail!4665 s!2253)) lt!1022811)))

(declare-fun b!2907679 () Bool)

(assert (=> b!2907679 (= e!1835459 0)))

(declare-fun b!2907680 () Bool)

(assert (=> b!2907680 (= e!1835459 (+ 1 (size!26383 (t!233780 (tail!4665 s!2253)))))))

(assert (= (and d!836526 c!473859) b!2907679))

(assert (= (and d!836526 (not c!473859)) b!2907680))

(declare-fun m!3309397 () Bool)

(assert (=> b!2907680 m!3309397))

(assert (=> b!2907602 d!836526))

(declare-fun d!836528 () Bool)

(declare-fun lt!1022812 () Int)

(assert (=> d!836528 (>= lt!1022812 0)))

(declare-fun e!1835460 () Int)

(assert (=> d!836528 (= lt!1022812 e!1835460)))

(declare-fun c!473860 () Bool)

(assert (=> d!836528 (= c!473860 (is-Nil!34613 (t!233780 prefix!909)))))

(assert (=> d!836528 (= (size!26383 (t!233780 prefix!909)) lt!1022812)))

(declare-fun b!2907681 () Bool)

(assert (=> b!2907681 (= e!1835460 0)))

(declare-fun b!2907682 () Bool)

(assert (=> b!2907682 (= e!1835460 (+ 1 (size!26383 (t!233780 (t!233780 prefix!909)))))))

(assert (= (and d!836528 c!473860) b!2907681))

(assert (= (and d!836528 (not c!473860)) b!2907682))

(declare-fun m!3309399 () Bool)

(assert (=> b!2907682 m!3309399))

(assert (=> b!2907602 d!836528))

(declare-fun bs!524180 () Bool)

(declare-fun b!2907687 () Bool)

(declare-fun d!836530 () Bool)

(assert (= bs!524180 (and b!2907687 d!836530)))

(declare-fun lambda!107825 () Int)

(declare-fun lambda!107824 () Int)

(assert (=> bs!524180 (not (= lambda!107825 lambda!107824))))

(declare-fun bs!524181 () Bool)

(declare-fun b!2907688 () Bool)

(assert (= bs!524181 (and b!2907688 d!836530)))

(declare-fun lambda!107826 () Int)

(assert (=> bs!524181 (not (= lambda!107826 lambda!107824))))

(declare-fun bs!524182 () Bool)

(assert (= bs!524182 (and b!2907688 b!2907687)))

(assert (=> bs!524182 (= lambda!107826 lambda!107825)))

(declare-datatypes ((Unit!48165 0))(
  ( (Unit!48166) )
))
(declare-fun e!1835467 () Unit!48165)

(declare-fun Unit!48167 () Unit!48165)

(assert (=> b!2907687 (= e!1835467 Unit!48167)))

(declare-datatypes ((List!34741 0))(
  ( (Nil!34617) (Cons!34617 (h!40037 Context!5480) (t!233784 List!34741)) )
))
(declare-fun lt!1022829 () List!34741)

(declare-fun call!189739 () List!34741)

(assert (=> b!2907687 (= lt!1022829 call!189739)))

(declare-fun lt!1022831 () Unit!48165)

(declare-fun lemmaNotForallThenExists!162 (List!34741 Int) Unit!48165)

(assert (=> b!2907687 (= lt!1022831 (lemmaNotForallThenExists!162 lt!1022829 lambda!107824))))

(declare-fun call!189740 () Bool)

(assert (=> b!2907687 call!189740))

(declare-fun lt!1022836 () Unit!48165)

(assert (=> b!2907687 (= lt!1022836 lt!1022831)))

(declare-fun Unit!48168 () Unit!48165)

(assert (=> b!2907688 (= e!1835467 Unit!48168)))

(declare-fun lt!1022834 () List!34741)

(assert (=> b!2907688 (= lt!1022834 call!189739)))

(declare-fun lt!1022832 () Unit!48165)

(declare-fun lemmaForallThenNotExists!145 (List!34741 Int) Unit!48165)

(assert (=> b!2907688 (= lt!1022832 (lemmaForallThenNotExists!145 lt!1022834 lambda!107824))))

(assert (=> b!2907688 (not call!189740)))

(declare-fun lt!1022835 () Unit!48165)

(assert (=> b!2907688 (= lt!1022835 lt!1022832)))

(declare-fun bm!189734 () Bool)

(declare-fun c!473871 () Bool)

(declare-fun exists!1209 (List!34741 Int) Bool)

(assert (=> bm!189734 (= call!189740 (exists!1209 (ite c!473871 lt!1022829 lt!1022834) (ite c!473871 lambda!107825 lambda!107826)))))

(declare-fun bm!189735 () Bool)

(declare-fun toList!2035 ((Set Context!5480)) List!34741)

(assert (=> bm!189735 (= call!189739 (toList!2035 (derivationStepZipper!502 z!929 (h!40033 prefix!909))))))

(declare-fun lt!1022833 () Bool)

(declare-datatypes ((Option!6545 0))(
  ( (None!6544) (Some!6544 (v!34670 List!34737)) )
))
(declare-fun isEmpty!18896 (Option!6545) Bool)

(declare-fun getLanguageWitness!580 ((Set Context!5480)) Option!6545)

(assert (=> d!836530 (= lt!1022833 (isEmpty!18896 (getLanguageWitness!580 (derivationStepZipper!502 z!929 (h!40033 prefix!909)))))))

(declare-fun forall!7118 ((Set Context!5480) Int) Bool)

(assert (=> d!836530 (= lt!1022833 (forall!7118 (derivationStepZipper!502 z!929 (h!40033 prefix!909)) lambda!107824))))

(declare-fun lt!1022830 () Unit!48165)

(assert (=> d!836530 (= lt!1022830 e!1835467)))

(assert (=> d!836530 (= c!473871 (not (forall!7118 (derivationStepZipper!502 z!929 (h!40033 prefix!909)) lambda!107824)))))

(assert (=> d!836530 (= (lostCauseZipper!605 (derivationStepZipper!502 z!929 (h!40033 prefix!909))) lt!1022833)))

(assert (= (and d!836530 c!473871) b!2907687))

(assert (= (and d!836530 (not c!473871)) b!2907688))

(assert (= (or b!2907687 b!2907688) bm!189734))

(assert (= (or b!2907687 b!2907688) bm!189735))

(declare-fun m!3309401 () Bool)

(assert (=> b!2907688 m!3309401))

(assert (=> bm!189735 m!3309263))

(declare-fun m!3309403 () Bool)

(assert (=> bm!189735 m!3309403))

(assert (=> d!836530 m!3309263))

(declare-fun m!3309405 () Bool)

(assert (=> d!836530 m!3309405))

(assert (=> d!836530 m!3309405))

(declare-fun m!3309407 () Bool)

(assert (=> d!836530 m!3309407))

(assert (=> d!836530 m!3309263))

(declare-fun m!3309409 () Bool)

(assert (=> d!836530 m!3309409))

(assert (=> d!836530 m!3309263))

(assert (=> d!836530 m!3309409))

(declare-fun m!3309411 () Bool)

(assert (=> bm!189734 m!3309411))

(declare-fun m!3309413 () Bool)

(assert (=> b!2907687 m!3309413))

(assert (=> b!2907619 d!836530))

(declare-fun d!836532 () Bool)

(declare-fun res!1200746 () Bool)

(declare-fun e!1835472 () Bool)

(assert (=> d!836532 (=> res!1200746 e!1835472)))

(assert (=> d!836532 (= res!1200746 (is-Nil!34614 (exprs!3240 setElem!25806)))))

(assert (=> d!836532 (= (forall!7116 (exprs!3240 setElem!25806) lambda!107805) e!1835472)))

(declare-fun b!2907693 () Bool)

(declare-fun e!1835473 () Bool)

(assert (=> b!2907693 (= e!1835472 e!1835473)))

(declare-fun res!1200747 () Bool)

(assert (=> b!2907693 (=> (not res!1200747) (not e!1835473))))

(declare-fun dynLambda!14348 (Int Regex!8912) Bool)

(assert (=> b!2907693 (= res!1200747 (dynLambda!14348 lambda!107805 (h!40034 (exprs!3240 setElem!25806))))))

(declare-fun b!2907694 () Bool)

(assert (=> b!2907694 (= e!1835473 (forall!7116 (t!233781 (exprs!3240 setElem!25806)) lambda!107805))))

(assert (= (and d!836532 (not res!1200746)) b!2907693))

(assert (= (and b!2907693 res!1200747) b!2907694))

(declare-fun b_lambda!86343 () Bool)

(assert (=> (not b_lambda!86343) (not b!2907693)))

(declare-fun m!3309415 () Bool)

(assert (=> b!2907693 m!3309415))

(declare-fun m!3309417 () Bool)

(assert (=> b!2907694 m!3309417))

(assert (=> d!836506 d!836532))

(declare-fun d!836534 () Bool)

(declare-fun choose!17093 ((Set Context!5480) Int) (Set Context!5480))

(assert (=> d!836534 (= (flatMap!239 z!929 lambda!107802) (choose!17093 z!929 lambda!107802))))

(declare-fun bs!524183 () Bool)

(assert (= bs!524183 d!836534))

(declare-fun m!3309419 () Bool)

(assert (=> bs!524183 m!3309419))

(assert (=> d!836500 d!836534))

(declare-fun bs!524184 () Bool)

(declare-fun d!836536 () Bool)

(assert (= bs!524184 (and d!836536 d!836530)))

(declare-fun lambda!107827 () Int)

(assert (=> bs!524184 (= lambda!107827 lambda!107824)))

(declare-fun bs!524185 () Bool)

(assert (= bs!524185 (and d!836536 b!2907687)))

(assert (=> bs!524185 (not (= lambda!107827 lambda!107825))))

(declare-fun bs!524186 () Bool)

(assert (= bs!524186 (and d!836536 b!2907688)))

(assert (=> bs!524186 (not (= lambda!107827 lambda!107826))))

(declare-fun bs!524187 () Bool)

(declare-fun b!2907695 () Bool)

(assert (= bs!524187 (and b!2907695 d!836530)))

(declare-fun lambda!107828 () Int)

(assert (=> bs!524187 (not (= lambda!107828 lambda!107824))))

(declare-fun bs!524188 () Bool)

(assert (= bs!524188 (and b!2907695 b!2907687)))

(assert (=> bs!524188 (= lambda!107828 lambda!107825)))

(declare-fun bs!524189 () Bool)

(assert (= bs!524189 (and b!2907695 b!2907688)))

(assert (=> bs!524189 (= lambda!107828 lambda!107826)))

(declare-fun bs!524190 () Bool)

(assert (= bs!524190 (and b!2907695 d!836536)))

(assert (=> bs!524190 (not (= lambda!107828 lambda!107827))))

(declare-fun bs!524191 () Bool)

(declare-fun b!2907696 () Bool)

(assert (= bs!524191 (and b!2907696 b!2907695)))

(declare-fun lambda!107829 () Int)

(assert (=> bs!524191 (= lambda!107829 lambda!107828)))

(declare-fun bs!524192 () Bool)

(assert (= bs!524192 (and b!2907696 b!2907687)))

(assert (=> bs!524192 (= lambda!107829 lambda!107825)))

(declare-fun bs!524193 () Bool)

(assert (= bs!524193 (and b!2907696 d!836530)))

(assert (=> bs!524193 (not (= lambda!107829 lambda!107824))))

(declare-fun bs!524194 () Bool)

(assert (= bs!524194 (and b!2907696 b!2907688)))

(assert (=> bs!524194 (= lambda!107829 lambda!107826)))

(declare-fun bs!524195 () Bool)

(assert (= bs!524195 (and b!2907696 d!836536)))

(assert (=> bs!524195 (not (= lambda!107829 lambda!107827))))

(declare-fun e!1835474 () Unit!48165)

(declare-fun Unit!48169 () Unit!48165)

(assert (=> b!2907695 (= e!1835474 Unit!48169)))

(declare-fun lt!1022837 () List!34741)

(declare-fun call!189741 () List!34741)

(assert (=> b!2907695 (= lt!1022837 call!189741)))

(declare-fun lt!1022839 () Unit!48165)

(assert (=> b!2907695 (= lt!1022839 (lemmaNotForallThenExists!162 lt!1022837 lambda!107827))))

(declare-fun call!189742 () Bool)

(assert (=> b!2907695 call!189742))

(declare-fun lt!1022844 () Unit!48165)

(assert (=> b!2907695 (= lt!1022844 lt!1022839)))

(declare-fun Unit!48170 () Unit!48165)

(assert (=> b!2907696 (= e!1835474 Unit!48170)))

(declare-fun lt!1022842 () List!34741)

(assert (=> b!2907696 (= lt!1022842 call!189741)))

(declare-fun lt!1022840 () Unit!48165)

(assert (=> b!2907696 (= lt!1022840 (lemmaForallThenNotExists!145 lt!1022842 lambda!107827))))

(assert (=> b!2907696 (not call!189742)))

(declare-fun lt!1022843 () Unit!48165)

(assert (=> b!2907696 (= lt!1022843 lt!1022840)))

(declare-fun bm!189736 () Bool)

(declare-fun c!473872 () Bool)

(assert (=> bm!189736 (= call!189742 (exists!1209 (ite c!473872 lt!1022837 lt!1022842) (ite c!473872 lambda!107828 lambda!107829)))))

(declare-fun bm!189737 () Bool)

(assert (=> bm!189737 (= call!189741 (toList!2035 z!929))))

(declare-fun lt!1022841 () Bool)

(assert (=> d!836536 (= lt!1022841 (isEmpty!18896 (getLanguageWitness!580 z!929)))))

(assert (=> d!836536 (= lt!1022841 (forall!7118 z!929 lambda!107827))))

(declare-fun lt!1022838 () Unit!48165)

(assert (=> d!836536 (= lt!1022838 e!1835474)))

(assert (=> d!836536 (= c!473872 (not (forall!7118 z!929 lambda!107827)))))

(assert (=> d!836536 (= (lostCauseZipper!605 z!929) lt!1022841)))

(assert (= (and d!836536 c!473872) b!2907695))

(assert (= (and d!836536 (not c!473872)) b!2907696))

(assert (= (or b!2907695 b!2907696) bm!189736))

(assert (= (or b!2907695 b!2907696) bm!189737))

(declare-fun m!3309421 () Bool)

(assert (=> b!2907696 m!3309421))

(declare-fun m!3309423 () Bool)

(assert (=> bm!189737 m!3309423))

(declare-fun m!3309425 () Bool)

(assert (=> d!836536 m!3309425))

(assert (=> d!836536 m!3309425))

(declare-fun m!3309427 () Bool)

(assert (=> d!836536 m!3309427))

(declare-fun m!3309429 () Bool)

(assert (=> d!836536 m!3309429))

(assert (=> d!836536 m!3309429))

(declare-fun m!3309431 () Bool)

(assert (=> bm!189736 m!3309431))

(declare-fun m!3309433 () Bool)

(assert (=> b!2907695 m!3309433))

(assert (=> b!2907629 d!836536))

(declare-fun d!836538 () Bool)

(declare-fun c!473873 () Bool)

(assert (=> d!836538 (= c!473873 (isEmpty!18894 (tail!4665 prefix!909)))))

(declare-fun e!1835475 () Bool)

(assert (=> d!836538 (= (prefixMatchZipper!356 (derivationStepZipper!502 z!929 (head!6434 prefix!909)) (tail!4665 prefix!909)) e!1835475)))

(declare-fun b!2907697 () Bool)

(assert (=> b!2907697 (= e!1835475 (not (lostCauseZipper!605 (derivationStepZipper!502 z!929 (head!6434 prefix!909)))))))

(declare-fun b!2907698 () Bool)

(assert (=> b!2907698 (= e!1835475 (prefixMatchZipper!356 (derivationStepZipper!502 (derivationStepZipper!502 z!929 (head!6434 prefix!909)) (head!6434 (tail!4665 prefix!909))) (tail!4665 (tail!4665 prefix!909))))))

(assert (= (and d!836538 c!473873) b!2907697))

(assert (= (and d!836538 (not c!473873)) b!2907698))

(assert (=> d!836538 m!3309295))

(declare-fun m!3309435 () Bool)

(assert (=> d!836538 m!3309435))

(assert (=> b!2907697 m!3309349))

(declare-fun m!3309437 () Bool)

(assert (=> b!2907697 m!3309437))

(assert (=> b!2907698 m!3309295))

(declare-fun m!3309439 () Bool)

(assert (=> b!2907698 m!3309439))

(assert (=> b!2907698 m!3309349))

(assert (=> b!2907698 m!3309439))

(declare-fun m!3309441 () Bool)

(assert (=> b!2907698 m!3309441))

(assert (=> b!2907698 m!3309295))

(declare-fun m!3309443 () Bool)

(assert (=> b!2907698 m!3309443))

(assert (=> b!2907698 m!3309441))

(assert (=> b!2907698 m!3309443))

(declare-fun m!3309445 () Bool)

(assert (=> b!2907698 m!3309445))

(assert (=> b!2907630 d!836538))

(declare-fun bs!524196 () Bool)

(declare-fun d!836540 () Bool)

(assert (= bs!524196 (and d!836540 d!836500)))

(declare-fun lambda!107830 () Int)

(assert (=> bs!524196 (= (= (head!6434 prefix!909) (h!40033 prefix!909)) (= lambda!107830 lambda!107802))))

(assert (=> d!836540 true))

(assert (=> d!836540 (= (derivationStepZipper!502 z!929 (head!6434 prefix!909)) (flatMap!239 z!929 lambda!107830))))

(declare-fun bs!524197 () Bool)

(assert (= bs!524197 d!836540))

(declare-fun m!3309447 () Bool)

(assert (=> bs!524197 m!3309447))

(assert (=> b!2907630 d!836540))

(declare-fun d!836542 () Bool)

(assert (=> d!836542 (= (head!6434 prefix!909) (h!40033 prefix!909))))

(assert (=> b!2907630 d!836542))

(declare-fun d!836544 () Bool)

(assert (=> d!836544 (= (tail!4665 prefix!909) (t!233780 prefix!909))))

(assert (=> b!2907630 d!836544))

(declare-fun bs!524198 () Bool)

(declare-fun d!836546 () Bool)

(assert (= bs!524198 (and d!836546 d!836506)))

(declare-fun lambda!107831 () Int)

(assert (=> bs!524198 (= lambda!107831 lambda!107805)))

(assert (=> d!836546 (= (inv!46736 setElem!25812) (forall!7116 (exprs!3240 setElem!25812) lambda!107831))))

(declare-fun bs!524199 () Bool)

(assert (= bs!524199 d!836546))

(declare-fun m!3309449 () Bool)

(assert (=> bs!524199 m!3309449))

(assert (=> setNonEmpty!25812 d!836546))

(declare-fun d!836548 () Bool)

(declare-fun c!473874 () Bool)

(assert (=> d!836548 (= c!473874 (isEmpty!18894 (tail!4665 (t!233780 prefix!909))))))

(declare-fun e!1835476 () Bool)

(assert (=> d!836548 (= (prefixMatchZipper!356 (derivationStepZipper!502 (derivationStepZipper!502 z!929 (h!40033 prefix!909)) (head!6434 (t!233780 prefix!909))) (tail!4665 (t!233780 prefix!909))) e!1835476)))

(declare-fun b!2907699 () Bool)

(assert (=> b!2907699 (= e!1835476 (not (lostCauseZipper!605 (derivationStepZipper!502 (derivationStepZipper!502 z!929 (h!40033 prefix!909)) (head!6434 (t!233780 prefix!909))))))))

(declare-fun b!2907700 () Bool)

(assert (=> b!2907700 (= e!1835476 (prefixMatchZipper!356 (derivationStepZipper!502 (derivationStepZipper!502 (derivationStepZipper!502 z!929 (h!40033 prefix!909)) (head!6434 (t!233780 prefix!909))) (head!6434 (tail!4665 (t!233780 prefix!909)))) (tail!4665 (tail!4665 (t!233780 prefix!909)))))))

(assert (= (and d!836548 c!473874) b!2907699))

(assert (= (and d!836548 (not c!473874)) b!2907700))

(assert (=> d!836548 m!3309307))

(declare-fun m!3309451 () Bool)

(assert (=> d!836548 m!3309451))

(assert (=> b!2907699 m!3309331))

(declare-fun m!3309453 () Bool)

(assert (=> b!2907699 m!3309453))

(assert (=> b!2907700 m!3309307))

(assert (=> b!2907700 m!3309381))

(assert (=> b!2907700 m!3309331))

(assert (=> b!2907700 m!3309381))

(declare-fun m!3309455 () Bool)

(assert (=> b!2907700 m!3309455))

(assert (=> b!2907700 m!3309307))

(assert (=> b!2907700 m!3309389))

(assert (=> b!2907700 m!3309455))

(assert (=> b!2907700 m!3309389))

(declare-fun m!3309457 () Bool)

(assert (=> b!2907700 m!3309457))

(assert (=> b!2907620 d!836548))

(declare-fun bs!524200 () Bool)

(declare-fun d!836550 () Bool)

(assert (= bs!524200 (and d!836550 d!836500)))

(declare-fun lambda!107832 () Int)

(assert (=> bs!524200 (= (= (head!6434 (t!233780 prefix!909)) (h!40033 prefix!909)) (= lambda!107832 lambda!107802))))

(declare-fun bs!524201 () Bool)

(assert (= bs!524201 (and d!836550 d!836540)))

(assert (=> bs!524201 (= (= (head!6434 (t!233780 prefix!909)) (head!6434 prefix!909)) (= lambda!107832 lambda!107830))))

(assert (=> d!836550 true))

(assert (=> d!836550 (= (derivationStepZipper!502 (derivationStepZipper!502 z!929 (h!40033 prefix!909)) (head!6434 (t!233780 prefix!909))) (flatMap!239 (derivationStepZipper!502 z!929 (h!40033 prefix!909)) lambda!107832))))

(declare-fun bs!524202 () Bool)

(assert (= bs!524202 d!836550))

(assert (=> bs!524202 m!3309263))

(declare-fun m!3309459 () Bool)

(assert (=> bs!524202 m!3309459))

(assert (=> b!2907620 d!836550))

(assert (=> b!2907620 d!836516))

(assert (=> b!2907620 d!836522))

(assert (=> b!2907596 d!836542))

(declare-fun d!836552 () Bool)

(assert (=> d!836552 (= (head!6434 s!2253) (h!40033 s!2253))))

(assert (=> b!2907596 d!836552))

(declare-fun b!2907701 () Bool)

(declare-fun e!1835478 () Bool)

(declare-fun e!1835477 () Bool)

(assert (=> b!2907701 (= e!1835478 e!1835477)))

(declare-fun res!1200750 () Bool)

(assert (=> b!2907701 (=> (not res!1200750) (not e!1835477))))

(assert (=> b!2907701 (= res!1200750 (not (is-Nil!34613 (tail!4665 s!2253))))))

(declare-fun b!2907702 () Bool)

(declare-fun res!1200749 () Bool)

(assert (=> b!2907702 (=> (not res!1200749) (not e!1835477))))

(assert (=> b!2907702 (= res!1200749 (= (head!6434 (tail!4665 prefix!909)) (head!6434 (tail!4665 s!2253))))))

(declare-fun d!836554 () Bool)

(declare-fun e!1835479 () Bool)

(assert (=> d!836554 e!1835479))

(declare-fun res!1200751 () Bool)

(assert (=> d!836554 (=> res!1200751 e!1835479)))

(declare-fun lt!1022845 () Bool)

(assert (=> d!836554 (= res!1200751 (not lt!1022845))))

(assert (=> d!836554 (= lt!1022845 e!1835478)))

(declare-fun res!1200748 () Bool)

(assert (=> d!836554 (=> res!1200748 e!1835478)))

(assert (=> d!836554 (= res!1200748 (is-Nil!34613 (tail!4665 prefix!909)))))

(assert (=> d!836554 (= (isPrefix!2749 (tail!4665 prefix!909) (tail!4665 s!2253)) lt!1022845)))

(declare-fun b!2907704 () Bool)

(assert (=> b!2907704 (= e!1835479 (>= (size!26383 (tail!4665 s!2253)) (size!26383 (tail!4665 prefix!909))))))

(declare-fun b!2907703 () Bool)

(assert (=> b!2907703 (= e!1835477 (isPrefix!2749 (tail!4665 (tail!4665 prefix!909)) (tail!4665 (tail!4665 s!2253))))))

(assert (= (and d!836554 (not res!1200748)) b!2907701))

(assert (= (and b!2907701 res!1200750) b!2907702))

(assert (= (and b!2907702 res!1200749) b!2907703))

(assert (= (and d!836554 (not res!1200751)) b!2907704))

(assert (=> b!2907702 m!3309295))

(assert (=> b!2907702 m!3309439))

(assert (=> b!2907702 m!3309267))

(assert (=> b!2907702 m!3309301))

(assert (=> b!2907704 m!3309267))

(assert (=> b!2907704 m!3309303))

(assert (=> b!2907704 m!3309295))

(declare-fun m!3309461 () Bool)

(assert (=> b!2907704 m!3309461))

(assert (=> b!2907703 m!3309295))

(assert (=> b!2907703 m!3309443))

(assert (=> b!2907703 m!3309267))

(assert (=> b!2907703 m!3309309))

(assert (=> b!2907703 m!3309443))

(assert (=> b!2907703 m!3309309))

(declare-fun m!3309463 () Bool)

(assert (=> b!2907703 m!3309463))

(assert (=> b!2907597 d!836554))

(assert (=> b!2907597 d!836544))

(assert (=> b!2907597 d!836492))

(declare-fun d!836556 () Bool)

(assert (=> d!836556 (= (isEmpty!18894 (t!233780 prefix!909)) (is-Nil!34613 (t!233780 prefix!909)))))

(assert (=> d!836494 d!836556))

(declare-fun d!836558 () Bool)

(declare-fun lt!1022846 () Int)

(assert (=> d!836558 (>= lt!1022846 0)))

(declare-fun e!1835480 () Int)

(assert (=> d!836558 (= lt!1022846 e!1835480)))

(declare-fun c!473875 () Bool)

(assert (=> d!836558 (= c!473875 (is-Nil!34613 s!2253))))

(assert (=> d!836558 (= (size!26383 s!2253) lt!1022846)))

(declare-fun b!2907705 () Bool)

(assert (=> b!2907705 (= e!1835480 0)))

(declare-fun b!2907706 () Bool)

(assert (=> b!2907706 (= e!1835480 (+ 1 (size!26383 (t!233780 s!2253))))))

(assert (= (and d!836558 c!473875) b!2907705))

(assert (= (and d!836558 (not c!473875)) b!2907706))

(declare-fun m!3309465 () Bool)

(assert (=> b!2907706 m!3309465))

(assert (=> b!2907598 d!836558))

(declare-fun d!836560 () Bool)

(declare-fun lt!1022847 () Int)

(assert (=> d!836560 (>= lt!1022847 0)))

(declare-fun e!1835481 () Int)

(assert (=> d!836560 (= lt!1022847 e!1835481)))

(declare-fun c!473876 () Bool)

(assert (=> d!836560 (= c!473876 (is-Nil!34613 prefix!909))))

(assert (=> d!836560 (= (size!26383 prefix!909) lt!1022847)))

(declare-fun b!2907707 () Bool)

(assert (=> b!2907707 (= e!1835481 0)))

(declare-fun b!2907708 () Bool)

(assert (=> b!2907708 (= e!1835481 (+ 1 (size!26383 (t!233780 prefix!909))))))

(assert (= (and d!836560 c!473876) b!2907707))

(assert (= (and d!836560 (not c!473876)) b!2907708))

(assert (=> b!2907708 m!3309305))

(assert (=> b!2907598 d!836560))

(declare-fun b!2907709 () Bool)

(declare-fun e!1835482 () Bool)

(declare-fun tp!934084 () Bool)

(declare-fun tp!934085 () Bool)

(assert (=> b!2907709 (= e!1835482 (and tp!934084 tp!934085))))

(assert (=> b!2907646 (= tp!934066 e!1835482)))

(assert (= (and b!2907646 (is-Cons!34614 (exprs!3240 setElem!25812))) b!2907709))

(declare-fun b!2907710 () Bool)

(declare-fun e!1835483 () Bool)

(declare-fun tp!934086 () Bool)

(assert (=> b!2907710 (= e!1835483 (and tp_is_empty!15411 tp!934086))))

(assert (=> b!2907635 (= tp!934054 e!1835483)))

(assert (= (and b!2907635 (is-Cons!34613 (t!233780 (t!233780 prefix!909)))) b!2907710))

(declare-fun e!1835486 () Bool)

(assert (=> b!2907641 (= tp!934060 e!1835486)))

(declare-fun b!2907723 () Bool)

(declare-fun tp!934099 () Bool)

(assert (=> b!2907723 (= e!1835486 tp!934099)))

(declare-fun b!2907724 () Bool)

(declare-fun tp!934100 () Bool)

(declare-fun tp!934101 () Bool)

(assert (=> b!2907724 (= e!1835486 (and tp!934100 tp!934101))))

(declare-fun b!2907722 () Bool)

(declare-fun tp!934097 () Bool)

(declare-fun tp!934098 () Bool)

(assert (=> b!2907722 (= e!1835486 (and tp!934097 tp!934098))))

(declare-fun b!2907721 () Bool)

(assert (=> b!2907721 (= e!1835486 tp_is_empty!15411)))

(assert (= (and b!2907641 (is-ElementMatch!8912 (h!40034 (exprs!3240 setElem!25806)))) b!2907721))

(assert (= (and b!2907641 (is-Concat!14233 (h!40034 (exprs!3240 setElem!25806)))) b!2907722))

(assert (= (and b!2907641 (is-Star!8912 (h!40034 (exprs!3240 setElem!25806)))) b!2907723))

(assert (= (and b!2907641 (is-Union!8912 (h!40034 (exprs!3240 setElem!25806)))) b!2907724))

(declare-fun b!2907725 () Bool)

(declare-fun e!1835487 () Bool)

(declare-fun tp!934102 () Bool)

(declare-fun tp!934103 () Bool)

(assert (=> b!2907725 (= e!1835487 (and tp!934102 tp!934103))))

(assert (=> b!2907641 (= tp!934061 e!1835487)))

(assert (= (and b!2907641 (is-Cons!34614 (t!233781 (exprs!3240 setElem!25806)))) b!2907725))

(declare-fun condSetEmpty!25816 () Bool)

(assert (=> setNonEmpty!25812 (= condSetEmpty!25816 (= setRest!25812 (as set.empty (Set Context!5480))))))

(declare-fun setRes!25816 () Bool)

(assert (=> setNonEmpty!25812 (= tp!934067 setRes!25816)))

(declare-fun setIsEmpty!25816 () Bool)

(assert (=> setIsEmpty!25816 setRes!25816))

(declare-fun e!1835488 () Bool)

(declare-fun setNonEmpty!25816 () Bool)

(declare-fun tp!934105 () Bool)

(declare-fun setElem!25816 () Context!5480)

(assert (=> setNonEmpty!25816 (= setRes!25816 (and tp!934105 (inv!46736 setElem!25816) e!1835488))))

(declare-fun setRest!25816 () (Set Context!5480))

(assert (=> setNonEmpty!25816 (= setRest!25812 (set.union (set.insert setElem!25816 (as set.empty (Set Context!5480))) setRest!25816))))

(declare-fun b!2907726 () Bool)

(declare-fun tp!934104 () Bool)

(assert (=> b!2907726 (= e!1835488 tp!934104)))

(assert (= (and setNonEmpty!25812 condSetEmpty!25816) setIsEmpty!25816))

(assert (= (and setNonEmpty!25812 (not condSetEmpty!25816)) setNonEmpty!25816))

(assert (= setNonEmpty!25816 b!2907726))

(declare-fun m!3309467 () Bool)

(assert (=> setNonEmpty!25816 m!3309467))

(declare-fun b!2907727 () Bool)

(declare-fun e!1835489 () Bool)

(declare-fun tp!934106 () Bool)

(assert (=> b!2907727 (= e!1835489 (and tp_is_empty!15411 tp!934106))))

(assert (=> b!2907636 (= tp!934055 e!1835489)))

(assert (= (and b!2907636 (is-Cons!34613 (t!233780 (t!233780 s!2253)))) b!2907727))

(declare-fun b_lambda!86345 () Bool)

(assert (= b_lambda!86343 (or d!836506 b_lambda!86345)))

(declare-fun bs!524203 () Bool)

(declare-fun d!836562 () Bool)

(assert (= bs!524203 (and d!836562 d!836506)))

(declare-fun validRegex!3668 (Regex!8912) Bool)

(assert (=> bs!524203 (= (dynLambda!14348 lambda!107805 (h!40034 (exprs!3240 setElem!25806))) (validRegex!3668 (h!40034 (exprs!3240 setElem!25806))))))

(declare-fun m!3309469 () Bool)

(assert (=> bs!524203 m!3309469))

(assert (=> b!2907693 d!836562))

(push 1)

(assert (not d!836546))

(assert (not b!2907695))

(assert (not d!836538))

(assert (not bm!189734))

(assert (not b!2907708))

(assert (not bm!189737))

(assert (not b!2907697))

(assert (not b!2907680))

(assert (not b!2907710))

(assert (not b!2907699))

(assert (not b!2907709))

(assert (not d!836530))

(assert (not b!2907723))

(assert (not b!2907688))

(assert (not b!2907706))

(assert (not b!2907700))

(assert (not b!2907682))

(assert (not b!2907702))

(assert tp_is_empty!15411)

(assert (not setNonEmpty!25816))

(assert (not b!2907704))

(assert (not bm!189736))

(assert (not b!2907703))

(assert (not b!2907671))

(assert (not b!2907727))

(assert (not d!836540))

(assert (not b!2907694))

(assert (not b!2907725))

(assert (not bm!189735))

(assert (not b!2907724))

(assert (not bs!524203))

(assert (not d!836534))

(assert (not b!2907687))

(assert (not d!836550))

(assert (not b!2907722))

(assert (not b!2907696))

(assert (not b!2907672))

(assert (not d!836536))

(assert (not b!2907673))

(assert (not d!836548))

(assert (not b!2907698))

(assert (not b!2907726))

(assert (not b_lambda!86345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


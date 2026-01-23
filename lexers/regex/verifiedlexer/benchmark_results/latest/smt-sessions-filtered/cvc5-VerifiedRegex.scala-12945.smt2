; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712990 () Bool)

(assert start!712990)

(declare-fun b!7315825 () Bool)

(declare-fun e!4379550 () Bool)

(declare-fun tp!2076634 () Bool)

(assert (=> b!7315825 (= e!4379550 tp!2076634)))

(declare-fun b!7315826 () Bool)

(declare-datatypes ((Unit!164601 0))(
  ( (Unit!164602) )
))
(declare-fun e!4379549 () Unit!164601)

(declare-fun Unit!164603 () Unit!164601)

(assert (=> b!7315826 (= e!4379549 Unit!164603)))

(declare-datatypes ((C!38122 0))(
  ( (C!38123 (val!29157 Int)) )
))
(declare-datatypes ((Regex!18924 0))(
  ( (ElementMatch!18924 (c!1358065 C!38122)) (Concat!27769 (regOne!38360 Regex!18924) (regTwo!38360 Regex!18924)) (EmptyExpr!18924) (Star!18924 (reg!19253 Regex!18924)) (EmptyLang!18924) (Union!18924 (regOne!38361 Regex!18924) (regTwo!38361 Regex!18924)) )
))
(declare-datatypes ((List!71266 0))(
  ( (Nil!71142) (Cons!71142 (h!77590 Regex!18924) (t!385498 List!71266)) )
))
(declare-datatypes ((Context!15728 0))(
  ( (Context!15729 (exprs!8364 List!71266)) )
))
(declare-fun setElem!54459 () Context!15728)

(declare-fun tp!2076636 () Bool)

(declare-fun setNonEmpty!54458 () Bool)

(declare-fun e!4379548 () Bool)

(declare-fun setRes!54458 () Bool)

(declare-fun inv!90432 (Context!15728) Bool)

(assert (=> setNonEmpty!54458 (= setRes!54458 (and tp!2076636 (inv!90432 setElem!54459) e!4379548))))

(declare-fun z1!542 () (Set Context!15728))

(declare-fun setRest!54459 () (Set Context!15728))

(assert (=> setNonEmpty!54458 (= z1!542 (set.union (set.insert setElem!54459 (as set.empty (Set Context!15728))) setRest!54459))))

(declare-fun setIsEmpty!54458 () Bool)

(declare-fun setRes!54459 () Bool)

(assert (=> setIsEmpty!54458 setRes!54459))

(declare-fun b!7315827 () Bool)

(declare-fun res!2956265 () Bool)

(declare-fun e!4379552 () Bool)

(assert (=> b!7315827 (=> (not res!2956265) (not e!4379552))))

(declare-fun lt!2602026 () (Set Context!15728))

(declare-fun lambda!452212 () Int)

(declare-fun exists!4572 ((Set Context!15728) Int) Bool)

(assert (=> b!7315827 (= res!2956265 (not (exists!4572 lt!2602026 lambda!452212)))))

(declare-fun res!2956267 () Bool)

(declare-fun e!4379551 () Bool)

(assert (=> start!712990 (=> (not res!2956267) (not e!4379551))))

(declare-datatypes ((List!71267 0))(
  ( (Nil!71143) (Cons!71143 (h!77591 C!38122) (t!385499 List!71267)) )
))
(declare-fun s!7362 () List!71267)

(assert (=> start!712990 (= res!2956267 (not (is-Cons!71143 s!7362)))))

(assert (=> start!712990 e!4379551))

(declare-fun e!4379545 () Bool)

(assert (=> start!712990 e!4379545))

(declare-fun condSetEmpty!54459 () Bool)

(assert (=> start!712990 (= condSetEmpty!54459 (= z1!542 (as set.empty (Set Context!15728))))))

(assert (=> start!712990 setRes!54458))

(declare-fun condSetEmpty!54458 () Bool)

(declare-fun z2!461 () (Set Context!15728))

(assert (=> start!712990 (= condSetEmpty!54458 (= z2!461 (as set.empty (Set Context!15728))))))

(assert (=> start!712990 setRes!54459))

(declare-fun setIsEmpty!54459 () Bool)

(assert (=> setIsEmpty!54459 setRes!54458))

(declare-fun b!7315828 () Bool)

(declare-fun Unit!164604 () Unit!164601)

(assert (=> b!7315828 (= e!4379549 Unit!164604)))

(declare-fun lt!2602027 () Unit!164601)

(declare-fun lemmaContainsThenExists!250 ((Set Context!15728) Context!15728 Int) Unit!164601)

(declare-fun getWitness!2312 ((Set Context!15728) Int) Context!15728)

(assert (=> b!7315828 (= lt!2602027 (lemmaContainsThenExists!250 lt!2602026 (getWitness!2312 z1!542 lambda!452212) lambda!452212))))

(declare-fun res!2956264 () Bool)

(assert (=> b!7315828 (= res!2956264 (exists!4572 lt!2602026 lambda!452212))))

(declare-fun e!4379547 () Bool)

(assert (=> b!7315828 (=> (not res!2956264) (not e!4379547))))

(assert (=> b!7315828 e!4379547))

(declare-fun b!7315829 () Bool)

(declare-fun tp_is_empty!47593 () Bool)

(declare-fun tp!2076635 () Bool)

(assert (=> b!7315829 (= e!4379545 (and tp_is_empty!47593 tp!2076635))))

(declare-fun b!7315830 () Bool)

(declare-fun tp!2076638 () Bool)

(assert (=> b!7315830 (= e!4379548 tp!2076638)))

(declare-fun setElem!54458 () Context!15728)

(declare-fun setNonEmpty!54459 () Bool)

(declare-fun tp!2076637 () Bool)

(assert (=> setNonEmpty!54459 (= setRes!54459 (and tp!2076637 (inv!90432 setElem!54458) e!4379550))))

(declare-fun setRest!54458 () (Set Context!15728))

(assert (=> setNonEmpty!54459 (= z2!461 (set.union (set.insert setElem!54458 (as set.empty (Set Context!15728))) setRest!54458))))

(declare-fun b!7315831 () Bool)

(assert (=> b!7315831 (= e!4379547 false)))

(declare-fun b!7315832 () Bool)

(assert (=> b!7315832 (= e!4379551 e!4379552)))

(declare-fun res!2956263 () Bool)

(assert (=> b!7315832 (=> (not res!2956263) (not e!4379552))))

(declare-fun nullableZipper!3105 ((Set Context!15728)) Bool)

(assert (=> b!7315832 (= res!2956263 (not (nullableZipper!3105 lt!2602026)))))

(assert (=> b!7315832 (= lt!2602026 (set.union z1!542 z2!461))))

(declare-fun b!7315833 () Bool)

(declare-fun e!4379546 () Bool)

(assert (=> b!7315833 (= e!4379546 (not false))))

(assert (=> b!7315833 (exists!4572 lt!2602026 lambda!452212)))

(declare-fun lt!2602025 () Unit!164601)

(assert (=> b!7315833 (= lt!2602025 (lemmaContainsThenExists!250 lt!2602026 (getWitness!2312 z2!461 lambda!452212) lambda!452212))))

(declare-fun b!7315834 () Bool)

(assert (=> b!7315834 (= e!4379552 e!4379546)))

(declare-fun res!2956266 () Bool)

(assert (=> b!7315834 (=> (not res!2956266) (not e!4379546))))

(assert (=> b!7315834 (= res!2956266 (nullableZipper!3105 z2!461))))

(declare-fun lt!2602028 () Unit!164601)

(assert (=> b!7315834 (= lt!2602028 e!4379549)))

(declare-fun c!1358064 () Bool)

(assert (=> b!7315834 (= c!1358064 (nullableZipper!3105 z1!542))))

(assert (= (and start!712990 res!2956267) b!7315832))

(assert (= (and b!7315832 res!2956263) b!7315827))

(assert (= (and b!7315827 res!2956265) b!7315834))

(assert (= (and b!7315834 c!1358064) b!7315828))

(assert (= (and b!7315834 (not c!1358064)) b!7315826))

(assert (= (and b!7315828 res!2956264) b!7315831))

(assert (= (and b!7315834 res!2956266) b!7315833))

(assert (= (and start!712990 (is-Cons!71143 s!7362)) b!7315829))

(assert (= (and start!712990 condSetEmpty!54459) setIsEmpty!54459))

(assert (= (and start!712990 (not condSetEmpty!54459)) setNonEmpty!54458))

(assert (= setNonEmpty!54458 b!7315830))

(assert (= (and start!712990 condSetEmpty!54458) setIsEmpty!54458))

(assert (= (and start!712990 (not condSetEmpty!54458)) setNonEmpty!54459))

(assert (= setNonEmpty!54459 b!7315825))

(declare-fun m!7979812 () Bool)

(assert (=> b!7315828 m!7979812))

(assert (=> b!7315828 m!7979812))

(declare-fun m!7979814 () Bool)

(assert (=> b!7315828 m!7979814))

(declare-fun m!7979816 () Bool)

(assert (=> b!7315828 m!7979816))

(assert (=> b!7315827 m!7979816))

(declare-fun m!7979818 () Bool)

(assert (=> setNonEmpty!54458 m!7979818))

(declare-fun m!7979820 () Bool)

(assert (=> setNonEmpty!54459 m!7979820))

(declare-fun m!7979822 () Bool)

(assert (=> b!7315834 m!7979822))

(declare-fun m!7979824 () Bool)

(assert (=> b!7315834 m!7979824))

(declare-fun m!7979826 () Bool)

(assert (=> b!7315832 m!7979826))

(assert (=> b!7315833 m!7979816))

(declare-fun m!7979828 () Bool)

(assert (=> b!7315833 m!7979828))

(assert (=> b!7315833 m!7979828))

(declare-fun m!7979830 () Bool)

(assert (=> b!7315833 m!7979830))

(push 1)

(assert (not b!7315828))

(assert (not b!7315827))

(assert (not b!7315833))

(assert (not b!7315825))

(assert (not b!7315834))

(assert (not setNonEmpty!54459))

(assert (not setNonEmpty!54458))

(assert (not b!7315830))

(assert tp_is_empty!47593)

(assert (not b!7315829))

(assert (not b!7315832))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


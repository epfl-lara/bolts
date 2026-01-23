; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!542228 () Bool)

(assert start!542228)

(declare-fun bs!1195532 () Bool)

(declare-fun b!5129839 () Bool)

(declare-fun b!5129837 () Bool)

(assert (= bs!1195532 (and b!5129839 b!5129837)))

(declare-fun lambda!253317 () Int)

(declare-fun lambda!253316 () Int)

(assert (=> bs!1195532 (not (= lambda!253317 lambda!253316))))

(declare-fun bs!1195533 () Bool)

(declare-fun b!5129840 () Bool)

(assert (= bs!1195533 (and b!5129840 b!5129837)))

(declare-fun lambda!253318 () Int)

(assert (=> bs!1195533 (not (= lambda!253318 lambda!253316))))

(declare-fun bs!1195534 () Bool)

(assert (= bs!1195534 (and b!5129840 b!5129839)))

(assert (=> bs!1195534 (not (= lambda!253318 lambda!253317))))

(declare-fun e!3199355 () Bool)

(declare-fun e!3199353 () Bool)

(assert (=> b!5129837 (= e!3199355 (not e!3199353))))

(declare-fun res!2184498 () Bool)

(assert (=> b!5129837 (=> res!2184498 e!3199353)))

(declare-datatypes ((C!28904 0))(
  ( (C!28905 (val!24104 Int)) )
))
(declare-datatypes ((Regex!14319 0))(
  ( (ElementMatch!14319 (c!882273 C!28904)) (Concat!23164 (regOne!29150 Regex!14319) (regTwo!29150 Regex!14319)) (EmptyExpr!14319) (Star!14319 (reg!14648 Regex!14319)) (EmptyLang!14319) (Union!14319 (regOne!29151 Regex!14319) (regTwo!29151 Regex!14319)) )
))
(declare-datatypes ((List!59567 0))(
  ( (Nil!59443) (Cons!59443 (h!65891 Regex!14319) (t!372594 List!59567)) )
))
(declare-datatypes ((Context!7406 0))(
  ( (Context!7407 (exprs!4203 List!59567)) )
))
(declare-fun lt!2115988 () Context!7406)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1113 () (InoxSet Context!7406))

(assert (=> b!5129837 (= res!2184498 (not (select z!1113 lt!2115988)))))

(declare-fun forall!13724 (List!59567 Int) Bool)

(assert (=> b!5129837 (forall!13724 (exprs!4203 lt!2115988) lambda!253316)))

(declare-datatypes ((Unit!150674 0))(
  ( (Unit!150675) )
))
(declare-fun lt!2115989 () Unit!150674)

(declare-fun lemmaContextForallValidExprs!34 (Context!7406 List!59567) Unit!150674)

(assert (=> b!5129837 (= lt!2115989 (lemmaContextForallValidExprs!34 lt!2115988 (exprs!4203 lt!2115988)))))

(declare-fun b!5129838 () Bool)

(declare-fun res!2184504 () Bool)

(assert (=> b!5129838 (=> res!2184504 e!3199353)))

(declare-fun lostCause!1269 (Context!7406) Bool)

(assert (=> b!5129838 (= res!2184504 (not (lostCause!1269 lt!2115988)))))

(declare-fun res!2184501 () Bool)

(assert (=> b!5129839 (=> res!2184501 e!3199353)))

(assert (=> b!5129839 (= res!2184501 (not (forall!13724 (exprs!4203 lt!2115988) lambda!253317)))))

(declare-fun e!3199351 () Bool)

(declare-fun setNonEmpty!30986 () Bool)

(declare-fun tp!1431157 () Bool)

(declare-fun setElem!30986 () Context!7406)

(declare-fun setRes!30986 () Bool)

(declare-fun inv!78978 (Context!7406) Bool)

(assert (=> setNonEmpty!30986 (= setRes!30986 (and tp!1431157 (inv!78978 setElem!30986) e!3199351))))

(declare-fun setRest!30986 () (InoxSet Context!7406))

(assert (=> setNonEmpty!30986 (= z!1113 ((_ map or) (store ((as const (Array Context!7406 Bool)) false) setElem!30986 true) setRest!30986))))

(declare-fun b!5129841 () Bool)

(declare-fun tp!1431156 () Bool)

(assert (=> b!5129841 (= e!3199351 tp!1431156)))

(declare-fun b!5129842 () Bool)

(declare-fun e!3199354 () Bool)

(assert (=> b!5129842 (= e!3199354 true)))

(assert (=> b!5129842 false))

(declare-fun lt!2115990 () Unit!150674)

(declare-fun lt!2115987 () Regex!14319)

(declare-fun lemmaNullableThenNotLostCause!26 (Regex!14319) Unit!150674)

(assert (=> b!5129842 (= lt!2115990 (lemmaNullableThenNotLostCause!26 lt!2115987))))

(declare-fun b!5129843 () Bool)

(declare-fun e!3199352 () Bool)

(assert (=> b!5129843 (= e!3199352 e!3199355)))

(declare-fun res!2184503 () Bool)

(assert (=> b!5129843 (=> (not res!2184503) (not e!3199355))))

(declare-fun nullableContext!38 (Context!7406) Bool)

(assert (=> b!5129843 (= res!2184503 (nullableContext!38 lt!2115988))))

(declare-fun lambda!253315 () Int)

(declare-fun getWitness!765 ((InoxSet Context!7406) Int) Context!7406)

(assert (=> b!5129843 (= lt!2115988 (getWitness!765 z!1113 lambda!253315))))

(declare-fun b!5129844 () Bool)

(declare-fun e!3199350 () Bool)

(assert (=> b!5129844 (= e!3199353 e!3199350)))

(declare-fun res!2184500 () Bool)

(assert (=> b!5129844 (=> res!2184500 e!3199350)))

(declare-fun contains!19629 (List!59567 Regex!14319) Bool)

(assert (=> b!5129844 (= res!2184500 (not (contains!19629 (exprs!4203 lt!2115988) lt!2115987)))))

(declare-fun getWitness!766 (List!59567 Int) Regex!14319)

(assert (=> b!5129844 (= lt!2115987 (getWitness!766 (exprs!4203 lt!2115988) lambda!253318))))

(declare-fun b!5129845 () Bool)

(declare-fun res!2184497 () Bool)

(assert (=> b!5129845 (=> (not res!2184497) (not e!3199352))))

(declare-fun exists!1608 ((InoxSet Context!7406) Int) Bool)

(assert (=> b!5129845 (= res!2184497 (exists!1608 z!1113 lambda!253315))))

(declare-fun b!5129846 () Bool)

(declare-fun res!2184506 () Bool)

(assert (=> b!5129846 (=> res!2184506 e!3199350)))

(declare-fun lostCause!1270 (Regex!14319) Bool)

(assert (=> b!5129846 (= res!2184506 (not (lostCause!1270 lt!2115987)))))

(declare-fun res!2184505 () Bool)

(assert (=> start!542228 (=> (not res!2184505) (not e!3199352))))

(declare-fun nullableZipper!1104 ((InoxSet Context!7406)) Bool)

(assert (=> start!542228 (= res!2184505 (nullableZipper!1104 z!1113))))

(assert (=> start!542228 e!3199352))

(declare-fun condSetEmpty!30986 () Bool)

(assert (=> start!542228 (= condSetEmpty!30986 (= z!1113 ((as const (Array Context!7406 Bool)) false)))))

(assert (=> start!542228 setRes!30986))

(declare-fun res!2184502 () Bool)

(assert (=> b!5129840 (=> res!2184502 e!3199353)))

(declare-fun exists!1609 (List!59567 Int) Bool)

(assert (=> b!5129840 (= res!2184502 (not (exists!1609 (exprs!4203 lt!2115988) lambda!253318)))))

(declare-fun setIsEmpty!30986 () Bool)

(assert (=> setIsEmpty!30986 setRes!30986))

(declare-fun b!5129847 () Bool)

(assert (=> b!5129847 (= e!3199350 e!3199354)))

(declare-fun res!2184499 () Bool)

(assert (=> b!5129847 (=> res!2184499 e!3199354)))

(declare-fun nullable!4742 (Regex!14319) Bool)

(assert (=> b!5129847 (= res!2184499 (not (nullable!4742 lt!2115987)))))

(declare-fun lt!2115986 () Unit!150674)

(declare-fun forallContained!4607 (List!59567 Int Regex!14319) Unit!150674)

(assert (=> b!5129847 (= lt!2115986 (forallContained!4607 (exprs!4203 lt!2115988) lambda!253316 lt!2115987))))

(declare-fun lt!2115985 () Unit!150674)

(assert (=> b!5129847 (= lt!2115985 (forallContained!4607 (exprs!4203 lt!2115988) lambda!253317 lt!2115987))))

(assert (= (and start!542228 res!2184505) b!5129845))

(assert (= (and b!5129845 res!2184497) b!5129843))

(assert (= (and b!5129843 res!2184503) b!5129837))

(assert (= (and b!5129837 (not res!2184498)) b!5129839))

(assert (= (and b!5129839 (not res!2184501)) b!5129838))

(assert (= (and b!5129838 (not res!2184504)) b!5129840))

(assert (= (and b!5129840 (not res!2184502)) b!5129844))

(assert (= (and b!5129844 (not res!2184500)) b!5129846))

(assert (= (and b!5129846 (not res!2184506)) b!5129847))

(assert (= (and b!5129847 (not res!2184499)) b!5129842))

(assert (= (and start!542228 condSetEmpty!30986) setIsEmpty!30986))

(assert (= (and start!542228 (not condSetEmpty!30986)) setNonEmpty!30986))

(assert (= setNonEmpty!30986 b!5129841))

(declare-fun m!6194514 () Bool)

(assert (=> b!5129843 m!6194514))

(declare-fun m!6194516 () Bool)

(assert (=> b!5129843 m!6194516))

(declare-fun m!6194518 () Bool)

(assert (=> b!5129847 m!6194518))

(declare-fun m!6194520 () Bool)

(assert (=> b!5129847 m!6194520))

(declare-fun m!6194522 () Bool)

(assert (=> b!5129847 m!6194522))

(declare-fun m!6194524 () Bool)

(assert (=> b!5129844 m!6194524))

(declare-fun m!6194526 () Bool)

(assert (=> b!5129844 m!6194526))

(declare-fun m!6194528 () Bool)

(assert (=> b!5129840 m!6194528))

(declare-fun m!6194530 () Bool)

(assert (=> setNonEmpty!30986 m!6194530))

(declare-fun m!6194532 () Bool)

(assert (=> b!5129838 m!6194532))

(declare-fun m!6194534 () Bool)

(assert (=> b!5129845 m!6194534))

(declare-fun m!6194536 () Bool)

(assert (=> b!5129842 m!6194536))

(declare-fun m!6194538 () Bool)

(assert (=> b!5129837 m!6194538))

(declare-fun m!6194540 () Bool)

(assert (=> b!5129837 m!6194540))

(declare-fun m!6194542 () Bool)

(assert (=> b!5129837 m!6194542))

(declare-fun m!6194544 () Bool)

(assert (=> start!542228 m!6194544))

(declare-fun m!6194546 () Bool)

(assert (=> b!5129846 m!6194546))

(declare-fun m!6194548 () Bool)

(assert (=> b!5129839 m!6194548))

(check-sat (not b!5129839) (not b!5129844) (not b!5129846) (not b!5129838) (not start!542228) (not b!5129847) (not b!5129840) (not b!5129842) (not b!5129837) (not b!5129843) (not setNonEmpty!30986) (not b!5129845) (not b!5129841))
(check-sat)

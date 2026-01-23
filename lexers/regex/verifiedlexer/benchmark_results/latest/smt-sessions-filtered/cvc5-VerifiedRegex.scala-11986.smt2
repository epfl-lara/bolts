; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!671608 () Bool)

(assert start!671608)

(declare-fun b!6989274 () Bool)

(assert (=> b!6989274 true))

(declare-fun b!6989265 () Bool)

(assert (=> b!6989265 true))

(declare-fun b!6989283 () Bool)

(assert (=> b!6989283 true))

(declare-fun b!6989262 () Bool)

(declare-fun e!4200889 () Bool)

(declare-fun e!4200888 () Bool)

(assert (=> b!6989262 (= e!4200889 e!4200888)))

(declare-fun res!2850323 () Bool)

(assert (=> b!6989262 (=> res!2850323 e!4200888)))

(declare-datatypes ((C!34706 0))(
  ( (C!34707 (val!27055 Int)) )
))
(declare-datatypes ((Regex!17218 0))(
  ( (ElementMatch!17218 (c!1296284 C!34706)) (Concat!26063 (regOne!34948 Regex!17218) (regTwo!34948 Regex!17218)) (EmptyExpr!17218) (Star!17218 (reg!17547 Regex!17218)) (EmptyLang!17218) (Union!17218 (regOne!34949 Regex!17218) (regTwo!34949 Regex!17218)) )
))
(declare-datatypes ((List!67199 0))(
  ( (Nil!67075) (Cons!67075 (h!73523 Regex!17218) (t!380946 List!67199)) )
))
(declare-datatypes ((Context!12428 0))(
  ( (Context!12429 (exprs!6714 List!67199)) )
))
(declare-fun lt!2486595 () Context!12428)

(declare-fun nullable!6978 (Regex!17218) Bool)

(assert (=> b!6989262 (= res!2850323 (not (nullable!6978 (h!73523 (exprs!6714 lt!2486595)))))))

(declare-fun lt!2486597 () List!67199)

(declare-fun tail!13226 (List!67199) List!67199)

(assert (=> b!6989262 (= lt!2486597 (tail!13226 (exprs!6714 lt!2486595)))))

(declare-fun b!6989263 () Bool)

(declare-fun res!2850334 () Bool)

(assert (=> b!6989263 (=> res!2850334 e!4200889)))

(assert (=> b!6989263 (= res!2850334 (not (is-Cons!67075 (exprs!6714 lt!2486595))))))

(declare-fun b!6989264 () Bool)

(declare-fun e!4200895 () Bool)

(declare-fun e!4200899 () Bool)

(assert (=> b!6989264 (= e!4200895 e!4200899)))

(declare-fun res!2850331 () Bool)

(assert (=> b!6989264 (=> res!2850331 e!4200899)))

(declare-fun lt!2486600 () (Set Context!12428))

(declare-fun lt!2486615 () (Set Context!12428))

(assert (=> b!6989264 (= res!2850331 (not (= lt!2486600 lt!2486615)))))

(declare-fun lt!2486616 () Context!12428)

(assert (=> b!6989264 (= lt!2486600 (set.insert lt!2486616 (as set.empty (Set Context!12428))))))

(declare-fun lambda!401484 () Int)

(declare-fun ct2!306 () Context!12428)

(declare-datatypes ((Unit!161091 0))(
  ( (Unit!161092) )
))
(declare-fun lt!2486590 () Unit!161091)

(declare-fun lemmaConcatPreservesForall!554 (List!67199 List!67199 Int) Unit!161091)

(assert (=> b!6989264 (= lt!2486590 (lemmaConcatPreservesForall!554 (exprs!6714 lt!2486595) (exprs!6714 ct2!306) lambda!401484))))

(declare-fun e!4200897 () Bool)

(assert (=> b!6989265 (= e!4200897 e!4200895)))

(declare-fun res!2850322 () Bool)

(assert (=> b!6989265 (=> res!2850322 e!4200895)))

(declare-fun z1!570 () (Set Context!12428))

(declare-fun lt!2486585 () Context!12428)

(assert (=> b!6989265 (= res!2850322 (or (not (= lt!2486616 lt!2486585)) (not (set.member lt!2486595 z1!570))))))

(declare-fun ++!15163 (List!67199 List!67199) List!67199)

(assert (=> b!6989265 (= lt!2486616 (Context!12429 (++!15163 (exprs!6714 lt!2486595) (exprs!6714 ct2!306))))))

(declare-fun lt!2486583 () Unit!161091)

(assert (=> b!6989265 (= lt!2486583 (lemmaConcatPreservesForall!554 (exprs!6714 lt!2486595) (exprs!6714 ct2!306) lambda!401484))))

(declare-fun lambda!401483 () Int)

(declare-fun mapPost2!73 ((Set Context!12428) Int Context!12428) Context!12428)

(assert (=> b!6989265 (= lt!2486595 (mapPost2!73 z1!570 lambda!401483 lt!2486585))))

(declare-fun b!6989266 () Bool)

(declare-fun e!4200890 () Bool)

(declare-fun c!403 () Context!12428)

(declare-fun forall!16133 (List!67199 Int) Bool)

(assert (=> b!6989266 (= e!4200890 (forall!16133 (exprs!6714 c!403) lambda!401484))))

(declare-fun setElem!47802 () Context!12428)

(declare-fun tp!1929646 () Bool)

(declare-fun setNonEmpty!47802 () Bool)

(declare-fun e!4200893 () Bool)

(declare-fun setRes!47802 () Bool)

(declare-fun inv!85905 (Context!12428) Bool)

(assert (=> setNonEmpty!47802 (= setRes!47802 (and tp!1929646 (inv!85905 setElem!47802) e!4200893))))

(declare-fun setRest!47802 () (Set Context!12428))

(assert (=> setNonEmpty!47802 (= z1!570 (set.union (set.insert setElem!47802 (as set.empty (Set Context!12428))) setRest!47802))))

(declare-fun b!6989268 () Bool)

(declare-fun tp!1929647 () Bool)

(assert (=> b!6989268 (= e!4200893 tp!1929647)))

(declare-fun b!6989269 () Bool)

(declare-fun e!4200883 () Bool)

(declare-fun lt!2486601 () (Set Context!12428))

(declare-datatypes ((List!67200 0))(
  ( (Nil!67076) (Cons!67076 (h!73524 C!34706) (t!380947 List!67200)) )
))
(declare-fun s!7408 () List!67200)

(declare-fun matchZipper!2758 ((Set Context!12428) List!67200) Bool)

(assert (=> b!6989269 (= e!4200883 (not (matchZipper!2758 lt!2486601 (t!380947 s!7408))))))

(declare-fun lt!2486584 () Unit!161091)

(assert (=> b!6989269 (= lt!2486584 (lemmaConcatPreservesForall!554 lt!2486597 (exprs!6714 ct2!306) lambda!401484))))

(declare-fun b!6989270 () Bool)

(declare-fun res!2850319 () Bool)

(declare-fun e!4200886 () Bool)

(assert (=> b!6989270 (=> (not res!2850319) (not e!4200886))))

(assert (=> b!6989270 (= res!2850319 (is-Cons!67076 s!7408))))

(declare-fun b!6989271 () Bool)

(declare-fun e!4200891 () Bool)

(declare-fun e!4200898 () Bool)

(assert (=> b!6989271 (= e!4200891 e!4200898)))

(declare-fun res!2850330 () Bool)

(assert (=> b!6989271 (=> res!2850330 e!4200898)))

(declare-fun lt!2486599 () (Set Context!12428))

(declare-fun derivationStepZipper!2698 ((Set Context!12428) C!34706) (Set Context!12428))

(assert (=> b!6989271 (= res!2850330 (not (= (derivationStepZipper!2698 lt!2486599 (h!73524 s!7408)) lt!2486601)))))

(declare-fun lt!2486605 () Unit!161091)

(assert (=> b!6989271 (= lt!2486605 (lemmaConcatPreservesForall!554 lt!2486597 (exprs!6714 ct2!306) lambda!401484))))

(declare-fun lt!2486611 () Unit!161091)

(assert (=> b!6989271 (= lt!2486611 (lemmaConcatPreservesForall!554 lt!2486597 (exprs!6714 ct2!306) lambda!401484))))

(declare-fun lt!2486582 () Context!12428)

(declare-fun lambda!401485 () Int)

(declare-fun flatMap!2204 ((Set Context!12428) Int) (Set Context!12428))

(declare-fun derivationStepZipperUp!1868 (Context!12428 C!34706) (Set Context!12428))

(assert (=> b!6989271 (= (flatMap!2204 lt!2486599 lambda!401485) (derivationStepZipperUp!1868 lt!2486582 (h!73524 s!7408)))))

(declare-fun lt!2486587 () Unit!161091)

(declare-fun lemmaFlatMapOnSingletonSet!1719 ((Set Context!12428) Context!12428 Int) Unit!161091)

(assert (=> b!6989271 (= lt!2486587 (lemmaFlatMapOnSingletonSet!1719 lt!2486599 lt!2486582 lambda!401485))))

(assert (=> b!6989271 (= lt!2486599 (set.insert lt!2486582 (as set.empty (Set Context!12428))))))

(declare-fun lt!2486592 () Unit!161091)

(assert (=> b!6989271 (= lt!2486592 (lemmaConcatPreservesForall!554 lt!2486597 (exprs!6714 ct2!306) lambda!401484))))

(declare-fun lt!2486602 () Unit!161091)

(assert (=> b!6989271 (= lt!2486602 (lemmaConcatPreservesForall!554 lt!2486597 (exprs!6714 ct2!306) lambda!401484))))

(declare-fun b!6989272 () Bool)

(declare-fun e!4200892 () Bool)

(assert (=> b!6989272 (= e!4200892 e!4200891)))

(declare-fun res!2850325 () Bool)

(assert (=> b!6989272 (=> res!2850325 e!4200891)))

(assert (=> b!6989272 (= res!2850325 (not (matchZipper!2758 lt!2486601 (t!380947 s!7408))))))

(declare-fun lt!2486609 () Unit!161091)

(assert (=> b!6989272 (= lt!2486609 (lemmaConcatPreservesForall!554 lt!2486597 (exprs!6714 ct2!306) lambda!401484))))

(declare-fun b!6989273 () Bool)

(declare-fun e!4200896 () Bool)

(declare-fun tp!1929645 () Bool)

(assert (=> b!6989273 (= e!4200896 tp!1929645)))

(assert (=> b!6989274 (= e!4200886 (not e!4200897))))

(declare-fun res!2850318 () Bool)

(assert (=> b!6989274 (=> res!2850318 e!4200897)))

(assert (=> b!6989274 (= res!2850318 (not (matchZipper!2758 lt!2486615 s!7408)))))

(assert (=> b!6989274 (= lt!2486615 (set.insert lt!2486585 (as set.empty (Set Context!12428))))))

(declare-fun lt!2486591 () (Set Context!12428))

(declare-fun lambda!401482 () Int)

(declare-fun getWitness!1116 ((Set Context!12428) Int) Context!12428)

(assert (=> b!6989274 (= lt!2486585 (getWitness!1116 lt!2486591 lambda!401482))))

(declare-datatypes ((List!67201 0))(
  ( (Nil!67077) (Cons!67077 (h!73525 Context!12428) (t!380948 List!67201)) )
))
(declare-fun lt!2486593 () List!67201)

(declare-fun exists!3005 (List!67201 Int) Bool)

(assert (=> b!6989274 (exists!3005 lt!2486593 lambda!401482)))

(declare-fun lt!2486604 () Unit!161091)

(declare-fun lemmaZipperMatchesExistsMatchingContext!187 (List!67201 List!67200) Unit!161091)

(assert (=> b!6989274 (= lt!2486604 (lemmaZipperMatchesExistsMatchingContext!187 lt!2486593 s!7408))))

(declare-fun toList!10578 ((Set Context!12428)) List!67201)

(assert (=> b!6989274 (= lt!2486593 (toList!10578 lt!2486591))))

(declare-fun b!6989275 () Bool)

(declare-fun res!2850329 () Bool)

(assert (=> b!6989275 (=> res!2850329 e!4200897)))

(assert (=> b!6989275 (= res!2850329 (not (set.member lt!2486585 lt!2486591)))))

(declare-fun b!6989276 () Bool)

(declare-fun e!4200885 () Bool)

(declare-fun tp_is_empty!43661 () Bool)

(declare-fun tp!1929648 () Bool)

(assert (=> b!6989276 (= e!4200885 (and tp_is_empty!43661 tp!1929648))))

(declare-fun res!2850317 () Bool)

(assert (=> start!671608 (=> (not res!2850317) (not e!4200886))))

(assert (=> start!671608 (= res!2850317 (matchZipper!2758 lt!2486591 s!7408))))

(declare-fun appendTo!339 ((Set Context!12428) Context!12428) (Set Context!12428))

(assert (=> start!671608 (= lt!2486591 (appendTo!339 z1!570 ct2!306))))

(assert (=> start!671608 e!4200886))

(declare-fun e!4200887 () Bool)

(assert (=> start!671608 (and (inv!85905 c!403) e!4200887)))

(declare-fun condSetEmpty!47802 () Bool)

(assert (=> start!671608 (= condSetEmpty!47802 (= z1!570 (as set.empty (Set Context!12428))))))

(assert (=> start!671608 setRes!47802))

(assert (=> start!671608 e!4200885))

(assert (=> start!671608 (and (inv!85905 ct2!306) e!4200896)))

(declare-fun b!6989267 () Bool)

(declare-fun res!2850320 () Bool)

(assert (=> b!6989267 (=> res!2850320 e!4200889)))

(declare-fun isEmpty!39150 (List!67199) Bool)

(assert (=> b!6989267 (= res!2850320 (isEmpty!39150 (exprs!6714 lt!2486595)))))

(declare-fun b!6989277 () Bool)

(assert (=> b!6989277 (= e!4200898 e!4200890)))

(declare-fun res!2850321 () Bool)

(assert (=> b!6989277 (=> res!2850321 e!4200890)))

(assert (=> b!6989277 (= res!2850321 (not (matchZipper!2758 lt!2486599 s!7408)))))

(declare-fun lt!2486610 () Unit!161091)

(assert (=> b!6989277 (= lt!2486610 (lemmaConcatPreservesForall!554 lt!2486597 (exprs!6714 ct2!306) lambda!401484))))

(declare-fun b!6989278 () Bool)

(declare-fun e!4200884 () Bool)

(assert (=> b!6989278 (= e!4200884 (matchZipper!2758 lt!2486601 (t!380947 s!7408)))))

(declare-fun b!6989279 () Bool)

(declare-fun res!2850324 () Bool)

(assert (=> b!6989279 (=> res!2850324 e!4200892)))

(declare-fun lt!2486606 () Bool)

(assert (=> b!6989279 (= res!2850324 (not lt!2486606))))

(declare-fun b!6989280 () Bool)

(declare-fun e!4200894 () Bool)

(assert (=> b!6989280 (= e!4200888 e!4200894)))

(declare-fun res!2850328 () Bool)

(assert (=> b!6989280 (=> res!2850328 e!4200894)))

(declare-fun lt!2486608 () (Set Context!12428))

(declare-fun lt!2486613 () (Set Context!12428))

(assert (=> b!6989280 (= res!2850328 (not (= lt!2486608 lt!2486613)))))

(declare-fun lt!2486612 () (Set Context!12428))

(assert (=> b!6989280 (= lt!2486613 (set.union lt!2486612 lt!2486601))))

(assert (=> b!6989280 (= lt!2486601 (derivationStepZipperUp!1868 lt!2486582 (h!73524 s!7408)))))

(declare-fun derivationStepZipperDown!1936 (Regex!17218 Context!12428 C!34706) (Set Context!12428))

(assert (=> b!6989280 (= lt!2486612 (derivationStepZipperDown!1936 (h!73523 (exprs!6714 lt!2486595)) lt!2486582 (h!73524 s!7408)))))

(assert (=> b!6989280 (= lt!2486582 (Context!12429 (++!15163 lt!2486597 (exprs!6714 ct2!306))))))

(declare-fun lt!2486588 () Unit!161091)

(assert (=> b!6989280 (= lt!2486588 (lemmaConcatPreservesForall!554 lt!2486597 (exprs!6714 ct2!306) lambda!401484))))

(declare-fun lt!2486614 () Unit!161091)

(assert (=> b!6989280 (= lt!2486614 (lemmaConcatPreservesForall!554 lt!2486597 (exprs!6714 ct2!306) lambda!401484))))

(declare-fun b!6989281 () Bool)

(assert (=> b!6989281 (= e!4200894 e!4200892)))

(declare-fun res!2850327 () Bool)

(assert (=> b!6989281 (=> res!2850327 e!4200892)))

(assert (=> b!6989281 (= res!2850327 e!4200883)))

(declare-fun res!2850333 () Bool)

(assert (=> b!6989281 (=> (not res!2850333) (not e!4200883))))

(declare-fun lt!2486589 () Bool)

(assert (=> b!6989281 (= res!2850333 (not (= lt!2486606 lt!2486589)))))

(assert (=> b!6989281 (= lt!2486606 (matchZipper!2758 lt!2486608 (t!380947 s!7408)))))

(declare-fun lt!2486607 () Unit!161091)

(assert (=> b!6989281 (= lt!2486607 (lemmaConcatPreservesForall!554 lt!2486597 (exprs!6714 ct2!306) lambda!401484))))

(assert (=> b!6989281 (= (matchZipper!2758 lt!2486613 (t!380947 s!7408)) e!4200884)))

(declare-fun res!2850326 () Bool)

(assert (=> b!6989281 (=> res!2850326 e!4200884)))

(assert (=> b!6989281 (= res!2850326 lt!2486589)))

(assert (=> b!6989281 (= lt!2486589 (matchZipper!2758 lt!2486612 (t!380947 s!7408)))))

(declare-fun lt!2486596 () Unit!161091)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1391 ((Set Context!12428) (Set Context!12428) List!67200) Unit!161091)

(assert (=> b!6989281 (= lt!2486596 (lemmaZipperConcatMatchesSameAsBothZippers!1391 lt!2486612 lt!2486601 (t!380947 s!7408)))))

(declare-fun lt!2486594 () Unit!161091)

(assert (=> b!6989281 (= lt!2486594 (lemmaConcatPreservesForall!554 lt!2486597 (exprs!6714 ct2!306) lambda!401484))))

(declare-fun lt!2486598 () Unit!161091)

(assert (=> b!6989281 (= lt!2486598 (lemmaConcatPreservesForall!554 lt!2486597 (exprs!6714 ct2!306) lambda!401484))))

(declare-fun b!6989282 () Bool)

(declare-fun tp!1929649 () Bool)

(assert (=> b!6989282 (= e!4200887 tp!1929649)))

(declare-fun setIsEmpty!47802 () Bool)

(assert (=> setIsEmpty!47802 setRes!47802))

(assert (=> b!6989283 (= e!4200899 e!4200889)))

(declare-fun res!2850332 () Bool)

(assert (=> b!6989283 (=> res!2850332 e!4200889)))

(assert (=> b!6989283 (= res!2850332 (not (= (derivationStepZipper!2698 lt!2486600 (h!73524 s!7408)) lt!2486608)))))

(assert (=> b!6989283 (= (flatMap!2204 lt!2486600 lambda!401485) (derivationStepZipperUp!1868 lt!2486616 (h!73524 s!7408)))))

(declare-fun lt!2486603 () Unit!161091)

(assert (=> b!6989283 (= lt!2486603 (lemmaFlatMapOnSingletonSet!1719 lt!2486600 lt!2486616 lambda!401485))))

(assert (=> b!6989283 (= lt!2486608 (derivationStepZipperUp!1868 lt!2486616 (h!73524 s!7408)))))

(declare-fun lt!2486586 () Unit!161091)

(assert (=> b!6989283 (= lt!2486586 (lemmaConcatPreservesForall!554 (exprs!6714 lt!2486595) (exprs!6714 ct2!306) lambda!401484))))

(assert (= (and start!671608 res!2850317) b!6989270))

(assert (= (and b!6989270 res!2850319) b!6989274))

(assert (= (and b!6989274 (not res!2850318)) b!6989275))

(assert (= (and b!6989275 (not res!2850329)) b!6989265))

(assert (= (and b!6989265 (not res!2850322)) b!6989264))

(assert (= (and b!6989264 (not res!2850331)) b!6989283))

(assert (= (and b!6989283 (not res!2850332)) b!6989263))

(assert (= (and b!6989263 (not res!2850334)) b!6989267))

(assert (= (and b!6989267 (not res!2850320)) b!6989262))

(assert (= (and b!6989262 (not res!2850323)) b!6989280))

(assert (= (and b!6989280 (not res!2850328)) b!6989281))

(assert (= (and b!6989281 (not res!2850326)) b!6989278))

(assert (= (and b!6989281 res!2850333) b!6989269))

(assert (= (and b!6989281 (not res!2850327)) b!6989279))

(assert (= (and b!6989279 (not res!2850324)) b!6989272))

(assert (= (and b!6989272 (not res!2850325)) b!6989271))

(assert (= (and b!6989271 (not res!2850330)) b!6989277))

(assert (= (and b!6989277 (not res!2850321)) b!6989266))

(assert (= start!671608 b!6989282))

(assert (= (and start!671608 condSetEmpty!47802) setIsEmpty!47802))

(assert (= (and start!671608 (not condSetEmpty!47802)) setNonEmpty!47802))

(assert (= setNonEmpty!47802 b!6989268))

(assert (= (and start!671608 (is-Cons!67076 s!7408)) b!6989276))

(assert (= start!671608 b!6989273))

(declare-fun m!7677770 () Bool)

(assert (=> b!6989271 m!7677770))

(declare-fun m!7677772 () Bool)

(assert (=> b!6989271 m!7677772))

(assert (=> b!6989271 m!7677770))

(declare-fun m!7677774 () Bool)

(assert (=> b!6989271 m!7677774))

(declare-fun m!7677776 () Bool)

(assert (=> b!6989271 m!7677776))

(assert (=> b!6989271 m!7677770))

(assert (=> b!6989271 m!7677770))

(declare-fun m!7677778 () Bool)

(assert (=> b!6989271 m!7677778))

(declare-fun m!7677780 () Bool)

(assert (=> b!6989271 m!7677780))

(declare-fun m!7677782 () Bool)

(assert (=> b!6989267 m!7677782))

(declare-fun m!7677784 () Bool)

(assert (=> b!6989262 m!7677784))

(declare-fun m!7677786 () Bool)

(assert (=> b!6989262 m!7677786))

(declare-fun m!7677788 () Bool)

(assert (=> b!6989264 m!7677788))

(declare-fun m!7677790 () Bool)

(assert (=> b!6989264 m!7677790))

(declare-fun m!7677792 () Bool)

(assert (=> b!6989272 m!7677792))

(assert (=> b!6989272 m!7677770))

(declare-fun m!7677794 () Bool)

(assert (=> b!6989274 m!7677794))

(declare-fun m!7677796 () Bool)

(assert (=> b!6989274 m!7677796))

(declare-fun m!7677798 () Bool)

(assert (=> b!6989274 m!7677798))

(declare-fun m!7677800 () Bool)

(assert (=> b!6989274 m!7677800))

(declare-fun m!7677802 () Bool)

(assert (=> b!6989274 m!7677802))

(declare-fun m!7677804 () Bool)

(assert (=> b!6989274 m!7677804))

(declare-fun m!7677806 () Bool)

(assert (=> b!6989281 m!7677806))

(declare-fun m!7677808 () Bool)

(assert (=> b!6989281 m!7677808))

(assert (=> b!6989281 m!7677770))

(declare-fun m!7677810 () Bool)

(assert (=> b!6989281 m!7677810))

(declare-fun m!7677812 () Bool)

(assert (=> b!6989281 m!7677812))

(assert (=> b!6989281 m!7677770))

(assert (=> b!6989281 m!7677770))

(declare-fun m!7677814 () Bool)

(assert (=> b!6989275 m!7677814))

(assert (=> b!6989280 m!7677770))

(declare-fun m!7677816 () Bool)

(assert (=> b!6989280 m!7677816))

(assert (=> b!6989280 m!7677778))

(assert (=> b!6989280 m!7677770))

(declare-fun m!7677818 () Bool)

(assert (=> b!6989280 m!7677818))

(assert (=> b!6989269 m!7677792))

(assert (=> b!6989269 m!7677770))

(declare-fun m!7677820 () Bool)

(assert (=> b!6989277 m!7677820))

(assert (=> b!6989277 m!7677770))

(declare-fun m!7677822 () Bool)

(assert (=> b!6989265 m!7677822))

(declare-fun m!7677824 () Bool)

(assert (=> b!6989265 m!7677824))

(assert (=> b!6989265 m!7677790))

(declare-fun m!7677826 () Bool)

(assert (=> b!6989265 m!7677826))

(declare-fun m!7677828 () Bool)

(assert (=> setNonEmpty!47802 m!7677828))

(assert (=> b!6989278 m!7677792))

(declare-fun m!7677830 () Bool)

(assert (=> b!6989266 m!7677830))

(declare-fun m!7677832 () Bool)

(assert (=> b!6989283 m!7677832))

(assert (=> b!6989283 m!7677790))

(declare-fun m!7677834 () Bool)

(assert (=> b!6989283 m!7677834))

(declare-fun m!7677836 () Bool)

(assert (=> b!6989283 m!7677836))

(declare-fun m!7677838 () Bool)

(assert (=> b!6989283 m!7677838))

(declare-fun m!7677840 () Bool)

(assert (=> start!671608 m!7677840))

(declare-fun m!7677842 () Bool)

(assert (=> start!671608 m!7677842))

(declare-fun m!7677844 () Bool)

(assert (=> start!671608 m!7677844))

(declare-fun m!7677846 () Bool)

(assert (=> start!671608 m!7677846))

(push 1)

(assert (not b!6989283))

(assert (not b!6989277))

(assert (not b!6989266))

(assert (not b!6989278))

(assert (not setNonEmpty!47802))

(assert (not b!6989282))

(assert (not b!6989271))

(assert (not b!6989274))

(assert (not b!6989267))

(assert (not b!6989268))

(assert (not b!6989280))

(assert (not b!6989276))

(assert (not start!671608))

(assert (not b!6989264))

(assert tp_is_empty!43661)

(assert (not b!6989272))

(assert (not b!6989281))

(assert (not b!6989262))

(assert (not b!6989269))

(assert (not b!6989265))

(assert (not b!6989273))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2177077 () Bool)

(declare-fun c!1296298 () Bool)

(declare-fun isEmpty!39152 (List!67200) Bool)

(assert (=> d!2177077 (= c!1296298 (isEmpty!39152 s!7408))))

(declare-fun e!4200953 () Bool)

(assert (=> d!2177077 (= (matchZipper!2758 lt!2486599 s!7408) e!4200953)))

(declare-fun b!6989366 () Bool)

(declare-fun nullableZipper!2435 ((Set Context!12428)) Bool)

(assert (=> b!6989366 (= e!4200953 (nullableZipper!2435 lt!2486599))))

(declare-fun b!6989367 () Bool)

(declare-fun head!14110 (List!67200) C!34706)

(declare-fun tail!13228 (List!67200) List!67200)

(assert (=> b!6989367 (= e!4200953 (matchZipper!2758 (derivationStepZipper!2698 lt!2486599 (head!14110 s!7408)) (tail!13228 s!7408)))))

(assert (= (and d!2177077 c!1296298) b!6989366))

(assert (= (and d!2177077 (not c!1296298)) b!6989367))

(declare-fun m!7677926 () Bool)

(assert (=> d!2177077 m!7677926))

(declare-fun m!7677928 () Bool)

(assert (=> b!6989366 m!7677928))

(declare-fun m!7677930 () Bool)

(assert (=> b!6989367 m!7677930))

(assert (=> b!6989367 m!7677930))

(declare-fun m!7677932 () Bool)

(assert (=> b!6989367 m!7677932))

(declare-fun m!7677934 () Bool)

(assert (=> b!6989367 m!7677934))

(assert (=> b!6989367 m!7677932))

(assert (=> b!6989367 m!7677934))

(declare-fun m!7677936 () Bool)

(assert (=> b!6989367 m!7677936))

(assert (=> b!6989277 d!2177077))

(declare-fun d!2177079 () Bool)

(assert (=> d!2177079 (forall!16133 (++!15163 lt!2486597 (exprs!6714 ct2!306)) lambda!401484)))

(declare-fun lt!2486726 () Unit!161091)

(declare-fun choose!52246 (List!67199 List!67199 Int) Unit!161091)

(assert (=> d!2177079 (= lt!2486726 (choose!52246 lt!2486597 (exprs!6714 ct2!306) lambda!401484))))

(assert (=> d!2177079 (forall!16133 lt!2486597 lambda!401484)))

(assert (=> d!2177079 (= (lemmaConcatPreservesForall!554 lt!2486597 (exprs!6714 ct2!306) lambda!401484) lt!2486726)))

(declare-fun bs!1862098 () Bool)

(assert (= bs!1862098 d!2177079))

(assert (=> bs!1862098 m!7677816))

(assert (=> bs!1862098 m!7677816))

(declare-fun m!7677938 () Bool)

(assert (=> bs!1862098 m!7677938))

(declare-fun m!7677940 () Bool)

(assert (=> bs!1862098 m!7677940))

(declare-fun m!7677942 () Bool)

(assert (=> bs!1862098 m!7677942))

(assert (=> b!6989277 d!2177079))

(declare-fun d!2177081 () Bool)

(assert (=> d!2177081 (= (isEmpty!39150 (exprs!6714 lt!2486595)) (is-Nil!67075 (exprs!6714 lt!2486595)))))

(assert (=> b!6989267 d!2177081))

(declare-fun d!2177083 () Bool)

(declare-fun res!2850394 () Bool)

(declare-fun e!4200958 () Bool)

(assert (=> d!2177083 (=> res!2850394 e!4200958)))

(assert (=> d!2177083 (= res!2850394 (is-Nil!67075 (exprs!6714 c!403)))))

(assert (=> d!2177083 (= (forall!16133 (exprs!6714 c!403) lambda!401484) e!4200958)))

(declare-fun b!6989372 () Bool)

(declare-fun e!4200959 () Bool)

(assert (=> b!6989372 (= e!4200958 e!4200959)))

(declare-fun res!2850395 () Bool)

(assert (=> b!6989372 (=> (not res!2850395) (not e!4200959))))

(declare-fun dynLambda!26894 (Int Regex!17218) Bool)

(assert (=> b!6989372 (= res!2850395 (dynLambda!26894 lambda!401484 (h!73523 (exprs!6714 c!403))))))

(declare-fun b!6989373 () Bool)

(assert (=> b!6989373 (= e!4200959 (forall!16133 (t!380946 (exprs!6714 c!403)) lambda!401484))))

(assert (= (and d!2177083 (not res!2850394)) b!6989372))

(assert (= (and b!6989372 res!2850395) b!6989373))

(declare-fun b_lambda!262515 () Bool)

(assert (=> (not b_lambda!262515) (not b!6989372)))

(declare-fun m!7677944 () Bool)

(assert (=> b!6989372 m!7677944))

(declare-fun m!7677946 () Bool)

(assert (=> b!6989373 m!7677946))

(assert (=> b!6989266 d!2177083))

(declare-fun d!2177085 () Bool)

(declare-fun c!1296299 () Bool)

(assert (=> d!2177085 (= c!1296299 (isEmpty!39152 (t!380947 s!7408)))))

(declare-fun e!4200960 () Bool)

(assert (=> d!2177085 (= (matchZipper!2758 lt!2486601 (t!380947 s!7408)) e!4200960)))

(declare-fun b!6989374 () Bool)

(assert (=> b!6989374 (= e!4200960 (nullableZipper!2435 lt!2486601))))

(declare-fun b!6989375 () Bool)

(assert (=> b!6989375 (= e!4200960 (matchZipper!2758 (derivationStepZipper!2698 lt!2486601 (head!14110 (t!380947 s!7408))) (tail!13228 (t!380947 s!7408))))))

(assert (= (and d!2177085 c!1296299) b!6989374))

(assert (= (and d!2177085 (not c!1296299)) b!6989375))

(declare-fun m!7677948 () Bool)

(assert (=> d!2177085 m!7677948))

(declare-fun m!7677950 () Bool)

(assert (=> b!6989374 m!7677950))

(declare-fun m!7677952 () Bool)

(assert (=> b!6989375 m!7677952))

(assert (=> b!6989375 m!7677952))

(declare-fun m!7677954 () Bool)

(assert (=> b!6989375 m!7677954))

(declare-fun m!7677956 () Bool)

(assert (=> b!6989375 m!7677956))

(assert (=> b!6989375 m!7677954))

(assert (=> b!6989375 m!7677956))

(declare-fun m!7677958 () Bool)

(assert (=> b!6989375 m!7677958))

(assert (=> b!6989269 d!2177085))

(assert (=> b!6989269 d!2177079))

(declare-fun d!2177087 () Bool)

(declare-fun c!1296304 () Bool)

(declare-fun e!4200967 () Bool)

(assert (=> d!2177087 (= c!1296304 e!4200967)))

(declare-fun res!2850398 () Bool)

(assert (=> d!2177087 (=> (not res!2850398) (not e!4200967))))

(assert (=> d!2177087 (= res!2850398 (is-Cons!67075 (exprs!6714 lt!2486582)))))

(declare-fun e!4200969 () (Set Context!12428))

(assert (=> d!2177087 (= (derivationStepZipperUp!1868 lt!2486582 (h!73524 s!7408)) e!4200969)))

(declare-fun b!6989386 () Bool)

(declare-fun e!4200968 () (Set Context!12428))

(declare-fun call!634490 () (Set Context!12428))

(assert (=> b!6989386 (= e!4200968 call!634490)))

(declare-fun b!6989387 () Bool)

(assert (=> b!6989387 (= e!4200968 (as set.empty (Set Context!12428)))))

(declare-fun bm!634485 () Bool)

(assert (=> bm!634485 (= call!634490 (derivationStepZipperDown!1936 (h!73523 (exprs!6714 lt!2486582)) (Context!12429 (t!380946 (exprs!6714 lt!2486582))) (h!73524 s!7408)))))

(declare-fun b!6989388 () Bool)

(assert (=> b!6989388 (= e!4200969 e!4200968)))

(declare-fun c!1296305 () Bool)

(assert (=> b!6989388 (= c!1296305 (is-Cons!67075 (exprs!6714 lt!2486582)))))

(declare-fun b!6989389 () Bool)

(assert (=> b!6989389 (= e!4200967 (nullable!6978 (h!73523 (exprs!6714 lt!2486582))))))

(declare-fun b!6989390 () Bool)

(assert (=> b!6989390 (= e!4200969 (set.union call!634490 (derivationStepZipperUp!1868 (Context!12429 (t!380946 (exprs!6714 lt!2486582))) (h!73524 s!7408))))))

(assert (= (and d!2177087 res!2850398) b!6989389))

(assert (= (and d!2177087 c!1296304) b!6989390))

(assert (= (and d!2177087 (not c!1296304)) b!6989388))

(assert (= (and b!6989388 c!1296305) b!6989386))

(assert (= (and b!6989388 (not c!1296305)) b!6989387))

(assert (= (or b!6989390 b!6989386) bm!634485))

(declare-fun m!7677960 () Bool)

(assert (=> bm!634485 m!7677960))

(declare-fun m!7677962 () Bool)

(assert (=> b!6989389 m!7677962))

(declare-fun m!7677964 () Bool)

(assert (=> b!6989390 m!7677964))

(assert (=> b!6989280 d!2177087))

(declare-fun d!2177089 () Bool)

(declare-fun e!4200975 () Bool)

(assert (=> d!2177089 e!4200975))

(declare-fun res!2850404 () Bool)

(assert (=> d!2177089 (=> (not res!2850404) (not e!4200975))))

(declare-fun lt!2486729 () List!67199)

(declare-fun content!13256 (List!67199) (Set Regex!17218))

(assert (=> d!2177089 (= res!2850404 (= (content!13256 lt!2486729) (set.union (content!13256 lt!2486597) (content!13256 (exprs!6714 ct2!306)))))))

(declare-fun e!4200974 () List!67199)

(assert (=> d!2177089 (= lt!2486729 e!4200974)))

(declare-fun c!1296308 () Bool)

(assert (=> d!2177089 (= c!1296308 (is-Nil!67075 lt!2486597))))

(assert (=> d!2177089 (= (++!15163 lt!2486597 (exprs!6714 ct2!306)) lt!2486729)))

(declare-fun b!6989400 () Bool)

(assert (=> b!6989400 (= e!4200974 (Cons!67075 (h!73523 lt!2486597) (++!15163 (t!380946 lt!2486597) (exprs!6714 ct2!306))))))

(declare-fun b!6989401 () Bool)

(declare-fun res!2850403 () Bool)

(assert (=> b!6989401 (=> (not res!2850403) (not e!4200975))))

(declare-fun size!40903 (List!67199) Int)

(assert (=> b!6989401 (= res!2850403 (= (size!40903 lt!2486729) (+ (size!40903 lt!2486597) (size!40903 (exprs!6714 ct2!306)))))))

(declare-fun b!6989399 () Bool)

(assert (=> b!6989399 (= e!4200974 (exprs!6714 ct2!306))))

(declare-fun b!6989402 () Bool)

(assert (=> b!6989402 (= e!4200975 (or (not (= (exprs!6714 ct2!306) Nil!67075)) (= lt!2486729 lt!2486597)))))

(assert (= (and d!2177089 c!1296308) b!6989399))

(assert (= (and d!2177089 (not c!1296308)) b!6989400))

(assert (= (and d!2177089 res!2850404) b!6989401))

(assert (= (and b!6989401 res!2850403) b!6989402))

(declare-fun m!7677966 () Bool)

(assert (=> d!2177089 m!7677966))

(declare-fun m!7677968 () Bool)

(assert (=> d!2177089 m!7677968))

(declare-fun m!7677970 () Bool)

(assert (=> d!2177089 m!7677970))

(declare-fun m!7677972 () Bool)

(assert (=> b!6989400 m!7677972))

(declare-fun m!7677974 () Bool)

(assert (=> b!6989401 m!7677974))

(declare-fun m!7677976 () Bool)

(assert (=> b!6989401 m!7677976))

(declare-fun m!7677978 () Bool)

(assert (=> b!6989401 m!7677978))

(assert (=> b!6989280 d!2177089))

(declare-fun b!6989425 () Bool)

(declare-fun e!4200989 () Bool)

(assert (=> b!6989425 (= e!4200989 (nullable!6978 (regOne!34948 (h!73523 (exprs!6714 lt!2486595)))))))

(declare-fun bm!634498 () Bool)

(declare-fun call!634503 () (Set Context!12428))

(declare-fun call!634507 () (Set Context!12428))

(assert (=> bm!634498 (= call!634503 call!634507)))

(declare-fun bm!634499 () Bool)

(declare-fun call!634504 () List!67199)

(declare-fun call!634505 () List!67199)

(assert (=> bm!634499 (= call!634504 call!634505)))

(declare-fun b!6989426 () Bool)

(declare-fun e!4200992 () (Set Context!12428))

(declare-fun e!4200993 () (Set Context!12428))

(assert (=> b!6989426 (= e!4200992 e!4200993)))

(declare-fun c!1296322 () Bool)

(assert (=> b!6989426 (= c!1296322 (is-Concat!26063 (h!73523 (exprs!6714 lt!2486595))))))

(declare-fun b!6989427 () Bool)

(declare-fun e!4200991 () (Set Context!12428))

(declare-fun call!634508 () (Set Context!12428))

(assert (=> b!6989427 (= e!4200991 (set.union call!634507 call!634508))))

(declare-fun b!6989428 () Bool)

(assert (=> b!6989428 (= e!4200992 (set.union call!634508 call!634503))))

(declare-fun b!6989429 () Bool)

(declare-fun c!1296323 () Bool)

(assert (=> b!6989429 (= c!1296323 e!4200989)))

(declare-fun res!2850407 () Bool)

(assert (=> b!6989429 (=> (not res!2850407) (not e!4200989))))

(assert (=> b!6989429 (= res!2850407 (is-Concat!26063 (h!73523 (exprs!6714 lt!2486595))))))

(assert (=> b!6989429 (= e!4200991 e!4200992)))

(declare-fun b!6989430 () Bool)

(declare-fun e!4200988 () (Set Context!12428))

(assert (=> b!6989430 (= e!4200988 (as set.empty (Set Context!12428)))))

(declare-fun b!6989431 () Bool)

(declare-fun call!634506 () (Set Context!12428))

(assert (=> b!6989431 (= e!4200993 call!634506)))

(declare-fun c!1296319 () Bool)

(declare-fun bm!634500 () Bool)

(assert (=> bm!634500 (= call!634507 (derivationStepZipperDown!1936 (ite c!1296319 (regOne!34949 (h!73523 (exprs!6714 lt!2486595))) (ite c!1296323 (regTwo!34948 (h!73523 (exprs!6714 lt!2486595))) (ite c!1296322 (regOne!34948 (h!73523 (exprs!6714 lt!2486595))) (reg!17547 (h!73523 (exprs!6714 lt!2486595)))))) (ite (or c!1296319 c!1296323) lt!2486582 (Context!12429 call!634504)) (h!73524 s!7408)))))

(declare-fun bm!634502 () Bool)

(declare-fun $colon$colon!2483 (List!67199 Regex!17218) List!67199)

(assert (=> bm!634502 (= call!634505 ($colon$colon!2483 (exprs!6714 lt!2486582) (ite (or c!1296323 c!1296322) (regTwo!34948 (h!73523 (exprs!6714 lt!2486595))) (h!73523 (exprs!6714 lt!2486595)))))))

(declare-fun b!6989432 () Bool)

(declare-fun e!4200990 () (Set Context!12428))

(assert (=> b!6989432 (= e!4200990 (set.insert lt!2486582 (as set.empty (Set Context!12428))))))

(declare-fun b!6989433 () Bool)

(assert (=> b!6989433 (= e!4200988 call!634506)))

(declare-fun bm!634503 () Bool)

(assert (=> bm!634503 (= call!634508 (derivationStepZipperDown!1936 (ite c!1296319 (regTwo!34949 (h!73523 (exprs!6714 lt!2486595))) (regOne!34948 (h!73523 (exprs!6714 lt!2486595)))) (ite c!1296319 lt!2486582 (Context!12429 call!634505)) (h!73524 s!7408)))))

(declare-fun b!6989434 () Bool)

(declare-fun c!1296320 () Bool)

(assert (=> b!6989434 (= c!1296320 (is-Star!17218 (h!73523 (exprs!6714 lt!2486595))))))

(assert (=> b!6989434 (= e!4200993 e!4200988)))

(declare-fun b!6989435 () Bool)

(assert (=> b!6989435 (= e!4200990 e!4200991)))

(assert (=> b!6989435 (= c!1296319 (is-Union!17218 (h!73523 (exprs!6714 lt!2486595))))))

(declare-fun bm!634501 () Bool)

(assert (=> bm!634501 (= call!634506 call!634503)))

(declare-fun d!2177091 () Bool)

(declare-fun c!1296321 () Bool)

(assert (=> d!2177091 (= c!1296321 (and (is-ElementMatch!17218 (h!73523 (exprs!6714 lt!2486595))) (= (c!1296284 (h!73523 (exprs!6714 lt!2486595))) (h!73524 s!7408))))))

(assert (=> d!2177091 (= (derivationStepZipperDown!1936 (h!73523 (exprs!6714 lt!2486595)) lt!2486582 (h!73524 s!7408)) e!4200990)))

(assert (= (and d!2177091 c!1296321) b!6989432))

(assert (= (and d!2177091 (not c!1296321)) b!6989435))

(assert (= (and b!6989435 c!1296319) b!6989427))

(assert (= (and b!6989435 (not c!1296319)) b!6989429))

(assert (= (and b!6989429 res!2850407) b!6989425))

(assert (= (and b!6989429 c!1296323) b!6989428))

(assert (= (and b!6989429 (not c!1296323)) b!6989426))

(assert (= (and b!6989426 c!1296322) b!6989431))

(assert (= (and b!6989426 (not c!1296322)) b!6989434))

(assert (= (and b!6989434 c!1296320) b!6989433))

(assert (= (and b!6989434 (not c!1296320)) b!6989430))

(assert (= (or b!6989431 b!6989433) bm!634499))

(assert (= (or b!6989431 b!6989433) bm!634501))

(assert (= (or b!6989428 bm!634501) bm!634498))

(assert (= (or b!6989428 bm!634499) bm!634502))

(assert (= (or b!6989427 bm!634498) bm!634500))

(assert (= (or b!6989427 b!6989428) bm!634503))

(declare-fun m!7677980 () Bool)

(assert (=> bm!634500 m!7677980))

(assert (=> b!6989432 m!7677776))

(declare-fun m!7677982 () Bool)

(assert (=> bm!634502 m!7677982))

(declare-fun m!7677984 () Bool)

(assert (=> bm!634503 m!7677984))

(declare-fun m!7677986 () Bool)

(assert (=> b!6989425 m!7677986))

(assert (=> b!6989280 d!2177091))

(assert (=> b!6989280 d!2177079))

(declare-fun bs!1862099 () Bool)

(declare-fun d!2177093 () Bool)

(assert (= bs!1862099 (and d!2177093 b!6989265)))

(declare-fun lambda!401536 () Int)

(assert (=> bs!1862099 (= lambda!401536 lambda!401484)))

(assert (=> d!2177093 (= (inv!85905 setElem!47802) (forall!16133 (exprs!6714 setElem!47802) lambda!401536))))

(declare-fun bs!1862100 () Bool)

(assert (= bs!1862100 d!2177093))

(declare-fun m!7677988 () Bool)

(assert (=> bs!1862100 m!7677988))

(assert (=> setNonEmpty!47802 d!2177093))

(assert (=> b!6989278 d!2177085))

(declare-fun d!2177095 () Bool)

(declare-fun nullableFct!2636 (Regex!17218) Bool)

(assert (=> d!2177095 (= (nullable!6978 (h!73523 (exprs!6714 lt!2486595))) (nullableFct!2636 (h!73523 (exprs!6714 lt!2486595))))))

(declare-fun bs!1862101 () Bool)

(assert (= bs!1862101 d!2177095))

(declare-fun m!7677990 () Bool)

(assert (=> bs!1862101 m!7677990))

(assert (=> b!6989262 d!2177095))

(declare-fun d!2177097 () Bool)

(assert (=> d!2177097 (= (tail!13226 (exprs!6714 lt!2486595)) (t!380946 (exprs!6714 lt!2486595)))))

(assert (=> b!6989262 d!2177097))

(assert (=> b!6989272 d!2177085))

(assert (=> b!6989272 d!2177079))

(declare-fun d!2177099 () Bool)

(declare-fun choose!52247 ((Set Context!12428) Int) (Set Context!12428))

(assert (=> d!2177099 (= (flatMap!2204 lt!2486599 lambda!401485) (choose!52247 lt!2486599 lambda!401485))))

(declare-fun bs!1862102 () Bool)

(assert (= bs!1862102 d!2177099))

(declare-fun m!7677992 () Bool)

(assert (=> bs!1862102 m!7677992))

(assert (=> b!6989271 d!2177099))

(assert (=> b!6989271 d!2177079))

(declare-fun d!2177101 () Bool)

(declare-fun dynLambda!26895 (Int Context!12428) (Set Context!12428))

(assert (=> d!2177101 (= (flatMap!2204 lt!2486599 lambda!401485) (dynLambda!26895 lambda!401485 lt!2486582))))

(declare-fun lt!2486732 () Unit!161091)

(declare-fun choose!52248 ((Set Context!12428) Context!12428 Int) Unit!161091)

(assert (=> d!2177101 (= lt!2486732 (choose!52248 lt!2486599 lt!2486582 lambda!401485))))

(assert (=> d!2177101 (= lt!2486599 (set.insert lt!2486582 (as set.empty (Set Context!12428))))))

(assert (=> d!2177101 (= (lemmaFlatMapOnSingletonSet!1719 lt!2486599 lt!2486582 lambda!401485) lt!2486732)))

(declare-fun b_lambda!262517 () Bool)

(assert (=> (not b_lambda!262517) (not d!2177101)))

(declare-fun bs!1862103 () Bool)

(assert (= bs!1862103 d!2177101))

(assert (=> bs!1862103 m!7677772))

(declare-fun m!7677994 () Bool)

(assert (=> bs!1862103 m!7677994))

(declare-fun m!7677996 () Bool)

(assert (=> bs!1862103 m!7677996))

(assert (=> bs!1862103 m!7677776))

(assert (=> b!6989271 d!2177101))

(declare-fun bs!1862104 () Bool)

(declare-fun d!2177103 () Bool)

(assert (= bs!1862104 (and d!2177103 b!6989283)))

(declare-fun lambda!401539 () Int)

(assert (=> bs!1862104 (= lambda!401539 lambda!401485)))

(assert (=> d!2177103 true))

(assert (=> d!2177103 (= (derivationStepZipper!2698 lt!2486599 (h!73524 s!7408)) (flatMap!2204 lt!2486599 lambda!401539))))

(declare-fun bs!1862105 () Bool)

(assert (= bs!1862105 d!2177103))

(declare-fun m!7677998 () Bool)

(assert (=> bs!1862105 m!7677998))

(assert (=> b!6989271 d!2177103))

(assert (=> b!6989271 d!2177087))

(declare-fun d!2177105 () Bool)

(declare-fun c!1296326 () Bool)

(assert (=> d!2177105 (= c!1296326 (isEmpty!39152 (t!380947 s!7408)))))

(declare-fun e!4200994 () Bool)

(assert (=> d!2177105 (= (matchZipper!2758 lt!2486608 (t!380947 s!7408)) e!4200994)))

(declare-fun b!6989438 () Bool)

(assert (=> b!6989438 (= e!4200994 (nullableZipper!2435 lt!2486608))))

(declare-fun b!6989439 () Bool)

(assert (=> b!6989439 (= e!4200994 (matchZipper!2758 (derivationStepZipper!2698 lt!2486608 (head!14110 (t!380947 s!7408))) (tail!13228 (t!380947 s!7408))))))

(assert (= (and d!2177105 c!1296326) b!6989438))

(assert (= (and d!2177105 (not c!1296326)) b!6989439))

(assert (=> d!2177105 m!7677948))

(declare-fun m!7678000 () Bool)

(assert (=> b!6989438 m!7678000))

(assert (=> b!6989439 m!7677952))

(assert (=> b!6989439 m!7677952))

(declare-fun m!7678002 () Bool)

(assert (=> b!6989439 m!7678002))

(assert (=> b!6989439 m!7677956))

(assert (=> b!6989439 m!7678002))

(assert (=> b!6989439 m!7677956))

(declare-fun m!7678004 () Bool)

(assert (=> b!6989439 m!7678004))

(assert (=> b!6989281 d!2177105))

(declare-fun d!2177107 () Bool)

(declare-fun c!1296327 () Bool)

(assert (=> d!2177107 (= c!1296327 (isEmpty!39152 (t!380947 s!7408)))))

(declare-fun e!4200995 () Bool)

(assert (=> d!2177107 (= (matchZipper!2758 lt!2486613 (t!380947 s!7408)) e!4200995)))

(declare-fun b!6989440 () Bool)

(assert (=> b!6989440 (= e!4200995 (nullableZipper!2435 lt!2486613))))

(declare-fun b!6989441 () Bool)

(assert (=> b!6989441 (= e!4200995 (matchZipper!2758 (derivationStepZipper!2698 lt!2486613 (head!14110 (t!380947 s!7408))) (tail!13228 (t!380947 s!7408))))))

(assert (= (and d!2177107 c!1296327) b!6989440))

(assert (= (and d!2177107 (not c!1296327)) b!6989441))

(assert (=> d!2177107 m!7677948))

(declare-fun m!7678006 () Bool)

(assert (=> b!6989440 m!7678006))

(assert (=> b!6989441 m!7677952))

(assert (=> b!6989441 m!7677952))

(declare-fun m!7678008 () Bool)

(assert (=> b!6989441 m!7678008))

(assert (=> b!6989441 m!7677956))

(assert (=> b!6989441 m!7678008))

(assert (=> b!6989441 m!7677956))

(declare-fun m!7678010 () Bool)

(assert (=> b!6989441 m!7678010))

(assert (=> b!6989281 d!2177107))

(declare-fun d!2177109 () Bool)

(declare-fun c!1296328 () Bool)

(assert (=> d!2177109 (= c!1296328 (isEmpty!39152 (t!380947 s!7408)))))

(declare-fun e!4200996 () Bool)

(assert (=> d!2177109 (= (matchZipper!2758 lt!2486612 (t!380947 s!7408)) e!4200996)))

(declare-fun b!6989442 () Bool)

(assert (=> b!6989442 (= e!4200996 (nullableZipper!2435 lt!2486612))))

(declare-fun b!6989443 () Bool)

(assert (=> b!6989443 (= e!4200996 (matchZipper!2758 (derivationStepZipper!2698 lt!2486612 (head!14110 (t!380947 s!7408))) (tail!13228 (t!380947 s!7408))))))

(assert (= (and d!2177109 c!1296328) b!6989442))

(assert (= (and d!2177109 (not c!1296328)) b!6989443))

(assert (=> d!2177109 m!7677948))

(declare-fun m!7678012 () Bool)

(assert (=> b!6989442 m!7678012))

(assert (=> b!6989443 m!7677952))

(assert (=> b!6989443 m!7677952))

(declare-fun m!7678014 () Bool)

(assert (=> b!6989443 m!7678014))

(assert (=> b!6989443 m!7677956))

(assert (=> b!6989443 m!7678014))

(assert (=> b!6989443 m!7677956))

(declare-fun m!7678016 () Bool)

(assert (=> b!6989443 m!7678016))

(assert (=> b!6989281 d!2177109))

(assert (=> b!6989281 d!2177079))

(declare-fun d!2177111 () Bool)

(declare-fun e!4200999 () Bool)

(assert (=> d!2177111 (= (matchZipper!2758 (set.union lt!2486612 lt!2486601) (t!380947 s!7408)) e!4200999)))

(declare-fun res!2850410 () Bool)

(assert (=> d!2177111 (=> res!2850410 e!4200999)))

(assert (=> d!2177111 (= res!2850410 (matchZipper!2758 lt!2486612 (t!380947 s!7408)))))

(declare-fun lt!2486735 () Unit!161091)

(declare-fun choose!52249 ((Set Context!12428) (Set Context!12428) List!67200) Unit!161091)

(assert (=> d!2177111 (= lt!2486735 (choose!52249 lt!2486612 lt!2486601 (t!380947 s!7408)))))

(assert (=> d!2177111 (= (lemmaZipperConcatMatchesSameAsBothZippers!1391 lt!2486612 lt!2486601 (t!380947 s!7408)) lt!2486735)))

(declare-fun b!6989446 () Bool)

(assert (=> b!6989446 (= e!4200999 (matchZipper!2758 lt!2486601 (t!380947 s!7408)))))

(assert (= (and d!2177111 (not res!2850410)) b!6989446))

(declare-fun m!7678018 () Bool)

(assert (=> d!2177111 m!7678018))

(assert (=> d!2177111 m!7677806))

(declare-fun m!7678020 () Bool)

(assert (=> d!2177111 m!7678020))

(assert (=> b!6989446 m!7677792))

(assert (=> b!6989281 d!2177111))

(declare-fun d!2177113 () Bool)

(declare-fun e!4201001 () Bool)

(assert (=> d!2177113 e!4201001))

(declare-fun res!2850413 () Bool)

(assert (=> d!2177113 (=> (not res!2850413) (not e!4201001))))

(declare-fun lt!2486736 () List!67199)

(assert (=> d!2177113 (= res!2850413 (= (content!13256 lt!2486736) (set.union (content!13256 (exprs!6714 lt!2486595)) (content!13256 (exprs!6714 ct2!306)))))))

(declare-fun e!4201000 () List!67199)

(assert (=> d!2177113 (= lt!2486736 e!4201000)))

(declare-fun c!1296329 () Bool)

(assert (=> d!2177113 (= c!1296329 (is-Nil!67075 (exprs!6714 lt!2486595)))))

(assert (=> d!2177113 (= (++!15163 (exprs!6714 lt!2486595) (exprs!6714 ct2!306)) lt!2486736)))

(declare-fun b!6989448 () Bool)

(assert (=> b!6989448 (= e!4201000 (Cons!67075 (h!73523 (exprs!6714 lt!2486595)) (++!15163 (t!380946 (exprs!6714 lt!2486595)) (exprs!6714 ct2!306))))))

(declare-fun b!6989449 () Bool)

(declare-fun res!2850412 () Bool)

(assert (=> b!6989449 (=> (not res!2850412) (not e!4201001))))

(assert (=> b!6989449 (= res!2850412 (= (size!40903 lt!2486736) (+ (size!40903 (exprs!6714 lt!2486595)) (size!40903 (exprs!6714 ct2!306)))))))

(declare-fun b!6989447 () Bool)

(assert (=> b!6989447 (= e!4201000 (exprs!6714 ct2!306))))

(declare-fun b!6989450 () Bool)

(assert (=> b!6989450 (= e!4201001 (or (not (= (exprs!6714 ct2!306) Nil!67075)) (= lt!2486736 (exprs!6714 lt!2486595))))))

(assert (= (and d!2177113 c!1296329) b!6989447))

(assert (= (and d!2177113 (not c!1296329)) b!6989448))

(assert (= (and d!2177113 res!2850413) b!6989449))

(assert (= (and b!6989449 res!2850412) b!6989450))

(declare-fun m!7678022 () Bool)

(assert (=> d!2177113 m!7678022))

(declare-fun m!7678024 () Bool)

(assert (=> d!2177113 m!7678024))

(assert (=> d!2177113 m!7677970))

(declare-fun m!7678026 () Bool)

(assert (=> b!6989448 m!7678026))

(declare-fun m!7678028 () Bool)

(assert (=> b!6989449 m!7678028))

(declare-fun m!7678030 () Bool)

(assert (=> b!6989449 m!7678030))

(assert (=> b!6989449 m!7677978))

(assert (=> b!6989265 d!2177113))

(declare-fun d!2177115 () Bool)

(assert (=> d!2177115 (forall!16133 (++!15163 (exprs!6714 lt!2486595) (exprs!6714 ct2!306)) lambda!401484)))

(declare-fun lt!2486737 () Unit!161091)

(assert (=> d!2177115 (= lt!2486737 (choose!52246 (exprs!6714 lt!2486595) (exprs!6714 ct2!306) lambda!401484))))

(assert (=> d!2177115 (forall!16133 (exprs!6714 lt!2486595) lambda!401484)))

(assert (=> d!2177115 (= (lemmaConcatPreservesForall!554 (exprs!6714 lt!2486595) (exprs!6714 ct2!306) lambda!401484) lt!2486737)))

(declare-fun bs!1862106 () Bool)

(assert (= bs!1862106 d!2177115))

(assert (=> bs!1862106 m!7677824))

(assert (=> bs!1862106 m!7677824))

(declare-fun m!7678032 () Bool)

(assert (=> bs!1862106 m!7678032))

(declare-fun m!7678034 () Bool)

(assert (=> bs!1862106 m!7678034))

(declare-fun m!7678036 () Bool)

(assert (=> bs!1862106 m!7678036))

(assert (=> b!6989265 d!2177115))

(declare-fun d!2177117 () Bool)

(declare-fun e!4201004 () Bool)

(assert (=> d!2177117 e!4201004))

(declare-fun res!2850416 () Bool)

(assert (=> d!2177117 (=> (not res!2850416) (not e!4201004))))

(declare-fun lt!2486740 () Context!12428)

(declare-fun dynLambda!26896 (Int Context!12428) Context!12428)

(assert (=> d!2177117 (= res!2850416 (= lt!2486585 (dynLambda!26896 lambda!401483 lt!2486740)))))

(declare-fun choose!52250 ((Set Context!12428) Int Context!12428) Context!12428)

(assert (=> d!2177117 (= lt!2486740 (choose!52250 z1!570 lambda!401483 lt!2486585))))

(declare-fun map!15478 ((Set Context!12428) Int) (Set Context!12428))

(assert (=> d!2177117 (set.member lt!2486585 (map!15478 z1!570 lambda!401483))))

(assert (=> d!2177117 (= (mapPost2!73 z1!570 lambda!401483 lt!2486585) lt!2486740)))

(declare-fun b!6989454 () Bool)

(assert (=> b!6989454 (= e!4201004 (set.member lt!2486740 z1!570))))

(assert (= (and d!2177117 res!2850416) b!6989454))

(declare-fun b_lambda!262519 () Bool)

(assert (=> (not b_lambda!262519) (not d!2177117)))

(declare-fun m!7678038 () Bool)

(assert (=> d!2177117 m!7678038))

(declare-fun m!7678040 () Bool)

(assert (=> d!2177117 m!7678040))

(declare-fun m!7678042 () Bool)

(assert (=> d!2177117 m!7678042))

(declare-fun m!7678044 () Bool)

(assert (=> d!2177117 m!7678044))

(declare-fun m!7678046 () Bool)

(assert (=> b!6989454 m!7678046))

(assert (=> b!6989265 d!2177117))

(assert (=> b!6989264 d!2177115))

(declare-fun d!2177119 () Bool)

(declare-fun e!4201007 () Bool)

(assert (=> d!2177119 e!4201007))

(declare-fun res!2850419 () Bool)

(assert (=> d!2177119 (=> (not res!2850419) (not e!4201007))))

(declare-fun lt!2486743 () Context!12428)

(declare-fun dynLambda!26897 (Int Context!12428) Bool)

(assert (=> d!2177119 (= res!2850419 (dynLambda!26897 lambda!401482 lt!2486743))))

(declare-fun getWitness!1118 (List!67201 Int) Context!12428)

(assert (=> d!2177119 (= lt!2486743 (getWitness!1118 (toList!10578 lt!2486591) lambda!401482))))

(declare-fun exists!3007 ((Set Context!12428) Int) Bool)

(assert (=> d!2177119 (exists!3007 lt!2486591 lambda!401482)))

(assert (=> d!2177119 (= (getWitness!1116 lt!2486591 lambda!401482) lt!2486743)))

(declare-fun b!6989457 () Bool)

(assert (=> b!6989457 (= e!4201007 (set.member lt!2486743 lt!2486591))))

(assert (= (and d!2177119 res!2850419) b!6989457))

(declare-fun b_lambda!262521 () Bool)

(assert (=> (not b_lambda!262521) (not d!2177119)))

(declare-fun m!7678048 () Bool)

(assert (=> d!2177119 m!7678048))

(assert (=> d!2177119 m!7677796))

(assert (=> d!2177119 m!7677796))

(declare-fun m!7678050 () Bool)

(assert (=> d!2177119 m!7678050))

(declare-fun m!7678052 () Bool)

(assert (=> d!2177119 m!7678052))

(declare-fun m!7678054 () Bool)

(assert (=> b!6989457 m!7678054))

(assert (=> b!6989274 d!2177119))

(declare-fun d!2177121 () Bool)

(declare-fun c!1296330 () Bool)

(assert (=> d!2177121 (= c!1296330 (isEmpty!39152 s!7408))))

(declare-fun e!4201008 () Bool)

(assert (=> d!2177121 (= (matchZipper!2758 lt!2486615 s!7408) e!4201008)))

(declare-fun b!6989458 () Bool)

(assert (=> b!6989458 (= e!4201008 (nullableZipper!2435 lt!2486615))))

(declare-fun b!6989459 () Bool)

(assert (=> b!6989459 (= e!4201008 (matchZipper!2758 (derivationStepZipper!2698 lt!2486615 (head!14110 s!7408)) (tail!13228 s!7408)))))

(assert (= (and d!2177121 c!1296330) b!6989458))

(assert (= (and d!2177121 (not c!1296330)) b!6989459))

(assert (=> d!2177121 m!7677926))

(declare-fun m!7678056 () Bool)

(assert (=> b!6989458 m!7678056))

(assert (=> b!6989459 m!7677930))

(assert (=> b!6989459 m!7677930))

(declare-fun m!7678058 () Bool)

(assert (=> b!6989459 m!7678058))

(assert (=> b!6989459 m!7677934))

(assert (=> b!6989459 m!7678058))

(assert (=> b!6989459 m!7677934))

(declare-fun m!7678060 () Bool)

(assert (=> b!6989459 m!7678060))

(assert (=> b!6989274 d!2177121))

(declare-fun bs!1862107 () Bool)

(declare-fun d!2177123 () Bool)

(assert (= bs!1862107 (and d!2177123 b!6989274)))

(declare-fun lambda!401542 () Int)

(assert (=> bs!1862107 (= lambda!401542 lambda!401482)))

(assert (=> d!2177123 true))

(assert (=> d!2177123 (exists!3005 lt!2486593 lambda!401542)))

(declare-fun lt!2486746 () Unit!161091)

(declare-fun choose!52251 (List!67201 List!67200) Unit!161091)

(assert (=> d!2177123 (= lt!2486746 (choose!52251 lt!2486593 s!7408))))

(declare-fun content!13257 (List!67201) (Set Context!12428))

(assert (=> d!2177123 (matchZipper!2758 (content!13257 lt!2486593) s!7408)))

(assert (=> d!2177123 (= (lemmaZipperMatchesExistsMatchingContext!187 lt!2486593 s!7408) lt!2486746)))

(declare-fun bs!1862108 () Bool)

(assert (= bs!1862108 d!2177123))

(declare-fun m!7678062 () Bool)

(assert (=> bs!1862108 m!7678062))

(declare-fun m!7678064 () Bool)

(assert (=> bs!1862108 m!7678064))

(declare-fun m!7678066 () Bool)

(assert (=> bs!1862108 m!7678066))

(assert (=> bs!1862108 m!7678066))

(declare-fun m!7678068 () Bool)

(assert (=> bs!1862108 m!7678068))

(assert (=> b!6989274 d!2177123))

(declare-fun bs!1862109 () Bool)

(declare-fun d!2177125 () Bool)

(assert (= bs!1862109 (and d!2177125 b!6989274)))

(declare-fun lambda!401545 () Int)

(assert (=> bs!1862109 (not (= lambda!401545 lambda!401482))))

(declare-fun bs!1862110 () Bool)

(assert (= bs!1862110 (and d!2177125 d!2177123)))

(assert (=> bs!1862110 (not (= lambda!401545 lambda!401542))))

(assert (=> d!2177125 true))

(declare-fun order!27917 () Int)

(declare-fun dynLambda!26898 (Int Int) Int)

(assert (=> d!2177125 (< (dynLambda!26898 order!27917 lambda!401482) (dynLambda!26898 order!27917 lambda!401545))))

(declare-fun forall!16135 (List!67201 Int) Bool)

(assert (=> d!2177125 (= (exists!3005 lt!2486593 lambda!401482) (not (forall!16135 lt!2486593 lambda!401545)))))

(declare-fun bs!1862111 () Bool)

(assert (= bs!1862111 d!2177125))

(declare-fun m!7678070 () Bool)

(assert (=> bs!1862111 m!7678070))

(assert (=> b!6989274 d!2177125))

(declare-fun d!2177127 () Bool)

(declare-fun e!4201011 () Bool)

(assert (=> d!2177127 e!4201011))

(declare-fun res!2850422 () Bool)

(assert (=> d!2177127 (=> (not res!2850422) (not e!4201011))))

(declare-fun lt!2486749 () List!67201)

(declare-fun noDuplicate!2522 (List!67201) Bool)

(assert (=> d!2177127 (= res!2850422 (noDuplicate!2522 lt!2486749))))

(declare-fun choose!52252 ((Set Context!12428)) List!67201)

(assert (=> d!2177127 (= lt!2486749 (choose!52252 lt!2486591))))

(assert (=> d!2177127 (= (toList!10578 lt!2486591) lt!2486749)))

(declare-fun b!6989464 () Bool)

(assert (=> b!6989464 (= e!4201011 (= (content!13257 lt!2486749) lt!2486591))))

(assert (= (and d!2177127 res!2850422) b!6989464))

(declare-fun m!7678072 () Bool)

(assert (=> d!2177127 m!7678072))

(declare-fun m!7678074 () Bool)

(assert (=> d!2177127 m!7678074))

(declare-fun m!7678076 () Bool)

(assert (=> b!6989464 m!7678076))

(assert (=> b!6989274 d!2177127))

(declare-fun d!2177129 () Bool)

(declare-fun c!1296333 () Bool)

(assert (=> d!2177129 (= c!1296333 (isEmpty!39152 s!7408))))

(declare-fun e!4201012 () Bool)

(assert (=> d!2177129 (= (matchZipper!2758 lt!2486591 s!7408) e!4201012)))

(declare-fun b!6989465 () Bool)

(assert (=> b!6989465 (= e!4201012 (nullableZipper!2435 lt!2486591))))

(declare-fun b!6989466 () Bool)

(assert (=> b!6989466 (= e!4201012 (matchZipper!2758 (derivationStepZipper!2698 lt!2486591 (head!14110 s!7408)) (tail!13228 s!7408)))))

(assert (= (and d!2177129 c!1296333) b!6989465))

(assert (= (and d!2177129 (not c!1296333)) b!6989466))

(assert (=> d!2177129 m!7677926))

(declare-fun m!7678078 () Bool)

(assert (=> b!6989465 m!7678078))

(assert (=> b!6989466 m!7677930))

(assert (=> b!6989466 m!7677930))

(declare-fun m!7678080 () Bool)

(assert (=> b!6989466 m!7678080))

(assert (=> b!6989466 m!7677934))

(assert (=> b!6989466 m!7678080))

(assert (=> b!6989466 m!7677934))

(declare-fun m!7678082 () Bool)

(assert (=> b!6989466 m!7678082))

(assert (=> start!671608 d!2177129))

(declare-fun bs!1862112 () Bool)

(declare-fun d!2177131 () Bool)

(assert (= bs!1862112 (and d!2177131 b!6989265)))

(declare-fun lambda!401550 () Int)

(assert (=> bs!1862112 (= lambda!401550 lambda!401483)))

(assert (=> d!2177131 true))

(assert (=> d!2177131 (= (appendTo!339 z1!570 ct2!306) (map!15478 z1!570 lambda!401550))))

(declare-fun bs!1862113 () Bool)

(assert (= bs!1862113 d!2177131))

(declare-fun m!7678084 () Bool)

(assert (=> bs!1862113 m!7678084))

(assert (=> start!671608 d!2177131))

(declare-fun bs!1862114 () Bool)

(declare-fun d!2177133 () Bool)

(assert (= bs!1862114 (and d!2177133 b!6989265)))

(declare-fun lambda!401551 () Int)

(assert (=> bs!1862114 (= lambda!401551 lambda!401484)))

(declare-fun bs!1862115 () Bool)

(assert (= bs!1862115 (and d!2177133 d!2177093)))

(assert (=> bs!1862115 (= lambda!401551 lambda!401536)))

(assert (=> d!2177133 (= (inv!85905 c!403) (forall!16133 (exprs!6714 c!403) lambda!401551))))

(declare-fun bs!1862116 () Bool)

(assert (= bs!1862116 d!2177133))

(declare-fun m!7678086 () Bool)

(assert (=> bs!1862116 m!7678086))

(assert (=> start!671608 d!2177133))

(declare-fun bs!1862117 () Bool)

(declare-fun d!2177135 () Bool)

(assert (= bs!1862117 (and d!2177135 b!6989265)))

(declare-fun lambda!401552 () Int)

(assert (=> bs!1862117 (= lambda!401552 lambda!401484)))

(declare-fun bs!1862118 () Bool)

(assert (= bs!1862118 (and d!2177135 d!2177093)))

(assert (=> bs!1862118 (= lambda!401552 lambda!401536)))

(declare-fun bs!1862119 () Bool)

(assert (= bs!1862119 (and d!2177135 d!2177133)))

(assert (=> bs!1862119 (= lambda!401552 lambda!401551)))

(assert (=> d!2177135 (= (inv!85905 ct2!306) (forall!16133 (exprs!6714 ct2!306) lambda!401552))))

(declare-fun bs!1862120 () Bool)

(assert (= bs!1862120 d!2177135))

(declare-fun m!7678088 () Bool)

(assert (=> bs!1862120 m!7678088))

(assert (=> start!671608 d!2177135))

(declare-fun d!2177137 () Bool)

(assert (=> d!2177137 (= (flatMap!2204 lt!2486600 lambda!401485) (choose!52247 lt!2486600 lambda!401485))))

(declare-fun bs!1862121 () Bool)

(assert (= bs!1862121 d!2177137))

(declare-fun m!7678090 () Bool)

(assert (=> bs!1862121 m!7678090))

(assert (=> b!6989283 d!2177137))

(declare-fun bs!1862122 () Bool)

(declare-fun d!2177139 () Bool)

(assert (= bs!1862122 (and d!2177139 b!6989283)))

(declare-fun lambda!401553 () Int)

(assert (=> bs!1862122 (= lambda!401553 lambda!401485)))

(declare-fun bs!1862123 () Bool)

(assert (= bs!1862123 (and d!2177139 d!2177103)))

(assert (=> bs!1862123 (= lambda!401553 lambda!401539)))

(assert (=> d!2177139 true))

(assert (=> d!2177139 (= (derivationStepZipper!2698 lt!2486600 (h!73524 s!7408)) (flatMap!2204 lt!2486600 lambda!401553))))

(declare-fun bs!1862124 () Bool)

(assert (= bs!1862124 d!2177139))

(declare-fun m!7678092 () Bool)

(assert (=> bs!1862124 m!7678092))

(assert (=> b!6989283 d!2177139))

(assert (=> b!6989283 d!2177115))

(declare-fun d!2177141 () Bool)

(declare-fun c!1296335 () Bool)

(declare-fun e!4201013 () Bool)

(assert (=> d!2177141 (= c!1296335 e!4201013)))

(declare-fun res!2850423 () Bool)

(assert (=> d!2177141 (=> (not res!2850423) (not e!4201013))))

(assert (=> d!2177141 (= res!2850423 (is-Cons!67075 (exprs!6714 lt!2486616)))))

(declare-fun e!4201015 () (Set Context!12428))

(assert (=> d!2177141 (= (derivationStepZipperUp!1868 lt!2486616 (h!73524 s!7408)) e!4201015)))

(declare-fun b!6989467 () Bool)

(declare-fun e!4201014 () (Set Context!12428))

(declare-fun call!634509 () (Set Context!12428))

(assert (=> b!6989467 (= e!4201014 call!634509)))

(declare-fun b!6989468 () Bool)

(assert (=> b!6989468 (= e!4201014 (as set.empty (Set Context!12428)))))

(declare-fun bm!634504 () Bool)

(assert (=> bm!634504 (= call!634509 (derivationStepZipperDown!1936 (h!73523 (exprs!6714 lt!2486616)) (Context!12429 (t!380946 (exprs!6714 lt!2486616))) (h!73524 s!7408)))))

(declare-fun b!6989469 () Bool)

(assert (=> b!6989469 (= e!4201015 e!4201014)))

(declare-fun c!1296336 () Bool)

(assert (=> b!6989469 (= c!1296336 (is-Cons!67075 (exprs!6714 lt!2486616)))))

(declare-fun b!6989470 () Bool)

(assert (=> b!6989470 (= e!4201013 (nullable!6978 (h!73523 (exprs!6714 lt!2486616))))))

(declare-fun b!6989471 () Bool)

(assert (=> b!6989471 (= e!4201015 (set.union call!634509 (derivationStepZipperUp!1868 (Context!12429 (t!380946 (exprs!6714 lt!2486616))) (h!73524 s!7408))))))

(assert (= (and d!2177141 res!2850423) b!6989470))

(assert (= (and d!2177141 c!1296335) b!6989471))

(assert (= (and d!2177141 (not c!1296335)) b!6989469))

(assert (= (and b!6989469 c!1296336) b!6989467))

(assert (= (and b!6989469 (not c!1296336)) b!6989468))

(assert (= (or b!6989471 b!6989467) bm!634504))

(declare-fun m!7678094 () Bool)

(assert (=> bm!634504 m!7678094))

(declare-fun m!7678096 () Bool)

(assert (=> b!6989470 m!7678096))

(declare-fun m!7678098 () Bool)

(assert (=> b!6989471 m!7678098))

(assert (=> b!6989283 d!2177141))

(declare-fun d!2177143 () Bool)

(assert (=> d!2177143 (= (flatMap!2204 lt!2486600 lambda!401485) (dynLambda!26895 lambda!401485 lt!2486616))))

(declare-fun lt!2486752 () Unit!161091)

(assert (=> d!2177143 (= lt!2486752 (choose!52248 lt!2486600 lt!2486616 lambda!401485))))

(assert (=> d!2177143 (= lt!2486600 (set.insert lt!2486616 (as set.empty (Set Context!12428))))))

(assert (=> d!2177143 (= (lemmaFlatMapOnSingletonSet!1719 lt!2486600 lt!2486616 lambda!401485) lt!2486752)))

(declare-fun b_lambda!262523 () Bool)

(assert (=> (not b_lambda!262523) (not d!2177143)))

(declare-fun bs!1862125 () Bool)

(assert (= bs!1862125 d!2177143))

(assert (=> bs!1862125 m!7677838))

(declare-fun m!7678100 () Bool)

(assert (=> bs!1862125 m!7678100))

(declare-fun m!7678102 () Bool)

(assert (=> bs!1862125 m!7678102))

(assert (=> bs!1862125 m!7677788))

(assert (=> b!6989283 d!2177143))

(declare-fun b!6989476 () Bool)

(declare-fun e!4201018 () Bool)

(declare-fun tp!1929669 () Bool)

(declare-fun tp!1929670 () Bool)

(assert (=> b!6989476 (= e!4201018 (and tp!1929669 tp!1929670))))

(assert (=> b!6989282 (= tp!1929649 e!4201018)))

(assert (= (and b!6989282 (is-Cons!67075 (exprs!6714 c!403))) b!6989476))

(declare-fun b!6989481 () Bool)

(declare-fun e!4201021 () Bool)

(declare-fun tp!1929673 () Bool)

(assert (=> b!6989481 (= e!4201021 (and tp_is_empty!43661 tp!1929673))))

(assert (=> b!6989276 (= tp!1929648 e!4201021)))

(assert (= (and b!6989276 (is-Cons!67076 (t!380947 s!7408))) b!6989481))

(declare-fun b!6989482 () Bool)

(declare-fun e!4201022 () Bool)

(declare-fun tp!1929674 () Bool)

(declare-fun tp!1929675 () Bool)

(assert (=> b!6989482 (= e!4201022 (and tp!1929674 tp!1929675))))

(assert (=> b!6989273 (= tp!1929645 e!4201022)))

(assert (= (and b!6989273 (is-Cons!67075 (exprs!6714 ct2!306))) b!6989482))

(declare-fun b!6989483 () Bool)

(declare-fun e!4201023 () Bool)

(declare-fun tp!1929676 () Bool)

(declare-fun tp!1929677 () Bool)

(assert (=> b!6989483 (= e!4201023 (and tp!1929676 tp!1929677))))

(assert (=> b!6989268 (= tp!1929647 e!4201023)))

(assert (= (and b!6989268 (is-Cons!67075 (exprs!6714 setElem!47802))) b!6989483))

(declare-fun condSetEmpty!47808 () Bool)

(assert (=> setNonEmpty!47802 (= condSetEmpty!47808 (= setRest!47802 (as set.empty (Set Context!12428))))))

(declare-fun setRes!47808 () Bool)

(assert (=> setNonEmpty!47802 (= tp!1929646 setRes!47808)))

(declare-fun setIsEmpty!47808 () Bool)

(assert (=> setIsEmpty!47808 setRes!47808))

(declare-fun setNonEmpty!47808 () Bool)

(declare-fun tp!1929683 () Bool)

(declare-fun setElem!47808 () Context!12428)

(declare-fun e!4201026 () Bool)

(assert (=> setNonEmpty!47808 (= setRes!47808 (and tp!1929683 (inv!85905 setElem!47808) e!4201026))))

(declare-fun setRest!47808 () (Set Context!12428))

(assert (=> setNonEmpty!47808 (= setRest!47802 (set.union (set.insert setElem!47808 (as set.empty (Set Context!12428))) setRest!47808))))

(declare-fun b!6989488 () Bool)

(declare-fun tp!1929682 () Bool)

(assert (=> b!6989488 (= e!4201026 tp!1929682)))

(assert (= (and setNonEmpty!47802 condSetEmpty!47808) setIsEmpty!47808))

(assert (= (and setNonEmpty!47802 (not condSetEmpty!47808)) setNonEmpty!47808))

(assert (= setNonEmpty!47808 b!6989488))

(declare-fun m!7678104 () Bool)

(assert (=> setNonEmpty!47808 m!7678104))

(declare-fun b_lambda!262525 () Bool)

(assert (= b_lambda!262521 (or b!6989274 b_lambda!262525)))

(declare-fun bs!1862126 () Bool)

(declare-fun d!2177145 () Bool)

(assert (= bs!1862126 (and d!2177145 b!6989274)))

(assert (=> bs!1862126 (= (dynLambda!26897 lambda!401482 lt!2486743) (matchZipper!2758 (set.insert lt!2486743 (as set.empty (Set Context!12428))) s!7408))))

(declare-fun m!7678106 () Bool)

(assert (=> bs!1862126 m!7678106))

(assert (=> bs!1862126 m!7678106))

(declare-fun m!7678108 () Bool)

(assert (=> bs!1862126 m!7678108))

(assert (=> d!2177119 d!2177145))

(declare-fun b_lambda!262527 () Bool)

(assert (= b_lambda!262519 (or b!6989265 b_lambda!262527)))

(declare-fun bs!1862127 () Bool)

(declare-fun d!2177147 () Bool)

(assert (= bs!1862127 (and d!2177147 b!6989265)))

(declare-fun lt!2486753 () Unit!161091)

(assert (=> bs!1862127 (= lt!2486753 (lemmaConcatPreservesForall!554 (exprs!6714 lt!2486740) (exprs!6714 ct2!306) lambda!401484))))

(assert (=> bs!1862127 (= (dynLambda!26896 lambda!401483 lt!2486740) (Context!12429 (++!15163 (exprs!6714 lt!2486740) (exprs!6714 ct2!306))))))

(declare-fun m!7678110 () Bool)

(assert (=> bs!1862127 m!7678110))

(declare-fun m!7678112 () Bool)

(assert (=> bs!1862127 m!7678112))

(assert (=> d!2177117 d!2177147))

(declare-fun b_lambda!262529 () Bool)

(assert (= b_lambda!262523 (or b!6989283 b_lambda!262529)))

(declare-fun bs!1862128 () Bool)

(declare-fun d!2177149 () Bool)

(assert (= bs!1862128 (and d!2177149 b!6989283)))

(assert (=> bs!1862128 (= (dynLambda!26895 lambda!401485 lt!2486616) (derivationStepZipperUp!1868 lt!2486616 (h!73524 s!7408)))))

(assert (=> bs!1862128 m!7677832))

(assert (=> d!2177143 d!2177149))

(declare-fun b_lambda!262531 () Bool)

(assert (= b_lambda!262517 (or b!6989283 b_lambda!262531)))

(declare-fun bs!1862129 () Bool)

(declare-fun d!2177151 () Bool)

(assert (= bs!1862129 (and d!2177151 b!6989283)))

(assert (=> bs!1862129 (= (dynLambda!26895 lambda!401485 lt!2486582) (derivationStepZipperUp!1868 lt!2486582 (h!73524 s!7408)))))

(assert (=> bs!1862129 m!7677778))

(assert (=> d!2177101 d!2177151))

(declare-fun b_lambda!262533 () Bool)

(assert (= b_lambda!262515 (or b!6989265 b_lambda!262533)))

(declare-fun bs!1862130 () Bool)

(declare-fun d!2177153 () Bool)

(assert (= bs!1862130 (and d!2177153 b!6989265)))

(declare-fun validRegex!8860 (Regex!17218) Bool)

(assert (=> bs!1862130 (= (dynLambda!26894 lambda!401484 (h!73523 (exprs!6714 c!403))) (validRegex!8860 (h!73523 (exprs!6714 c!403))))))

(declare-fun m!7678114 () Bool)

(assert (=> bs!1862130 m!7678114))

(assert (=> b!6989372 d!2177153))

(push 1)

(assert (not b!6989366))

(assert (not d!2177085))

(assert (not bs!1862130))

(assert (not d!2177115))

(assert (not d!2177125))

(assert (not b!6989482))

(assert (not d!2177119))

(assert (not b!6989465))

(assert (not b!6989425))

(assert (not d!2177133))

(assert (not b!6989401))

(assert (not b!6989439))

(assert (not d!2177109))

(assert (not b!6989367))

(assert (not bm!634503))

(assert (not b!6989458))

(assert (not d!2177107))

(assert (not b!6989442))

(assert (not bs!1862127))

(assert (not d!2177131))

(assert (not b!6989488))

(assert (not bm!634504))

(assert (not b_lambda!262529))

(assert (not d!2177101))

(assert (not b!6989481))

(assert (not b!6989459))

(assert (not b!6989470))

(assert (not b!6989438))

(assert (not b!6989466))

(assert (not d!2177095))

(assert (not d!2177113))

(assert (not b_lambda!262527))

(assert (not d!2177127))

(assert (not b!6989464))

(assert (not d!2177139))

(assert (not b!6989448))

(assert (not b!6989440))

(assert (not b_lambda!262533))

(assert (not b_lambda!262525))

(assert (not setNonEmpty!47808))

(assert (not b!6989390))

(assert (not d!2177079))

(assert (not d!2177111))

(assert (not b!6989373))

(assert (not d!2177077))

(assert (not d!2177123))

(assert (not b!6989375))

(assert (not b!6989446))

(assert (not b_lambda!262531))

(assert (not d!2177099))

(assert (not b!6989389))

(assert (not bm!634485))

(assert (not b!6989449))

(assert (not d!2177093))

(assert (not bs!1862126))

(assert (not b!6989400))

(assert (not d!2177105))

(assert (not b!6989471))

(assert (not bm!634502))

(assert (not b!6989476))

(assert (not d!2177103))

(assert (not b!6989483))

(assert (not b!6989374))

(assert (not b!6989441))

(assert (not d!2177129))

(assert (not d!2177117))

(assert (not b!6989443))

(assert tp_is_empty!43661)

(assert (not bm!634500))

(assert (not bs!1862128))

(assert (not bs!1862129))

(assert (not d!2177137))

(assert (not d!2177135))

(assert (not d!2177089))

(assert (not d!2177143))

(assert (not d!2177121))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!670980 () Bool)

(assert start!670980)

(declare-fun b!6986094 () Bool)

(assert (=> b!6986094 true))

(declare-fun b!6986099 () Bool)

(assert (=> b!6986099 true))

(declare-fun b!6986087 () Bool)

(assert (=> b!6986087 true))

(declare-fun b!6986081 () Bool)

(declare-fun e!4198882 () Bool)

(declare-fun e!4198878 () Bool)

(assert (=> b!6986081 (= e!4198882 e!4198878)))

(declare-fun res!2848795 () Bool)

(assert (=> b!6986081 (=> res!2848795 e!4198878)))

(declare-datatypes ((C!34666 0))(
  ( (C!34667 (val!27035 Int)) )
))
(declare-datatypes ((Regex!17198 0))(
  ( (ElementMatch!17198 (c!1295479 C!34666)) (Concat!26043 (regOne!34908 Regex!17198) (regTwo!34908 Regex!17198)) (EmptyExpr!17198) (Star!17198 (reg!17527 Regex!17198)) (EmptyLang!17198) (Union!17198 (regOne!34909 Regex!17198) (regTwo!34909 Regex!17198)) )
))
(declare-datatypes ((List!67139 0))(
  ( (Nil!67015) (Cons!67015 (h!73463 Regex!17198) (t!380886 List!67139)) )
))
(declare-datatypes ((Context!12388 0))(
  ( (Context!12389 (exprs!6694 List!67139)) )
))
(declare-fun lt!2484205 () Context!12388)

(declare-fun nullable!6958 (Regex!17198) Bool)

(assert (=> b!6986081 (= res!2848795 (not (nullable!6958 (h!73463 (exprs!6694 lt!2484205)))))))

(declare-fun lt!2484226 () List!67139)

(declare-fun tail!13194 (List!67139) List!67139)

(assert (=> b!6986081 (= lt!2484226 (tail!13194 (exprs!6694 lt!2484205)))))

(declare-fun b!6986082 () Bool)

(declare-fun e!4198872 () Bool)

(declare-fun e!4198881 () Bool)

(assert (=> b!6986082 (= e!4198872 e!4198881)))

(declare-fun res!2848810 () Bool)

(assert (=> b!6986082 (=> res!2848810 e!4198881)))

(declare-fun e!4198874 () Bool)

(assert (=> b!6986082 (= res!2848810 e!4198874)))

(declare-fun res!2848800 () Bool)

(assert (=> b!6986082 (=> (not res!2848800) (not e!4198874))))

(declare-fun lt!2484204 () Bool)

(declare-fun lt!2484206 () Bool)

(assert (=> b!6986082 (= res!2848800 (not (= lt!2484204 lt!2484206)))))

(declare-fun lt!2484215 () (Set Context!12388))

(declare-datatypes ((List!67140 0))(
  ( (Nil!67016) (Cons!67016 (h!73464 C!34666) (t!380887 List!67140)) )
))
(declare-fun s!7408 () List!67140)

(declare-fun matchZipper!2738 ((Set Context!12388) List!67140) Bool)

(assert (=> b!6986082 (= lt!2484204 (matchZipper!2738 lt!2484215 (t!380887 s!7408)))))

(declare-datatypes ((Unit!161051 0))(
  ( (Unit!161052) )
))
(declare-fun lt!2484224 () Unit!161051)

(declare-fun lambda!400375 () Int)

(declare-fun ct2!306 () Context!12388)

(declare-fun lemmaConcatPreservesForall!534 (List!67139 List!67139 Int) Unit!161051)

(assert (=> b!6986082 (= lt!2484224 (lemmaConcatPreservesForall!534 lt!2484226 (exprs!6694 ct2!306) lambda!400375))))

(declare-fun lt!2484223 () (Set Context!12388))

(declare-fun e!4198873 () Bool)

(assert (=> b!6986082 (= (matchZipper!2738 lt!2484223 (t!380887 s!7408)) e!4198873)))

(declare-fun res!2848806 () Bool)

(assert (=> b!6986082 (=> res!2848806 e!4198873)))

(assert (=> b!6986082 (= res!2848806 lt!2484206)))

(declare-fun lt!2484210 () (Set Context!12388))

(assert (=> b!6986082 (= lt!2484206 (matchZipper!2738 lt!2484210 (t!380887 s!7408)))))

(declare-fun lt!2484230 () Unit!161051)

(declare-fun lt!2484225 () (Set Context!12388))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1371 ((Set Context!12388) (Set Context!12388) List!67140) Unit!161051)

(assert (=> b!6986082 (= lt!2484230 (lemmaZipperConcatMatchesSameAsBothZippers!1371 lt!2484210 lt!2484225 (t!380887 s!7408)))))

(declare-fun lt!2484231 () Unit!161051)

(assert (=> b!6986082 (= lt!2484231 (lemmaConcatPreservesForall!534 lt!2484226 (exprs!6694 ct2!306) lambda!400375))))

(declare-fun lt!2484217 () Unit!161051)

(assert (=> b!6986082 (= lt!2484217 (lemmaConcatPreservesForall!534 lt!2484226 (exprs!6694 ct2!306) lambda!400375))))

(declare-fun b!6986083 () Bool)

(declare-fun e!4198880 () Bool)

(declare-fun tp!1929131 () Bool)

(assert (=> b!6986083 (= e!4198880 tp!1929131)))

(declare-fun b!6986084 () Bool)

(assert (=> b!6986084 (= e!4198878 e!4198872)))

(declare-fun res!2848794 () Bool)

(assert (=> b!6986084 (=> res!2848794 e!4198872)))

(assert (=> b!6986084 (= res!2848794 (not (= lt!2484215 lt!2484223)))))

(assert (=> b!6986084 (= lt!2484223 (set.union lt!2484210 lt!2484225))))

(declare-fun lt!2484209 () Context!12388)

(declare-fun derivationStepZipperUp!1848 (Context!12388 C!34666) (Set Context!12388))

(assert (=> b!6986084 (= lt!2484225 (derivationStepZipperUp!1848 lt!2484209 (h!73464 s!7408)))))

(declare-fun derivationStepZipperDown!1916 (Regex!17198 Context!12388 C!34666) (Set Context!12388))

(assert (=> b!6986084 (= lt!2484210 (derivationStepZipperDown!1916 (h!73463 (exprs!6694 lt!2484205)) lt!2484209 (h!73464 s!7408)))))

(declare-fun ++!15143 (List!67139 List!67139) List!67139)

(assert (=> b!6986084 (= lt!2484209 (Context!12389 (++!15143 lt!2484226 (exprs!6694 ct2!306))))))

(declare-fun lt!2484218 () Unit!161051)

(assert (=> b!6986084 (= lt!2484218 (lemmaConcatPreservesForall!534 lt!2484226 (exprs!6694 ct2!306) lambda!400375))))

(declare-fun lt!2484208 () Unit!161051)

(assert (=> b!6986084 (= lt!2484208 (lemmaConcatPreservesForall!534 lt!2484226 (exprs!6694 ct2!306) lambda!400375))))

(declare-fun b!6986085 () Bool)

(declare-fun e!4198875 () Bool)

(declare-fun tp!1929134 () Bool)

(assert (=> b!6986085 (= e!4198875 tp!1929134)))

(declare-fun b!6986086 () Bool)

(declare-fun res!2848808 () Bool)

(assert (=> b!6986086 (=> res!2848808 e!4198881)))

(assert (=> b!6986086 (= res!2848808 (not lt!2484204))))

(declare-fun e!4198871 () Bool)

(assert (=> b!6986087 (= e!4198871 e!4198882)))

(declare-fun res!2848801 () Bool)

(assert (=> b!6986087 (=> res!2848801 e!4198882)))

(declare-fun lt!2484220 () (Set Context!12388))

(declare-fun derivationStepZipper!2678 ((Set Context!12388) C!34666) (Set Context!12388))

(assert (=> b!6986087 (= res!2848801 (not (= (derivationStepZipper!2678 lt!2484220 (h!73464 s!7408)) lt!2484215)))))

(declare-fun lambda!400376 () Int)

(declare-fun lt!2484212 () Context!12388)

(declare-fun flatMap!2184 ((Set Context!12388) Int) (Set Context!12388))

(assert (=> b!6986087 (= (flatMap!2184 lt!2484220 lambda!400376) (derivationStepZipperUp!1848 lt!2484212 (h!73464 s!7408)))))

(declare-fun lt!2484221 () Unit!161051)

(declare-fun lemmaFlatMapOnSingletonSet!1699 ((Set Context!12388) Context!12388 Int) Unit!161051)

(assert (=> b!6986087 (= lt!2484221 (lemmaFlatMapOnSingletonSet!1699 lt!2484220 lt!2484212 lambda!400376))))

(assert (=> b!6986087 (= lt!2484215 (derivationStepZipperUp!1848 lt!2484212 (h!73464 s!7408)))))

(declare-fun lt!2484219 () Unit!161051)

(assert (=> b!6986087 (= lt!2484219 (lemmaConcatPreservesForall!534 (exprs!6694 lt!2484205) (exprs!6694 ct2!306) lambda!400375))))

(declare-fun b!6986088 () Bool)

(declare-fun res!2848805 () Bool)

(assert (=> b!6986088 (=> res!2848805 e!4198882)))

(assert (=> b!6986088 (= res!2848805 (not (is-Cons!67015 (exprs!6694 lt!2484205))))))

(declare-fun res!2848802 () Bool)

(declare-fun e!4198877 () Bool)

(assert (=> start!670980 (=> (not res!2848802) (not e!4198877))))

(declare-fun lt!2484229 () (Set Context!12388))

(assert (=> start!670980 (= res!2848802 (matchZipper!2738 lt!2484229 s!7408))))

(declare-fun z1!570 () (Set Context!12388))

(declare-fun appendTo!319 ((Set Context!12388) Context!12388) (Set Context!12388))

(assert (=> start!670980 (= lt!2484229 (appendTo!319 z1!570 ct2!306))))

(assert (=> start!670980 e!4198877))

(declare-fun condSetEmpty!47694 () Bool)

(assert (=> start!670980 (= condSetEmpty!47694 (= z1!570 (as set.empty (Set Context!12388))))))

(declare-fun setRes!47694 () Bool)

(assert (=> start!670980 setRes!47694))

(declare-fun inv!85855 (Context!12388) Bool)

(assert (=> start!670980 (and (inv!85855 ct2!306) e!4198880)))

(declare-fun e!4198879 () Bool)

(assert (=> start!670980 e!4198879))

(declare-fun b!6986089 () Bool)

(assert (=> b!6986089 (= e!4198874 (not (matchZipper!2738 lt!2484225 (t!380887 s!7408))))))

(declare-fun lt!2484222 () Unit!161051)

(assert (=> b!6986089 (= lt!2484222 (lemmaConcatPreservesForall!534 lt!2484226 (exprs!6694 ct2!306) lambda!400375))))

(declare-fun b!6986090 () Bool)

(declare-fun res!2848796 () Bool)

(assert (=> b!6986090 (=> (not res!2848796) (not e!4198877))))

(assert (=> b!6986090 (= res!2848796 (is-Cons!67016 s!7408))))

(declare-fun b!6986091 () Bool)

(declare-fun e!4198883 () Bool)

(declare-fun forall!16104 (List!67139 Int) Bool)

(assert (=> b!6986091 (= e!4198883 (forall!16104 (exprs!6694 ct2!306) lambda!400375))))

(declare-fun b!6986092 () Bool)

(declare-fun e!4198876 () Bool)

(assert (=> b!6986092 (= e!4198876 e!4198871)))

(declare-fun res!2848807 () Bool)

(assert (=> b!6986092 (=> res!2848807 e!4198871)))

(declare-fun lt!2484207 () (Set Context!12388))

(assert (=> b!6986092 (= res!2848807 (not (= lt!2484220 lt!2484207)))))

(assert (=> b!6986092 (= lt!2484220 (set.insert lt!2484212 (as set.empty (Set Context!12388))))))

(declare-fun lt!2484228 () Unit!161051)

(assert (=> b!6986092 (= lt!2484228 (lemmaConcatPreservesForall!534 (exprs!6694 lt!2484205) (exprs!6694 ct2!306) lambda!400375))))

(declare-fun b!6986093 () Bool)

(declare-fun tp_is_empty!43621 () Bool)

(declare-fun tp!1929132 () Bool)

(assert (=> b!6986093 (= e!4198879 (and tp_is_empty!43621 tp!1929132))))

(declare-fun e!4198884 () Bool)

(assert (=> b!6986094 (= e!4198877 (not e!4198884))))

(declare-fun res!2848804 () Bool)

(assert (=> b!6986094 (=> res!2848804 e!4198884)))

(assert (=> b!6986094 (= res!2848804 (not (matchZipper!2738 lt!2484207 s!7408)))))

(declare-fun lt!2484213 () Context!12388)

(assert (=> b!6986094 (= lt!2484207 (set.insert lt!2484213 (as set.empty (Set Context!12388))))))

(declare-fun lambda!400373 () Int)

(declare-fun getWitness!1085 ((Set Context!12388) Int) Context!12388)

(assert (=> b!6986094 (= lt!2484213 (getWitness!1085 lt!2484229 lambda!400373))))

(declare-datatypes ((List!67141 0))(
  ( (Nil!67017) (Cons!67017 (h!73465 Context!12388) (t!380888 List!67141)) )
))
(declare-fun lt!2484216 () List!67141)

(declare-fun exists!2974 (List!67141 Int) Bool)

(assert (=> b!6986094 (exists!2974 lt!2484216 lambda!400373)))

(declare-fun lt!2484211 () Unit!161051)

(declare-fun lemmaZipperMatchesExistsMatchingContext!167 (List!67141 List!67140) Unit!161051)

(assert (=> b!6986094 (= lt!2484211 (lemmaZipperMatchesExistsMatchingContext!167 lt!2484216 s!7408))))

(declare-fun toList!10558 ((Set Context!12388)) List!67141)

(assert (=> b!6986094 (= lt!2484216 (toList!10558 lt!2484229))))

(declare-fun b!6986095 () Bool)

(declare-fun e!4198885 () Bool)

(assert (=> b!6986095 (= e!4198881 e!4198885)))

(declare-fun res!2848809 () Bool)

(assert (=> b!6986095 (=> res!2848809 e!4198885)))

(assert (=> b!6986095 (= res!2848809 (not (matchZipper!2738 lt!2484225 (t!380887 s!7408))))))

(declare-fun lt!2484227 () Unit!161051)

(assert (=> b!6986095 (= lt!2484227 (lemmaConcatPreservesForall!534 lt!2484226 (exprs!6694 ct2!306) lambda!400375))))

(declare-fun setElem!47694 () Context!12388)

(declare-fun setNonEmpty!47694 () Bool)

(declare-fun tp!1929133 () Bool)

(assert (=> setNonEmpty!47694 (= setRes!47694 (and tp!1929133 (inv!85855 setElem!47694) e!4198875))))

(declare-fun setRest!47694 () (Set Context!12388))

(assert (=> setNonEmpty!47694 (= z1!570 (set.union (set.insert setElem!47694 (as set.empty (Set Context!12388))) setRest!47694))))

(declare-fun b!6986096 () Bool)

(declare-fun res!2848799 () Bool)

(assert (=> b!6986096 (=> res!2848799 e!4198884)))

(assert (=> b!6986096 (= res!2848799 (not (set.member lt!2484213 lt!2484229)))))

(declare-fun b!6986097 () Bool)

(declare-fun res!2848798 () Bool)

(assert (=> b!6986097 (=> res!2848798 e!4198882)))

(declare-fun isEmpty!39118 (List!67139) Bool)

(assert (=> b!6986097 (= res!2848798 (isEmpty!39118 (exprs!6694 lt!2484205)))))

(declare-fun b!6986098 () Bool)

(assert (=> b!6986098 (= e!4198885 e!4198883)))

(declare-fun res!2848803 () Bool)

(assert (=> b!6986098 (=> res!2848803 e!4198883)))

(assert (=> b!6986098 (= res!2848803 (not (forall!16104 lt!2484226 lambda!400375)))))

(assert (=> b!6986099 (= e!4198884 e!4198876)))

(declare-fun res!2848797 () Bool)

(assert (=> b!6986099 (=> res!2848797 e!4198876)))

(assert (=> b!6986099 (= res!2848797 (or (not (= lt!2484212 lt!2484213)) (not (set.member lt!2484205 z1!570))))))

(assert (=> b!6986099 (= lt!2484212 (Context!12389 (++!15143 (exprs!6694 lt!2484205) (exprs!6694 ct2!306))))))

(declare-fun lt!2484214 () Unit!161051)

(assert (=> b!6986099 (= lt!2484214 (lemmaConcatPreservesForall!534 (exprs!6694 lt!2484205) (exprs!6694 ct2!306) lambda!400375))))

(declare-fun lambda!400374 () Int)

(declare-fun mapPost2!53 ((Set Context!12388) Int Context!12388) Context!12388)

(assert (=> b!6986099 (= lt!2484205 (mapPost2!53 z1!570 lambda!400374 lt!2484213))))

(declare-fun setIsEmpty!47694 () Bool)

(assert (=> setIsEmpty!47694 setRes!47694))

(declare-fun b!6986100 () Bool)

(assert (=> b!6986100 (= e!4198873 (matchZipper!2738 lt!2484225 (t!380887 s!7408)))))

(assert (= (and start!670980 res!2848802) b!6986090))

(assert (= (and b!6986090 res!2848796) b!6986094))

(assert (= (and b!6986094 (not res!2848804)) b!6986096))

(assert (= (and b!6986096 (not res!2848799)) b!6986099))

(assert (= (and b!6986099 (not res!2848797)) b!6986092))

(assert (= (and b!6986092 (not res!2848807)) b!6986087))

(assert (= (and b!6986087 (not res!2848801)) b!6986088))

(assert (= (and b!6986088 (not res!2848805)) b!6986097))

(assert (= (and b!6986097 (not res!2848798)) b!6986081))

(assert (= (and b!6986081 (not res!2848795)) b!6986084))

(assert (= (and b!6986084 (not res!2848794)) b!6986082))

(assert (= (and b!6986082 (not res!2848806)) b!6986100))

(assert (= (and b!6986082 res!2848800) b!6986089))

(assert (= (and b!6986082 (not res!2848810)) b!6986086))

(assert (= (and b!6986086 (not res!2848808)) b!6986095))

(assert (= (and b!6986095 (not res!2848809)) b!6986098))

(assert (= (and b!6986098 (not res!2848803)) b!6986091))

(assert (= (and start!670980 condSetEmpty!47694) setIsEmpty!47694))

(assert (= (and start!670980 (not condSetEmpty!47694)) setNonEmpty!47694))

(assert (= setNonEmpty!47694 b!6986085))

(assert (= start!670980 b!6986083))

(assert (= (and start!670980 (is-Cons!67016 s!7408)) b!6986093))

(declare-fun m!7673722 () Bool)

(assert (=> b!6986084 m!7673722))

(declare-fun m!7673724 () Bool)

(assert (=> b!6986084 m!7673724))

(declare-fun m!7673726 () Bool)

(assert (=> b!6986084 m!7673726))

(assert (=> b!6986084 m!7673722))

(declare-fun m!7673728 () Bool)

(assert (=> b!6986084 m!7673728))

(declare-fun m!7673730 () Bool)

(assert (=> b!6986089 m!7673730))

(assert (=> b!6986089 m!7673722))

(declare-fun m!7673732 () Bool)

(assert (=> start!670980 m!7673732))

(declare-fun m!7673734 () Bool)

(assert (=> start!670980 m!7673734))

(declare-fun m!7673736 () Bool)

(assert (=> start!670980 m!7673736))

(declare-fun m!7673738 () Bool)

(assert (=> b!6986096 m!7673738))

(declare-fun m!7673740 () Bool)

(assert (=> b!6986098 m!7673740))

(declare-fun m!7673742 () Bool)

(assert (=> b!6986094 m!7673742))

(declare-fun m!7673744 () Bool)

(assert (=> b!6986094 m!7673744))

(declare-fun m!7673746 () Bool)

(assert (=> b!6986094 m!7673746))

(declare-fun m!7673748 () Bool)

(assert (=> b!6986094 m!7673748))

(declare-fun m!7673750 () Bool)

(assert (=> b!6986094 m!7673750))

(declare-fun m!7673752 () Bool)

(assert (=> b!6986094 m!7673752))

(declare-fun m!7673754 () Bool)

(assert (=> setNonEmpty!47694 m!7673754))

(declare-fun m!7673756 () Bool)

(assert (=> b!6986097 m!7673756))

(declare-fun m!7673758 () Bool)

(assert (=> b!6986087 m!7673758))

(declare-fun m!7673760 () Bool)

(assert (=> b!6986087 m!7673760))

(declare-fun m!7673762 () Bool)

(assert (=> b!6986087 m!7673762))

(declare-fun m!7673764 () Bool)

(assert (=> b!6986087 m!7673764))

(declare-fun m!7673766 () Bool)

(assert (=> b!6986087 m!7673766))

(declare-fun m!7673768 () Bool)

(assert (=> b!6986092 m!7673768))

(assert (=> b!6986092 m!7673766))

(assert (=> b!6986100 m!7673730))

(declare-fun m!7673770 () Bool)

(assert (=> b!6986091 m!7673770))

(assert (=> b!6986082 m!7673722))

(declare-fun m!7673772 () Bool)

(assert (=> b!6986082 m!7673772))

(assert (=> b!6986082 m!7673722))

(declare-fun m!7673774 () Bool)

(assert (=> b!6986082 m!7673774))

(assert (=> b!6986082 m!7673722))

(declare-fun m!7673776 () Bool)

(assert (=> b!6986082 m!7673776))

(declare-fun m!7673778 () Bool)

(assert (=> b!6986082 m!7673778))

(declare-fun m!7673780 () Bool)

(assert (=> b!6986099 m!7673780))

(declare-fun m!7673782 () Bool)

(assert (=> b!6986099 m!7673782))

(assert (=> b!6986099 m!7673766))

(declare-fun m!7673784 () Bool)

(assert (=> b!6986099 m!7673784))

(assert (=> b!6986095 m!7673730))

(assert (=> b!6986095 m!7673722))

(declare-fun m!7673786 () Bool)

(assert (=> b!6986081 m!7673786))

(declare-fun m!7673788 () Bool)

(assert (=> b!6986081 m!7673788))

(push 1)

(assert (not b!6986089))

(assert (not setNonEmpty!47694))

(assert (not b!6986091))

(assert (not b!6986098))

(assert (not b!6986099))

(assert (not start!670980))

(assert (not b!6986083))

(assert (not b!6986087))

(assert (not b!6986084))

(assert (not b!6986095))

(assert tp_is_empty!43621)

(assert (not b!6986100))

(assert (not b!6986093))

(assert (not b!6986085))

(assert (not b!6986097))

(assert (not b!6986081))

(assert (not b!6986082))

(assert (not b!6986094))

(assert (not b!6986092))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2176023 () Bool)

(declare-fun c!1295491 () Bool)

(declare-fun isEmpty!39120 (List!67140) Bool)

(assert (=> d!2176023 (= c!1295491 (isEmpty!39120 s!7408))))

(declare-fun e!4198933 () Bool)

(assert (=> d!2176023 (= (matchZipper!2738 lt!2484207 s!7408) e!4198933)))

(declare-fun b!6986177 () Bool)

(declare-fun nullableZipper!2423 ((Set Context!12388)) Bool)

(assert (=> b!6986177 (= e!4198933 (nullableZipper!2423 lt!2484207))))

(declare-fun b!6986178 () Bool)

(declare-fun head!14098 (List!67140) C!34666)

(declare-fun tail!13196 (List!67140) List!67140)

(assert (=> b!6986178 (= e!4198933 (matchZipper!2738 (derivationStepZipper!2678 lt!2484207 (head!14098 s!7408)) (tail!13196 s!7408)))))

(assert (= (and d!2176023 c!1295491) b!6986177))

(assert (= (and d!2176023 (not c!1295491)) b!6986178))

(declare-fun m!7673858 () Bool)

(assert (=> d!2176023 m!7673858))

(declare-fun m!7673860 () Bool)

(assert (=> b!6986177 m!7673860))

(declare-fun m!7673862 () Bool)

(assert (=> b!6986178 m!7673862))

(assert (=> b!6986178 m!7673862))

(declare-fun m!7673864 () Bool)

(assert (=> b!6986178 m!7673864))

(declare-fun m!7673866 () Bool)

(assert (=> b!6986178 m!7673866))

(assert (=> b!6986178 m!7673864))

(assert (=> b!6986178 m!7673866))

(declare-fun m!7673868 () Bool)

(assert (=> b!6986178 m!7673868))

(assert (=> b!6986094 d!2176023))

(declare-fun bs!1861707 () Bool)

(declare-fun d!2176025 () Bool)

(assert (= bs!1861707 (and d!2176025 b!6986094)))

(declare-fun lambda!400415 () Int)

(assert (=> bs!1861707 (not (= lambda!400415 lambda!400373))))

(assert (=> d!2176025 true))

(declare-fun order!27889 () Int)

(declare-fun dynLambda!26841 (Int Int) Int)

(assert (=> d!2176025 (< (dynLambda!26841 order!27889 lambda!400373) (dynLambda!26841 order!27889 lambda!400415))))

(declare-fun forall!16106 (List!67141 Int) Bool)

(assert (=> d!2176025 (= (exists!2974 lt!2484216 lambda!400373) (not (forall!16106 lt!2484216 lambda!400415)))))

(declare-fun bs!1861708 () Bool)

(assert (= bs!1861708 d!2176025))

(declare-fun m!7673870 () Bool)

(assert (=> bs!1861708 m!7673870))

(assert (=> b!6986094 d!2176025))

(declare-fun d!2176027 () Bool)

(declare-fun e!4198936 () Bool)

(assert (=> d!2176027 e!4198936))

(declare-fun res!2848865 () Bool)

(assert (=> d!2176027 (=> (not res!2848865) (not e!4198936))))

(declare-fun lt!2484320 () List!67141)

(declare-fun noDuplicate!2511 (List!67141) Bool)

(assert (=> d!2176027 (= res!2848865 (noDuplicate!2511 lt!2484320))))

(declare-fun choose!52169 ((Set Context!12388)) List!67141)

(assert (=> d!2176027 (= lt!2484320 (choose!52169 lt!2484229))))

(assert (=> d!2176027 (= (toList!10558 lt!2484229) lt!2484320)))

(declare-fun b!6986183 () Bool)

(declare-fun content!13236 (List!67141) (Set Context!12388))

(assert (=> b!6986183 (= e!4198936 (= (content!13236 lt!2484320) lt!2484229))))

(assert (= (and d!2176027 res!2848865) b!6986183))

(declare-fun m!7673872 () Bool)

(assert (=> d!2176027 m!7673872))

(declare-fun m!7673874 () Bool)

(assert (=> d!2176027 m!7673874))

(declare-fun m!7673876 () Bool)

(assert (=> b!6986183 m!7673876))

(assert (=> b!6986094 d!2176027))

(declare-fun d!2176029 () Bool)

(declare-fun e!4198939 () Bool)

(assert (=> d!2176029 e!4198939))

(declare-fun res!2848868 () Bool)

(assert (=> d!2176029 (=> (not res!2848868) (not e!4198939))))

(declare-fun lt!2484323 () Context!12388)

(declare-fun dynLambda!26842 (Int Context!12388) Bool)

(assert (=> d!2176029 (= res!2848868 (dynLambda!26842 lambda!400373 lt!2484323))))

(declare-fun getWitness!1087 (List!67141 Int) Context!12388)

(assert (=> d!2176029 (= lt!2484323 (getWitness!1087 (toList!10558 lt!2484229) lambda!400373))))

(declare-fun exists!2976 ((Set Context!12388) Int) Bool)

(assert (=> d!2176029 (exists!2976 lt!2484229 lambda!400373)))

(assert (=> d!2176029 (= (getWitness!1085 lt!2484229 lambda!400373) lt!2484323)))

(declare-fun b!6986186 () Bool)

(assert (=> b!6986186 (= e!4198939 (set.member lt!2484323 lt!2484229))))

(assert (= (and d!2176029 res!2848868) b!6986186))

(declare-fun b_lambda!262219 () Bool)

(assert (=> (not b_lambda!262219) (not d!2176029)))

(declare-fun m!7673878 () Bool)

(assert (=> d!2176029 m!7673878))

(assert (=> d!2176029 m!7673752))

(assert (=> d!2176029 m!7673752))

(declare-fun m!7673880 () Bool)

(assert (=> d!2176029 m!7673880))

(declare-fun m!7673882 () Bool)

(assert (=> d!2176029 m!7673882))

(declare-fun m!7673884 () Bool)

(assert (=> b!6986186 m!7673884))

(assert (=> b!6986094 d!2176029))

(declare-fun bs!1861709 () Bool)

(declare-fun d!2176031 () Bool)

(assert (= bs!1861709 (and d!2176031 b!6986094)))

(declare-fun lambda!400418 () Int)

(assert (=> bs!1861709 (= lambda!400418 lambda!400373)))

(declare-fun bs!1861710 () Bool)

(assert (= bs!1861710 (and d!2176031 d!2176025)))

(assert (=> bs!1861710 (not (= lambda!400418 lambda!400415))))

(assert (=> d!2176031 true))

(assert (=> d!2176031 (exists!2974 lt!2484216 lambda!400418)))

(declare-fun lt!2484326 () Unit!161051)

(declare-fun choose!52170 (List!67141 List!67140) Unit!161051)

(assert (=> d!2176031 (= lt!2484326 (choose!52170 lt!2484216 s!7408))))

(assert (=> d!2176031 (matchZipper!2738 (content!13236 lt!2484216) s!7408)))

(assert (=> d!2176031 (= (lemmaZipperMatchesExistsMatchingContext!167 lt!2484216 s!7408) lt!2484326)))

(declare-fun bs!1861711 () Bool)

(assert (= bs!1861711 d!2176031))

(declare-fun m!7673886 () Bool)

(assert (=> bs!1861711 m!7673886))

(declare-fun m!7673888 () Bool)

(assert (=> bs!1861711 m!7673888))

(declare-fun m!7673890 () Bool)

(assert (=> bs!1861711 m!7673890))

(assert (=> bs!1861711 m!7673890))

(declare-fun m!7673892 () Bool)

(assert (=> bs!1861711 m!7673892))

(assert (=> b!6986094 d!2176031))

(declare-fun d!2176033 () Bool)

(declare-fun c!1295494 () Bool)

(assert (=> d!2176033 (= c!1295494 (isEmpty!39120 (t!380887 s!7408)))))

(declare-fun e!4198940 () Bool)

(assert (=> d!2176033 (= (matchZipper!2738 lt!2484225 (t!380887 s!7408)) e!4198940)))

(declare-fun b!6986187 () Bool)

(assert (=> b!6986187 (= e!4198940 (nullableZipper!2423 lt!2484225))))

(declare-fun b!6986188 () Bool)

(assert (=> b!6986188 (= e!4198940 (matchZipper!2738 (derivationStepZipper!2678 lt!2484225 (head!14098 (t!380887 s!7408))) (tail!13196 (t!380887 s!7408))))))

(assert (= (and d!2176033 c!1295494) b!6986187))

(assert (= (and d!2176033 (not c!1295494)) b!6986188))

(declare-fun m!7673894 () Bool)

(assert (=> d!2176033 m!7673894))

(declare-fun m!7673896 () Bool)

(assert (=> b!6986187 m!7673896))

(declare-fun m!7673898 () Bool)

(assert (=> b!6986188 m!7673898))

(assert (=> b!6986188 m!7673898))

(declare-fun m!7673900 () Bool)

(assert (=> b!6986188 m!7673900))

(declare-fun m!7673902 () Bool)

(assert (=> b!6986188 m!7673902))

(assert (=> b!6986188 m!7673900))

(assert (=> b!6986188 m!7673902))

(declare-fun m!7673904 () Bool)

(assert (=> b!6986188 m!7673904))

(assert (=> b!6986095 d!2176033))

(declare-fun d!2176035 () Bool)

(assert (=> d!2176035 (forall!16104 (++!15143 lt!2484226 (exprs!6694 ct2!306)) lambda!400375)))

(declare-fun lt!2484329 () Unit!161051)

(declare-fun choose!52171 (List!67139 List!67139 Int) Unit!161051)

(assert (=> d!2176035 (= lt!2484329 (choose!52171 lt!2484226 (exprs!6694 ct2!306) lambda!400375))))

(assert (=> d!2176035 (forall!16104 lt!2484226 lambda!400375)))

(assert (=> d!2176035 (= (lemmaConcatPreservesForall!534 lt!2484226 (exprs!6694 ct2!306) lambda!400375) lt!2484329)))

(declare-fun bs!1861712 () Bool)

(assert (= bs!1861712 d!2176035))

(assert (=> bs!1861712 m!7673726))

(assert (=> bs!1861712 m!7673726))

(declare-fun m!7673906 () Bool)

(assert (=> bs!1861712 m!7673906))

(declare-fun m!7673908 () Bool)

(assert (=> bs!1861712 m!7673908))

(assert (=> bs!1861712 m!7673740))

(assert (=> b!6986095 d!2176035))

(declare-fun d!2176037 () Bool)

(declare-fun e!4198946 () Bool)

(assert (=> d!2176037 e!4198946))

(declare-fun res!2848874 () Bool)

(assert (=> d!2176037 (=> (not res!2848874) (not e!4198946))))

(declare-fun lt!2484332 () List!67139)

(declare-fun content!13237 (List!67139) (Set Regex!17198))

(assert (=> d!2176037 (= res!2848874 (= (content!13237 lt!2484332) (set.union (content!13237 lt!2484226) (content!13237 (exprs!6694 ct2!306)))))))

(declare-fun e!4198945 () List!67139)

(assert (=> d!2176037 (= lt!2484332 e!4198945)))

(declare-fun c!1295497 () Bool)

(assert (=> d!2176037 (= c!1295497 (is-Nil!67015 lt!2484226))))

(assert (=> d!2176037 (= (++!15143 lt!2484226 (exprs!6694 ct2!306)) lt!2484332)))

(declare-fun b!6986198 () Bool)

(assert (=> b!6986198 (= e!4198945 (Cons!67015 (h!73463 lt!2484226) (++!15143 (t!380886 lt!2484226) (exprs!6694 ct2!306))))))

(declare-fun b!6986197 () Bool)

(assert (=> b!6986197 (= e!4198945 (exprs!6694 ct2!306))))

(declare-fun b!6986199 () Bool)

(declare-fun res!2848875 () Bool)

(assert (=> b!6986199 (=> (not res!2848875) (not e!4198946))))

(declare-fun size!40894 (List!67139) Int)

(assert (=> b!6986199 (= res!2848875 (= (size!40894 lt!2484332) (+ (size!40894 lt!2484226) (size!40894 (exprs!6694 ct2!306)))))))

(declare-fun b!6986200 () Bool)

(assert (=> b!6986200 (= e!4198946 (or (not (= (exprs!6694 ct2!306) Nil!67015)) (= lt!2484332 lt!2484226)))))

(assert (= (and d!2176037 c!1295497) b!6986197))

(assert (= (and d!2176037 (not c!1295497)) b!6986198))

(assert (= (and d!2176037 res!2848874) b!6986199))

(assert (= (and b!6986199 res!2848875) b!6986200))

(declare-fun m!7673910 () Bool)

(assert (=> d!2176037 m!7673910))

(declare-fun m!7673912 () Bool)

(assert (=> d!2176037 m!7673912))

(declare-fun m!7673914 () Bool)

(assert (=> d!2176037 m!7673914))

(declare-fun m!7673916 () Bool)

(assert (=> b!6986198 m!7673916))

(declare-fun m!7673918 () Bool)

(assert (=> b!6986199 m!7673918))

(declare-fun m!7673920 () Bool)

(assert (=> b!6986199 m!7673920))

(declare-fun m!7673922 () Bool)

(assert (=> b!6986199 m!7673922))

(assert (=> b!6986084 d!2176037))

(assert (=> b!6986084 d!2176035))

(declare-fun b!6986211 () Bool)

(declare-fun e!4198954 () (Set Context!12388))

(declare-fun call!634161 () (Set Context!12388))

(assert (=> b!6986211 (= e!4198954 call!634161)))

(declare-fun b!6986212 () Bool)

(declare-fun e!4198955 () Bool)

(assert (=> b!6986212 (= e!4198955 (nullable!6958 (h!73463 (exprs!6694 lt!2484209))))))

(declare-fun d!2176039 () Bool)

(declare-fun c!1295502 () Bool)

(assert (=> d!2176039 (= c!1295502 e!4198955)))

(declare-fun res!2848878 () Bool)

(assert (=> d!2176039 (=> (not res!2848878) (not e!4198955))))

(assert (=> d!2176039 (= res!2848878 (is-Cons!67015 (exprs!6694 lt!2484209)))))

(declare-fun e!4198953 () (Set Context!12388))

(assert (=> d!2176039 (= (derivationStepZipperUp!1848 lt!2484209 (h!73464 s!7408)) e!4198953)))

(declare-fun b!6986213 () Bool)

(assert (=> b!6986213 (= e!4198954 (as set.empty (Set Context!12388)))))

(declare-fun bm!634156 () Bool)

(assert (=> bm!634156 (= call!634161 (derivationStepZipperDown!1916 (h!73463 (exprs!6694 lt!2484209)) (Context!12389 (t!380886 (exprs!6694 lt!2484209))) (h!73464 s!7408)))))

(declare-fun b!6986214 () Bool)

(assert (=> b!6986214 (= e!4198953 (set.union call!634161 (derivationStepZipperUp!1848 (Context!12389 (t!380886 (exprs!6694 lt!2484209))) (h!73464 s!7408))))))

(declare-fun b!6986215 () Bool)

(assert (=> b!6986215 (= e!4198953 e!4198954)))

(declare-fun c!1295503 () Bool)

(assert (=> b!6986215 (= c!1295503 (is-Cons!67015 (exprs!6694 lt!2484209)))))

(assert (= (and d!2176039 res!2848878) b!6986212))

(assert (= (and d!2176039 c!1295502) b!6986214))

(assert (= (and d!2176039 (not c!1295502)) b!6986215))

(assert (= (and b!6986215 c!1295503) b!6986211))

(assert (= (and b!6986215 (not c!1295503)) b!6986213))

(assert (= (or b!6986214 b!6986211) bm!634156))

(declare-fun m!7673924 () Bool)

(assert (=> b!6986212 m!7673924))

(declare-fun m!7673926 () Bool)

(assert (=> bm!634156 m!7673926))

(declare-fun m!7673928 () Bool)

(assert (=> b!6986214 m!7673928))

(assert (=> b!6986084 d!2176039))

(declare-fun bm!634169 () Bool)

(declare-fun call!634178 () List!67139)

(declare-fun call!634174 () List!67139)

(assert (=> bm!634169 (= call!634178 call!634174)))

(declare-fun c!1295518 () Bool)

(declare-fun call!634176 () (Set Context!12388))

(declare-fun bm!634170 () Bool)

(declare-fun c!1295516 () Bool)

(declare-fun c!1295514 () Bool)

(assert (=> bm!634170 (= call!634176 (derivationStepZipperDown!1916 (ite c!1295516 (regTwo!34909 (h!73463 (exprs!6694 lt!2484205))) (ite c!1295514 (regTwo!34908 (h!73463 (exprs!6694 lt!2484205))) (ite c!1295518 (regOne!34908 (h!73463 (exprs!6694 lt!2484205))) (reg!17527 (h!73463 (exprs!6694 lt!2484205)))))) (ite (or c!1295516 c!1295514) lt!2484209 (Context!12389 call!634178)) (h!73464 s!7408)))))

(declare-fun bm!634171 () Bool)

(declare-fun $colon$colon!2473 (List!67139 Regex!17198) List!67139)

(assert (=> bm!634171 (= call!634174 ($colon$colon!2473 (exprs!6694 lt!2484209) (ite (or c!1295514 c!1295518) (regTwo!34908 (h!73463 (exprs!6694 lt!2484205))) (h!73463 (exprs!6694 lt!2484205)))))))

(declare-fun b!6986238 () Bool)

(declare-fun e!4198973 () (Set Context!12388))

(declare-fun call!634175 () (Set Context!12388))

(assert (=> b!6986238 (= e!4198973 call!634175)))

(declare-fun b!6986239 () Bool)

(declare-fun e!4198968 () (Set Context!12388))

(assert (=> b!6986239 (= e!4198968 call!634175)))

(declare-fun bm!634172 () Bool)

(declare-fun call!634179 () (Set Context!12388))

(assert (=> bm!634172 (= call!634179 (derivationStepZipperDown!1916 (ite c!1295516 (regOne!34909 (h!73463 (exprs!6694 lt!2484205))) (regOne!34908 (h!73463 (exprs!6694 lt!2484205)))) (ite c!1295516 lt!2484209 (Context!12389 call!634174)) (h!73464 s!7408)))))

(declare-fun b!6986240 () Bool)

(declare-fun e!4198969 () (Set Context!12388))

(assert (=> b!6986240 (= e!4198969 (set.insert lt!2484209 (as set.empty (Set Context!12388))))))

(declare-fun b!6986241 () Bool)

(declare-fun e!4198971 () (Set Context!12388))

(assert (=> b!6986241 (= e!4198969 e!4198971)))

(assert (=> b!6986241 (= c!1295516 (is-Union!17198 (h!73463 (exprs!6694 lt!2484205))))))

(declare-fun b!6986242 () Bool)

(declare-fun e!4198972 () Bool)

(assert (=> b!6986242 (= e!4198972 (nullable!6958 (regOne!34908 (h!73463 (exprs!6694 lt!2484205)))))))

(declare-fun d!2176041 () Bool)

(declare-fun c!1295515 () Bool)

(assert (=> d!2176041 (= c!1295515 (and (is-ElementMatch!17198 (h!73463 (exprs!6694 lt!2484205))) (= (c!1295479 (h!73463 (exprs!6694 lt!2484205))) (h!73464 s!7408))))))

(assert (=> d!2176041 (= (derivationStepZipperDown!1916 (h!73463 (exprs!6694 lt!2484205)) lt!2484209 (h!73464 s!7408)) e!4198969)))

(declare-fun b!6986243 () Bool)

(assert (=> b!6986243 (= c!1295514 e!4198972)))

(declare-fun res!2848881 () Bool)

(assert (=> b!6986243 (=> (not res!2848881) (not e!4198972))))

(assert (=> b!6986243 (= res!2848881 (is-Concat!26043 (h!73463 (exprs!6694 lt!2484205))))))

(declare-fun e!4198970 () (Set Context!12388))

(assert (=> b!6986243 (= e!4198971 e!4198970)))

(declare-fun b!6986244 () Bool)

(assert (=> b!6986244 (= e!4198970 e!4198973)))

(assert (=> b!6986244 (= c!1295518 (is-Concat!26043 (h!73463 (exprs!6694 lt!2484205))))))

(declare-fun bm!634173 () Bool)

(declare-fun call!634177 () (Set Context!12388))

(assert (=> bm!634173 (= call!634177 call!634176)))

(declare-fun bm!634174 () Bool)

(assert (=> bm!634174 (= call!634175 call!634177)))

(declare-fun b!6986245 () Bool)

(declare-fun c!1295517 () Bool)

(assert (=> b!6986245 (= c!1295517 (is-Star!17198 (h!73463 (exprs!6694 lt!2484205))))))

(assert (=> b!6986245 (= e!4198973 e!4198968)))

(declare-fun b!6986246 () Bool)

(assert (=> b!6986246 (= e!4198970 (set.union call!634179 call!634177))))

(declare-fun b!6986247 () Bool)

(assert (=> b!6986247 (= e!4198971 (set.union call!634179 call!634176))))

(declare-fun b!6986248 () Bool)

(assert (=> b!6986248 (= e!4198968 (as set.empty (Set Context!12388)))))

(assert (= (and d!2176041 c!1295515) b!6986240))

(assert (= (and d!2176041 (not c!1295515)) b!6986241))

(assert (= (and b!6986241 c!1295516) b!6986247))

(assert (= (and b!6986241 (not c!1295516)) b!6986243))

(assert (= (and b!6986243 res!2848881) b!6986242))

(assert (= (and b!6986243 c!1295514) b!6986246))

(assert (= (and b!6986243 (not c!1295514)) b!6986244))

(assert (= (and b!6986244 c!1295518) b!6986238))

(assert (= (and b!6986244 (not c!1295518)) b!6986245))

(assert (= (and b!6986245 c!1295517) b!6986239))

(assert (= (and b!6986245 (not c!1295517)) b!6986248))

(assert (= (or b!6986238 b!6986239) bm!634169))

(assert (= (or b!6986238 b!6986239) bm!634174))

(assert (= (or b!6986246 bm!634174) bm!634173))

(assert (= (or b!6986246 bm!634169) bm!634171))

(assert (= (or b!6986247 b!6986246) bm!634172))

(assert (= (or b!6986247 bm!634173) bm!634170))

(declare-fun m!7673930 () Bool)

(assert (=> b!6986240 m!7673930))

(declare-fun m!7673932 () Bool)

(assert (=> bm!634170 m!7673932))

(declare-fun m!7673934 () Bool)

(assert (=> bm!634171 m!7673934))

(declare-fun m!7673936 () Bool)

(assert (=> bm!634172 m!7673936))

(declare-fun m!7673938 () Bool)

(assert (=> b!6986242 m!7673938))

(assert (=> b!6986084 d!2176041))

(declare-fun d!2176045 () Bool)

(declare-fun c!1295519 () Bool)

(assert (=> d!2176045 (= c!1295519 (isEmpty!39120 (t!380887 s!7408)))))

(declare-fun e!4198974 () Bool)

(assert (=> d!2176045 (= (matchZipper!2738 lt!2484215 (t!380887 s!7408)) e!4198974)))

(declare-fun b!6986249 () Bool)

(assert (=> b!6986249 (= e!4198974 (nullableZipper!2423 lt!2484215))))

(declare-fun b!6986250 () Bool)

(assert (=> b!6986250 (= e!4198974 (matchZipper!2738 (derivationStepZipper!2678 lt!2484215 (head!14098 (t!380887 s!7408))) (tail!13196 (t!380887 s!7408))))))

(assert (= (and d!2176045 c!1295519) b!6986249))

(assert (= (and d!2176045 (not c!1295519)) b!6986250))

(assert (=> d!2176045 m!7673894))

(declare-fun m!7673940 () Bool)

(assert (=> b!6986249 m!7673940))

(assert (=> b!6986250 m!7673898))

(assert (=> b!6986250 m!7673898))

(declare-fun m!7673942 () Bool)

(assert (=> b!6986250 m!7673942))

(assert (=> b!6986250 m!7673902))

(assert (=> b!6986250 m!7673942))

(assert (=> b!6986250 m!7673902))

(declare-fun m!7673944 () Bool)

(assert (=> b!6986250 m!7673944))

(assert (=> b!6986082 d!2176045))

(declare-fun e!4198980 () Bool)

(declare-fun d!2176047 () Bool)

(assert (=> d!2176047 (= (matchZipper!2738 (set.union lt!2484210 lt!2484225) (t!380887 s!7408)) e!4198980)))

(declare-fun res!2848884 () Bool)

(assert (=> d!2176047 (=> res!2848884 e!4198980)))

(assert (=> d!2176047 (= res!2848884 (matchZipper!2738 lt!2484210 (t!380887 s!7408)))))

(declare-fun lt!2484335 () Unit!161051)

(declare-fun choose!52172 ((Set Context!12388) (Set Context!12388) List!67140) Unit!161051)

(assert (=> d!2176047 (= lt!2484335 (choose!52172 lt!2484210 lt!2484225 (t!380887 s!7408)))))

(assert (=> d!2176047 (= (lemmaZipperConcatMatchesSameAsBothZippers!1371 lt!2484210 lt!2484225 (t!380887 s!7408)) lt!2484335)))

(declare-fun b!6986259 () Bool)

(assert (=> b!6986259 (= e!4198980 (matchZipper!2738 lt!2484225 (t!380887 s!7408)))))

(assert (= (and d!2176047 (not res!2848884)) b!6986259))

(declare-fun m!7673958 () Bool)

(assert (=> d!2176047 m!7673958))

(assert (=> d!2176047 m!7673778))

(declare-fun m!7673960 () Bool)

(assert (=> d!2176047 m!7673960))

(assert (=> b!6986259 m!7673730))

(assert (=> b!6986082 d!2176047))

(declare-fun d!2176051 () Bool)

(declare-fun c!1295523 () Bool)

(assert (=> d!2176051 (= c!1295523 (isEmpty!39120 (t!380887 s!7408)))))

(declare-fun e!4198981 () Bool)

(assert (=> d!2176051 (= (matchZipper!2738 lt!2484223 (t!380887 s!7408)) e!4198981)))

(declare-fun b!6986260 () Bool)

(assert (=> b!6986260 (= e!4198981 (nullableZipper!2423 lt!2484223))))

(declare-fun b!6986261 () Bool)

(assert (=> b!6986261 (= e!4198981 (matchZipper!2738 (derivationStepZipper!2678 lt!2484223 (head!14098 (t!380887 s!7408))) (tail!13196 (t!380887 s!7408))))))

(assert (= (and d!2176051 c!1295523) b!6986260))

(assert (= (and d!2176051 (not c!1295523)) b!6986261))

(assert (=> d!2176051 m!7673894))

(declare-fun m!7673962 () Bool)

(assert (=> b!6986260 m!7673962))

(assert (=> b!6986261 m!7673898))

(assert (=> b!6986261 m!7673898))

(declare-fun m!7673964 () Bool)

(assert (=> b!6986261 m!7673964))

(assert (=> b!6986261 m!7673902))

(assert (=> b!6986261 m!7673964))

(assert (=> b!6986261 m!7673902))

(declare-fun m!7673966 () Bool)

(assert (=> b!6986261 m!7673966))

(assert (=> b!6986082 d!2176051))

(declare-fun d!2176053 () Bool)

(declare-fun c!1295524 () Bool)

(assert (=> d!2176053 (= c!1295524 (isEmpty!39120 (t!380887 s!7408)))))

(declare-fun e!4198982 () Bool)

(assert (=> d!2176053 (= (matchZipper!2738 lt!2484210 (t!380887 s!7408)) e!4198982)))

(declare-fun b!6986262 () Bool)

(assert (=> b!6986262 (= e!4198982 (nullableZipper!2423 lt!2484210))))

(declare-fun b!6986263 () Bool)

(assert (=> b!6986263 (= e!4198982 (matchZipper!2738 (derivationStepZipper!2678 lt!2484210 (head!14098 (t!380887 s!7408))) (tail!13196 (t!380887 s!7408))))))

(assert (= (and d!2176053 c!1295524) b!6986262))

(assert (= (and d!2176053 (not c!1295524)) b!6986263))

(assert (=> d!2176053 m!7673894))

(declare-fun m!7673968 () Bool)

(assert (=> b!6986262 m!7673968))

(assert (=> b!6986263 m!7673898))

(assert (=> b!6986263 m!7673898))

(declare-fun m!7673970 () Bool)

(assert (=> b!6986263 m!7673970))

(assert (=> b!6986263 m!7673902))

(assert (=> b!6986263 m!7673970))

(assert (=> b!6986263 m!7673902))

(declare-fun m!7673972 () Bool)

(assert (=> b!6986263 m!7673972))

(assert (=> b!6986082 d!2176053))

(assert (=> b!6986082 d!2176035))

(declare-fun d!2176055 () Bool)

(declare-fun nullableFct!2624 (Regex!17198) Bool)

(assert (=> d!2176055 (= (nullable!6958 (h!73463 (exprs!6694 lt!2484205))) (nullableFct!2624 (h!73463 (exprs!6694 lt!2484205))))))

(declare-fun bs!1861713 () Bool)

(assert (= bs!1861713 d!2176055))

(declare-fun m!7673974 () Bool)

(assert (=> bs!1861713 m!7673974))

(assert (=> b!6986081 d!2176055))

(declare-fun d!2176057 () Bool)

(assert (=> d!2176057 (= (tail!13194 (exprs!6694 lt!2484205)) (t!380886 (exprs!6694 lt!2484205)))))

(assert (=> b!6986081 d!2176057))

(assert (=> b!6986100 d!2176033))

(declare-fun d!2176059 () Bool)

(assert (=> d!2176059 (forall!16104 (++!15143 (exprs!6694 lt!2484205) (exprs!6694 ct2!306)) lambda!400375)))

(declare-fun lt!2484336 () Unit!161051)

(assert (=> d!2176059 (= lt!2484336 (choose!52171 (exprs!6694 lt!2484205) (exprs!6694 ct2!306) lambda!400375))))

(assert (=> d!2176059 (forall!16104 (exprs!6694 lt!2484205) lambda!400375)))

(assert (=> d!2176059 (= (lemmaConcatPreservesForall!534 (exprs!6694 lt!2484205) (exprs!6694 ct2!306) lambda!400375) lt!2484336)))

(declare-fun bs!1861714 () Bool)

(assert (= bs!1861714 d!2176059))

(assert (=> bs!1861714 m!7673782))

(assert (=> bs!1861714 m!7673782))

(declare-fun m!7673976 () Bool)

(assert (=> bs!1861714 m!7673976))

(declare-fun m!7673978 () Bool)

(assert (=> bs!1861714 m!7673978))

(declare-fun m!7673980 () Bool)

(assert (=> bs!1861714 m!7673980))

(assert (=> b!6986092 d!2176059))

(declare-fun d!2176061 () Bool)

(declare-fun c!1295525 () Bool)

(assert (=> d!2176061 (= c!1295525 (isEmpty!39120 s!7408))))

(declare-fun e!4198983 () Bool)

(assert (=> d!2176061 (= (matchZipper!2738 lt!2484229 s!7408) e!4198983)))

(declare-fun b!6986264 () Bool)

(assert (=> b!6986264 (= e!4198983 (nullableZipper!2423 lt!2484229))))

(declare-fun b!6986265 () Bool)

(assert (=> b!6986265 (= e!4198983 (matchZipper!2738 (derivationStepZipper!2678 lt!2484229 (head!14098 s!7408)) (tail!13196 s!7408)))))

(assert (= (and d!2176061 c!1295525) b!6986264))

(assert (= (and d!2176061 (not c!1295525)) b!6986265))

(assert (=> d!2176061 m!7673858))

(declare-fun m!7673982 () Bool)

(assert (=> b!6986264 m!7673982))

(assert (=> b!6986265 m!7673862))

(assert (=> b!6986265 m!7673862))

(declare-fun m!7673984 () Bool)

(assert (=> b!6986265 m!7673984))

(assert (=> b!6986265 m!7673866))

(assert (=> b!6986265 m!7673984))

(assert (=> b!6986265 m!7673866))

(declare-fun m!7673986 () Bool)

(assert (=> b!6986265 m!7673986))

(assert (=> start!670980 d!2176061))

(declare-fun bs!1861715 () Bool)

(declare-fun d!2176063 () Bool)

(assert (= bs!1861715 (and d!2176063 b!6986099)))

(declare-fun lambda!400426 () Int)

(assert (=> bs!1861715 (= lambda!400426 lambda!400374)))

(assert (=> d!2176063 true))

(declare-fun map!15456 ((Set Context!12388) Int) (Set Context!12388))

(assert (=> d!2176063 (= (appendTo!319 z1!570 ct2!306) (map!15456 z1!570 lambda!400426))))

(declare-fun bs!1861716 () Bool)

(assert (= bs!1861716 d!2176063))

(declare-fun m!7673988 () Bool)

(assert (=> bs!1861716 m!7673988))

(assert (=> start!670980 d!2176063))

(declare-fun bs!1861717 () Bool)

(declare-fun d!2176065 () Bool)

(assert (= bs!1861717 (and d!2176065 b!6986099)))

(declare-fun lambda!400430 () Int)

(assert (=> bs!1861717 (= lambda!400430 lambda!400375)))

(assert (=> d!2176065 (= (inv!85855 ct2!306) (forall!16104 (exprs!6694 ct2!306) lambda!400430))))

(declare-fun bs!1861718 () Bool)

(assert (= bs!1861718 d!2176065))

(declare-fun m!7673990 () Bool)

(assert (=> bs!1861718 m!7673990))

(assert (=> start!670980 d!2176065))

(declare-fun d!2176067 () Bool)

(declare-fun res!2848889 () Bool)

(declare-fun e!4198988 () Bool)

(assert (=> d!2176067 (=> res!2848889 e!4198988)))

(assert (=> d!2176067 (= res!2848889 (is-Nil!67015 (exprs!6694 ct2!306)))))

(assert (=> d!2176067 (= (forall!16104 (exprs!6694 ct2!306) lambda!400375) e!4198988)))

(declare-fun b!6986270 () Bool)

(declare-fun e!4198989 () Bool)

(assert (=> b!6986270 (= e!4198988 e!4198989)))

(declare-fun res!2848890 () Bool)

(assert (=> b!6986270 (=> (not res!2848890) (not e!4198989))))

(declare-fun dynLambda!26843 (Int Regex!17198) Bool)

(assert (=> b!6986270 (= res!2848890 (dynLambda!26843 lambda!400375 (h!73463 (exprs!6694 ct2!306))))))

(declare-fun b!6986271 () Bool)

(assert (=> b!6986271 (= e!4198989 (forall!16104 (t!380886 (exprs!6694 ct2!306)) lambda!400375))))

(assert (= (and d!2176067 (not res!2848889)) b!6986270))

(assert (= (and b!6986270 res!2848890) b!6986271))

(declare-fun b_lambda!262221 () Bool)

(assert (=> (not b_lambda!262221) (not b!6986270)))

(declare-fun m!7673994 () Bool)

(assert (=> b!6986270 m!7673994))

(declare-fun m!7673996 () Bool)

(assert (=> b!6986271 m!7673996))

(assert (=> b!6986091 d!2176067))

(assert (=> b!6986089 d!2176033))

(assert (=> b!6986089 d!2176035))

(declare-fun d!2176071 () Bool)

(declare-fun e!4198991 () Bool)

(assert (=> d!2176071 e!4198991))

(declare-fun res!2848891 () Bool)

(assert (=> d!2176071 (=> (not res!2848891) (not e!4198991))))

(declare-fun lt!2484341 () List!67139)

(assert (=> d!2176071 (= res!2848891 (= (content!13237 lt!2484341) (set.union (content!13237 (exprs!6694 lt!2484205)) (content!13237 (exprs!6694 ct2!306)))))))

(declare-fun e!4198990 () List!67139)

(assert (=> d!2176071 (= lt!2484341 e!4198990)))

(declare-fun c!1295528 () Bool)

(assert (=> d!2176071 (= c!1295528 (is-Nil!67015 (exprs!6694 lt!2484205)))))

(assert (=> d!2176071 (= (++!15143 (exprs!6694 lt!2484205) (exprs!6694 ct2!306)) lt!2484341)))

(declare-fun b!6986273 () Bool)

(assert (=> b!6986273 (= e!4198990 (Cons!67015 (h!73463 (exprs!6694 lt!2484205)) (++!15143 (t!380886 (exprs!6694 lt!2484205)) (exprs!6694 ct2!306))))))

(declare-fun b!6986272 () Bool)

(assert (=> b!6986272 (= e!4198990 (exprs!6694 ct2!306))))

(declare-fun b!6986274 () Bool)

(declare-fun res!2848892 () Bool)

(assert (=> b!6986274 (=> (not res!2848892) (not e!4198991))))

(assert (=> b!6986274 (= res!2848892 (= (size!40894 lt!2484341) (+ (size!40894 (exprs!6694 lt!2484205)) (size!40894 (exprs!6694 ct2!306)))))))

(declare-fun b!6986275 () Bool)

(assert (=> b!6986275 (= e!4198991 (or (not (= (exprs!6694 ct2!306) Nil!67015)) (= lt!2484341 (exprs!6694 lt!2484205))))))

(assert (= (and d!2176071 c!1295528) b!6986272))

(assert (= (and d!2176071 (not c!1295528)) b!6986273))

(assert (= (and d!2176071 res!2848891) b!6986274))

(assert (= (and b!6986274 res!2848892) b!6986275))

(declare-fun m!7673998 () Bool)

(assert (=> d!2176071 m!7673998))

(declare-fun m!7674000 () Bool)

(assert (=> d!2176071 m!7674000))

(assert (=> d!2176071 m!7673914))

(declare-fun m!7674002 () Bool)

(assert (=> b!6986273 m!7674002))

(declare-fun m!7674004 () Bool)

(assert (=> b!6986274 m!7674004))

(declare-fun m!7674006 () Bool)

(assert (=> b!6986274 m!7674006))

(assert (=> b!6986274 m!7673922))

(assert (=> b!6986099 d!2176071))

(assert (=> b!6986099 d!2176059))

(declare-fun d!2176073 () Bool)

(declare-fun e!4198994 () Bool)

(assert (=> d!2176073 e!4198994))

(declare-fun res!2848895 () Bool)

(assert (=> d!2176073 (=> (not res!2848895) (not e!4198994))))

(declare-fun lt!2484344 () Context!12388)

(declare-fun dynLambda!26844 (Int Context!12388) Context!12388)

(assert (=> d!2176073 (= res!2848895 (= lt!2484213 (dynLambda!26844 lambda!400374 lt!2484344)))))

(declare-fun choose!52173 ((Set Context!12388) Int Context!12388) Context!12388)

(assert (=> d!2176073 (= lt!2484344 (choose!52173 z1!570 lambda!400374 lt!2484213))))

(assert (=> d!2176073 (set.member lt!2484213 (map!15456 z1!570 lambda!400374))))

(assert (=> d!2176073 (= (mapPost2!53 z1!570 lambda!400374 lt!2484213) lt!2484344)))

(declare-fun b!6986279 () Bool)

(assert (=> b!6986279 (= e!4198994 (set.member lt!2484344 z1!570))))

(assert (= (and d!2176073 res!2848895) b!6986279))

(declare-fun b_lambda!262223 () Bool)

(assert (=> (not b_lambda!262223) (not d!2176073)))

(declare-fun m!7674010 () Bool)

(assert (=> d!2176073 m!7674010))

(declare-fun m!7674012 () Bool)

(assert (=> d!2176073 m!7674012))

(declare-fun m!7674014 () Bool)

(assert (=> d!2176073 m!7674014))

(declare-fun m!7674016 () Bool)

(assert (=> d!2176073 m!7674016))

(declare-fun m!7674018 () Bool)

(assert (=> b!6986279 m!7674018))

(assert (=> b!6986099 d!2176073))

(declare-fun d!2176077 () Bool)

(assert (=> d!2176077 (= (isEmpty!39118 (exprs!6694 lt!2484205)) (is-Nil!67015 (exprs!6694 lt!2484205)))))

(assert (=> b!6986097 d!2176077))

(declare-fun d!2176079 () Bool)

(declare-fun res!2848896 () Bool)

(declare-fun e!4198995 () Bool)

(assert (=> d!2176079 (=> res!2848896 e!4198995)))

(assert (=> d!2176079 (= res!2848896 (is-Nil!67015 lt!2484226))))

(assert (=> d!2176079 (= (forall!16104 lt!2484226 lambda!400375) e!4198995)))

(declare-fun b!6986280 () Bool)

(declare-fun e!4198996 () Bool)

(assert (=> b!6986280 (= e!4198995 e!4198996)))

(declare-fun res!2848897 () Bool)

(assert (=> b!6986280 (=> (not res!2848897) (not e!4198996))))

(assert (=> b!6986280 (= res!2848897 (dynLambda!26843 lambda!400375 (h!73463 lt!2484226)))))

(declare-fun b!6986281 () Bool)

(assert (=> b!6986281 (= e!4198996 (forall!16104 (t!380886 lt!2484226) lambda!400375))))

(assert (= (and d!2176079 (not res!2848896)) b!6986280))

(assert (= (and b!6986280 res!2848897) b!6986281))

(declare-fun b_lambda!262225 () Bool)

(assert (=> (not b_lambda!262225) (not b!6986280)))

(declare-fun m!7674020 () Bool)

(assert (=> b!6986280 m!7674020))

(declare-fun m!7674022 () Bool)

(assert (=> b!6986281 m!7674022))

(assert (=> b!6986098 d!2176079))

(declare-fun d!2176081 () Bool)

(declare-fun choose!52174 ((Set Context!12388) Int) (Set Context!12388))

(assert (=> d!2176081 (= (flatMap!2184 lt!2484220 lambda!400376) (choose!52174 lt!2484220 lambda!400376))))

(declare-fun bs!1861724 () Bool)

(assert (= bs!1861724 d!2176081))

(declare-fun m!7674026 () Bool)

(assert (=> bs!1861724 m!7674026))

(assert (=> b!6986087 d!2176081))

(declare-fun bs!1861725 () Bool)

(declare-fun d!2176085 () Bool)

(assert (= bs!1861725 (and d!2176085 b!6986087)))

(declare-fun lambda!400437 () Int)

(assert (=> bs!1861725 (= lambda!400437 lambda!400376)))

(assert (=> d!2176085 true))

(assert (=> d!2176085 (= (derivationStepZipper!2678 lt!2484220 (h!73464 s!7408)) (flatMap!2184 lt!2484220 lambda!400437))))

(declare-fun bs!1861726 () Bool)

(assert (= bs!1861726 d!2176085))

(declare-fun m!7674028 () Bool)

(assert (=> bs!1861726 m!7674028))

(assert (=> b!6986087 d!2176085))

(declare-fun b!6986286 () Bool)

(declare-fun e!4198999 () (Set Context!12388))

(declare-fun call!634180 () (Set Context!12388))

(assert (=> b!6986286 (= e!4198999 call!634180)))

(declare-fun b!6986287 () Bool)

(declare-fun e!4199000 () Bool)

(assert (=> b!6986287 (= e!4199000 (nullable!6958 (h!73463 (exprs!6694 lt!2484212))))))

(declare-fun d!2176091 () Bool)

(declare-fun c!1295532 () Bool)

(assert (=> d!2176091 (= c!1295532 e!4199000)))

(declare-fun res!2848898 () Bool)

(assert (=> d!2176091 (=> (not res!2848898) (not e!4199000))))

(assert (=> d!2176091 (= res!2848898 (is-Cons!67015 (exprs!6694 lt!2484212)))))

(declare-fun e!4198998 () (Set Context!12388))

(assert (=> d!2176091 (= (derivationStepZipperUp!1848 lt!2484212 (h!73464 s!7408)) e!4198998)))

(declare-fun b!6986288 () Bool)

(assert (=> b!6986288 (= e!4198999 (as set.empty (Set Context!12388)))))

(declare-fun bm!634175 () Bool)

(assert (=> bm!634175 (= call!634180 (derivationStepZipperDown!1916 (h!73463 (exprs!6694 lt!2484212)) (Context!12389 (t!380886 (exprs!6694 lt!2484212))) (h!73464 s!7408)))))

(declare-fun b!6986289 () Bool)

(assert (=> b!6986289 (= e!4198998 (set.union call!634180 (derivationStepZipperUp!1848 (Context!12389 (t!380886 (exprs!6694 lt!2484212))) (h!73464 s!7408))))))

(declare-fun b!6986290 () Bool)

(assert (=> b!6986290 (= e!4198998 e!4198999)))

(declare-fun c!1295533 () Bool)

(assert (=> b!6986290 (= c!1295533 (is-Cons!67015 (exprs!6694 lt!2484212)))))

(assert (= (and d!2176091 res!2848898) b!6986287))

(assert (= (and d!2176091 c!1295532) b!6986289))

(assert (= (and d!2176091 (not c!1295532)) b!6986290))

(assert (= (and b!6986290 c!1295533) b!6986286))

(assert (= (and b!6986290 (not c!1295533)) b!6986288))

(assert (= (or b!6986289 b!6986286) bm!634175))

(declare-fun m!7674042 () Bool)

(assert (=> b!6986287 m!7674042))

(declare-fun m!7674044 () Bool)

(assert (=> bm!634175 m!7674044))

(declare-fun m!7674046 () Bool)

(assert (=> b!6986289 m!7674046))

(assert (=> b!6986087 d!2176091))

(assert (=> b!6986087 d!2176059))

(declare-fun d!2176095 () Bool)

(declare-fun dynLambda!26845 (Int Context!12388) (Set Context!12388))

(assert (=> d!2176095 (= (flatMap!2184 lt!2484220 lambda!400376) (dynLambda!26845 lambda!400376 lt!2484212))))

(declare-fun lt!2484347 () Unit!161051)

(declare-fun choose!52175 ((Set Context!12388) Context!12388 Int) Unit!161051)

(assert (=> d!2176095 (= lt!2484347 (choose!52175 lt!2484220 lt!2484212 lambda!400376))))

(assert (=> d!2176095 (= lt!2484220 (set.insert lt!2484212 (as set.empty (Set Context!12388))))))

(assert (=> d!2176095 (= (lemmaFlatMapOnSingletonSet!1699 lt!2484220 lt!2484212 lambda!400376) lt!2484347)))

(declare-fun b_lambda!262227 () Bool)

(assert (=> (not b_lambda!262227) (not d!2176095)))

(declare-fun bs!1861727 () Bool)

(assert (= bs!1861727 d!2176095))

(assert (=> bs!1861727 m!7673764))

(declare-fun m!7674054 () Bool)

(assert (=> bs!1861727 m!7674054))

(declare-fun m!7674056 () Bool)

(assert (=> bs!1861727 m!7674056))

(assert (=> bs!1861727 m!7673768))

(assert (=> b!6986087 d!2176095))

(declare-fun bs!1861728 () Bool)

(declare-fun d!2176099 () Bool)

(assert (= bs!1861728 (and d!2176099 b!6986099)))

(declare-fun lambda!400438 () Int)

(assert (=> bs!1861728 (= lambda!400438 lambda!400375)))

(declare-fun bs!1861729 () Bool)

(assert (= bs!1861729 (and d!2176099 d!2176065)))

(assert (=> bs!1861729 (= lambda!400438 lambda!400430)))

(assert (=> d!2176099 (= (inv!85855 setElem!47694) (forall!16104 (exprs!6694 setElem!47694) lambda!400438))))

(declare-fun bs!1861730 () Bool)

(assert (= bs!1861730 d!2176099))

(declare-fun m!7674058 () Bool)

(assert (=> bs!1861730 m!7674058))

(assert (=> setNonEmpty!47694 d!2176099))

(declare-fun b!6986297 () Bool)

(declare-fun e!4199004 () Bool)

(declare-fun tp!1929149 () Bool)

(assert (=> b!6986297 (= e!4199004 (and tp_is_empty!43621 tp!1929149))))

(assert (=> b!6986093 (= tp!1929132 e!4199004)))

(assert (= (and b!6986093 (is-Cons!67016 (t!380887 s!7408))) b!6986297))

(declare-fun b!6986302 () Bool)

(declare-fun e!4199007 () Bool)

(declare-fun tp!1929154 () Bool)

(declare-fun tp!1929155 () Bool)

(assert (=> b!6986302 (= e!4199007 (and tp!1929154 tp!1929155))))

(assert (=> b!6986083 (= tp!1929131 e!4199007)))

(assert (= (and b!6986083 (is-Cons!67015 (exprs!6694 ct2!306))) b!6986302))

(declare-fun b!6986303 () Bool)

(declare-fun e!4199008 () Bool)

(declare-fun tp!1929156 () Bool)

(declare-fun tp!1929157 () Bool)

(assert (=> b!6986303 (= e!4199008 (and tp!1929156 tp!1929157))))

(assert (=> b!6986085 (= tp!1929134 e!4199008)))

(assert (= (and b!6986085 (is-Cons!67015 (exprs!6694 setElem!47694))) b!6986303))

(declare-fun condSetEmpty!47700 () Bool)

(assert (=> setNonEmpty!47694 (= condSetEmpty!47700 (= setRest!47694 (as set.empty (Set Context!12388))))))

(declare-fun setRes!47700 () Bool)

(assert (=> setNonEmpty!47694 (= tp!1929133 setRes!47700)))

(declare-fun setIsEmpty!47700 () Bool)

(assert (=> setIsEmpty!47700 setRes!47700))

(declare-fun setNonEmpty!47700 () Bool)

(declare-fun e!4199011 () Bool)

(declare-fun tp!1929162 () Bool)

(declare-fun setElem!47700 () Context!12388)

(assert (=> setNonEmpty!47700 (= setRes!47700 (and tp!1929162 (inv!85855 setElem!47700) e!4199011))))

(declare-fun setRest!47700 () (Set Context!12388))

(assert (=> setNonEmpty!47700 (= setRest!47694 (set.union (set.insert setElem!47700 (as set.empty (Set Context!12388))) setRest!47700))))

(declare-fun b!6986308 () Bool)

(declare-fun tp!1929163 () Bool)

(assert (=> b!6986308 (= e!4199011 tp!1929163)))

(assert (= (and setNonEmpty!47694 condSetEmpty!47700) setIsEmpty!47700))

(assert (= (and setNonEmpty!47694 (not condSetEmpty!47700)) setNonEmpty!47700))

(assert (= setNonEmpty!47700 b!6986308))

(declare-fun m!7674060 () Bool)

(assert (=> setNonEmpty!47700 m!7674060))

(declare-fun b_lambda!262229 () Bool)

(assert (= b_lambda!262225 (or b!6986099 b_lambda!262229)))

(declare-fun bs!1861731 () Bool)

(declare-fun d!2176101 () Bool)

(assert (= bs!1861731 (and d!2176101 b!6986099)))

(declare-fun validRegex!8851 (Regex!17198) Bool)

(assert (=> bs!1861731 (= (dynLambda!26843 lambda!400375 (h!73463 lt!2484226)) (validRegex!8851 (h!73463 lt!2484226)))))

(declare-fun m!7674062 () Bool)

(assert (=> bs!1861731 m!7674062))

(assert (=> b!6986280 d!2176101))

(declare-fun b_lambda!262231 () Bool)

(assert (= b_lambda!262221 (or b!6986099 b_lambda!262231)))

(declare-fun bs!1861732 () Bool)

(declare-fun d!2176103 () Bool)

(assert (= bs!1861732 (and d!2176103 b!6986099)))

(assert (=> bs!1861732 (= (dynLambda!26843 lambda!400375 (h!73463 (exprs!6694 ct2!306))) (validRegex!8851 (h!73463 (exprs!6694 ct2!306))))))

(declare-fun m!7674064 () Bool)

(assert (=> bs!1861732 m!7674064))

(assert (=> b!6986270 d!2176103))

(declare-fun b_lambda!262233 () Bool)

(assert (= b_lambda!262223 (or b!6986099 b_lambda!262233)))

(declare-fun bs!1861733 () Bool)

(declare-fun d!2176105 () Bool)

(assert (= bs!1861733 (and d!2176105 b!6986099)))

(declare-fun lt!2484351 () Unit!161051)

(assert (=> bs!1861733 (= lt!2484351 (lemmaConcatPreservesForall!534 (exprs!6694 lt!2484344) (exprs!6694 ct2!306) lambda!400375))))

(assert (=> bs!1861733 (= (dynLambda!26844 lambda!400374 lt!2484344) (Context!12389 (++!15143 (exprs!6694 lt!2484344) (exprs!6694 ct2!306))))))

(declare-fun m!7674066 () Bool)

(assert (=> bs!1861733 m!7674066))

(declare-fun m!7674069 () Bool)

(assert (=> bs!1861733 m!7674069))

(assert (=> d!2176073 d!2176105))

(declare-fun b_lambda!262235 () Bool)

(assert (= b_lambda!262227 (or b!6986087 b_lambda!262235)))

(declare-fun bs!1861735 () Bool)

(declare-fun d!2176107 () Bool)

(assert (= bs!1861735 (and d!2176107 b!6986087)))

(assert (=> bs!1861735 (= (dynLambda!26845 lambda!400376 lt!2484212) (derivationStepZipperUp!1848 lt!2484212 (h!73464 s!7408)))))

(assert (=> bs!1861735 m!7673760))

(assert (=> d!2176095 d!2176107))

(declare-fun b_lambda!262237 () Bool)

(assert (= b_lambda!262219 (or b!6986094 b_lambda!262237)))

(declare-fun bs!1861736 () Bool)

(declare-fun d!2176109 () Bool)

(assert (= bs!1861736 (and d!2176109 b!6986094)))

(assert (=> bs!1861736 (= (dynLambda!26842 lambda!400373 lt!2484323) (matchZipper!2738 (set.insert lt!2484323 (as set.empty (Set Context!12388))) s!7408))))

(declare-fun m!7674074 () Bool)

(assert (=> bs!1861736 m!7674074))

(assert (=> bs!1861736 m!7674074))

(declare-fun m!7674076 () Bool)

(assert (=> bs!1861736 m!7674076))

(assert (=> d!2176029 d!2176109))

(push 1)

(assert (not b_lambda!262229))

(assert (not b!6986281))

(assert (not b!6986261))

(assert (not d!2176037))

(assert (not d!2176027))

(assert (not b!6986262))

(assert (not b!6986308))

(assert (not d!2176029))

(assert (not b_lambda!262231))

(assert (not d!2176035))

(assert (not b!6986212))

(assert (not setNonEmpty!47700))

(assert (not d!2176045))

(assert (not d!2176059))

(assert (not b!6986188))

(assert (not b!6986260))

(assert (not b!6986199))

(assert (not b!6986263))

(assert (not b!6986274))

(assert (not bs!1861733))

(assert (not b!6986198))

(assert (not d!2176065))

(assert (not b_lambda!262233))

(assert (not d!2176085))

(assert (not bs!1861736))

(assert tp_is_empty!43621)

(assert (not b!6986178))

(assert (not d!2176023))

(assert (not b!6986273))

(assert (not b!6986271))

(assert (not b!6986249))

(assert (not bm!634171))

(assert (not bm!634170))

(assert (not d!2176071))

(assert (not b!6986250))

(assert (not b!6986297))

(assert (not d!2176081))

(assert (not d!2176031))

(assert (not b_lambda!262237))

(assert (not d!2176099))

(assert (not b!6986214))

(assert (not d!2176025))

(assert (not b!6986289))

(assert (not b!6986177))

(assert (not bs!1861731))

(assert (not b!6986264))

(assert (not bm!634156))

(assert (not b_lambda!262235))

(assert (not d!2176053))

(assert (not d!2176033))

(assert (not b!6986242))

(assert (not b!6986265))

(assert (not b!6986187))

(assert (not d!2176063))

(assert (not d!2176061))

(assert (not b!6986183))

(assert (not b!6986259))

(assert (not b!6986287))

(assert (not d!2176047))

(assert (not d!2176095))

(assert (not bm!634175))

(assert (not b!6986303))

(assert (not bs!1861735))

(assert (not b!6986302))

(assert (not d!2176055))

(assert (not bs!1861732))

(assert (not d!2176073))

(assert (not bm!634172))

(assert (not d!2176051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


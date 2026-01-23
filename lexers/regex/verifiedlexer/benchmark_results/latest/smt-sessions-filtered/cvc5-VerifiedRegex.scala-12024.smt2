; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!674392 () Bool)

(assert start!674392)

(declare-fun b!7006036 () Bool)

(assert (=> b!7006036 true))

(declare-fun b!7006026 () Bool)

(assert (=> b!7006026 true))

(declare-fun b!7006023 () Bool)

(assert (=> b!7006023 true))

(declare-fun b!7006020 () Bool)

(declare-fun e!4211218 () Bool)

(declare-fun e!4211217 () Bool)

(assert (=> b!7006020 (= e!4211218 e!4211217)))

(declare-fun res!2858485 () Bool)

(assert (=> b!7006020 (=> res!2858485 e!4211217)))

(declare-fun e!4211215 () Bool)

(assert (=> b!7006020 (= res!2858485 e!4211215)))

(declare-fun res!2858473 () Bool)

(assert (=> b!7006020 (=> (not res!2858473) (not e!4211215))))

(declare-fun lt!2500987 () Bool)

(declare-fun lt!2500990 () Bool)

(assert (=> b!7006020 (= res!2858473 (not (= lt!2500987 lt!2500990)))))

(declare-datatypes ((C!34858 0))(
  ( (C!34859 (val!27131 Int)) )
))
(declare-datatypes ((Regex!17294 0))(
  ( (ElementMatch!17294 (c!1301069 C!34858)) (Concat!26139 (regOne!35100 Regex!17294) (regTwo!35100 Regex!17294)) (EmptyExpr!17294) (Star!17294 (reg!17623 Regex!17294)) (EmptyLang!17294) (Union!17294 (regOne!35101 Regex!17294) (regTwo!35101 Regex!17294)) )
))
(declare-datatypes ((List!67427 0))(
  ( (Nil!67303) (Cons!67303 (h!73751 Regex!17294) (t!381180 List!67427)) )
))
(declare-datatypes ((Context!12580 0))(
  ( (Context!12581 (exprs!6790 List!67427)) )
))
(declare-fun lt!2501010 () (Set Context!12580))

(declare-datatypes ((List!67428 0))(
  ( (Nil!67304) (Cons!67304 (h!73752 C!34858) (t!381181 List!67428)) )
))
(declare-fun s!7408 () List!67428)

(declare-fun matchZipper!2834 ((Set Context!12580) List!67428) Bool)

(assert (=> b!7006020 (= lt!2500987 (matchZipper!2834 lt!2501010 (t!381181 s!7408)))))

(declare-datatypes ((Unit!161264 0))(
  ( (Unit!161265) )
))
(declare-fun lt!2500988 () Unit!161264)

(declare-fun lt!2501004 () List!67427)

(declare-fun lambda!407099 () Int)

(declare-fun ct2!306 () Context!12580)

(declare-fun lemmaConcatPreservesForall!630 (List!67427 List!67427 Int) Unit!161264)

(assert (=> b!7006020 (= lt!2500988 (lemmaConcatPreservesForall!630 lt!2501004 (exprs!6790 ct2!306) lambda!407099))))

(declare-fun lt!2500997 () (Set Context!12580))

(declare-fun e!4211216 () Bool)

(assert (=> b!7006020 (= (matchZipper!2834 lt!2500997 (t!381181 s!7408)) e!4211216)))

(declare-fun res!2858487 () Bool)

(assert (=> b!7006020 (=> res!2858487 e!4211216)))

(assert (=> b!7006020 (= res!2858487 lt!2500990)))

(declare-fun lt!2501007 () (Set Context!12580))

(assert (=> b!7006020 (= lt!2500990 (matchZipper!2834 lt!2501007 (t!381181 s!7408)))))

(declare-fun lt!2500993 () Unit!161264)

(declare-fun lt!2501006 () (Set Context!12580))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1467 ((Set Context!12580) (Set Context!12580) List!67428) Unit!161264)

(assert (=> b!7006020 (= lt!2500993 (lemmaZipperConcatMatchesSameAsBothZippers!1467 lt!2501007 lt!2501006 (t!381181 s!7408)))))

(declare-fun lt!2501011 () Unit!161264)

(assert (=> b!7006020 (= lt!2501011 (lemmaConcatPreservesForall!630 lt!2501004 (exprs!6790 ct2!306) lambda!407099))))

(declare-fun lt!2500992 () Unit!161264)

(assert (=> b!7006020 (= lt!2500992 (lemmaConcatPreservesForall!630 lt!2501004 (exprs!6790 ct2!306) lambda!407099))))

(declare-fun b!7006021 () Bool)

(assert (=> b!7006021 (= e!4211215 (not (matchZipper!2834 lt!2501006 (t!381181 s!7408))))))

(declare-fun lt!2500999 () Unit!161264)

(assert (=> b!7006021 (= lt!2500999 (lemmaConcatPreservesForall!630 lt!2501004 (exprs!6790 ct2!306) lambda!407099))))

(declare-fun b!7006022 () Bool)

(declare-fun e!4211208 () Bool)

(declare-fun forall!16207 (List!67427 Int) Bool)

(assert (=> b!7006022 (= e!4211208 (forall!16207 lt!2501004 lambda!407099))))

(declare-fun lt!2501008 () Unit!161264)

(assert (=> b!7006022 (= lt!2501008 (lemmaConcatPreservesForall!630 lt!2501004 (exprs!6790 ct2!306) lambda!407099))))

(declare-fun e!4211211 () Bool)

(declare-fun e!4211206 () Bool)

(assert (=> b!7006023 (= e!4211211 e!4211206)))

(declare-fun res!2858478 () Bool)

(assert (=> b!7006023 (=> res!2858478 e!4211206)))

(declare-fun lt!2501005 () (Set Context!12580))

(declare-fun derivationStepZipper!2774 ((Set Context!12580) C!34858) (Set Context!12580))

(assert (=> b!7006023 (= res!2858478 (not (= (derivationStepZipper!2774 lt!2501005 (h!73752 s!7408)) lt!2501010)))))

(declare-fun lt!2501009 () Context!12580)

(declare-fun lambda!407100 () Int)

(declare-fun flatMap!2280 ((Set Context!12580) Int) (Set Context!12580))

(declare-fun derivationStepZipperUp!1944 (Context!12580 C!34858) (Set Context!12580))

(assert (=> b!7006023 (= (flatMap!2280 lt!2501005 lambda!407100) (derivationStepZipperUp!1944 lt!2501009 (h!73752 s!7408)))))

(declare-fun lt!2501002 () Unit!161264)

(declare-fun lemmaFlatMapOnSingletonSet!1795 ((Set Context!12580) Context!12580 Int) Unit!161264)

(assert (=> b!7006023 (= lt!2501002 (lemmaFlatMapOnSingletonSet!1795 lt!2501005 lt!2501009 lambda!407100))))

(assert (=> b!7006023 (= lt!2501010 (derivationStepZipperUp!1944 lt!2501009 (h!73752 s!7408)))))

(declare-fun lt!2500998 () Context!12580)

(declare-fun lt!2501012 () Unit!161264)

(assert (=> b!7006023 (= lt!2501012 (lemmaConcatPreservesForall!630 (exprs!6790 lt!2500998) (exprs!6790 ct2!306) lambda!407099))))

(declare-fun b!7006024 () Bool)

(declare-fun e!4211212 () Bool)

(assert (=> b!7006024 (= e!4211212 e!4211218)))

(declare-fun res!2858476 () Bool)

(assert (=> b!7006024 (=> res!2858476 e!4211218)))

(assert (=> b!7006024 (= res!2858476 (not (= lt!2501010 lt!2500997)))))

(assert (=> b!7006024 (= lt!2500997 (set.union lt!2501007 lt!2501006))))

(declare-fun lt!2500996 () Context!12580)

(assert (=> b!7006024 (= lt!2501006 (derivationStepZipperUp!1944 lt!2500996 (h!73752 s!7408)))))

(declare-fun derivationStepZipperDown!2012 (Regex!17294 Context!12580 C!34858) (Set Context!12580))

(assert (=> b!7006024 (= lt!2501007 (derivationStepZipperDown!2012 (h!73751 (exprs!6790 lt!2500998)) lt!2500996 (h!73752 s!7408)))))

(declare-fun ++!15285 (List!67427 List!67427) List!67427)

(assert (=> b!7006024 (= lt!2500996 (Context!12581 (++!15285 lt!2501004 (exprs!6790 ct2!306))))))

(declare-fun lt!2501000 () Unit!161264)

(assert (=> b!7006024 (= lt!2501000 (lemmaConcatPreservesForall!630 lt!2501004 (exprs!6790 ct2!306) lambda!407099))))

(declare-fun lt!2501003 () Unit!161264)

(assert (=> b!7006024 (= lt!2501003 (lemmaConcatPreservesForall!630 lt!2501004 (exprs!6790 ct2!306) lambda!407099))))

(declare-fun b!7006025 () Bool)

(assert (=> b!7006025 (= e!4211206 e!4211212)))

(declare-fun res!2858481 () Bool)

(assert (=> b!7006025 (=> res!2858481 e!4211212)))

(declare-fun nullable!7054 (Regex!17294) Bool)

(assert (=> b!7006025 (= res!2858481 (not (nullable!7054 (h!73751 (exprs!6790 lt!2500998)))))))

(declare-fun tail!13355 (List!67427) List!67427)

(assert (=> b!7006025 (= lt!2501004 (tail!13355 (exprs!6790 lt!2500998)))))

(declare-fun e!4211205 () Bool)

(declare-fun e!4211213 () Bool)

(assert (=> b!7006026 (= e!4211205 e!4211213)))

(declare-fun res!2858483 () Bool)

(assert (=> b!7006026 (=> res!2858483 e!4211213)))

(declare-fun z1!570 () (Set Context!12580))

(declare-fun lt!2501013 () Context!12580)

(assert (=> b!7006026 (= res!2858483 (or (not (= lt!2501009 lt!2501013)) (not (set.member lt!2500998 z1!570))))))

(assert (=> b!7006026 (= lt!2501009 (Context!12581 (++!15285 (exprs!6790 lt!2500998) (exprs!6790 ct2!306))))))

(declare-fun lt!2500994 () Unit!161264)

(assert (=> b!7006026 (= lt!2500994 (lemmaConcatPreservesForall!630 (exprs!6790 lt!2500998) (exprs!6790 ct2!306) lambda!407099))))

(declare-fun lambda!407098 () Int)

(declare-fun mapPost2!149 ((Set Context!12580) Int Context!12580) Context!12580)

(assert (=> b!7006026 (= lt!2500998 (mapPost2!149 z1!570 lambda!407098 lt!2501013))))

(declare-fun b!7006027 () Bool)

(assert (=> b!7006027 (= e!4211216 (matchZipper!2834 lt!2501006 (t!381181 s!7408)))))

(declare-fun b!7006028 () Bool)

(declare-fun res!2858484 () Bool)

(assert (=> b!7006028 (=> res!2858484 e!4211206)))

(declare-fun isEmpty!39308 (List!67427) Bool)

(assert (=> b!7006028 (= res!2858484 (isEmpty!39308 (exprs!6790 lt!2500998)))))

(declare-fun setRes!48228 () Bool)

(declare-fun e!4211207 () Bool)

(declare-fun setElem!48228 () Context!12580)

(declare-fun tp!1931706 () Bool)

(declare-fun setNonEmpty!48228 () Bool)

(declare-fun inv!86095 (Context!12580) Bool)

(assert (=> setNonEmpty!48228 (= setRes!48228 (and tp!1931706 (inv!86095 setElem!48228) e!4211207))))

(declare-fun setRest!48228 () (Set Context!12580))

(assert (=> setNonEmpty!48228 (= z1!570 (set.union (set.insert setElem!48228 (as set.empty (Set Context!12580))) setRest!48228))))

(declare-fun b!7006029 () Bool)

(declare-fun res!2858472 () Bool)

(assert (=> b!7006029 (=> res!2858472 e!4211217)))

(assert (=> b!7006029 (= res!2858472 (not lt!2500987))))

(declare-fun b!7006030 () Bool)

(declare-fun tp!1931705 () Bool)

(assert (=> b!7006030 (= e!4211207 tp!1931705)))

(declare-fun b!7006031 () Bool)

(declare-fun e!4211210 () Bool)

(declare-fun tp!1931708 () Bool)

(assert (=> b!7006031 (= e!4211210 tp!1931708)))

(declare-fun setIsEmpty!48228 () Bool)

(assert (=> setIsEmpty!48228 setRes!48228))

(declare-fun b!7006032 () Bool)

(assert (=> b!7006032 (= e!4211213 e!4211211)))

(declare-fun res!2858482 () Bool)

(assert (=> b!7006032 (=> res!2858482 e!4211211)))

(declare-fun lt!2500995 () (Set Context!12580))

(assert (=> b!7006032 (= res!2858482 (not (= lt!2501005 lt!2500995)))))

(assert (=> b!7006032 (= lt!2501005 (set.insert lt!2501009 (as set.empty (Set Context!12580))))))

(declare-fun lt!2500991 () Unit!161264)

(assert (=> b!7006032 (= lt!2500991 (lemmaConcatPreservesForall!630 (exprs!6790 lt!2500998) (exprs!6790 ct2!306) lambda!407099))))

(declare-fun b!7006033 () Bool)

(declare-fun res!2858479 () Bool)

(assert (=> b!7006033 (=> res!2858479 e!4211205)))

(declare-fun lt!2500985 () (Set Context!12580))

(assert (=> b!7006033 (= res!2858479 (not (set.member lt!2501013 lt!2500985)))))

(declare-fun b!7006034 () Bool)

(declare-fun res!2858480 () Bool)

(assert (=> b!7006034 (=> res!2858480 e!4211206)))

(assert (=> b!7006034 (= res!2858480 (not (is-Cons!67303 (exprs!6790 lt!2500998))))))

(declare-fun res!2858477 () Bool)

(declare-fun e!4211214 () Bool)

(assert (=> start!674392 (=> (not res!2858477) (not e!4211214))))

(assert (=> start!674392 (= res!2858477 (matchZipper!2834 lt!2500985 s!7408))))

(declare-fun appendTo!415 ((Set Context!12580) Context!12580) (Set Context!12580))

(assert (=> start!674392 (= lt!2500985 (appendTo!415 z1!570 ct2!306))))

(assert (=> start!674392 e!4211214))

(declare-fun condSetEmpty!48228 () Bool)

(assert (=> start!674392 (= condSetEmpty!48228 (= z1!570 (as set.empty (Set Context!12580))))))

(assert (=> start!674392 setRes!48228))

(assert (=> start!674392 (and (inv!86095 ct2!306) e!4211210)))

(declare-fun e!4211209 () Bool)

(assert (=> start!674392 e!4211209))

(declare-fun b!7006035 () Bool)

(declare-fun res!2858474 () Bool)

(assert (=> b!7006035 (=> (not res!2858474) (not e!4211214))))

(assert (=> b!7006035 (= res!2858474 (is-Cons!67304 s!7408))))

(assert (=> b!7006036 (= e!4211214 (not e!4211205))))

(declare-fun res!2858475 () Bool)

(assert (=> b!7006036 (=> res!2858475 e!4211205)))

(assert (=> b!7006036 (= res!2858475 (not (matchZipper!2834 lt!2500995 s!7408)))))

(assert (=> b!7006036 (= lt!2500995 (set.insert lt!2501013 (as set.empty (Set Context!12580))))))

(declare-fun lambda!407097 () Int)

(declare-fun getWitness!1224 ((Set Context!12580) Int) Context!12580)

(assert (=> b!7006036 (= lt!2501013 (getWitness!1224 lt!2500985 lambda!407097))))

(declare-datatypes ((List!67429 0))(
  ( (Nil!67305) (Cons!67305 (h!73753 Context!12580) (t!381182 List!67429)) )
))
(declare-fun lt!2501001 () List!67429)

(declare-fun exists!3126 (List!67429 Int) Bool)

(assert (=> b!7006036 (exists!3126 lt!2501001 lambda!407097)))

(declare-fun lt!2500986 () Unit!161264)

(declare-fun lemmaZipperMatchesExistsMatchingContext!263 (List!67429 List!67428) Unit!161264)

(assert (=> b!7006036 (= lt!2500986 (lemmaZipperMatchesExistsMatchingContext!263 lt!2501001 s!7408))))

(declare-fun toList!10654 ((Set Context!12580)) List!67429)

(assert (=> b!7006036 (= lt!2501001 (toList!10654 lt!2500985))))

(declare-fun b!7006037 () Bool)

(assert (=> b!7006037 (= e!4211217 e!4211208)))

(declare-fun res!2858486 () Bool)

(assert (=> b!7006037 (=> res!2858486 e!4211208)))

(assert (=> b!7006037 (= res!2858486 (matchZipper!2834 lt!2501006 (t!381181 s!7408)))))

(declare-fun lt!2500989 () Unit!161264)

(assert (=> b!7006037 (= lt!2500989 (lemmaConcatPreservesForall!630 lt!2501004 (exprs!6790 ct2!306) lambda!407099))))

(declare-fun b!7006038 () Bool)

(declare-fun tp_is_empty!43813 () Bool)

(declare-fun tp!1931707 () Bool)

(assert (=> b!7006038 (= e!4211209 (and tp_is_empty!43813 tp!1931707))))

(assert (= (and start!674392 res!2858477) b!7006035))

(assert (= (and b!7006035 res!2858474) b!7006036))

(assert (= (and b!7006036 (not res!2858475)) b!7006033))

(assert (= (and b!7006033 (not res!2858479)) b!7006026))

(assert (= (and b!7006026 (not res!2858483)) b!7006032))

(assert (= (and b!7006032 (not res!2858482)) b!7006023))

(assert (= (and b!7006023 (not res!2858478)) b!7006034))

(assert (= (and b!7006034 (not res!2858480)) b!7006028))

(assert (= (and b!7006028 (not res!2858484)) b!7006025))

(assert (= (and b!7006025 (not res!2858481)) b!7006024))

(assert (= (and b!7006024 (not res!2858476)) b!7006020))

(assert (= (and b!7006020 (not res!2858487)) b!7006027))

(assert (= (and b!7006020 res!2858473) b!7006021))

(assert (= (and b!7006020 (not res!2858485)) b!7006029))

(assert (= (and b!7006029 (not res!2858472)) b!7006037))

(assert (= (and b!7006037 (not res!2858486)) b!7006022))

(assert (= (and start!674392 condSetEmpty!48228) setIsEmpty!48228))

(assert (= (and start!674392 (not condSetEmpty!48228)) setNonEmpty!48228))

(assert (= setNonEmpty!48228 b!7006030))

(assert (= start!674392 b!7006031))

(assert (= (and start!674392 (is-Cons!67304 s!7408)) b!7006038))

(declare-fun m!7702812 () Bool)

(assert (=> setNonEmpty!48228 m!7702812))

(declare-fun m!7702814 () Bool)

(assert (=> b!7006023 m!7702814))

(declare-fun m!7702816 () Bool)

(assert (=> b!7006023 m!7702816))

(declare-fun m!7702818 () Bool)

(assert (=> b!7006023 m!7702818))

(declare-fun m!7702820 () Bool)

(assert (=> b!7006023 m!7702820))

(declare-fun m!7702822 () Bool)

(assert (=> b!7006023 m!7702822))

(declare-fun m!7702824 () Bool)

(assert (=> b!7006032 m!7702824))

(assert (=> b!7006032 m!7702816))

(declare-fun m!7702826 () Bool)

(assert (=> b!7006036 m!7702826))

(declare-fun m!7702828 () Bool)

(assert (=> b!7006036 m!7702828))

(declare-fun m!7702830 () Bool)

(assert (=> b!7006036 m!7702830))

(declare-fun m!7702832 () Bool)

(assert (=> b!7006036 m!7702832))

(declare-fun m!7702834 () Bool)

(assert (=> b!7006036 m!7702834))

(declare-fun m!7702836 () Bool)

(assert (=> b!7006036 m!7702836))

(declare-fun m!7702838 () Bool)

(assert (=> b!7006033 m!7702838))

(declare-fun m!7702840 () Bool)

(assert (=> b!7006028 m!7702840))

(declare-fun m!7702842 () Bool)

(assert (=> b!7006027 m!7702842))

(declare-fun m!7702844 () Bool)

(assert (=> b!7006020 m!7702844))

(assert (=> b!7006020 m!7702844))

(declare-fun m!7702846 () Bool)

(assert (=> b!7006020 m!7702846))

(declare-fun m!7702848 () Bool)

(assert (=> b!7006020 m!7702848))

(assert (=> b!7006020 m!7702844))

(declare-fun m!7702850 () Bool)

(assert (=> b!7006020 m!7702850))

(declare-fun m!7702852 () Bool)

(assert (=> b!7006020 m!7702852))

(declare-fun m!7702854 () Bool)

(assert (=> b!7006022 m!7702854))

(assert (=> b!7006022 m!7702844))

(assert (=> b!7006037 m!7702842))

(assert (=> b!7006037 m!7702844))

(declare-fun m!7702856 () Bool)

(assert (=> b!7006024 m!7702856))

(assert (=> b!7006024 m!7702844))

(declare-fun m!7702858 () Bool)

(assert (=> b!7006024 m!7702858))

(declare-fun m!7702860 () Bool)

(assert (=> b!7006024 m!7702860))

(assert (=> b!7006024 m!7702844))

(declare-fun m!7702862 () Bool)

(assert (=> start!674392 m!7702862))

(declare-fun m!7702864 () Bool)

(assert (=> start!674392 m!7702864))

(declare-fun m!7702866 () Bool)

(assert (=> start!674392 m!7702866))

(declare-fun m!7702868 () Bool)

(assert (=> b!7006025 m!7702868))

(declare-fun m!7702870 () Bool)

(assert (=> b!7006025 m!7702870))

(assert (=> b!7006021 m!7702842))

(assert (=> b!7006021 m!7702844))

(declare-fun m!7702872 () Bool)

(assert (=> b!7006026 m!7702872))

(declare-fun m!7702874 () Bool)

(assert (=> b!7006026 m!7702874))

(assert (=> b!7006026 m!7702816))

(declare-fun m!7702876 () Bool)

(assert (=> b!7006026 m!7702876))

(push 1)

(assert (not b!7006032))

(assert (not b!7006028))

(assert (not b!7006021))

(assert (not b!7006025))

(assert (not b!7006031))

(assert (not b!7006026))

(assert (not b!7006024))

(assert (not b!7006030))

(assert tp_is_empty!43813)

(assert (not b!7006036))

(assert (not b!7006023))

(assert (not setNonEmpty!48228))

(assert (not start!674392))

(assert (not b!7006037))

(assert (not b!7006027))

(assert (not b!7006038))

(assert (not b!7006022))

(assert (not b!7006020))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2183845 () Bool)

(declare-fun c!1301081 () Bool)

(declare-fun isEmpty!39310 (List!67428) Bool)

(assert (=> d!2183845 (= c!1301081 (isEmpty!39310 (t!381181 s!7408)))))

(declare-fun e!4211263 () Bool)

(assert (=> d!2183845 (= (matchZipper!2834 lt!2501006 (t!381181 s!7408)) e!4211263)))

(declare-fun b!7006112 () Bool)

(declare-fun nullableZipper!2474 ((Set Context!12580)) Bool)

(assert (=> b!7006112 (= e!4211263 (nullableZipper!2474 lt!2501006))))

(declare-fun b!7006113 () Bool)

(declare-fun head!14158 (List!67428) C!34858)

(declare-fun tail!13357 (List!67428) List!67428)

(assert (=> b!7006113 (= e!4211263 (matchZipper!2834 (derivationStepZipper!2774 lt!2501006 (head!14158 (t!381181 s!7408))) (tail!13357 (t!381181 s!7408))))))

(assert (= (and d!2183845 c!1301081) b!7006112))

(assert (= (and d!2183845 (not c!1301081)) b!7006113))

(declare-fun m!7702944 () Bool)

(assert (=> d!2183845 m!7702944))

(declare-fun m!7702946 () Bool)

(assert (=> b!7006112 m!7702946))

(declare-fun m!7702948 () Bool)

(assert (=> b!7006113 m!7702948))

(assert (=> b!7006113 m!7702948))

(declare-fun m!7702950 () Bool)

(assert (=> b!7006113 m!7702950))

(declare-fun m!7702952 () Bool)

(assert (=> b!7006113 m!7702952))

(assert (=> b!7006113 m!7702950))

(assert (=> b!7006113 m!7702952))

(declare-fun m!7702954 () Bool)

(assert (=> b!7006113 m!7702954))

(assert (=> b!7006027 d!2183845))

(declare-fun b!7006122 () Bool)

(declare-fun e!4211268 () List!67427)

(assert (=> b!7006122 (= e!4211268 (exprs!6790 ct2!306))))

(declare-fun b!7006123 () Bool)

(assert (=> b!7006123 (= e!4211268 (Cons!67303 (h!73751 (exprs!6790 lt!2500998)) (++!15285 (t!381180 (exprs!6790 lt!2500998)) (exprs!6790 ct2!306))))))

(declare-fun b!7006124 () Bool)

(declare-fun res!2858542 () Bool)

(declare-fun e!4211269 () Bool)

(assert (=> b!7006124 (=> (not res!2858542) (not e!4211269))))

(declare-fun lt!2501105 () List!67427)

(declare-fun size!40958 (List!67427) Int)

(assert (=> b!7006124 (= res!2858542 (= (size!40958 lt!2501105) (+ (size!40958 (exprs!6790 lt!2500998)) (size!40958 (exprs!6790 ct2!306)))))))

(declare-fun d!2183847 () Bool)

(assert (=> d!2183847 e!4211269))

(declare-fun res!2858541 () Bool)

(assert (=> d!2183847 (=> (not res!2858541) (not e!4211269))))

(declare-fun content!13346 (List!67427) (Set Regex!17294))

(assert (=> d!2183847 (= res!2858541 (= (content!13346 lt!2501105) (set.union (content!13346 (exprs!6790 lt!2500998)) (content!13346 (exprs!6790 ct2!306)))))))

(assert (=> d!2183847 (= lt!2501105 e!4211268)))

(declare-fun c!1301084 () Bool)

(assert (=> d!2183847 (= c!1301084 (is-Nil!67303 (exprs!6790 lt!2500998)))))

(assert (=> d!2183847 (= (++!15285 (exprs!6790 lt!2500998) (exprs!6790 ct2!306)) lt!2501105)))

(declare-fun b!7006125 () Bool)

(assert (=> b!7006125 (= e!4211269 (or (not (= (exprs!6790 ct2!306) Nil!67303)) (= lt!2501105 (exprs!6790 lt!2500998))))))

(assert (= (and d!2183847 c!1301084) b!7006122))

(assert (= (and d!2183847 (not c!1301084)) b!7006123))

(assert (= (and d!2183847 res!2858541) b!7006124))

(assert (= (and b!7006124 res!2858542) b!7006125))

(declare-fun m!7702956 () Bool)

(assert (=> b!7006123 m!7702956))

(declare-fun m!7702958 () Bool)

(assert (=> b!7006124 m!7702958))

(declare-fun m!7702960 () Bool)

(assert (=> b!7006124 m!7702960))

(declare-fun m!7702962 () Bool)

(assert (=> b!7006124 m!7702962))

(declare-fun m!7702964 () Bool)

(assert (=> d!2183847 m!7702964))

(declare-fun m!7702966 () Bool)

(assert (=> d!2183847 m!7702966))

(declare-fun m!7702968 () Bool)

(assert (=> d!2183847 m!7702968))

(assert (=> b!7006026 d!2183847))

(declare-fun d!2183849 () Bool)

(assert (=> d!2183849 (forall!16207 (++!15285 (exprs!6790 lt!2500998) (exprs!6790 ct2!306)) lambda!407099)))

(declare-fun lt!2501108 () Unit!161264)

(declare-fun choose!52596 (List!67427 List!67427 Int) Unit!161264)

(assert (=> d!2183849 (= lt!2501108 (choose!52596 (exprs!6790 lt!2500998) (exprs!6790 ct2!306) lambda!407099))))

(assert (=> d!2183849 (forall!16207 (exprs!6790 lt!2500998) lambda!407099)))

(assert (=> d!2183849 (= (lemmaConcatPreservesForall!630 (exprs!6790 lt!2500998) (exprs!6790 ct2!306) lambda!407099) lt!2501108)))

(declare-fun bs!1865418 () Bool)

(assert (= bs!1865418 d!2183849))

(assert (=> bs!1865418 m!7702874))

(assert (=> bs!1865418 m!7702874))

(declare-fun m!7702970 () Bool)

(assert (=> bs!1865418 m!7702970))

(declare-fun m!7702972 () Bool)

(assert (=> bs!1865418 m!7702972))

(declare-fun m!7702974 () Bool)

(assert (=> bs!1865418 m!7702974))

(assert (=> b!7006026 d!2183849))

(declare-fun d!2183851 () Bool)

(declare-fun e!4211272 () Bool)

(assert (=> d!2183851 e!4211272))

(declare-fun res!2858545 () Bool)

(assert (=> d!2183851 (=> (not res!2858545) (not e!4211272))))

(declare-fun lt!2501111 () Context!12580)

(declare-fun dynLambda!27044 (Int Context!12580) Context!12580)

(assert (=> d!2183851 (= res!2858545 (= lt!2501013 (dynLambda!27044 lambda!407098 lt!2501111)))))

(declare-fun choose!52597 ((Set Context!12580) Int Context!12580) Context!12580)

(assert (=> d!2183851 (= lt!2501111 (choose!52597 z1!570 lambda!407098 lt!2501013))))

(declare-fun map!15586 ((Set Context!12580) Int) (Set Context!12580))

(assert (=> d!2183851 (set.member lt!2501013 (map!15586 z1!570 lambda!407098))))

(assert (=> d!2183851 (= (mapPost2!149 z1!570 lambda!407098 lt!2501013) lt!2501111)))

(declare-fun b!7006129 () Bool)

(assert (=> b!7006129 (= e!4211272 (set.member lt!2501111 z1!570))))

(assert (= (and d!2183851 res!2858545) b!7006129))

(declare-fun b_lambda!264031 () Bool)

(assert (=> (not b_lambda!264031) (not d!2183851)))

(declare-fun m!7702976 () Bool)

(assert (=> d!2183851 m!7702976))

(declare-fun m!7702978 () Bool)

(assert (=> d!2183851 m!7702978))

(declare-fun m!7702980 () Bool)

(assert (=> d!2183851 m!7702980))

(declare-fun m!7702982 () Bool)

(assert (=> d!2183851 m!7702982))

(declare-fun m!7702984 () Bool)

(assert (=> b!7006129 m!7702984))

(assert (=> b!7006026 d!2183851))

(declare-fun d!2183853 () Bool)

(assert (=> d!2183853 (= (isEmpty!39308 (exprs!6790 lt!2500998)) (is-Nil!67303 (exprs!6790 lt!2500998)))))

(assert (=> b!7006028 d!2183853))

(assert (=> b!7006037 d!2183845))

(declare-fun d!2183855 () Bool)

(assert (=> d!2183855 (forall!16207 (++!15285 lt!2501004 (exprs!6790 ct2!306)) lambda!407099)))

(declare-fun lt!2501112 () Unit!161264)

(assert (=> d!2183855 (= lt!2501112 (choose!52596 lt!2501004 (exprs!6790 ct2!306) lambda!407099))))

(assert (=> d!2183855 (forall!16207 lt!2501004 lambda!407099)))

(assert (=> d!2183855 (= (lemmaConcatPreservesForall!630 lt!2501004 (exprs!6790 ct2!306) lambda!407099) lt!2501112)))

(declare-fun bs!1865419 () Bool)

(assert (= bs!1865419 d!2183855))

(assert (=> bs!1865419 m!7702860))

(assert (=> bs!1865419 m!7702860))

(declare-fun m!7702986 () Bool)

(assert (=> bs!1865419 m!7702986))

(declare-fun m!7702988 () Bool)

(assert (=> bs!1865419 m!7702988))

(assert (=> bs!1865419 m!7702854))

(assert (=> b!7006037 d!2183855))

(declare-fun bs!1865420 () Bool)

(declare-fun d!2183857 () Bool)

(assert (= bs!1865420 (and d!2183857 b!7006036)))

(declare-fun lambda!407141 () Int)

(assert (=> bs!1865420 (not (= lambda!407141 lambda!407097))))

(assert (=> d!2183857 true))

(declare-fun order!28001 () Int)

(declare-fun dynLambda!27045 (Int Int) Int)

(assert (=> d!2183857 (< (dynLambda!27045 order!28001 lambda!407097) (dynLambda!27045 order!28001 lambda!407141))))

(declare-fun forall!16209 (List!67429 Int) Bool)

(assert (=> d!2183857 (= (exists!3126 lt!2501001 lambda!407097) (not (forall!16209 lt!2501001 lambda!407141)))))

(declare-fun bs!1865421 () Bool)

(assert (= bs!1865421 d!2183857))

(declare-fun m!7702990 () Bool)

(assert (=> bs!1865421 m!7702990))

(assert (=> b!7006036 d!2183857))

(declare-fun d!2183859 () Bool)

(declare-fun c!1301085 () Bool)

(assert (=> d!2183859 (= c!1301085 (isEmpty!39310 s!7408))))

(declare-fun e!4211273 () Bool)

(assert (=> d!2183859 (= (matchZipper!2834 lt!2500995 s!7408) e!4211273)))

(declare-fun b!7006132 () Bool)

(assert (=> b!7006132 (= e!4211273 (nullableZipper!2474 lt!2500995))))

(declare-fun b!7006133 () Bool)

(assert (=> b!7006133 (= e!4211273 (matchZipper!2834 (derivationStepZipper!2774 lt!2500995 (head!14158 s!7408)) (tail!13357 s!7408)))))

(assert (= (and d!2183859 c!1301085) b!7006132))

(assert (= (and d!2183859 (not c!1301085)) b!7006133))

(declare-fun m!7702992 () Bool)

(assert (=> d!2183859 m!7702992))

(declare-fun m!7702994 () Bool)

(assert (=> b!7006132 m!7702994))

(declare-fun m!7702996 () Bool)

(assert (=> b!7006133 m!7702996))

(assert (=> b!7006133 m!7702996))

(declare-fun m!7702998 () Bool)

(assert (=> b!7006133 m!7702998))

(declare-fun m!7703000 () Bool)

(assert (=> b!7006133 m!7703000))

(assert (=> b!7006133 m!7702998))

(assert (=> b!7006133 m!7703000))

(declare-fun m!7703002 () Bool)

(assert (=> b!7006133 m!7703002))

(assert (=> b!7006036 d!2183859))

(declare-fun bs!1865422 () Bool)

(declare-fun d!2183861 () Bool)

(assert (= bs!1865422 (and d!2183861 b!7006036)))

(declare-fun lambda!407144 () Int)

(assert (=> bs!1865422 (= lambda!407144 lambda!407097)))

(declare-fun bs!1865423 () Bool)

(assert (= bs!1865423 (and d!2183861 d!2183857)))

(assert (=> bs!1865423 (not (= lambda!407144 lambda!407141))))

(assert (=> d!2183861 true))

(assert (=> d!2183861 (exists!3126 lt!2501001 lambda!407144)))

(declare-fun lt!2501115 () Unit!161264)

(declare-fun choose!52598 (List!67429 List!67428) Unit!161264)

(assert (=> d!2183861 (= lt!2501115 (choose!52598 lt!2501001 s!7408))))

(declare-fun content!13347 (List!67429) (Set Context!12580))

(assert (=> d!2183861 (matchZipper!2834 (content!13347 lt!2501001) s!7408)))

(assert (=> d!2183861 (= (lemmaZipperMatchesExistsMatchingContext!263 lt!2501001 s!7408) lt!2501115)))

(declare-fun bs!1865424 () Bool)

(assert (= bs!1865424 d!2183861))

(declare-fun m!7703004 () Bool)

(assert (=> bs!1865424 m!7703004))

(declare-fun m!7703006 () Bool)

(assert (=> bs!1865424 m!7703006))

(declare-fun m!7703008 () Bool)

(assert (=> bs!1865424 m!7703008))

(assert (=> bs!1865424 m!7703008))

(declare-fun m!7703010 () Bool)

(assert (=> bs!1865424 m!7703010))

(assert (=> b!7006036 d!2183861))

(declare-fun d!2183863 () Bool)

(declare-fun e!4211276 () Bool)

(assert (=> d!2183863 e!4211276))

(declare-fun res!2858549 () Bool)

(assert (=> d!2183863 (=> (not res!2858549) (not e!4211276))))

(declare-fun lt!2501118 () Context!12580)

(declare-fun dynLambda!27046 (Int Context!12580) Bool)

(assert (=> d!2183863 (= res!2858549 (dynLambda!27046 lambda!407097 lt!2501118))))

(declare-fun getWitness!1226 (List!67429 Int) Context!12580)

(assert (=> d!2183863 (= lt!2501118 (getWitness!1226 (toList!10654 lt!2500985) lambda!407097))))

(declare-fun exists!3128 ((Set Context!12580) Int) Bool)

(assert (=> d!2183863 (exists!3128 lt!2500985 lambda!407097)))

(assert (=> d!2183863 (= (getWitness!1224 lt!2500985 lambda!407097) lt!2501118)))

(declare-fun b!7006136 () Bool)

(assert (=> b!7006136 (= e!4211276 (set.member lt!2501118 lt!2500985))))

(assert (= (and d!2183863 res!2858549) b!7006136))

(declare-fun b_lambda!264033 () Bool)

(assert (=> (not b_lambda!264033) (not d!2183863)))

(declare-fun m!7703012 () Bool)

(assert (=> d!2183863 m!7703012))

(assert (=> d!2183863 m!7702828))

(assert (=> d!2183863 m!7702828))

(declare-fun m!7703014 () Bool)

(assert (=> d!2183863 m!7703014))

(declare-fun m!7703016 () Bool)

(assert (=> d!2183863 m!7703016))

(declare-fun m!7703018 () Bool)

(assert (=> b!7006136 m!7703018))

(assert (=> b!7006036 d!2183863))

(declare-fun d!2183865 () Bool)

(declare-fun e!4211279 () Bool)

(assert (=> d!2183865 e!4211279))

(declare-fun res!2858552 () Bool)

(assert (=> d!2183865 (=> (not res!2858552) (not e!4211279))))

(declare-fun lt!2501121 () List!67429)

(declare-fun noDuplicate!2554 (List!67429) Bool)

(assert (=> d!2183865 (= res!2858552 (noDuplicate!2554 lt!2501121))))

(declare-fun choose!52599 ((Set Context!12580)) List!67429)

(assert (=> d!2183865 (= lt!2501121 (choose!52599 lt!2500985))))

(assert (=> d!2183865 (= (toList!10654 lt!2500985) lt!2501121)))

(declare-fun b!7006139 () Bool)

(assert (=> b!7006139 (= e!4211279 (= (content!13347 lt!2501121) lt!2500985))))

(assert (= (and d!2183865 res!2858552) b!7006139))

(declare-fun m!7703020 () Bool)

(assert (=> d!2183865 m!7703020))

(declare-fun m!7703022 () Bool)

(assert (=> d!2183865 m!7703022))

(declare-fun m!7703024 () Bool)

(assert (=> b!7006139 m!7703024))

(assert (=> b!7006036 d!2183865))

(assert (=> b!7006024 d!2183855))

(declare-fun bm!636185 () Bool)

(declare-fun call!636190 () (Set Context!12580))

(assert (=> bm!636185 (= call!636190 (derivationStepZipperDown!2012 (h!73751 (exprs!6790 lt!2500996)) (Context!12581 (t!381180 (exprs!6790 lt!2500996))) (h!73752 s!7408)))))

(declare-fun b!7006151 () Bool)

(declare-fun e!4211288 () (Set Context!12580))

(assert (=> b!7006151 (= e!4211288 call!636190)))

(declare-fun e!4211287 () (Set Context!12580))

(declare-fun b!7006152 () Bool)

(assert (=> b!7006152 (= e!4211287 (set.union call!636190 (derivationStepZipperUp!1944 (Context!12581 (t!381180 (exprs!6790 lt!2500996))) (h!73752 s!7408))))))

(declare-fun d!2183867 () Bool)

(declare-fun c!1301092 () Bool)

(declare-fun e!4211286 () Bool)

(assert (=> d!2183867 (= c!1301092 e!4211286)))

(declare-fun res!2858555 () Bool)

(assert (=> d!2183867 (=> (not res!2858555) (not e!4211286))))

(assert (=> d!2183867 (= res!2858555 (is-Cons!67303 (exprs!6790 lt!2500996)))))

(assert (=> d!2183867 (= (derivationStepZipperUp!1944 lt!2500996 (h!73752 s!7408)) e!4211287)))

(declare-fun b!7006150 () Bool)

(assert (=> b!7006150 (= e!4211286 (nullable!7054 (h!73751 (exprs!6790 lt!2500996))))))

(declare-fun b!7006153 () Bool)

(assert (=> b!7006153 (= e!4211287 e!4211288)))

(declare-fun c!1301093 () Bool)

(assert (=> b!7006153 (= c!1301093 (is-Cons!67303 (exprs!6790 lt!2500996)))))

(declare-fun b!7006154 () Bool)

(assert (=> b!7006154 (= e!4211288 (as set.empty (Set Context!12580)))))

(assert (= (and d!2183867 res!2858555) b!7006150))

(assert (= (and d!2183867 c!1301092) b!7006152))

(assert (= (and d!2183867 (not c!1301092)) b!7006153))

(assert (= (and b!7006153 c!1301093) b!7006151))

(assert (= (and b!7006153 (not c!1301093)) b!7006154))

(assert (= (or b!7006152 b!7006151) bm!636185))

(declare-fun m!7703026 () Bool)

(assert (=> bm!636185 m!7703026))

(declare-fun m!7703028 () Bool)

(assert (=> b!7006152 m!7703028))

(declare-fun m!7703030 () Bool)

(assert (=> b!7006150 m!7703030))

(assert (=> b!7006024 d!2183867))

(declare-fun b!7006155 () Bool)

(declare-fun e!4211289 () List!67427)

(assert (=> b!7006155 (= e!4211289 (exprs!6790 ct2!306))))

(declare-fun b!7006156 () Bool)

(assert (=> b!7006156 (= e!4211289 (Cons!67303 (h!73751 lt!2501004) (++!15285 (t!381180 lt!2501004) (exprs!6790 ct2!306))))))

(declare-fun b!7006157 () Bool)

(declare-fun res!2858557 () Bool)

(declare-fun e!4211290 () Bool)

(assert (=> b!7006157 (=> (not res!2858557) (not e!4211290))))

(declare-fun lt!2501122 () List!67427)

(assert (=> b!7006157 (= res!2858557 (= (size!40958 lt!2501122) (+ (size!40958 lt!2501004) (size!40958 (exprs!6790 ct2!306)))))))

(declare-fun d!2183869 () Bool)

(assert (=> d!2183869 e!4211290))

(declare-fun res!2858556 () Bool)

(assert (=> d!2183869 (=> (not res!2858556) (not e!4211290))))

(assert (=> d!2183869 (= res!2858556 (= (content!13346 lt!2501122) (set.union (content!13346 lt!2501004) (content!13346 (exprs!6790 ct2!306)))))))

(assert (=> d!2183869 (= lt!2501122 e!4211289)))

(declare-fun c!1301094 () Bool)

(assert (=> d!2183869 (= c!1301094 (is-Nil!67303 lt!2501004))))

(assert (=> d!2183869 (= (++!15285 lt!2501004 (exprs!6790 ct2!306)) lt!2501122)))

(declare-fun b!7006158 () Bool)

(assert (=> b!7006158 (= e!4211290 (or (not (= (exprs!6790 ct2!306) Nil!67303)) (= lt!2501122 lt!2501004)))))

(assert (= (and d!2183869 c!1301094) b!7006155))

(assert (= (and d!2183869 (not c!1301094)) b!7006156))

(assert (= (and d!2183869 res!2858556) b!7006157))

(assert (= (and b!7006157 res!2858557) b!7006158))

(declare-fun m!7703032 () Bool)

(assert (=> b!7006156 m!7703032))

(declare-fun m!7703034 () Bool)

(assert (=> b!7006157 m!7703034))

(declare-fun m!7703036 () Bool)

(assert (=> b!7006157 m!7703036))

(assert (=> b!7006157 m!7702962))

(declare-fun m!7703038 () Bool)

(assert (=> d!2183869 m!7703038))

(declare-fun m!7703040 () Bool)

(assert (=> d!2183869 m!7703040))

(assert (=> d!2183869 m!7702968))

(assert (=> b!7006024 d!2183869))

(declare-fun call!636208 () List!67427)

(declare-fun bm!636198 () Bool)

(declare-fun c!1301109 () Bool)

(declare-fun c!1301108 () Bool)

(declare-fun $colon$colon!2517 (List!67427 Regex!17294) List!67427)

(assert (=> bm!636198 (= call!636208 ($colon$colon!2517 (exprs!6790 lt!2500996) (ite (or c!1301108 c!1301109) (regTwo!35100 (h!73751 (exprs!6790 lt!2500998))) (h!73751 (exprs!6790 lt!2500998)))))))

(declare-fun b!7006181 () Bool)

(declare-fun e!4211304 () (Set Context!12580))

(declare-fun e!4211308 () (Set Context!12580))

(assert (=> b!7006181 (= e!4211304 e!4211308)))

(assert (=> b!7006181 (= c!1301109 (is-Concat!26139 (h!73751 (exprs!6790 lt!2500998))))))

(declare-fun b!7006182 () Bool)

(declare-fun c!1301107 () Bool)

(assert (=> b!7006182 (= c!1301107 (is-Star!17294 (h!73751 (exprs!6790 lt!2500998))))))

(declare-fun e!4211307 () (Set Context!12580))

(assert (=> b!7006182 (= e!4211308 e!4211307)))

(declare-fun b!7006183 () Bool)

(declare-fun e!4211305 () Bool)

(assert (=> b!7006183 (= c!1301108 e!4211305)))

(declare-fun res!2858560 () Bool)

(assert (=> b!7006183 (=> (not res!2858560) (not e!4211305))))

(assert (=> b!7006183 (= res!2858560 (is-Concat!26139 (h!73751 (exprs!6790 lt!2500998))))))

(declare-fun e!4211303 () (Set Context!12580))

(assert (=> b!7006183 (= e!4211303 e!4211304)))

(declare-fun b!7006184 () Bool)

(declare-fun call!636207 () (Set Context!12580))

(declare-fun call!636206 () (Set Context!12580))

(assert (=> b!7006184 (= e!4211304 (set.union call!636207 call!636206))))

(declare-fun b!7006185 () Bool)

(declare-fun call!636205 () (Set Context!12580))

(assert (=> b!7006185 (= e!4211303 (set.union call!636207 call!636205))))

(declare-fun bm!636199 () Bool)

(assert (=> bm!636199 (= call!636206 call!636205)))

(declare-fun b!7006186 () Bool)

(declare-fun call!636204 () (Set Context!12580))

(assert (=> b!7006186 (= e!4211308 call!636204)))

(declare-fun b!7006187 () Bool)

(assert (=> b!7006187 (= e!4211305 (nullable!7054 (regOne!35100 (h!73751 (exprs!6790 lt!2500998)))))))

(declare-fun d!2183871 () Bool)

(declare-fun c!1301105 () Bool)

(assert (=> d!2183871 (= c!1301105 (and (is-ElementMatch!17294 (h!73751 (exprs!6790 lt!2500998))) (= (c!1301069 (h!73751 (exprs!6790 lt!2500998))) (h!73752 s!7408))))))

(declare-fun e!4211306 () (Set Context!12580))

(assert (=> d!2183871 (= (derivationStepZipperDown!2012 (h!73751 (exprs!6790 lt!2500998)) lt!2500996 (h!73752 s!7408)) e!4211306)))

(declare-fun b!7006188 () Bool)

(assert (=> b!7006188 (= e!4211306 e!4211303)))

(declare-fun c!1301106 () Bool)

(assert (=> b!7006188 (= c!1301106 (is-Union!17294 (h!73751 (exprs!6790 lt!2500998))))))

(declare-fun bm!636200 () Bool)

(assert (=> bm!636200 (= call!636204 call!636206)))

(declare-fun bm!636201 () Bool)

(declare-fun call!636203 () List!67427)

(assert (=> bm!636201 (= call!636203 call!636208)))

(declare-fun bm!636202 () Bool)

(assert (=> bm!636202 (= call!636207 (derivationStepZipperDown!2012 (ite c!1301106 (regOne!35101 (h!73751 (exprs!6790 lt!2500998))) (regOne!35100 (h!73751 (exprs!6790 lt!2500998)))) (ite c!1301106 lt!2500996 (Context!12581 call!636208)) (h!73752 s!7408)))))

(declare-fun bm!636203 () Bool)

(assert (=> bm!636203 (= call!636205 (derivationStepZipperDown!2012 (ite c!1301106 (regTwo!35101 (h!73751 (exprs!6790 lt!2500998))) (ite c!1301108 (regTwo!35100 (h!73751 (exprs!6790 lt!2500998))) (ite c!1301109 (regOne!35100 (h!73751 (exprs!6790 lt!2500998))) (reg!17623 (h!73751 (exprs!6790 lt!2500998)))))) (ite (or c!1301106 c!1301108) lt!2500996 (Context!12581 call!636203)) (h!73752 s!7408)))))

(declare-fun b!7006189 () Bool)

(assert (=> b!7006189 (= e!4211306 (set.insert lt!2500996 (as set.empty (Set Context!12580))))))

(declare-fun b!7006190 () Bool)

(assert (=> b!7006190 (= e!4211307 (as set.empty (Set Context!12580)))))

(declare-fun b!7006191 () Bool)

(assert (=> b!7006191 (= e!4211307 call!636204)))

(assert (= (and d!2183871 c!1301105) b!7006189))

(assert (= (and d!2183871 (not c!1301105)) b!7006188))

(assert (= (and b!7006188 c!1301106) b!7006185))

(assert (= (and b!7006188 (not c!1301106)) b!7006183))

(assert (= (and b!7006183 res!2858560) b!7006187))

(assert (= (and b!7006183 c!1301108) b!7006184))

(assert (= (and b!7006183 (not c!1301108)) b!7006181))

(assert (= (and b!7006181 c!1301109) b!7006186))

(assert (= (and b!7006181 (not c!1301109)) b!7006182))

(assert (= (and b!7006182 c!1301107) b!7006191))

(assert (= (and b!7006182 (not c!1301107)) b!7006190))

(assert (= (or b!7006186 b!7006191) bm!636201))

(assert (= (or b!7006186 b!7006191) bm!636200))

(assert (= (or b!7006184 bm!636200) bm!636199))

(assert (= (or b!7006184 bm!636201) bm!636198))

(assert (= (or b!7006185 b!7006184) bm!636202))

(assert (= (or b!7006185 bm!636199) bm!636203))

(declare-fun m!7703042 () Bool)

(assert (=> b!7006187 m!7703042))

(declare-fun m!7703044 () Bool)

(assert (=> bm!636203 m!7703044))

(declare-fun m!7703046 () Bool)

(assert (=> b!7006189 m!7703046))

(declare-fun m!7703048 () Bool)

(assert (=> bm!636202 m!7703048))

(declare-fun m!7703050 () Bool)

(assert (=> bm!636198 m!7703050))

(assert (=> b!7006024 d!2183871))

(assert (=> b!7006032 d!2183849))

(declare-fun d!2183873 () Bool)

(declare-fun nullableFct!2669 (Regex!17294) Bool)

(assert (=> d!2183873 (= (nullable!7054 (h!73751 (exprs!6790 lt!2500998))) (nullableFct!2669 (h!73751 (exprs!6790 lt!2500998))))))

(declare-fun bs!1865425 () Bool)

(assert (= bs!1865425 d!2183873))

(declare-fun m!7703052 () Bool)

(assert (=> bs!1865425 m!7703052))

(assert (=> b!7006025 d!2183873))

(declare-fun d!2183875 () Bool)

(assert (=> d!2183875 (= (tail!13355 (exprs!6790 lt!2500998)) (t!381180 (exprs!6790 lt!2500998)))))

(assert (=> b!7006025 d!2183875))

(assert (=> b!7006021 d!2183845))

(assert (=> b!7006021 d!2183855))

(declare-fun bm!636204 () Bool)

(declare-fun call!636209 () (Set Context!12580))

(assert (=> bm!636204 (= call!636209 (derivationStepZipperDown!2012 (h!73751 (exprs!6790 lt!2501009)) (Context!12581 (t!381180 (exprs!6790 lt!2501009))) (h!73752 s!7408)))))

(declare-fun b!7006193 () Bool)

(declare-fun e!4211311 () (Set Context!12580))

(assert (=> b!7006193 (= e!4211311 call!636209)))

(declare-fun e!4211310 () (Set Context!12580))

(declare-fun b!7006194 () Bool)

(assert (=> b!7006194 (= e!4211310 (set.union call!636209 (derivationStepZipperUp!1944 (Context!12581 (t!381180 (exprs!6790 lt!2501009))) (h!73752 s!7408))))))

(declare-fun d!2183877 () Bool)

(declare-fun c!1301110 () Bool)

(declare-fun e!4211309 () Bool)

(assert (=> d!2183877 (= c!1301110 e!4211309)))

(declare-fun res!2858561 () Bool)

(assert (=> d!2183877 (=> (not res!2858561) (not e!4211309))))

(assert (=> d!2183877 (= res!2858561 (is-Cons!67303 (exprs!6790 lt!2501009)))))

(assert (=> d!2183877 (= (derivationStepZipperUp!1944 lt!2501009 (h!73752 s!7408)) e!4211310)))

(declare-fun b!7006192 () Bool)

(assert (=> b!7006192 (= e!4211309 (nullable!7054 (h!73751 (exprs!6790 lt!2501009))))))

(declare-fun b!7006195 () Bool)

(assert (=> b!7006195 (= e!4211310 e!4211311)))

(declare-fun c!1301111 () Bool)

(assert (=> b!7006195 (= c!1301111 (is-Cons!67303 (exprs!6790 lt!2501009)))))

(declare-fun b!7006196 () Bool)

(assert (=> b!7006196 (= e!4211311 (as set.empty (Set Context!12580)))))

(assert (= (and d!2183877 res!2858561) b!7006192))

(assert (= (and d!2183877 c!1301110) b!7006194))

(assert (= (and d!2183877 (not c!1301110)) b!7006195))

(assert (= (and b!7006195 c!1301111) b!7006193))

(assert (= (and b!7006195 (not c!1301111)) b!7006196))

(assert (= (or b!7006194 b!7006193) bm!636204))

(declare-fun m!7703054 () Bool)

(assert (=> bm!636204 m!7703054))

(declare-fun m!7703056 () Bool)

(assert (=> b!7006194 m!7703056))

(declare-fun m!7703058 () Bool)

(assert (=> b!7006192 m!7703058))

(assert (=> b!7006023 d!2183877))

(declare-fun d!2183879 () Bool)

(declare-fun dynLambda!27047 (Int Context!12580) (Set Context!12580))

(assert (=> d!2183879 (= (flatMap!2280 lt!2501005 lambda!407100) (dynLambda!27047 lambda!407100 lt!2501009))))

(declare-fun lt!2501125 () Unit!161264)

(declare-fun choose!52600 ((Set Context!12580) Context!12580 Int) Unit!161264)

(assert (=> d!2183879 (= lt!2501125 (choose!52600 lt!2501005 lt!2501009 lambda!407100))))

(assert (=> d!2183879 (= lt!2501005 (set.insert lt!2501009 (as set.empty (Set Context!12580))))))

(assert (=> d!2183879 (= (lemmaFlatMapOnSingletonSet!1795 lt!2501005 lt!2501009 lambda!407100) lt!2501125)))

(declare-fun b_lambda!264035 () Bool)

(assert (=> (not b_lambda!264035) (not d!2183879)))

(declare-fun bs!1865426 () Bool)

(assert (= bs!1865426 d!2183879))

(assert (=> bs!1865426 m!7702822))

(declare-fun m!7703060 () Bool)

(assert (=> bs!1865426 m!7703060))

(declare-fun m!7703062 () Bool)

(assert (=> bs!1865426 m!7703062))

(assert (=> bs!1865426 m!7702824))

(assert (=> b!7006023 d!2183879))

(declare-fun d!2183881 () Bool)

(declare-fun choose!52601 ((Set Context!12580) Int) (Set Context!12580))

(assert (=> d!2183881 (= (flatMap!2280 lt!2501005 lambda!407100) (choose!52601 lt!2501005 lambda!407100))))

(declare-fun bs!1865427 () Bool)

(assert (= bs!1865427 d!2183881))

(declare-fun m!7703064 () Bool)

(assert (=> bs!1865427 m!7703064))

(assert (=> b!7006023 d!2183881))

(assert (=> b!7006023 d!2183849))

(declare-fun bs!1865428 () Bool)

(declare-fun d!2183883 () Bool)

(assert (= bs!1865428 (and d!2183883 b!7006023)))

(declare-fun lambda!407147 () Int)

(assert (=> bs!1865428 (= lambda!407147 lambda!407100)))

(assert (=> d!2183883 true))

(assert (=> d!2183883 (= (derivationStepZipper!2774 lt!2501005 (h!73752 s!7408)) (flatMap!2280 lt!2501005 lambda!407147))))

(declare-fun bs!1865429 () Bool)

(assert (= bs!1865429 d!2183883))

(declare-fun m!7703066 () Bool)

(assert (=> bs!1865429 m!7703066))

(assert (=> b!7006023 d!2183883))

(declare-fun d!2183885 () Bool)

(declare-fun res!2858566 () Bool)

(declare-fun e!4211316 () Bool)

(assert (=> d!2183885 (=> res!2858566 e!4211316)))

(assert (=> d!2183885 (= res!2858566 (is-Nil!67303 lt!2501004))))

(assert (=> d!2183885 (= (forall!16207 lt!2501004 lambda!407099) e!4211316)))

(declare-fun b!7006203 () Bool)

(declare-fun e!4211317 () Bool)

(assert (=> b!7006203 (= e!4211316 e!4211317)))

(declare-fun res!2858567 () Bool)

(assert (=> b!7006203 (=> (not res!2858567) (not e!4211317))))

(declare-fun dynLambda!27048 (Int Regex!17294) Bool)

(assert (=> b!7006203 (= res!2858567 (dynLambda!27048 lambda!407099 (h!73751 lt!2501004)))))

(declare-fun b!7006204 () Bool)

(assert (=> b!7006204 (= e!4211317 (forall!16207 (t!381180 lt!2501004) lambda!407099))))

(assert (= (and d!2183885 (not res!2858566)) b!7006203))

(assert (= (and b!7006203 res!2858567) b!7006204))

(declare-fun b_lambda!264037 () Bool)

(assert (=> (not b_lambda!264037) (not b!7006203)))

(declare-fun m!7703068 () Bool)

(assert (=> b!7006203 m!7703068))

(declare-fun m!7703070 () Bool)

(assert (=> b!7006204 m!7703070))

(assert (=> b!7006022 d!2183885))

(assert (=> b!7006022 d!2183855))

(declare-fun bs!1865430 () Bool)

(declare-fun d!2183887 () Bool)

(assert (= bs!1865430 (and d!2183887 b!7006026)))

(declare-fun lambda!407150 () Int)

(assert (=> bs!1865430 (= lambda!407150 lambda!407099)))

(assert (=> d!2183887 (= (inv!86095 setElem!48228) (forall!16207 (exprs!6790 setElem!48228) lambda!407150))))

(declare-fun bs!1865431 () Bool)

(assert (= bs!1865431 d!2183887))

(declare-fun m!7703072 () Bool)

(assert (=> bs!1865431 m!7703072))

(assert (=> setNonEmpty!48228 d!2183887))

(declare-fun d!2183889 () Bool)

(declare-fun c!1301114 () Bool)

(assert (=> d!2183889 (= c!1301114 (isEmpty!39310 s!7408))))

(declare-fun e!4211318 () Bool)

(assert (=> d!2183889 (= (matchZipper!2834 lt!2500985 s!7408) e!4211318)))

(declare-fun b!7006205 () Bool)

(assert (=> b!7006205 (= e!4211318 (nullableZipper!2474 lt!2500985))))

(declare-fun b!7006206 () Bool)

(assert (=> b!7006206 (= e!4211318 (matchZipper!2834 (derivationStepZipper!2774 lt!2500985 (head!14158 s!7408)) (tail!13357 s!7408)))))

(assert (= (and d!2183889 c!1301114) b!7006205))

(assert (= (and d!2183889 (not c!1301114)) b!7006206))

(assert (=> d!2183889 m!7702992))

(declare-fun m!7703074 () Bool)

(assert (=> b!7006205 m!7703074))

(assert (=> b!7006206 m!7702996))

(assert (=> b!7006206 m!7702996))

(declare-fun m!7703076 () Bool)

(assert (=> b!7006206 m!7703076))

(assert (=> b!7006206 m!7703000))

(assert (=> b!7006206 m!7703076))

(assert (=> b!7006206 m!7703000))

(declare-fun m!7703078 () Bool)

(assert (=> b!7006206 m!7703078))

(assert (=> start!674392 d!2183889))

(declare-fun bs!1865432 () Bool)

(declare-fun d!2183891 () Bool)

(assert (= bs!1865432 (and d!2183891 b!7006026)))

(declare-fun lambda!407155 () Int)

(assert (=> bs!1865432 (= lambda!407155 lambda!407098)))

(assert (=> d!2183891 true))

(assert (=> d!2183891 (= (appendTo!415 z1!570 ct2!306) (map!15586 z1!570 lambda!407155))))

(declare-fun bs!1865433 () Bool)

(assert (= bs!1865433 d!2183891))

(declare-fun m!7703080 () Bool)

(assert (=> bs!1865433 m!7703080))

(assert (=> start!674392 d!2183891))

(declare-fun bs!1865434 () Bool)

(declare-fun d!2183893 () Bool)

(assert (= bs!1865434 (and d!2183893 b!7006026)))

(declare-fun lambda!407156 () Int)

(assert (=> bs!1865434 (= lambda!407156 lambda!407099)))

(declare-fun bs!1865435 () Bool)

(assert (= bs!1865435 (and d!2183893 d!2183887)))

(assert (=> bs!1865435 (= lambda!407156 lambda!407150)))

(assert (=> d!2183893 (= (inv!86095 ct2!306) (forall!16207 (exprs!6790 ct2!306) lambda!407156))))

(declare-fun bs!1865436 () Bool)

(assert (= bs!1865436 d!2183893))

(declare-fun m!7703082 () Bool)

(assert (=> bs!1865436 m!7703082))

(assert (=> start!674392 d!2183893))

(declare-fun d!2183895 () Bool)

(declare-fun e!4211321 () Bool)

(assert (=> d!2183895 (= (matchZipper!2834 (set.union lt!2501007 lt!2501006) (t!381181 s!7408)) e!4211321)))

(declare-fun res!2858570 () Bool)

(assert (=> d!2183895 (=> res!2858570 e!4211321)))

(assert (=> d!2183895 (= res!2858570 (matchZipper!2834 lt!2501007 (t!381181 s!7408)))))

(declare-fun lt!2501130 () Unit!161264)

(declare-fun choose!52602 ((Set Context!12580) (Set Context!12580) List!67428) Unit!161264)

(assert (=> d!2183895 (= lt!2501130 (choose!52602 lt!2501007 lt!2501006 (t!381181 s!7408)))))

(assert (=> d!2183895 (= (lemmaZipperConcatMatchesSameAsBothZippers!1467 lt!2501007 lt!2501006 (t!381181 s!7408)) lt!2501130)))

(declare-fun b!7006209 () Bool)

(assert (=> b!7006209 (= e!4211321 (matchZipper!2834 lt!2501006 (t!381181 s!7408)))))

(assert (= (and d!2183895 (not res!2858570)) b!7006209))

(declare-fun m!7703084 () Bool)

(assert (=> d!2183895 m!7703084))

(assert (=> d!2183895 m!7702852))

(declare-fun m!7703086 () Bool)

(assert (=> d!2183895 m!7703086))

(assert (=> b!7006209 m!7702842))

(assert (=> b!7006020 d!2183895))

(declare-fun d!2183897 () Bool)

(declare-fun c!1301116 () Bool)

(assert (=> d!2183897 (= c!1301116 (isEmpty!39310 (t!381181 s!7408)))))

(declare-fun e!4211322 () Bool)

(assert (=> d!2183897 (= (matchZipper!2834 lt!2500997 (t!381181 s!7408)) e!4211322)))

(declare-fun b!7006210 () Bool)

(assert (=> b!7006210 (= e!4211322 (nullableZipper!2474 lt!2500997))))

(declare-fun b!7006211 () Bool)

(assert (=> b!7006211 (= e!4211322 (matchZipper!2834 (derivationStepZipper!2774 lt!2500997 (head!14158 (t!381181 s!7408))) (tail!13357 (t!381181 s!7408))))))

(assert (= (and d!2183897 c!1301116) b!7006210))

(assert (= (and d!2183897 (not c!1301116)) b!7006211))

(assert (=> d!2183897 m!7702944))

(declare-fun m!7703088 () Bool)

(assert (=> b!7006210 m!7703088))

(assert (=> b!7006211 m!7702948))

(assert (=> b!7006211 m!7702948))

(declare-fun m!7703090 () Bool)

(assert (=> b!7006211 m!7703090))

(assert (=> b!7006211 m!7702952))

(assert (=> b!7006211 m!7703090))

(assert (=> b!7006211 m!7702952))

(declare-fun m!7703092 () Bool)

(assert (=> b!7006211 m!7703092))

(assert (=> b!7006020 d!2183897))

(declare-fun d!2183899 () Bool)

(declare-fun c!1301117 () Bool)

(assert (=> d!2183899 (= c!1301117 (isEmpty!39310 (t!381181 s!7408)))))

(declare-fun e!4211323 () Bool)

(assert (=> d!2183899 (= (matchZipper!2834 lt!2501007 (t!381181 s!7408)) e!4211323)))

(declare-fun b!7006212 () Bool)

(assert (=> b!7006212 (= e!4211323 (nullableZipper!2474 lt!2501007))))

(declare-fun b!7006213 () Bool)

(assert (=> b!7006213 (= e!4211323 (matchZipper!2834 (derivationStepZipper!2774 lt!2501007 (head!14158 (t!381181 s!7408))) (tail!13357 (t!381181 s!7408))))))

(assert (= (and d!2183899 c!1301117) b!7006212))

(assert (= (and d!2183899 (not c!1301117)) b!7006213))

(assert (=> d!2183899 m!7702944))

(declare-fun m!7703094 () Bool)

(assert (=> b!7006212 m!7703094))

(assert (=> b!7006213 m!7702948))

(assert (=> b!7006213 m!7702948))

(declare-fun m!7703096 () Bool)

(assert (=> b!7006213 m!7703096))

(assert (=> b!7006213 m!7702952))

(assert (=> b!7006213 m!7703096))

(assert (=> b!7006213 m!7702952))

(declare-fun m!7703098 () Bool)

(assert (=> b!7006213 m!7703098))

(assert (=> b!7006020 d!2183899))

(assert (=> b!7006020 d!2183855))

(declare-fun d!2183901 () Bool)

(declare-fun c!1301118 () Bool)

(assert (=> d!2183901 (= c!1301118 (isEmpty!39310 (t!381181 s!7408)))))

(declare-fun e!4211324 () Bool)

(assert (=> d!2183901 (= (matchZipper!2834 lt!2501010 (t!381181 s!7408)) e!4211324)))

(declare-fun b!7006214 () Bool)

(assert (=> b!7006214 (= e!4211324 (nullableZipper!2474 lt!2501010))))

(declare-fun b!7006215 () Bool)

(assert (=> b!7006215 (= e!4211324 (matchZipper!2834 (derivationStepZipper!2774 lt!2501010 (head!14158 (t!381181 s!7408))) (tail!13357 (t!381181 s!7408))))))

(assert (= (and d!2183901 c!1301118) b!7006214))

(assert (= (and d!2183901 (not c!1301118)) b!7006215))

(assert (=> d!2183901 m!7702944))

(declare-fun m!7703100 () Bool)

(assert (=> b!7006214 m!7703100))

(assert (=> b!7006215 m!7702948))

(assert (=> b!7006215 m!7702948))

(declare-fun m!7703102 () Bool)

(assert (=> b!7006215 m!7703102))

(assert (=> b!7006215 m!7702952))

(assert (=> b!7006215 m!7703102))

(assert (=> b!7006215 m!7702952))

(declare-fun m!7703104 () Bool)

(assert (=> b!7006215 m!7703104))

(assert (=> b!7006020 d!2183901))

(declare-fun b!7006220 () Bool)

(declare-fun e!4211327 () Bool)

(declare-fun tp!1931725 () Bool)

(declare-fun tp!1931726 () Bool)

(assert (=> b!7006220 (= e!4211327 (and tp!1931725 tp!1931726))))

(assert (=> b!7006031 (= tp!1931708 e!4211327)))

(assert (= (and b!7006031 (is-Cons!67303 (exprs!6790 ct2!306))) b!7006220))

(declare-fun b!7006225 () Bool)

(declare-fun e!4211330 () Bool)

(declare-fun tp!1931729 () Bool)

(assert (=> b!7006225 (= e!4211330 (and tp_is_empty!43813 tp!1931729))))

(assert (=> b!7006038 (= tp!1931707 e!4211330)))

(assert (= (and b!7006038 (is-Cons!67304 (t!381181 s!7408))) b!7006225))

(declare-fun condSetEmpty!48234 () Bool)

(assert (=> setNonEmpty!48228 (= condSetEmpty!48234 (= setRest!48228 (as set.empty (Set Context!12580))))))

(declare-fun setRes!48234 () Bool)

(assert (=> setNonEmpty!48228 (= tp!1931706 setRes!48234)))

(declare-fun setIsEmpty!48234 () Bool)

(assert (=> setIsEmpty!48234 setRes!48234))

(declare-fun e!4211333 () Bool)

(declare-fun setElem!48234 () Context!12580)

(declare-fun setNonEmpty!48234 () Bool)

(declare-fun tp!1931735 () Bool)

(assert (=> setNonEmpty!48234 (= setRes!48234 (and tp!1931735 (inv!86095 setElem!48234) e!4211333))))

(declare-fun setRest!48234 () (Set Context!12580))

(assert (=> setNonEmpty!48234 (= setRest!48228 (set.union (set.insert setElem!48234 (as set.empty (Set Context!12580))) setRest!48234))))

(declare-fun b!7006230 () Bool)

(declare-fun tp!1931734 () Bool)

(assert (=> b!7006230 (= e!4211333 tp!1931734)))

(assert (= (and setNonEmpty!48228 condSetEmpty!48234) setIsEmpty!48234))

(assert (= (and setNonEmpty!48228 (not condSetEmpty!48234)) setNonEmpty!48234))

(assert (= setNonEmpty!48234 b!7006230))

(declare-fun m!7703106 () Bool)

(assert (=> setNonEmpty!48234 m!7703106))

(declare-fun b!7006231 () Bool)

(declare-fun e!4211334 () Bool)

(declare-fun tp!1931736 () Bool)

(declare-fun tp!1931737 () Bool)

(assert (=> b!7006231 (= e!4211334 (and tp!1931736 tp!1931737))))

(assert (=> b!7006030 (= tp!1931705 e!4211334)))

(assert (= (and b!7006030 (is-Cons!67303 (exprs!6790 setElem!48228))) b!7006231))

(declare-fun b_lambda!264039 () Bool)

(assert (= b_lambda!264037 (or b!7006026 b_lambda!264039)))

(declare-fun bs!1865437 () Bool)

(declare-fun d!2183903 () Bool)

(assert (= bs!1865437 (and d!2183903 b!7006026)))

(declare-fun validRegex!8876 (Regex!17294) Bool)

(assert (=> bs!1865437 (= (dynLambda!27048 lambda!407099 (h!73751 lt!2501004)) (validRegex!8876 (h!73751 lt!2501004)))))

(declare-fun m!7703108 () Bool)

(assert (=> bs!1865437 m!7703108))

(assert (=> b!7006203 d!2183903))

(declare-fun b_lambda!264041 () Bool)

(assert (= b_lambda!264035 (or b!7006023 b_lambda!264041)))

(declare-fun bs!1865438 () Bool)

(declare-fun d!2183905 () Bool)

(assert (= bs!1865438 (and d!2183905 b!7006023)))

(assert (=> bs!1865438 (= (dynLambda!27047 lambda!407100 lt!2501009) (derivationStepZipperUp!1944 lt!2501009 (h!73752 s!7408)))))

(assert (=> bs!1865438 m!7702818))

(assert (=> d!2183879 d!2183905))

(declare-fun b_lambda!264043 () Bool)

(assert (= b_lambda!264033 (or b!7006036 b_lambda!264043)))

(declare-fun bs!1865439 () Bool)

(declare-fun d!2183907 () Bool)

(assert (= bs!1865439 (and d!2183907 b!7006036)))

(assert (=> bs!1865439 (= (dynLambda!27046 lambda!407097 lt!2501118) (matchZipper!2834 (set.insert lt!2501118 (as set.empty (Set Context!12580))) s!7408))))

(declare-fun m!7703110 () Bool)

(assert (=> bs!1865439 m!7703110))

(assert (=> bs!1865439 m!7703110))

(declare-fun m!7703112 () Bool)

(assert (=> bs!1865439 m!7703112))

(assert (=> d!2183863 d!2183907))

(declare-fun b_lambda!264045 () Bool)

(assert (= b_lambda!264031 (or b!7006026 b_lambda!264045)))

(declare-fun bs!1865440 () Bool)

(declare-fun d!2183909 () Bool)

(assert (= bs!1865440 (and d!2183909 b!7006026)))

(declare-fun lt!2501131 () Unit!161264)

(assert (=> bs!1865440 (= lt!2501131 (lemmaConcatPreservesForall!630 (exprs!6790 lt!2501111) (exprs!6790 ct2!306) lambda!407099))))

(assert (=> bs!1865440 (= (dynLambda!27044 lambda!407098 lt!2501111) (Context!12581 (++!15285 (exprs!6790 lt!2501111) (exprs!6790 ct2!306))))))

(declare-fun m!7703114 () Bool)

(assert (=> bs!1865440 m!7703114))

(declare-fun m!7703116 () Bool)

(assert (=> bs!1865440 m!7703116))

(assert (=> d!2183851 d!2183909))

(push 1)

(assert (not d!2183899))

(assert (not bm!636204))

(assert (not b!7006139))

(assert (not b!7006124))

(assert (not d!2183849))

(assert (not b!7006123))

(assert (not b!7006214))

(assert (not bm!636203))

(assert (not b!7006157))

(assert (not b!7006187))

(assert (not b!7006204))

(assert (not d!2183879))

(assert (not bs!1865439))

(assert (not b!7006213))

(assert (not d!2183857))

(assert (not b!7006113))

(assert (not d!2183873))

(assert (not setNonEmpty!48234))

(assert (not b!7006192))

(assert (not bm!636198))

(assert (not b!7006209))

(assert (not b!7006133))

(assert (not b!7006206))

(assert (not bs!1865438))

(assert (not d!2183881))

(assert (not d!2183897))

(assert (not d!2183855))

(assert (not bm!636185))

(assert (not d!2183847))

(assert (not d!2183859))

(assert (not d!2183893))

(assert (not d!2183861))

(assert (not d!2183887))

(assert (not b!7006156))

(assert (not d!2183891))

(assert (not b_lambda!264043))

(assert (not b_lambda!264041))

(assert (not b!7006220))

(assert (not b!7006205))

(assert (not b_lambda!264045))

(assert (not d!2183863))

(assert (not d!2183865))

(assert (not bm!636202))

(assert (not b!7006230))

(assert (not b!7006152))

(assert (not b!7006210))

(assert (not b!7006132))

(assert (not d!2183901))

(assert (not b!7006225))

(assert (not d!2183869))

(assert (not b!7006231))

(assert (not d!2183845))

(assert (not b!7006112))

(assert (not d!2183895))

(assert (not b!7006211))

(assert (not d!2183883))

(assert tp_is_empty!43813)

(assert (not b!7006194))

(assert (not d!2183889))

(assert (not b_lambda!264039))

(assert (not b!7006212))

(assert (not bs!1865440))

(assert (not bs!1865437))

(assert (not d!2183851))

(assert (not b!7006150))

(assert (not b!7006215))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


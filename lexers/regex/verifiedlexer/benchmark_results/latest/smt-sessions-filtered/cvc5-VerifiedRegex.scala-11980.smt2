; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!671208 () Bool)

(assert start!671208)

(declare-fun b!6987251 () Bool)

(assert (=> b!6987251 true))

(declare-fun b!6987257 () Bool)

(assert (=> b!6987257 true))

(declare-fun b!6987254 () Bool)

(assert (=> b!6987254 true))

(declare-fun b!6987250 () Bool)

(declare-fun e!4199622 () Bool)

(declare-fun tp!1929332 () Bool)

(assert (=> b!6987250 (= e!4199622 tp!1929332)))

(declare-fun e!4199623 () Bool)

(declare-fun e!4199621 () Bool)

(assert (=> b!6987251 (= e!4199623 (not e!4199621))))

(declare-fun res!2849376 () Bool)

(assert (=> b!6987251 (=> res!2849376 e!4199621)))

(declare-datatypes ((C!34682 0))(
  ( (C!34683 (val!27043 Int)) )
))
(declare-datatypes ((Regex!17206 0))(
  ( (ElementMatch!17206 (c!1295760 C!34682)) (Concat!26051 (regOne!34924 Regex!17206) (regTwo!34924 Regex!17206)) (EmptyExpr!17206) (Star!17206 (reg!17535 Regex!17206)) (EmptyLang!17206) (Union!17206 (regOne!34925 Regex!17206) (regTwo!34925 Regex!17206)) )
))
(declare-datatypes ((List!67163 0))(
  ( (Nil!67039) (Cons!67039 (h!73487 Regex!17206) (t!380910 List!67163)) )
))
(declare-datatypes ((Context!12404 0))(
  ( (Context!12405 (exprs!6702 List!67163)) )
))
(declare-fun lt!2485102 () (Set Context!12404))

(declare-datatypes ((List!67164 0))(
  ( (Nil!67040) (Cons!67040 (h!73488 C!34682) (t!380911 List!67164)) )
))
(declare-fun s!7408 () List!67164)

(declare-fun matchZipper!2746 ((Set Context!12404) List!67164) Bool)

(assert (=> b!6987251 (= res!2849376 (not (matchZipper!2746 lt!2485102 s!7408)))))

(declare-fun lt!2485096 () Context!12404)

(assert (=> b!6987251 (= lt!2485102 (set.insert lt!2485096 (as set.empty (Set Context!12404))))))

(declare-fun lt!2485093 () (Set Context!12404))

(declare-fun lambda!400781 () Int)

(declare-fun getWitness!1097 ((Set Context!12404) Int) Context!12404)

(assert (=> b!6987251 (= lt!2485096 (getWitness!1097 lt!2485093 lambda!400781))))

(declare-datatypes ((List!67165 0))(
  ( (Nil!67041) (Cons!67041 (h!73489 Context!12404) (t!380912 List!67165)) )
))
(declare-fun lt!2485098 () List!67165)

(declare-fun exists!2986 (List!67165 Int) Bool)

(assert (=> b!6987251 (exists!2986 lt!2485098 lambda!400781)))

(declare-datatypes ((Unit!161067 0))(
  ( (Unit!161068) )
))
(declare-fun lt!2485097 () Unit!161067)

(declare-fun lemmaZipperMatchesExistsMatchingContext!175 (List!67165 List!67164) Unit!161067)

(assert (=> b!6987251 (= lt!2485097 (lemmaZipperMatchesExistsMatchingContext!175 lt!2485098 s!7408))))

(declare-fun toList!10566 ((Set Context!12404)) List!67165)

(assert (=> b!6987251 (= lt!2485098 (toList!10566 lt!2485093))))

(declare-fun b!6987252 () Bool)

(declare-fun e!4199625 () Bool)

(declare-fun tp_is_empty!43637 () Bool)

(declare-fun tp!1929330 () Bool)

(assert (=> b!6987252 (= e!4199625 (and tp_is_empty!43637 tp!1929330))))

(declare-fun b!6987253 () Bool)

(declare-fun res!2849380 () Bool)

(declare-fun e!4199613 () Bool)

(assert (=> b!6987253 (=> res!2849380 e!4199613)))

(declare-fun lt!2485109 () Context!12404)

(declare-fun isEmpty!39130 (List!67163) Bool)

(assert (=> b!6987253 (= res!2849380 (isEmpty!39130 (exprs!6702 lt!2485109)))))

(declare-fun e!4199612 () Bool)

(assert (=> b!6987254 (= e!4199612 e!4199613)))

(declare-fun res!2849372 () Bool)

(assert (=> b!6987254 (=> res!2849372 e!4199613)))

(declare-fun lt!2485104 () (Set Context!12404))

(declare-fun lt!2485084 () (Set Context!12404))

(declare-fun derivationStepZipper!2686 ((Set Context!12404) C!34682) (Set Context!12404))

(assert (=> b!6987254 (= res!2849372 (not (= (derivationStepZipper!2686 lt!2485084 (h!73488 s!7408)) lt!2485104)))))

(declare-fun lt!2485111 () Context!12404)

(declare-fun lambda!400784 () Int)

(declare-fun flatMap!2192 ((Set Context!12404) Int) (Set Context!12404))

(declare-fun derivationStepZipperUp!1856 (Context!12404 C!34682) (Set Context!12404))

(assert (=> b!6987254 (= (flatMap!2192 lt!2485084 lambda!400784) (derivationStepZipperUp!1856 lt!2485111 (h!73488 s!7408)))))

(declare-fun lt!2485099 () Unit!161067)

(declare-fun lemmaFlatMapOnSingletonSet!1707 ((Set Context!12404) Context!12404 Int) Unit!161067)

(assert (=> b!6987254 (= lt!2485099 (lemmaFlatMapOnSingletonSet!1707 lt!2485084 lt!2485111 lambda!400784))))

(assert (=> b!6987254 (= lt!2485104 (derivationStepZipperUp!1856 lt!2485111 (h!73488 s!7408)))))

(declare-fun lambda!400783 () Int)

(declare-fun lt!2485110 () Unit!161067)

(declare-fun ct2!306 () Context!12404)

(declare-fun lemmaConcatPreservesForall!542 (List!67163 List!67163 Int) Unit!161067)

(assert (=> b!6987254 (= lt!2485110 (lemmaConcatPreservesForall!542 (exprs!6702 lt!2485109) (exprs!6702 ct2!306) lambda!400783))))

(declare-fun b!6987255 () Bool)

(declare-fun res!2849383 () Bool)

(assert (=> b!6987255 (=> res!2849383 e!4199621)))

(assert (=> b!6987255 (= res!2849383 (not (set.member lt!2485096 lt!2485093)))))

(declare-fun b!6987256 () Bool)

(declare-fun e!4199617 () Bool)

(assert (=> b!6987256 (= e!4199617 e!4199612)))

(declare-fun res!2849375 () Bool)

(assert (=> b!6987256 (=> res!2849375 e!4199612)))

(assert (=> b!6987256 (= res!2849375 (not (= lt!2485084 lt!2485102)))))

(assert (=> b!6987256 (= lt!2485084 (set.insert lt!2485111 (as set.empty (Set Context!12404))))))

(declare-fun lt!2485094 () Unit!161067)

(assert (=> b!6987256 (= lt!2485094 (lemmaConcatPreservesForall!542 (exprs!6702 lt!2485109) (exprs!6702 ct2!306) lambda!400783))))

(assert (=> b!6987257 (= e!4199621 e!4199617)))

(declare-fun res!2849374 () Bool)

(assert (=> b!6987257 (=> res!2849374 e!4199617)))

(declare-fun z1!570 () (Set Context!12404))

(assert (=> b!6987257 (= res!2849374 (or (not (= lt!2485111 lt!2485096)) (not (set.member lt!2485109 z1!570))))))

(declare-fun ++!15151 (List!67163 List!67163) List!67163)

(assert (=> b!6987257 (= lt!2485111 (Context!12405 (++!15151 (exprs!6702 lt!2485109) (exprs!6702 ct2!306))))))

(declare-fun lt!2485091 () Unit!161067)

(assert (=> b!6987257 (= lt!2485091 (lemmaConcatPreservesForall!542 (exprs!6702 lt!2485109) (exprs!6702 ct2!306) lambda!400783))))

(declare-fun lambda!400782 () Int)

(declare-fun mapPost2!61 ((Set Context!12404) Int Context!12404) Context!12404)

(assert (=> b!6987257 (= lt!2485109 (mapPost2!61 z1!570 lambda!400782 lt!2485096))))

(declare-fun b!6987258 () Bool)

(declare-fun res!2849371 () Bool)

(declare-fun e!4199614 () Bool)

(assert (=> b!6987258 (=> res!2849371 e!4199614)))

(declare-fun lt!2485081 () Bool)

(assert (=> b!6987258 (= res!2849371 (not lt!2485081))))

(declare-fun b!6987259 () Bool)

(declare-fun res!2849377 () Bool)

(assert (=> b!6987259 (=> (not res!2849377) (not e!4199623))))

(assert (=> b!6987259 (= res!2849377 (is-Cons!67040 s!7408))))

(declare-fun setIsEmpty!47736 () Bool)

(declare-fun setRes!47736 () Bool)

(assert (=> setIsEmpty!47736 setRes!47736))

(declare-fun b!6987260 () Bool)

(declare-fun res!2849370 () Bool)

(assert (=> b!6987260 (=> res!2849370 e!4199613)))

(assert (=> b!6987260 (= res!2849370 (not (is-Cons!67039 (exprs!6702 lt!2485109))))))

(declare-fun b!6987261 () Bool)

(declare-fun e!4199616 () Bool)

(declare-fun e!4199618 () Bool)

(assert (=> b!6987261 (= e!4199616 e!4199618)))

(declare-fun res!2849373 () Bool)

(assert (=> b!6987261 (=> res!2849373 e!4199618)))

(declare-fun lt!2485080 () (Set Context!12404))

(assert (=> b!6987261 (= res!2849373 (not (= lt!2485104 lt!2485080)))))

(declare-fun lt!2485107 () (Set Context!12404))

(declare-fun lt!2485103 () (Set Context!12404))

(assert (=> b!6987261 (= lt!2485080 (set.union lt!2485107 lt!2485103))))

(declare-fun lt!2485088 () Context!12404)

(assert (=> b!6987261 (= lt!2485103 (derivationStepZipperUp!1856 lt!2485088 (h!73488 s!7408)))))

(declare-fun derivationStepZipperDown!1924 (Regex!17206 Context!12404 C!34682) (Set Context!12404))

(assert (=> b!6987261 (= lt!2485107 (derivationStepZipperDown!1924 (h!73487 (exprs!6702 lt!2485109)) lt!2485088 (h!73488 s!7408)))))

(declare-fun lt!2485092 () List!67163)

(assert (=> b!6987261 (= lt!2485088 (Context!12405 (++!15151 lt!2485092 (exprs!6702 ct2!306))))))

(declare-fun lt!2485089 () Unit!161067)

(assert (=> b!6987261 (= lt!2485089 (lemmaConcatPreservesForall!542 lt!2485092 (exprs!6702 ct2!306) lambda!400783))))

(declare-fun lt!2485095 () Unit!161067)

(assert (=> b!6987261 (= lt!2485095 (lemmaConcatPreservesForall!542 lt!2485092 (exprs!6702 ct2!306) lambda!400783))))

(declare-fun b!6987262 () Bool)

(declare-fun e!4199620 () Bool)

(assert (=> b!6987262 (= e!4199620 (not (matchZipper!2746 lt!2485103 (t!380911 s!7408))))))

(declare-fun lt!2485105 () Unit!161067)

(assert (=> b!6987262 (= lt!2485105 (lemmaConcatPreservesForall!542 lt!2485092 (exprs!6702 ct2!306) lambda!400783))))

(declare-fun b!6987263 () Bool)

(assert (=> b!6987263 (= e!4199613 e!4199616)))

(declare-fun res!2849384 () Bool)

(assert (=> b!6987263 (=> res!2849384 e!4199616)))

(declare-fun nullable!6966 (Regex!17206) Bool)

(assert (=> b!6987263 (= res!2849384 (not (nullable!6966 (h!73487 (exprs!6702 lt!2485109)))))))

(declare-fun tail!13206 (List!67163) List!67163)

(assert (=> b!6987263 (= lt!2485092 (tail!13206 (exprs!6702 lt!2485109)))))

(declare-fun b!6987264 () Bool)

(declare-fun e!4199624 () Bool)

(declare-fun tp!1929329 () Bool)

(assert (=> b!6987264 (= e!4199624 tp!1929329)))

(declare-fun b!6987265 () Bool)

(assert (=> b!6987265 (= e!4199618 e!4199614)))

(declare-fun res!2849382 () Bool)

(assert (=> b!6987265 (=> res!2849382 e!4199614)))

(assert (=> b!6987265 (= res!2849382 e!4199620)))

(declare-fun res!2849379 () Bool)

(assert (=> b!6987265 (=> (not res!2849379) (not e!4199620))))

(declare-fun lt!2485106 () Bool)

(assert (=> b!6987265 (= res!2849379 (not (= lt!2485081 lt!2485106)))))

(assert (=> b!6987265 (= lt!2485081 (matchZipper!2746 lt!2485104 (t!380911 s!7408)))))

(declare-fun lt!2485086 () Unit!161067)

(assert (=> b!6987265 (= lt!2485086 (lemmaConcatPreservesForall!542 lt!2485092 (exprs!6702 ct2!306) lambda!400783))))

(declare-fun e!4199619 () Bool)

(assert (=> b!6987265 (= (matchZipper!2746 lt!2485080 (t!380911 s!7408)) e!4199619)))

(declare-fun res!2849385 () Bool)

(assert (=> b!6987265 (=> res!2849385 e!4199619)))

(assert (=> b!6987265 (= res!2849385 lt!2485106)))

(assert (=> b!6987265 (= lt!2485106 (matchZipper!2746 lt!2485107 (t!380911 s!7408)))))

(declare-fun lt!2485085 () Unit!161067)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1379 ((Set Context!12404) (Set Context!12404) List!67164) Unit!161067)

(assert (=> b!6987265 (= lt!2485085 (lemmaZipperConcatMatchesSameAsBothZippers!1379 lt!2485107 lt!2485103 (t!380911 s!7408)))))

(declare-fun lt!2485101 () Unit!161067)

(assert (=> b!6987265 (= lt!2485101 (lemmaConcatPreservesForall!542 lt!2485092 (exprs!6702 ct2!306) lambda!400783))))

(declare-fun lt!2485090 () Unit!161067)

(assert (=> b!6987265 (= lt!2485090 (lemmaConcatPreservesForall!542 lt!2485092 (exprs!6702 ct2!306) lambda!400783))))

(declare-fun b!6987266 () Bool)

(declare-fun e!4199615 () Bool)

(declare-fun forall!16114 (List!67163 Int) Bool)

(assert (=> b!6987266 (= e!4199615 (forall!16114 lt!2485092 lambda!400783))))

(declare-fun lt!2485108 () (Set Context!12404))

(assert (=> b!6987266 (= (flatMap!2192 lt!2485108 lambda!400784) (derivationStepZipperUp!1856 lt!2485088 (h!73488 s!7408)))))

(declare-fun lt!2485087 () Unit!161067)

(assert (=> b!6987266 (= lt!2485087 (lemmaFlatMapOnSingletonSet!1707 lt!2485108 lt!2485088 lambda!400784))))

(assert (=> b!6987266 (= lt!2485108 (set.insert lt!2485088 (as set.empty (Set Context!12404))))))

(declare-fun lt!2485083 () Unit!161067)

(assert (=> b!6987266 (= lt!2485083 (lemmaConcatPreservesForall!542 lt!2485092 (exprs!6702 ct2!306) lambda!400783))))

(declare-fun lt!2485100 () Unit!161067)

(assert (=> b!6987266 (= lt!2485100 (lemmaConcatPreservesForall!542 lt!2485092 (exprs!6702 ct2!306) lambda!400783))))

(declare-fun b!6987267 () Bool)

(assert (=> b!6987267 (= e!4199614 e!4199615)))

(declare-fun res!2849381 () Bool)

(assert (=> b!6987267 (=> res!2849381 e!4199615)))

(assert (=> b!6987267 (= res!2849381 (not (matchZipper!2746 lt!2485103 (t!380911 s!7408))))))

(declare-fun lt!2485082 () Unit!161067)

(assert (=> b!6987267 (= lt!2485082 (lemmaConcatPreservesForall!542 lt!2485092 (exprs!6702 ct2!306) lambda!400783))))

(declare-fun res!2849378 () Bool)

(assert (=> start!671208 (=> (not res!2849378) (not e!4199623))))

(assert (=> start!671208 (= res!2849378 (matchZipper!2746 lt!2485093 s!7408))))

(declare-fun appendTo!327 ((Set Context!12404) Context!12404) (Set Context!12404))

(assert (=> start!671208 (= lt!2485093 (appendTo!327 z1!570 ct2!306))))

(assert (=> start!671208 e!4199623))

(declare-fun condSetEmpty!47736 () Bool)

(assert (=> start!671208 (= condSetEmpty!47736 (= z1!570 (as set.empty (Set Context!12404))))))

(assert (=> start!671208 setRes!47736))

(declare-fun inv!85875 (Context!12404) Bool)

(assert (=> start!671208 (and (inv!85875 ct2!306) e!4199622)))

(assert (=> start!671208 e!4199625))

(declare-fun b!6987268 () Bool)

(assert (=> b!6987268 (= e!4199619 (matchZipper!2746 lt!2485103 (t!380911 s!7408)))))

(declare-fun tp!1929331 () Bool)

(declare-fun setNonEmpty!47736 () Bool)

(declare-fun setElem!47736 () Context!12404)

(assert (=> setNonEmpty!47736 (= setRes!47736 (and tp!1929331 (inv!85875 setElem!47736) e!4199624))))

(declare-fun setRest!47736 () (Set Context!12404))

(assert (=> setNonEmpty!47736 (= z1!570 (set.union (set.insert setElem!47736 (as set.empty (Set Context!12404))) setRest!47736))))

(assert (= (and start!671208 res!2849378) b!6987259))

(assert (= (and b!6987259 res!2849377) b!6987251))

(assert (= (and b!6987251 (not res!2849376)) b!6987255))

(assert (= (and b!6987255 (not res!2849383)) b!6987257))

(assert (= (and b!6987257 (not res!2849374)) b!6987256))

(assert (= (and b!6987256 (not res!2849375)) b!6987254))

(assert (= (and b!6987254 (not res!2849372)) b!6987260))

(assert (= (and b!6987260 (not res!2849370)) b!6987253))

(assert (= (and b!6987253 (not res!2849380)) b!6987263))

(assert (= (and b!6987263 (not res!2849384)) b!6987261))

(assert (= (and b!6987261 (not res!2849373)) b!6987265))

(assert (= (and b!6987265 (not res!2849385)) b!6987268))

(assert (= (and b!6987265 res!2849379) b!6987262))

(assert (= (and b!6987265 (not res!2849382)) b!6987258))

(assert (= (and b!6987258 (not res!2849371)) b!6987267))

(assert (= (and b!6987267 (not res!2849381)) b!6987266))

(assert (= (and start!671208 condSetEmpty!47736) setIsEmpty!47736))

(assert (= (and start!671208 (not condSetEmpty!47736)) setNonEmpty!47736))

(assert (= setNonEmpty!47736 b!6987264))

(assert (= start!671208 b!6987250))

(assert (= (and start!671208 (is-Cons!67040 s!7408)) b!6987252))

(declare-fun m!7675190 () Bool)

(assert (=> b!6987262 m!7675190))

(declare-fun m!7675192 () Bool)

(assert (=> b!6987262 m!7675192))

(declare-fun m!7675194 () Bool)

(assert (=> b!6987251 m!7675194))

(declare-fun m!7675196 () Bool)

(assert (=> b!6987251 m!7675196))

(declare-fun m!7675198 () Bool)

(assert (=> b!6987251 m!7675198))

(declare-fun m!7675200 () Bool)

(assert (=> b!6987251 m!7675200))

(declare-fun m!7675202 () Bool)

(assert (=> b!6987251 m!7675202))

(declare-fun m!7675204 () Bool)

(assert (=> b!6987251 m!7675204))

(declare-fun m!7675206 () Bool)

(assert (=> b!6987254 m!7675206))

(declare-fun m!7675208 () Bool)

(assert (=> b!6987254 m!7675208))

(declare-fun m!7675210 () Bool)

(assert (=> b!6987254 m!7675210))

(declare-fun m!7675212 () Bool)

(assert (=> b!6987254 m!7675212))

(declare-fun m!7675214 () Bool)

(assert (=> b!6987254 m!7675214))

(assert (=> b!6987261 m!7675192))

(declare-fun m!7675216 () Bool)

(assert (=> b!6987261 m!7675216))

(assert (=> b!6987261 m!7675192))

(declare-fun m!7675218 () Bool)

(assert (=> b!6987261 m!7675218))

(declare-fun m!7675220 () Bool)

(assert (=> b!6987261 m!7675220))

(assert (=> b!6987265 m!7675192))

(assert (=> b!6987265 m!7675192))

(declare-fun m!7675222 () Bool)

(assert (=> b!6987265 m!7675222))

(assert (=> b!6987265 m!7675192))

(declare-fun m!7675224 () Bool)

(assert (=> b!6987265 m!7675224))

(declare-fun m!7675226 () Bool)

(assert (=> b!6987265 m!7675226))

(declare-fun m!7675228 () Bool)

(assert (=> b!6987265 m!7675228))

(assert (=> b!6987266 m!7675216))

(assert (=> b!6987266 m!7675192))

(declare-fun m!7675230 () Bool)

(assert (=> b!6987266 m!7675230))

(declare-fun m!7675232 () Bool)

(assert (=> b!6987266 m!7675232))

(declare-fun m!7675234 () Bool)

(assert (=> b!6987266 m!7675234))

(assert (=> b!6987266 m!7675192))

(declare-fun m!7675236 () Bool)

(assert (=> b!6987266 m!7675236))

(declare-fun m!7675238 () Bool)

(assert (=> b!6987255 m!7675238))

(assert (=> b!6987268 m!7675190))

(declare-fun m!7675240 () Bool)

(assert (=> b!6987256 m!7675240))

(assert (=> b!6987256 m!7675210))

(declare-fun m!7675242 () Bool)

(assert (=> start!671208 m!7675242))

(declare-fun m!7675244 () Bool)

(assert (=> start!671208 m!7675244))

(declare-fun m!7675246 () Bool)

(assert (=> start!671208 m!7675246))

(declare-fun m!7675248 () Bool)

(assert (=> setNonEmpty!47736 m!7675248))

(declare-fun m!7675250 () Bool)

(assert (=> b!6987263 m!7675250))

(declare-fun m!7675252 () Bool)

(assert (=> b!6987263 m!7675252))

(declare-fun m!7675254 () Bool)

(assert (=> b!6987253 m!7675254))

(declare-fun m!7675256 () Bool)

(assert (=> b!6987257 m!7675256))

(declare-fun m!7675258 () Bool)

(assert (=> b!6987257 m!7675258))

(assert (=> b!6987257 m!7675210))

(declare-fun m!7675260 () Bool)

(assert (=> b!6987257 m!7675260))

(assert (=> b!6987267 m!7675190))

(assert (=> b!6987267 m!7675192))

(push 1)

(assert (not b!6987251))

(assert (not setNonEmpty!47736))

(assert (not b!6987268))

(assert tp_is_empty!43637)

(assert (not b!6987263))

(assert (not b!6987261))

(assert (not b!6987252))

(assert (not b!6987267))

(assert (not b!6987254))

(assert (not b!6987256))

(assert (not b!6987265))

(assert (not b!6987257))

(assert (not b!6987266))

(assert (not b!6987262))

(assert (not b!6987264))

(assert (not b!6987253))

(assert (not b!6987250))

(assert (not start!671208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2176389 () Bool)

(declare-fun c!1295774 () Bool)

(declare-fun isEmpty!39132 (List!67164) Bool)

(assert (=> d!2176389 (= c!1295774 (isEmpty!39132 (t!380911 s!7408)))))

(declare-fun e!4199670 () Bool)

(assert (=> d!2176389 (= (matchZipper!2746 lt!2485103 (t!380911 s!7408)) e!4199670)))

(declare-fun b!6987342 () Bool)

(declare-fun nullableZipper!2427 ((Set Context!12404)) Bool)

(assert (=> b!6987342 (= e!4199670 (nullableZipper!2427 lt!2485103))))

(declare-fun b!6987343 () Bool)

(declare-fun head!14102 (List!67164) C!34682)

(declare-fun tail!13208 (List!67164) List!67164)

(assert (=> b!6987343 (= e!4199670 (matchZipper!2746 (derivationStepZipper!2686 lt!2485103 (head!14102 (t!380911 s!7408))) (tail!13208 (t!380911 s!7408))))))

(assert (= (and d!2176389 c!1295774) b!6987342))

(assert (= (and d!2176389 (not c!1295774)) b!6987343))

(declare-fun m!7675334 () Bool)

(assert (=> d!2176389 m!7675334))

(declare-fun m!7675336 () Bool)

(assert (=> b!6987342 m!7675336))

(declare-fun m!7675338 () Bool)

(assert (=> b!6987343 m!7675338))

(assert (=> b!6987343 m!7675338))

(declare-fun m!7675340 () Bool)

(assert (=> b!6987343 m!7675340))

(declare-fun m!7675342 () Bool)

(assert (=> b!6987343 m!7675342))

(assert (=> b!6987343 m!7675340))

(assert (=> b!6987343 m!7675342))

(declare-fun m!7675344 () Bool)

(assert (=> b!6987343 m!7675344))

(assert (=> b!6987268 d!2176389))

(declare-fun bs!1861844 () Bool)

(declare-fun d!2176391 () Bool)

(assert (= bs!1861844 (and d!2176391 b!6987257)))

(declare-fun lambda!400829 () Int)

(assert (=> bs!1861844 (= lambda!400829 lambda!400783)))

(assert (=> d!2176391 (= (inv!85875 setElem!47736) (forall!16114 (exprs!6702 setElem!47736) lambda!400829))))

(declare-fun bs!1861845 () Bool)

(assert (= bs!1861845 d!2176391))

(declare-fun m!7675346 () Bool)

(assert (=> bs!1861845 m!7675346))

(assert (=> setNonEmpty!47736 d!2176391))

(assert (=> b!6987267 d!2176389))

(declare-fun d!2176393 () Bool)

(assert (=> d!2176393 (forall!16114 (++!15151 lt!2485092 (exprs!6702 ct2!306)) lambda!400783)))

(declare-fun lt!2485212 () Unit!161067)

(declare-fun choose!52196 (List!67163 List!67163 Int) Unit!161067)

(assert (=> d!2176393 (= lt!2485212 (choose!52196 lt!2485092 (exprs!6702 ct2!306) lambda!400783))))

(assert (=> d!2176393 (forall!16114 lt!2485092 lambda!400783)))

(assert (=> d!2176393 (= (lemmaConcatPreservesForall!542 lt!2485092 (exprs!6702 ct2!306) lambda!400783) lt!2485212)))

(declare-fun bs!1861846 () Bool)

(assert (= bs!1861846 d!2176393))

(assert (=> bs!1861846 m!7675220))

(assert (=> bs!1861846 m!7675220))

(declare-fun m!7675348 () Bool)

(assert (=> bs!1861846 m!7675348))

(declare-fun m!7675350 () Bool)

(assert (=> bs!1861846 m!7675350))

(assert (=> bs!1861846 m!7675236))

(assert (=> b!6987267 d!2176393))

(declare-fun b!6987353 () Bool)

(declare-fun e!4199675 () List!67163)

(assert (=> b!6987353 (= e!4199675 (Cons!67039 (h!73487 (exprs!6702 lt!2485109)) (++!15151 (t!380910 (exprs!6702 lt!2485109)) (exprs!6702 ct2!306))))))

(declare-fun b!6987354 () Bool)

(declare-fun res!2849439 () Bool)

(declare-fun e!4199676 () Bool)

(assert (=> b!6987354 (=> (not res!2849439) (not e!4199676))))

(declare-fun lt!2485215 () List!67163)

(declare-fun size!40897 (List!67163) Int)

(assert (=> b!6987354 (= res!2849439 (= (size!40897 lt!2485215) (+ (size!40897 (exprs!6702 lt!2485109)) (size!40897 (exprs!6702 ct2!306)))))))

(declare-fun b!6987355 () Bool)

(assert (=> b!6987355 (= e!4199676 (or (not (= (exprs!6702 ct2!306) Nil!67039)) (= lt!2485215 (exprs!6702 lt!2485109))))))

(declare-fun b!6987352 () Bool)

(assert (=> b!6987352 (= e!4199675 (exprs!6702 ct2!306))))

(declare-fun d!2176395 () Bool)

(assert (=> d!2176395 e!4199676))

(declare-fun res!2849440 () Bool)

(assert (=> d!2176395 (=> (not res!2849440) (not e!4199676))))

(declare-fun content!13243 (List!67163) (Set Regex!17206))

(assert (=> d!2176395 (= res!2849440 (= (content!13243 lt!2485215) (set.union (content!13243 (exprs!6702 lt!2485109)) (content!13243 (exprs!6702 ct2!306)))))))

(assert (=> d!2176395 (= lt!2485215 e!4199675)))

(declare-fun c!1295777 () Bool)

(assert (=> d!2176395 (= c!1295777 (is-Nil!67039 (exprs!6702 lt!2485109)))))

(assert (=> d!2176395 (= (++!15151 (exprs!6702 lt!2485109) (exprs!6702 ct2!306)) lt!2485215)))

(assert (= (and d!2176395 c!1295777) b!6987352))

(assert (= (and d!2176395 (not c!1295777)) b!6987353))

(assert (= (and d!2176395 res!2849440) b!6987354))

(assert (= (and b!6987354 res!2849439) b!6987355))

(declare-fun m!7675352 () Bool)

(assert (=> b!6987353 m!7675352))

(declare-fun m!7675354 () Bool)

(assert (=> b!6987354 m!7675354))

(declare-fun m!7675356 () Bool)

(assert (=> b!6987354 m!7675356))

(declare-fun m!7675358 () Bool)

(assert (=> b!6987354 m!7675358))

(declare-fun m!7675360 () Bool)

(assert (=> d!2176395 m!7675360))

(declare-fun m!7675362 () Bool)

(assert (=> d!2176395 m!7675362))

(declare-fun m!7675364 () Bool)

(assert (=> d!2176395 m!7675364))

(assert (=> b!6987257 d!2176395))

(declare-fun d!2176397 () Bool)

(assert (=> d!2176397 (forall!16114 (++!15151 (exprs!6702 lt!2485109) (exprs!6702 ct2!306)) lambda!400783)))

(declare-fun lt!2485216 () Unit!161067)

(assert (=> d!2176397 (= lt!2485216 (choose!52196 (exprs!6702 lt!2485109) (exprs!6702 ct2!306) lambda!400783))))

(assert (=> d!2176397 (forall!16114 (exprs!6702 lt!2485109) lambda!400783)))

(assert (=> d!2176397 (= (lemmaConcatPreservesForall!542 (exprs!6702 lt!2485109) (exprs!6702 ct2!306) lambda!400783) lt!2485216)))

(declare-fun bs!1861847 () Bool)

(assert (= bs!1861847 d!2176397))

(assert (=> bs!1861847 m!7675258))

(assert (=> bs!1861847 m!7675258))

(declare-fun m!7675366 () Bool)

(assert (=> bs!1861847 m!7675366))

(declare-fun m!7675368 () Bool)

(assert (=> bs!1861847 m!7675368))

(declare-fun m!7675370 () Bool)

(assert (=> bs!1861847 m!7675370))

(assert (=> b!6987257 d!2176397))

(declare-fun d!2176399 () Bool)

(declare-fun e!4199679 () Bool)

(assert (=> d!2176399 e!4199679))

(declare-fun res!2849443 () Bool)

(assert (=> d!2176399 (=> (not res!2849443) (not e!4199679))))

(declare-fun lt!2485219 () Context!12404)

(declare-fun dynLambda!26859 (Int Context!12404) Context!12404)

(assert (=> d!2176399 (= res!2849443 (= lt!2485096 (dynLambda!26859 lambda!400782 lt!2485219)))))

(declare-fun choose!52197 ((Set Context!12404) Int Context!12404) Context!12404)

(assert (=> d!2176399 (= lt!2485219 (choose!52197 z1!570 lambda!400782 lt!2485096))))

(declare-fun map!15464 ((Set Context!12404) Int) (Set Context!12404))

(assert (=> d!2176399 (set.member lt!2485096 (map!15464 z1!570 lambda!400782))))

(assert (=> d!2176399 (= (mapPost2!61 z1!570 lambda!400782 lt!2485096) lt!2485219)))

(declare-fun b!6987359 () Bool)

(assert (=> b!6987359 (= e!4199679 (set.member lt!2485219 z1!570))))

(assert (= (and d!2176399 res!2849443) b!6987359))

(declare-fun b_lambda!262315 () Bool)

(assert (=> (not b_lambda!262315) (not d!2176399)))

(declare-fun m!7675372 () Bool)

(assert (=> d!2176399 m!7675372))

(declare-fun m!7675374 () Bool)

(assert (=> d!2176399 m!7675374))

(declare-fun m!7675376 () Bool)

(assert (=> d!2176399 m!7675376))

(declare-fun m!7675378 () Bool)

(assert (=> d!2176399 m!7675378))

(declare-fun m!7675380 () Bool)

(assert (=> b!6987359 m!7675380))

(assert (=> b!6987257 d!2176399))

(declare-fun bm!634276 () Bool)

(declare-fun call!634281 () List!67163)

(declare-fun call!634282 () List!67163)

(assert (=> bm!634276 (= call!634281 call!634282)))

(declare-fun b!6987382 () Bool)

(declare-fun c!1295792 () Bool)

(declare-fun e!4199696 () Bool)

(assert (=> b!6987382 (= c!1295792 e!4199696)))

(declare-fun res!2849446 () Bool)

(assert (=> b!6987382 (=> (not res!2849446) (not e!4199696))))

(assert (=> b!6987382 (= res!2849446 (is-Concat!26051 (h!73487 (exprs!6702 lt!2485109))))))

(declare-fun e!4199692 () (Set Context!12404))

(declare-fun e!4199693 () (Set Context!12404))

(assert (=> b!6987382 (= e!4199692 e!4199693)))

(declare-fun bm!634277 () Bool)

(declare-fun c!1295790 () Bool)

(declare-fun $colon$colon!2476 (List!67163 Regex!17206) List!67163)

(assert (=> bm!634277 (= call!634282 ($colon$colon!2476 (exprs!6702 lt!2485088) (ite (or c!1295792 c!1295790) (regTwo!34924 (h!73487 (exprs!6702 lt!2485109))) (h!73487 (exprs!6702 lt!2485109)))))))

(declare-fun b!6987383 () Bool)

(assert (=> b!6987383 (= e!4199696 (nullable!6966 (regOne!34924 (h!73487 (exprs!6702 lt!2485109)))))))

(declare-fun b!6987384 () Bool)

(declare-fun call!634286 () (Set Context!12404))

(declare-fun call!634284 () (Set Context!12404))

(assert (=> b!6987384 (= e!4199692 (set.union call!634286 call!634284))))

(declare-fun bm!634278 () Bool)

(declare-fun call!634283 () (Set Context!12404))

(assert (=> bm!634278 (= call!634283 call!634284)))

(declare-fun d!2176401 () Bool)

(declare-fun c!1295791 () Bool)

(assert (=> d!2176401 (= c!1295791 (and (is-ElementMatch!17206 (h!73487 (exprs!6702 lt!2485109))) (= (c!1295760 (h!73487 (exprs!6702 lt!2485109))) (h!73488 s!7408))))))

(declare-fun e!4199694 () (Set Context!12404))

(assert (=> d!2176401 (= (derivationStepZipperDown!1924 (h!73487 (exprs!6702 lt!2485109)) lt!2485088 (h!73488 s!7408)) e!4199694)))

(declare-fun b!6987385 () Bool)

(assert (=> b!6987385 (= e!4199694 e!4199692)))

(declare-fun c!1295789 () Bool)

(assert (=> b!6987385 (= c!1295789 (is-Union!17206 (h!73487 (exprs!6702 lt!2485109))))))

(declare-fun b!6987386 () Bool)

(declare-fun e!4199697 () (Set Context!12404))

(assert (=> b!6987386 (= e!4199693 e!4199697)))

(assert (=> b!6987386 (= c!1295790 (is-Concat!26051 (h!73487 (exprs!6702 lt!2485109))))))

(declare-fun bm!634279 () Bool)

(assert (=> bm!634279 (= call!634286 (derivationStepZipperDown!1924 (ite c!1295789 (regOne!34925 (h!73487 (exprs!6702 lt!2485109))) (regOne!34924 (h!73487 (exprs!6702 lt!2485109)))) (ite c!1295789 lt!2485088 (Context!12405 call!634282)) (h!73488 s!7408)))))

(declare-fun bm!634280 () Bool)

(assert (=> bm!634280 (= call!634284 (derivationStepZipperDown!1924 (ite c!1295789 (regTwo!34925 (h!73487 (exprs!6702 lt!2485109))) (ite c!1295792 (regTwo!34924 (h!73487 (exprs!6702 lt!2485109))) (ite c!1295790 (regOne!34924 (h!73487 (exprs!6702 lt!2485109))) (reg!17535 (h!73487 (exprs!6702 lt!2485109)))))) (ite (or c!1295789 c!1295792) lt!2485088 (Context!12405 call!634281)) (h!73488 s!7408)))))

(declare-fun bm!634281 () Bool)

(declare-fun call!634285 () (Set Context!12404))

(assert (=> bm!634281 (= call!634285 call!634283)))

(declare-fun b!6987387 () Bool)

(declare-fun e!4199695 () (Set Context!12404))

(assert (=> b!6987387 (= e!4199695 call!634285)))

(declare-fun b!6987388 () Bool)

(assert (=> b!6987388 (= e!4199693 (set.union call!634286 call!634283))))

(declare-fun b!6987389 () Bool)

(assert (=> b!6987389 (= e!4199695 (as set.empty (Set Context!12404)))))

(declare-fun b!6987390 () Bool)

(declare-fun c!1295788 () Bool)

(assert (=> b!6987390 (= c!1295788 (is-Star!17206 (h!73487 (exprs!6702 lt!2485109))))))

(assert (=> b!6987390 (= e!4199697 e!4199695)))

(declare-fun b!6987391 () Bool)

(assert (=> b!6987391 (= e!4199694 (set.insert lt!2485088 (as set.empty (Set Context!12404))))))

(declare-fun b!6987392 () Bool)

(assert (=> b!6987392 (= e!4199697 call!634285)))

(assert (= (and d!2176401 c!1295791) b!6987391))

(assert (= (and d!2176401 (not c!1295791)) b!6987385))

(assert (= (and b!6987385 c!1295789) b!6987384))

(assert (= (and b!6987385 (not c!1295789)) b!6987382))

(assert (= (and b!6987382 res!2849446) b!6987383))

(assert (= (and b!6987382 c!1295792) b!6987388))

(assert (= (and b!6987382 (not c!1295792)) b!6987386))

(assert (= (and b!6987386 c!1295790) b!6987392))

(assert (= (and b!6987386 (not c!1295790)) b!6987390))

(assert (= (and b!6987390 c!1295788) b!6987387))

(assert (= (and b!6987390 (not c!1295788)) b!6987389))

(assert (= (or b!6987392 b!6987387) bm!634276))

(assert (= (or b!6987392 b!6987387) bm!634281))

(assert (= (or b!6987388 bm!634281) bm!634278))

(assert (= (or b!6987388 bm!634276) bm!634277))

(assert (= (or b!6987384 b!6987388) bm!634279))

(assert (= (or b!6987384 bm!634278) bm!634280))

(declare-fun m!7675382 () Bool)

(assert (=> b!6987383 m!7675382))

(declare-fun m!7675384 () Bool)

(assert (=> bm!634280 m!7675384))

(assert (=> b!6987391 m!7675232))

(declare-fun m!7675386 () Bool)

(assert (=> bm!634277 m!7675386))

(declare-fun m!7675388 () Bool)

(assert (=> bm!634279 m!7675388))

(assert (=> b!6987261 d!2176401))

(assert (=> b!6987261 d!2176393))

(declare-fun b!6987403 () Bool)

(declare-fun e!4199706 () (Set Context!12404))

(declare-fun call!634289 () (Set Context!12404))

(assert (=> b!6987403 (= e!4199706 call!634289)))

(declare-fun b!6987404 () Bool)

(declare-fun e!4199705 () (Set Context!12404))

(assert (=> b!6987404 (= e!4199705 e!4199706)))

(declare-fun c!1295797 () Bool)

(assert (=> b!6987404 (= c!1295797 (is-Cons!67039 (exprs!6702 lt!2485088)))))

(declare-fun bm!634284 () Bool)

(assert (=> bm!634284 (= call!634289 (derivationStepZipperDown!1924 (h!73487 (exprs!6702 lt!2485088)) (Context!12405 (t!380910 (exprs!6702 lt!2485088))) (h!73488 s!7408)))))

(declare-fun b!6987405 () Bool)

(assert (=> b!6987405 (= e!4199706 (as set.empty (Set Context!12404)))))

(declare-fun b!6987406 () Bool)

(assert (=> b!6987406 (= e!4199705 (set.union call!634289 (derivationStepZipperUp!1856 (Context!12405 (t!380910 (exprs!6702 lt!2485088))) (h!73488 s!7408))))))

(declare-fun d!2176403 () Bool)

(declare-fun c!1295798 () Bool)

(declare-fun e!4199704 () Bool)

(assert (=> d!2176403 (= c!1295798 e!4199704)))

(declare-fun res!2849449 () Bool)

(assert (=> d!2176403 (=> (not res!2849449) (not e!4199704))))

(assert (=> d!2176403 (= res!2849449 (is-Cons!67039 (exprs!6702 lt!2485088)))))

(assert (=> d!2176403 (= (derivationStepZipperUp!1856 lt!2485088 (h!73488 s!7408)) e!4199705)))

(declare-fun b!6987407 () Bool)

(assert (=> b!6987407 (= e!4199704 (nullable!6966 (h!73487 (exprs!6702 lt!2485088))))))

(assert (= (and d!2176403 res!2849449) b!6987407))

(assert (= (and d!2176403 c!1295798) b!6987406))

(assert (= (and d!2176403 (not c!1295798)) b!6987404))

(assert (= (and b!6987404 c!1295797) b!6987403))

(assert (= (and b!6987404 (not c!1295797)) b!6987405))

(assert (= (or b!6987406 b!6987403) bm!634284))

(declare-fun m!7675390 () Bool)

(assert (=> bm!634284 m!7675390))

(declare-fun m!7675392 () Bool)

(assert (=> b!6987406 m!7675392))

(declare-fun m!7675394 () Bool)

(assert (=> b!6987407 m!7675394))

(assert (=> b!6987261 d!2176403))

(declare-fun b!6987409 () Bool)

(declare-fun e!4199707 () List!67163)

(assert (=> b!6987409 (= e!4199707 (Cons!67039 (h!73487 lt!2485092) (++!15151 (t!380910 lt!2485092) (exprs!6702 ct2!306))))))

(declare-fun b!6987410 () Bool)

(declare-fun res!2849450 () Bool)

(declare-fun e!4199708 () Bool)

(assert (=> b!6987410 (=> (not res!2849450) (not e!4199708))))

(declare-fun lt!2485220 () List!67163)

(assert (=> b!6987410 (= res!2849450 (= (size!40897 lt!2485220) (+ (size!40897 lt!2485092) (size!40897 (exprs!6702 ct2!306)))))))

(declare-fun b!6987411 () Bool)

(assert (=> b!6987411 (= e!4199708 (or (not (= (exprs!6702 ct2!306) Nil!67039)) (= lt!2485220 lt!2485092)))))

(declare-fun b!6987408 () Bool)

(assert (=> b!6987408 (= e!4199707 (exprs!6702 ct2!306))))

(declare-fun d!2176405 () Bool)

(assert (=> d!2176405 e!4199708))

(declare-fun res!2849451 () Bool)

(assert (=> d!2176405 (=> (not res!2849451) (not e!4199708))))

(assert (=> d!2176405 (= res!2849451 (= (content!13243 lt!2485220) (set.union (content!13243 lt!2485092) (content!13243 (exprs!6702 ct2!306)))))))

(assert (=> d!2176405 (= lt!2485220 e!4199707)))

(declare-fun c!1295799 () Bool)

(assert (=> d!2176405 (= c!1295799 (is-Nil!67039 lt!2485092))))

(assert (=> d!2176405 (= (++!15151 lt!2485092 (exprs!6702 ct2!306)) lt!2485220)))

(assert (= (and d!2176405 c!1295799) b!6987408))

(assert (= (and d!2176405 (not c!1295799)) b!6987409))

(assert (= (and d!2176405 res!2849451) b!6987410))

(assert (= (and b!6987410 res!2849450) b!6987411))

(declare-fun m!7675396 () Bool)

(assert (=> b!6987409 m!7675396))

(declare-fun m!7675398 () Bool)

(assert (=> b!6987410 m!7675398))

(declare-fun m!7675400 () Bool)

(assert (=> b!6987410 m!7675400))

(assert (=> b!6987410 m!7675358))

(declare-fun m!7675402 () Bool)

(assert (=> d!2176405 m!7675402))

(declare-fun m!7675404 () Bool)

(assert (=> d!2176405 m!7675404))

(assert (=> d!2176405 m!7675364))

(assert (=> b!6987261 d!2176405))

(declare-fun d!2176407 () Bool)

(declare-fun e!4199711 () Bool)

(assert (=> d!2176407 e!4199711))

(declare-fun res!2849454 () Bool)

(assert (=> d!2176407 (=> (not res!2849454) (not e!4199711))))

(declare-fun lt!2485223 () Context!12404)

(declare-fun dynLambda!26860 (Int Context!12404) Bool)

(assert (=> d!2176407 (= res!2849454 (dynLambda!26860 lambda!400781 lt!2485223))))

(declare-fun getWitness!1099 (List!67165 Int) Context!12404)

(assert (=> d!2176407 (= lt!2485223 (getWitness!1099 (toList!10566 lt!2485093) lambda!400781))))

(declare-fun exists!2988 ((Set Context!12404) Int) Bool)

(assert (=> d!2176407 (exists!2988 lt!2485093 lambda!400781)))

(assert (=> d!2176407 (= (getWitness!1097 lt!2485093 lambda!400781) lt!2485223)))

(declare-fun b!6987414 () Bool)

(assert (=> b!6987414 (= e!4199711 (set.member lt!2485223 lt!2485093))))

(assert (= (and d!2176407 res!2849454) b!6987414))

(declare-fun b_lambda!262317 () Bool)

(assert (=> (not b_lambda!262317) (not d!2176407)))

(declare-fun m!7675406 () Bool)

(assert (=> d!2176407 m!7675406))

(assert (=> d!2176407 m!7675196))

(assert (=> d!2176407 m!7675196))

(declare-fun m!7675408 () Bool)

(assert (=> d!2176407 m!7675408))

(declare-fun m!7675410 () Bool)

(assert (=> d!2176407 m!7675410))

(declare-fun m!7675412 () Bool)

(assert (=> b!6987414 m!7675412))

(assert (=> b!6987251 d!2176407))

(declare-fun d!2176409 () Bool)

(declare-fun c!1295800 () Bool)

(assert (=> d!2176409 (= c!1295800 (isEmpty!39132 s!7408))))

(declare-fun e!4199712 () Bool)

(assert (=> d!2176409 (= (matchZipper!2746 lt!2485102 s!7408) e!4199712)))

(declare-fun b!6987415 () Bool)

(assert (=> b!6987415 (= e!4199712 (nullableZipper!2427 lt!2485102))))

(declare-fun b!6987416 () Bool)

(assert (=> b!6987416 (= e!4199712 (matchZipper!2746 (derivationStepZipper!2686 lt!2485102 (head!14102 s!7408)) (tail!13208 s!7408)))))

(assert (= (and d!2176409 c!1295800) b!6987415))

(assert (= (and d!2176409 (not c!1295800)) b!6987416))

(declare-fun m!7675414 () Bool)

(assert (=> d!2176409 m!7675414))

(declare-fun m!7675416 () Bool)

(assert (=> b!6987415 m!7675416))

(declare-fun m!7675418 () Bool)

(assert (=> b!6987416 m!7675418))

(assert (=> b!6987416 m!7675418))

(declare-fun m!7675420 () Bool)

(assert (=> b!6987416 m!7675420))

(declare-fun m!7675422 () Bool)

(assert (=> b!6987416 m!7675422))

(assert (=> b!6987416 m!7675420))

(assert (=> b!6987416 m!7675422))

(declare-fun m!7675424 () Bool)

(assert (=> b!6987416 m!7675424))

(assert (=> b!6987251 d!2176409))

(declare-fun bs!1861848 () Bool)

(declare-fun d!2176411 () Bool)

(assert (= bs!1861848 (and d!2176411 b!6987251)))

(declare-fun lambda!400832 () Int)

(assert (=> bs!1861848 (= lambda!400832 lambda!400781)))

(assert (=> d!2176411 true))

(assert (=> d!2176411 (exists!2986 lt!2485098 lambda!400832)))

(declare-fun lt!2485226 () Unit!161067)

(declare-fun choose!52198 (List!67165 List!67164) Unit!161067)

(assert (=> d!2176411 (= lt!2485226 (choose!52198 lt!2485098 s!7408))))

(declare-fun content!13244 (List!67165) (Set Context!12404))

(assert (=> d!2176411 (matchZipper!2746 (content!13244 lt!2485098) s!7408)))

(assert (=> d!2176411 (= (lemmaZipperMatchesExistsMatchingContext!175 lt!2485098 s!7408) lt!2485226)))

(declare-fun bs!1861849 () Bool)

(assert (= bs!1861849 d!2176411))

(declare-fun m!7675426 () Bool)

(assert (=> bs!1861849 m!7675426))

(declare-fun m!7675428 () Bool)

(assert (=> bs!1861849 m!7675428))

(declare-fun m!7675430 () Bool)

(assert (=> bs!1861849 m!7675430))

(assert (=> bs!1861849 m!7675430))

(declare-fun m!7675432 () Bool)

(assert (=> bs!1861849 m!7675432))

(assert (=> b!6987251 d!2176411))

(declare-fun bs!1861850 () Bool)

(declare-fun d!2176413 () Bool)

(assert (= bs!1861850 (and d!2176413 b!6987251)))

(declare-fun lambda!400835 () Int)

(assert (=> bs!1861850 (not (= lambda!400835 lambda!400781))))

(declare-fun bs!1861851 () Bool)

(assert (= bs!1861851 (and d!2176413 d!2176411)))

(assert (=> bs!1861851 (not (= lambda!400835 lambda!400832))))

(assert (=> d!2176413 true))

(declare-fun order!27899 () Int)

(declare-fun dynLambda!26861 (Int Int) Int)

(assert (=> d!2176413 (< (dynLambda!26861 order!27899 lambda!400781) (dynLambda!26861 order!27899 lambda!400835))))

(declare-fun forall!16116 (List!67165 Int) Bool)

(assert (=> d!2176413 (= (exists!2986 lt!2485098 lambda!400781) (not (forall!16116 lt!2485098 lambda!400835)))))

(declare-fun bs!1861852 () Bool)

(assert (= bs!1861852 d!2176413))

(declare-fun m!7675434 () Bool)

(assert (=> bs!1861852 m!7675434))

(assert (=> b!6987251 d!2176413))

(declare-fun d!2176415 () Bool)

(declare-fun e!4199715 () Bool)

(assert (=> d!2176415 e!4199715))

(declare-fun res!2849457 () Bool)

(assert (=> d!2176415 (=> (not res!2849457) (not e!4199715))))

(declare-fun lt!2485229 () List!67165)

(declare-fun noDuplicate!2515 (List!67165) Bool)

(assert (=> d!2176415 (= res!2849457 (noDuplicate!2515 lt!2485229))))

(declare-fun choose!52199 ((Set Context!12404)) List!67165)

(assert (=> d!2176415 (= lt!2485229 (choose!52199 lt!2485093))))

(assert (=> d!2176415 (= (toList!10566 lt!2485093) lt!2485229)))

(declare-fun b!6987421 () Bool)

(assert (=> b!6987421 (= e!4199715 (= (content!13244 lt!2485229) lt!2485093))))

(assert (= (and d!2176415 res!2849457) b!6987421))

(declare-fun m!7675436 () Bool)

(assert (=> d!2176415 m!7675436))

(declare-fun m!7675438 () Bool)

(assert (=> d!2176415 m!7675438))

(declare-fun m!7675440 () Bool)

(assert (=> b!6987421 m!7675440))

(assert (=> b!6987251 d!2176415))

(declare-fun d!2176417 () Bool)

(declare-fun nullableFct!2628 (Regex!17206) Bool)

(assert (=> d!2176417 (= (nullable!6966 (h!73487 (exprs!6702 lt!2485109))) (nullableFct!2628 (h!73487 (exprs!6702 lt!2485109))))))

(declare-fun bs!1861853 () Bool)

(assert (= bs!1861853 d!2176417))

(declare-fun m!7675442 () Bool)

(assert (=> bs!1861853 m!7675442))

(assert (=> b!6987263 d!2176417))

(declare-fun d!2176419 () Bool)

(assert (=> d!2176419 (= (tail!13206 (exprs!6702 lt!2485109)) (t!380910 (exprs!6702 lt!2485109)))))

(assert (=> b!6987263 d!2176419))

(declare-fun d!2176421 () Bool)

(assert (=> d!2176421 (= (isEmpty!39130 (exprs!6702 lt!2485109)) (is-Nil!67039 (exprs!6702 lt!2485109)))))

(assert (=> b!6987253 d!2176421))

(declare-fun d!2176423 () Bool)

(declare-fun dynLambda!26862 (Int Context!12404) (Set Context!12404))

(assert (=> d!2176423 (= (flatMap!2192 lt!2485084 lambda!400784) (dynLambda!26862 lambda!400784 lt!2485111))))

(declare-fun lt!2485232 () Unit!161067)

(declare-fun choose!52200 ((Set Context!12404) Context!12404 Int) Unit!161067)

(assert (=> d!2176423 (= lt!2485232 (choose!52200 lt!2485084 lt!2485111 lambda!400784))))

(assert (=> d!2176423 (= lt!2485084 (set.insert lt!2485111 (as set.empty (Set Context!12404))))))

(assert (=> d!2176423 (= (lemmaFlatMapOnSingletonSet!1707 lt!2485084 lt!2485111 lambda!400784) lt!2485232)))

(declare-fun b_lambda!262319 () Bool)

(assert (=> (not b_lambda!262319) (not d!2176423)))

(declare-fun bs!1861854 () Bool)

(assert (= bs!1861854 d!2176423))

(assert (=> bs!1861854 m!7675206))

(declare-fun m!7675444 () Bool)

(assert (=> bs!1861854 m!7675444))

(declare-fun m!7675446 () Bool)

(assert (=> bs!1861854 m!7675446))

(assert (=> bs!1861854 m!7675240))

(assert (=> b!6987254 d!2176423))

(declare-fun b!6987422 () Bool)

(declare-fun e!4199718 () (Set Context!12404))

(declare-fun call!634290 () (Set Context!12404))

(assert (=> b!6987422 (= e!4199718 call!634290)))

(declare-fun b!6987423 () Bool)

(declare-fun e!4199717 () (Set Context!12404))

(assert (=> b!6987423 (= e!4199717 e!4199718)))

(declare-fun c!1295803 () Bool)

(assert (=> b!6987423 (= c!1295803 (is-Cons!67039 (exprs!6702 lt!2485111)))))

(declare-fun bm!634285 () Bool)

(assert (=> bm!634285 (= call!634290 (derivationStepZipperDown!1924 (h!73487 (exprs!6702 lt!2485111)) (Context!12405 (t!380910 (exprs!6702 lt!2485111))) (h!73488 s!7408)))))

(declare-fun b!6987424 () Bool)

(assert (=> b!6987424 (= e!4199718 (as set.empty (Set Context!12404)))))

(declare-fun b!6987425 () Bool)

(assert (=> b!6987425 (= e!4199717 (set.union call!634290 (derivationStepZipperUp!1856 (Context!12405 (t!380910 (exprs!6702 lt!2485111))) (h!73488 s!7408))))))

(declare-fun d!2176425 () Bool)

(declare-fun c!1295804 () Bool)

(declare-fun e!4199716 () Bool)

(assert (=> d!2176425 (= c!1295804 e!4199716)))

(declare-fun res!2849458 () Bool)

(assert (=> d!2176425 (=> (not res!2849458) (not e!4199716))))

(assert (=> d!2176425 (= res!2849458 (is-Cons!67039 (exprs!6702 lt!2485111)))))

(assert (=> d!2176425 (= (derivationStepZipperUp!1856 lt!2485111 (h!73488 s!7408)) e!4199717)))

(declare-fun b!6987426 () Bool)

(assert (=> b!6987426 (= e!4199716 (nullable!6966 (h!73487 (exprs!6702 lt!2485111))))))

(assert (= (and d!2176425 res!2849458) b!6987426))

(assert (= (and d!2176425 c!1295804) b!6987425))

(assert (= (and d!2176425 (not c!1295804)) b!6987423))

(assert (= (and b!6987423 c!1295803) b!6987422))

(assert (= (and b!6987423 (not c!1295803)) b!6987424))

(assert (= (or b!6987425 b!6987422) bm!634285))

(declare-fun m!7675448 () Bool)

(assert (=> bm!634285 m!7675448))

(declare-fun m!7675450 () Bool)

(assert (=> b!6987425 m!7675450))

(declare-fun m!7675452 () Bool)

(assert (=> b!6987426 m!7675452))

(assert (=> b!6987254 d!2176425))

(declare-fun bs!1861855 () Bool)

(declare-fun d!2176427 () Bool)

(assert (= bs!1861855 (and d!2176427 b!6987254)))

(declare-fun lambda!400838 () Int)

(assert (=> bs!1861855 (= lambda!400838 lambda!400784)))

(assert (=> d!2176427 true))

(assert (=> d!2176427 (= (derivationStepZipper!2686 lt!2485084 (h!73488 s!7408)) (flatMap!2192 lt!2485084 lambda!400838))))

(declare-fun bs!1861856 () Bool)

(assert (= bs!1861856 d!2176427))

(declare-fun m!7675454 () Bool)

(assert (=> bs!1861856 m!7675454))

(assert (=> b!6987254 d!2176427))

(assert (=> b!6987254 d!2176397))

(declare-fun d!2176429 () Bool)

(declare-fun choose!52201 ((Set Context!12404) Int) (Set Context!12404))

(assert (=> d!2176429 (= (flatMap!2192 lt!2485084 lambda!400784) (choose!52201 lt!2485084 lambda!400784))))

(declare-fun bs!1861857 () Bool)

(assert (= bs!1861857 d!2176429))

(declare-fun m!7675456 () Bool)

(assert (=> bs!1861857 m!7675456))

(assert (=> b!6987254 d!2176429))

(declare-fun d!2176431 () Bool)

(declare-fun c!1295807 () Bool)

(assert (=> d!2176431 (= c!1295807 (isEmpty!39132 s!7408))))

(declare-fun e!4199719 () Bool)

(assert (=> d!2176431 (= (matchZipper!2746 lt!2485093 s!7408) e!4199719)))

(declare-fun b!6987429 () Bool)

(assert (=> b!6987429 (= e!4199719 (nullableZipper!2427 lt!2485093))))

(declare-fun b!6987430 () Bool)

(assert (=> b!6987430 (= e!4199719 (matchZipper!2746 (derivationStepZipper!2686 lt!2485093 (head!14102 s!7408)) (tail!13208 s!7408)))))

(assert (= (and d!2176431 c!1295807) b!6987429))

(assert (= (and d!2176431 (not c!1295807)) b!6987430))

(assert (=> d!2176431 m!7675414))

(declare-fun m!7675458 () Bool)

(assert (=> b!6987429 m!7675458))

(assert (=> b!6987430 m!7675418))

(assert (=> b!6987430 m!7675418))

(declare-fun m!7675460 () Bool)

(assert (=> b!6987430 m!7675460))

(assert (=> b!6987430 m!7675422))

(assert (=> b!6987430 m!7675460))

(assert (=> b!6987430 m!7675422))

(declare-fun m!7675462 () Bool)

(assert (=> b!6987430 m!7675462))

(assert (=> start!671208 d!2176431))

(declare-fun bs!1861858 () Bool)

(declare-fun d!2176433 () Bool)

(assert (= bs!1861858 (and d!2176433 b!6987257)))

(declare-fun lambda!400843 () Int)

(assert (=> bs!1861858 (= lambda!400843 lambda!400782)))

(assert (=> d!2176433 true))

(assert (=> d!2176433 (= (appendTo!327 z1!570 ct2!306) (map!15464 z1!570 lambda!400843))))

(declare-fun bs!1861859 () Bool)

(assert (= bs!1861859 d!2176433))

(declare-fun m!7675464 () Bool)

(assert (=> bs!1861859 m!7675464))

(assert (=> start!671208 d!2176433))

(declare-fun bs!1861860 () Bool)

(declare-fun d!2176435 () Bool)

(assert (= bs!1861860 (and d!2176435 b!6987257)))

(declare-fun lambda!400844 () Int)

(assert (=> bs!1861860 (= lambda!400844 lambda!400783)))

(declare-fun bs!1861861 () Bool)

(assert (= bs!1861861 (and d!2176435 d!2176391)))

(assert (=> bs!1861861 (= lambda!400844 lambda!400829)))

(assert (=> d!2176435 (= (inv!85875 ct2!306) (forall!16114 (exprs!6702 ct2!306) lambda!400844))))

(declare-fun bs!1861862 () Bool)

(assert (= bs!1861862 d!2176435))

(declare-fun m!7675466 () Bool)

(assert (=> bs!1861862 m!7675466))

(assert (=> start!671208 d!2176435))

(assert (=> b!6987262 d!2176389))

(assert (=> b!6987262 d!2176393))

(assert (=> b!6987256 d!2176397))

(declare-fun d!2176437 () Bool)

(assert (=> d!2176437 (= (flatMap!2192 lt!2485108 lambda!400784) (dynLambda!26862 lambda!400784 lt!2485088))))

(declare-fun lt!2485235 () Unit!161067)

(assert (=> d!2176437 (= lt!2485235 (choose!52200 lt!2485108 lt!2485088 lambda!400784))))

(assert (=> d!2176437 (= lt!2485108 (set.insert lt!2485088 (as set.empty (Set Context!12404))))))

(assert (=> d!2176437 (= (lemmaFlatMapOnSingletonSet!1707 lt!2485108 lt!2485088 lambda!400784) lt!2485235)))

(declare-fun b_lambda!262321 () Bool)

(assert (=> (not b_lambda!262321) (not d!2176437)))

(declare-fun bs!1861863 () Bool)

(assert (= bs!1861863 d!2176437))

(assert (=> bs!1861863 m!7675234))

(declare-fun m!7675468 () Bool)

(assert (=> bs!1861863 m!7675468))

(declare-fun m!7675470 () Bool)

(assert (=> bs!1861863 m!7675470))

(assert (=> bs!1861863 m!7675232))

(assert (=> b!6987266 d!2176437))

(declare-fun d!2176439 () Bool)

(assert (=> d!2176439 (= (flatMap!2192 lt!2485108 lambda!400784) (choose!52201 lt!2485108 lambda!400784))))

(declare-fun bs!1861864 () Bool)

(assert (= bs!1861864 d!2176439))

(declare-fun m!7675472 () Bool)

(assert (=> bs!1861864 m!7675472))

(assert (=> b!6987266 d!2176439))

(declare-fun d!2176441 () Bool)

(declare-fun res!2849464 () Bool)

(declare-fun e!4199724 () Bool)

(assert (=> d!2176441 (=> res!2849464 e!4199724)))

(assert (=> d!2176441 (= res!2849464 (is-Nil!67039 lt!2485092))))

(assert (=> d!2176441 (= (forall!16114 lt!2485092 lambda!400783) e!4199724)))

(declare-fun b!6987435 () Bool)

(declare-fun e!4199725 () Bool)

(assert (=> b!6987435 (= e!4199724 e!4199725)))

(declare-fun res!2849465 () Bool)

(assert (=> b!6987435 (=> (not res!2849465) (not e!4199725))))

(declare-fun dynLambda!26863 (Int Regex!17206) Bool)

(assert (=> b!6987435 (= res!2849465 (dynLambda!26863 lambda!400783 (h!73487 lt!2485092)))))

(declare-fun b!6987436 () Bool)

(assert (=> b!6987436 (= e!4199725 (forall!16114 (t!380910 lt!2485092) lambda!400783))))

(assert (= (and d!2176441 (not res!2849464)) b!6987435))

(assert (= (and b!6987435 res!2849465) b!6987436))

(declare-fun b_lambda!262323 () Bool)

(assert (=> (not b_lambda!262323) (not b!6987435)))

(declare-fun m!7675474 () Bool)

(assert (=> b!6987435 m!7675474))

(declare-fun m!7675476 () Bool)

(assert (=> b!6987436 m!7675476))

(assert (=> b!6987266 d!2176441))

(assert (=> b!6987266 d!2176393))

(assert (=> b!6987266 d!2176403))

(declare-fun d!2176443 () Bool)

(declare-fun c!1295809 () Bool)

(assert (=> d!2176443 (= c!1295809 (isEmpty!39132 (t!380911 s!7408)))))

(declare-fun e!4199726 () Bool)

(assert (=> d!2176443 (= (matchZipper!2746 lt!2485080 (t!380911 s!7408)) e!4199726)))

(declare-fun b!6987437 () Bool)

(assert (=> b!6987437 (= e!4199726 (nullableZipper!2427 lt!2485080))))

(declare-fun b!6987438 () Bool)

(assert (=> b!6987438 (= e!4199726 (matchZipper!2746 (derivationStepZipper!2686 lt!2485080 (head!14102 (t!380911 s!7408))) (tail!13208 (t!380911 s!7408))))))

(assert (= (and d!2176443 c!1295809) b!6987437))

(assert (= (and d!2176443 (not c!1295809)) b!6987438))

(assert (=> d!2176443 m!7675334))

(declare-fun m!7675478 () Bool)

(assert (=> b!6987437 m!7675478))

(assert (=> b!6987438 m!7675338))

(assert (=> b!6987438 m!7675338))

(declare-fun m!7675480 () Bool)

(assert (=> b!6987438 m!7675480))

(assert (=> b!6987438 m!7675342))

(assert (=> b!6987438 m!7675480))

(assert (=> b!6987438 m!7675342))

(declare-fun m!7675482 () Bool)

(assert (=> b!6987438 m!7675482))

(assert (=> b!6987265 d!2176443))

(assert (=> b!6987265 d!2176393))

(declare-fun d!2176445 () Bool)

(declare-fun c!1295810 () Bool)

(assert (=> d!2176445 (= c!1295810 (isEmpty!39132 (t!380911 s!7408)))))

(declare-fun e!4199727 () Bool)

(assert (=> d!2176445 (= (matchZipper!2746 lt!2485107 (t!380911 s!7408)) e!4199727)))

(declare-fun b!6987439 () Bool)

(assert (=> b!6987439 (= e!4199727 (nullableZipper!2427 lt!2485107))))

(declare-fun b!6987440 () Bool)

(assert (=> b!6987440 (= e!4199727 (matchZipper!2746 (derivationStepZipper!2686 lt!2485107 (head!14102 (t!380911 s!7408))) (tail!13208 (t!380911 s!7408))))))

(assert (= (and d!2176445 c!1295810) b!6987439))

(assert (= (and d!2176445 (not c!1295810)) b!6987440))

(assert (=> d!2176445 m!7675334))

(declare-fun m!7675484 () Bool)

(assert (=> b!6987439 m!7675484))

(assert (=> b!6987440 m!7675338))

(assert (=> b!6987440 m!7675338))

(declare-fun m!7675486 () Bool)

(assert (=> b!6987440 m!7675486))

(assert (=> b!6987440 m!7675342))

(assert (=> b!6987440 m!7675486))

(assert (=> b!6987440 m!7675342))

(declare-fun m!7675488 () Bool)

(assert (=> b!6987440 m!7675488))

(assert (=> b!6987265 d!2176445))

(declare-fun e!4199730 () Bool)

(declare-fun d!2176447 () Bool)

(assert (=> d!2176447 (= (matchZipper!2746 (set.union lt!2485107 lt!2485103) (t!380911 s!7408)) e!4199730)))

(declare-fun res!2849468 () Bool)

(assert (=> d!2176447 (=> res!2849468 e!4199730)))

(assert (=> d!2176447 (= res!2849468 (matchZipper!2746 lt!2485107 (t!380911 s!7408)))))

(declare-fun lt!2485238 () Unit!161067)

(declare-fun choose!52202 ((Set Context!12404) (Set Context!12404) List!67164) Unit!161067)

(assert (=> d!2176447 (= lt!2485238 (choose!52202 lt!2485107 lt!2485103 (t!380911 s!7408)))))

(assert (=> d!2176447 (= (lemmaZipperConcatMatchesSameAsBothZippers!1379 lt!2485107 lt!2485103 (t!380911 s!7408)) lt!2485238)))

(declare-fun b!6987443 () Bool)

(assert (=> b!6987443 (= e!4199730 (matchZipper!2746 lt!2485103 (t!380911 s!7408)))))

(assert (= (and d!2176447 (not res!2849468)) b!6987443))

(declare-fun m!7675490 () Bool)

(assert (=> d!2176447 m!7675490))

(assert (=> d!2176447 m!7675222))

(declare-fun m!7675492 () Bool)

(assert (=> d!2176447 m!7675492))

(assert (=> b!6987443 m!7675190))

(assert (=> b!6987265 d!2176447))

(declare-fun d!2176449 () Bool)

(declare-fun c!1295811 () Bool)

(assert (=> d!2176449 (= c!1295811 (isEmpty!39132 (t!380911 s!7408)))))

(declare-fun e!4199731 () Bool)

(assert (=> d!2176449 (= (matchZipper!2746 lt!2485104 (t!380911 s!7408)) e!4199731)))

(declare-fun b!6987444 () Bool)

(assert (=> b!6987444 (= e!4199731 (nullableZipper!2427 lt!2485104))))

(declare-fun b!6987445 () Bool)

(assert (=> b!6987445 (= e!4199731 (matchZipper!2746 (derivationStepZipper!2686 lt!2485104 (head!14102 (t!380911 s!7408))) (tail!13208 (t!380911 s!7408))))))

(assert (= (and d!2176449 c!1295811) b!6987444))

(assert (= (and d!2176449 (not c!1295811)) b!6987445))

(assert (=> d!2176449 m!7675334))

(declare-fun m!7675494 () Bool)

(assert (=> b!6987444 m!7675494))

(assert (=> b!6987445 m!7675338))

(assert (=> b!6987445 m!7675338))

(declare-fun m!7675496 () Bool)

(assert (=> b!6987445 m!7675496))

(assert (=> b!6987445 m!7675342))

(assert (=> b!6987445 m!7675496))

(assert (=> b!6987445 m!7675342))

(declare-fun m!7675498 () Bool)

(assert (=> b!6987445 m!7675498))

(assert (=> b!6987265 d!2176449))

(declare-fun condSetEmpty!47742 () Bool)

(assert (=> setNonEmpty!47736 (= condSetEmpty!47742 (= setRest!47736 (as set.empty (Set Context!12404))))))

(declare-fun setRes!47742 () Bool)

(assert (=> setNonEmpty!47736 (= tp!1929331 setRes!47742)))

(declare-fun setIsEmpty!47742 () Bool)

(assert (=> setIsEmpty!47742 setRes!47742))

(declare-fun setNonEmpty!47742 () Bool)

(declare-fun tp!1929349 () Bool)

(declare-fun setElem!47742 () Context!12404)

(declare-fun e!4199734 () Bool)

(assert (=> setNonEmpty!47742 (= setRes!47742 (and tp!1929349 (inv!85875 setElem!47742) e!4199734))))

(declare-fun setRest!47742 () (Set Context!12404))

(assert (=> setNonEmpty!47742 (= setRest!47736 (set.union (set.insert setElem!47742 (as set.empty (Set Context!12404))) setRest!47742))))

(declare-fun b!6987450 () Bool)

(declare-fun tp!1929350 () Bool)

(assert (=> b!6987450 (= e!4199734 tp!1929350)))

(assert (= (and setNonEmpty!47736 condSetEmpty!47742) setIsEmpty!47742))

(assert (= (and setNonEmpty!47736 (not condSetEmpty!47742)) setNonEmpty!47742))

(assert (= setNonEmpty!47742 b!6987450))

(declare-fun m!7675500 () Bool)

(assert (=> setNonEmpty!47742 m!7675500))

(declare-fun b!6987455 () Bool)

(declare-fun e!4199737 () Bool)

(declare-fun tp!1929353 () Bool)

(assert (=> b!6987455 (= e!4199737 (and tp_is_empty!43637 tp!1929353))))

(assert (=> b!6987252 (= tp!1929330 e!4199737)))

(assert (= (and b!6987252 (is-Cons!67040 (t!380911 s!7408))) b!6987455))

(declare-fun b!6987460 () Bool)

(declare-fun e!4199740 () Bool)

(declare-fun tp!1929358 () Bool)

(declare-fun tp!1929359 () Bool)

(assert (=> b!6987460 (= e!4199740 (and tp!1929358 tp!1929359))))

(assert (=> b!6987264 (= tp!1929329 e!4199740)))

(assert (= (and b!6987264 (is-Cons!67039 (exprs!6702 setElem!47736))) b!6987460))

(declare-fun b!6987461 () Bool)

(declare-fun e!4199741 () Bool)

(declare-fun tp!1929360 () Bool)

(declare-fun tp!1929361 () Bool)

(assert (=> b!6987461 (= e!4199741 (and tp!1929360 tp!1929361))))

(assert (=> b!6987250 (= tp!1929332 e!4199741)))

(assert (= (and b!6987250 (is-Cons!67039 (exprs!6702 ct2!306))) b!6987461))

(declare-fun b_lambda!262325 () Bool)

(assert (= b_lambda!262323 (or b!6987257 b_lambda!262325)))

(declare-fun bs!1861865 () Bool)

(declare-fun d!2176451 () Bool)

(assert (= bs!1861865 (and d!2176451 b!6987257)))

(declare-fun validRegex!8854 (Regex!17206) Bool)

(assert (=> bs!1861865 (= (dynLambda!26863 lambda!400783 (h!73487 lt!2485092)) (validRegex!8854 (h!73487 lt!2485092)))))

(declare-fun m!7675502 () Bool)

(assert (=> bs!1861865 m!7675502))

(assert (=> b!6987435 d!2176451))

(declare-fun b_lambda!262327 () Bool)

(assert (= b_lambda!262317 (or b!6987251 b_lambda!262327)))

(declare-fun bs!1861866 () Bool)

(declare-fun d!2176453 () Bool)

(assert (= bs!1861866 (and d!2176453 b!6987251)))

(assert (=> bs!1861866 (= (dynLambda!26860 lambda!400781 lt!2485223) (matchZipper!2746 (set.insert lt!2485223 (as set.empty (Set Context!12404))) s!7408))))

(declare-fun m!7675504 () Bool)

(assert (=> bs!1861866 m!7675504))

(assert (=> bs!1861866 m!7675504))

(declare-fun m!7675506 () Bool)

(assert (=> bs!1861866 m!7675506))

(assert (=> d!2176407 d!2176453))

(declare-fun b_lambda!262329 () Bool)

(assert (= b_lambda!262321 (or b!6987254 b_lambda!262329)))

(declare-fun bs!1861867 () Bool)

(declare-fun d!2176455 () Bool)

(assert (= bs!1861867 (and d!2176455 b!6987254)))

(assert (=> bs!1861867 (= (dynLambda!26862 lambda!400784 lt!2485088) (derivationStepZipperUp!1856 lt!2485088 (h!73488 s!7408)))))

(assert (=> bs!1861867 m!7675216))

(assert (=> d!2176437 d!2176455))

(declare-fun b_lambda!262331 () Bool)

(assert (= b_lambda!262319 (or b!6987254 b_lambda!262331)))

(declare-fun bs!1861868 () Bool)

(declare-fun d!2176457 () Bool)

(assert (= bs!1861868 (and d!2176457 b!6987254)))

(assert (=> bs!1861868 (= (dynLambda!26862 lambda!400784 lt!2485111) (derivationStepZipperUp!1856 lt!2485111 (h!73488 s!7408)))))

(assert (=> bs!1861868 m!7675214))

(assert (=> d!2176423 d!2176457))

(declare-fun b_lambda!262333 () Bool)

(assert (= b_lambda!262315 (or b!6987257 b_lambda!262333)))

(declare-fun bs!1861869 () Bool)

(declare-fun d!2176459 () Bool)

(assert (= bs!1861869 (and d!2176459 b!6987257)))

(declare-fun lt!2485239 () Unit!161067)

(assert (=> bs!1861869 (= lt!2485239 (lemmaConcatPreservesForall!542 (exprs!6702 lt!2485219) (exprs!6702 ct2!306) lambda!400783))))

(assert (=> bs!1861869 (= (dynLambda!26859 lambda!400782 lt!2485219) (Context!12405 (++!15151 (exprs!6702 lt!2485219) (exprs!6702 ct2!306))))))

(declare-fun m!7675508 () Bool)

(assert (=> bs!1861869 m!7675508))

(declare-fun m!7675510 () Bool)

(assert (=> bs!1861869 m!7675510))

(assert (=> d!2176399 d!2176459))

(push 1)

(assert (not d!2176445))

(assert (not b!6987445))

(assert (not b!6987460))

(assert (not b!6987410))

(assert (not d!2176405))

(assert (not b_lambda!262329))

(assert (not b!6987461))

(assert (not b!6987406))

(assert (not b!6987430))

(assert (not bm!634284))

(assert (not bm!634277))

(assert (not d!2176415))

(assert (not d!2176423))

(assert (not b!6987425))

(assert (not b!6987438))

(assert (not b!6987443))

(assert tp_is_empty!43637)

(assert (not bm!634279))

(assert (not b!6987455))

(assert (not b!6987439))

(assert (not d!2176411))

(assert (not b_lambda!262327))

(assert (not d!2176389))

(assert (not b!6987354))

(assert (not d!2176427))

(assert (not bs!1861869))

(assert (not b!6987407))

(assert (not bm!634280))

(assert (not d!2176447))

(assert (not b_lambda!262325))

(assert (not b!6987421))

(assert (not setNonEmpty!47742))

(assert (not b!6987383))

(assert (not bs!1861867))

(assert (not d!2176431))

(assert (not d!2176437))

(assert (not b!6987426))

(assert (not b!6987353))

(assert (not d!2176395))

(assert (not b!6987436))

(assert (not d!2176391))

(assert (not d!2176433))

(assert (not d!2176429))

(assert (not d!2176397))

(assert (not b!6987416))

(assert (not b!6987342))

(assert (not b!6987444))

(assert (not b!6987415))

(assert (not b!6987450))

(assert (not bs!1861866))

(assert (not b!6987440))

(assert (not b!6987429))

(assert (not d!2176399))

(assert (not d!2176417))

(assert (not d!2176439))

(assert (not b_lambda!262331))

(assert (not b_lambda!262333))

(assert (not d!2176407))

(assert (not bs!1861868))

(assert (not b!6987437))

(assert (not bs!1861865))

(assert (not bm!634285))

(assert (not d!2176393))

(assert (not d!2176443))

(assert (not d!2176413))

(assert (not b!6987343))

(assert (not d!2176409))

(assert (not d!2176435))

(assert (not b!6987409))

(assert (not d!2176449))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


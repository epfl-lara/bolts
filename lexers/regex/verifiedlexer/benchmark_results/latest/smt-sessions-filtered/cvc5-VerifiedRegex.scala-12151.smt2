; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!683378 () Bool)

(assert start!683378)

(declare-fun b!7051857 () Bool)

(assert (=> b!7051857 true))

(declare-fun b!7051855 () Bool)

(assert (=> b!7051855 true))

(declare-fun b!7051854 () Bool)

(declare-fun e!4239416 () Bool)

(declare-fun tp!1939397 () Bool)

(assert (=> b!7051854 (= e!4239416 tp!1939397)))

(declare-fun e!4239413 () Bool)

(declare-datatypes ((C!35366 0))(
  ( (C!35367 (val!27385 Int)) )
))
(declare-datatypes ((Regex!17548 0))(
  ( (ElementMatch!17548 (c!1313481 C!35366)) (Concat!26393 (regOne!35608 Regex!17548) (regTwo!35608 Regex!17548)) (EmptyExpr!17548) (Star!17548 (reg!17877 Regex!17548)) (EmptyLang!17548) (Union!17548 (regOne!35609 Regex!17548) (regTwo!35609 Regex!17548)) )
))
(declare-datatypes ((List!68170 0))(
  ( (Nil!68046) (Cons!68046 (h!74494 Regex!17548) (t!381949 List!68170)) )
))
(declare-datatypes ((Context!13088 0))(
  ( (Context!13089 (exprs!7044 List!68170)) )
))
(declare-fun lt!2529865 () Context!13088)

(declare-fun ct2!306 () Context!13088)

(declare-fun inv!86730 (Context!13088) Bool)

(declare-fun ++!15631 (List!68170 List!68170) List!68170)

(assert (=> b!7051855 (= e!4239413 (inv!86730 (Context!13089 (++!15631 (exprs!7044 lt!2529865) (exprs!7044 ct2!306)))))))

(declare-datatypes ((Unit!161768 0))(
  ( (Unit!161769) )
))
(declare-fun lt!2529866 () Unit!161768)

(declare-fun lambda!419186 () Int)

(declare-fun lemmaConcatPreservesForall!859 (List!68170 List!68170 Int) Unit!161768)

(assert (=> b!7051855 (= lt!2529866 (lemmaConcatPreservesForall!859 (exprs!7044 lt!2529865) (exprs!7044 ct2!306) lambda!419186))))

(declare-fun lt!2529863 () Context!13088)

(declare-fun z1!570 () (Set Context!13088))

(declare-fun lambda!419185 () Int)

(declare-fun mapPost2!377 ((Set Context!13088) Int Context!13088) Context!13088)

(assert (=> b!7051855 (= lt!2529865 (mapPost2!377 z1!570 lambda!419185 lt!2529863))))

(declare-fun b!7051856 () Bool)

(declare-fun e!4239412 () Bool)

(declare-fun tp!1939398 () Bool)

(assert (=> b!7051856 (= e!4239412 tp!1939398)))

(declare-fun e!4239415 () Bool)

(assert (=> b!7051857 (= e!4239415 (not e!4239413))))

(declare-fun res!2878923 () Bool)

(assert (=> b!7051857 (=> res!2878923 e!4239413)))

(declare-datatypes ((List!68171 0))(
  ( (Nil!68047) (Cons!68047 (h!74495 C!35366) (t!381950 List!68171)) )
))
(declare-fun s!7408 () List!68171)

(declare-fun matchZipper!3088 ((Set Context!13088) List!68171) Bool)

(assert (=> b!7051857 (= res!2878923 (not (matchZipper!3088 (set.insert lt!2529863 (as set.empty (Set Context!13088))) s!7408)))))

(declare-fun lt!2529861 () (Set Context!13088))

(declare-fun lambda!419184 () Int)

(declare-fun getWitness!1596 ((Set Context!13088) Int) Context!13088)

(assert (=> b!7051857 (= lt!2529863 (getWitness!1596 lt!2529861 lambda!419184))))

(declare-datatypes ((List!68172 0))(
  ( (Nil!68048) (Cons!68048 (h!74496 Context!13088) (t!381951 List!68172)) )
))
(declare-fun lt!2529862 () List!68172)

(declare-fun exists!3522 (List!68172 Int) Bool)

(assert (=> b!7051857 (exists!3522 lt!2529862 lambda!419184)))

(declare-fun lt!2529864 () Unit!161768)

(declare-fun lemmaZipperMatchesExistsMatchingContext!469 (List!68172 List!68171) Unit!161768)

(assert (=> b!7051857 (= lt!2529864 (lemmaZipperMatchesExistsMatchingContext!469 lt!2529862 s!7408))))

(declare-fun toList!10889 ((Set Context!13088)) List!68172)

(assert (=> b!7051857 (= lt!2529862 (toList!10889 lt!2529861))))

(declare-fun b!7051858 () Bool)

(declare-fun res!2878921 () Bool)

(assert (=> b!7051858 (=> res!2878921 e!4239413)))

(assert (=> b!7051858 (= res!2878921 (not (set.member lt!2529863 lt!2529861)))))

(declare-fun res!2878924 () Bool)

(assert (=> start!683378 (=> (not res!2878924) (not e!4239415))))

(assert (=> start!683378 (= res!2878924 (matchZipper!3088 lt!2529861 s!7408))))

(declare-fun appendTo!669 ((Set Context!13088) Context!13088) (Set Context!13088))

(assert (=> start!683378 (= lt!2529861 (appendTo!669 z1!570 ct2!306))))

(assert (=> start!683378 e!4239415))

(declare-fun condSetEmpty!49700 () Bool)

(assert (=> start!683378 (= condSetEmpty!49700 (= z1!570 (as set.empty (Set Context!13088))))))

(declare-fun setRes!49700 () Bool)

(assert (=> start!683378 setRes!49700))

(assert (=> start!683378 (and (inv!86730 ct2!306) e!4239412)))

(declare-fun e!4239414 () Bool)

(assert (=> start!683378 e!4239414))

(declare-fun b!7051859 () Bool)

(declare-fun res!2878922 () Bool)

(assert (=> b!7051859 (=> (not res!2878922) (not e!4239415))))

(assert (=> b!7051859 (= res!2878922 (is-Cons!68047 s!7408))))

(declare-fun setIsEmpty!49700 () Bool)

(assert (=> setIsEmpty!49700 setRes!49700))

(declare-fun b!7051860 () Bool)

(declare-fun tp_is_empty!44321 () Bool)

(declare-fun tp!1939396 () Bool)

(assert (=> b!7051860 (= e!4239414 (and tp_is_empty!44321 tp!1939396))))

(declare-fun setElem!49700 () Context!13088)

(declare-fun setNonEmpty!49700 () Bool)

(declare-fun tp!1939395 () Bool)

(assert (=> setNonEmpty!49700 (= setRes!49700 (and tp!1939395 (inv!86730 setElem!49700) e!4239416))))

(declare-fun setRest!49700 () (Set Context!13088))

(assert (=> setNonEmpty!49700 (= z1!570 (set.union (set.insert setElem!49700 (as set.empty (Set Context!13088))) setRest!49700))))

(assert (= (and start!683378 res!2878924) b!7051859))

(assert (= (and b!7051859 res!2878922) b!7051857))

(assert (= (and b!7051857 (not res!2878923)) b!7051858))

(assert (= (and b!7051858 (not res!2878921)) b!7051855))

(assert (= (and start!683378 condSetEmpty!49700) setIsEmpty!49700))

(assert (= (and start!683378 (not condSetEmpty!49700)) setNonEmpty!49700))

(assert (= setNonEmpty!49700 b!7051854))

(assert (= start!683378 b!7051856))

(assert (= (and start!683378 (is-Cons!68047 s!7408)) b!7051860))

(declare-fun m!7768282 () Bool)

(assert (=> start!683378 m!7768282))

(declare-fun m!7768284 () Bool)

(assert (=> start!683378 m!7768284))

(declare-fun m!7768286 () Bool)

(assert (=> start!683378 m!7768286))

(declare-fun m!7768288 () Bool)

(assert (=> b!7051857 m!7768288))

(declare-fun m!7768290 () Bool)

(assert (=> b!7051857 m!7768290))

(declare-fun m!7768292 () Bool)

(assert (=> b!7051857 m!7768292))

(declare-fun m!7768294 () Bool)

(assert (=> b!7051857 m!7768294))

(assert (=> b!7051857 m!7768292))

(declare-fun m!7768296 () Bool)

(assert (=> b!7051857 m!7768296))

(declare-fun m!7768298 () Bool)

(assert (=> b!7051857 m!7768298))

(declare-fun m!7768300 () Bool)

(assert (=> b!7051858 m!7768300))

(declare-fun m!7768302 () Bool)

(assert (=> b!7051855 m!7768302))

(declare-fun m!7768304 () Bool)

(assert (=> b!7051855 m!7768304))

(declare-fun m!7768306 () Bool)

(assert (=> b!7051855 m!7768306))

(declare-fun m!7768308 () Bool)

(assert (=> b!7051855 m!7768308))

(declare-fun m!7768310 () Bool)

(assert (=> setNonEmpty!49700 m!7768310))

(push 1)

(assert (not b!7051860))

(assert (not b!7051854))

(assert (not start!683378))

(assert (not b!7051856))

(assert (not b!7051857))

(assert (not b!7051855))

(assert tp_is_empty!44321)

(assert (not setNonEmpty!49700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2203482 () Bool)

(declare-fun e!4239434 () Bool)

(assert (=> d!2203482 e!4239434))

(declare-fun res!2878941 () Bool)

(assert (=> d!2203482 (=> (not res!2878941) (not e!4239434))))

(declare-fun lt!2529889 () List!68172)

(declare-fun noDuplicate!2674 (List!68172) Bool)

(assert (=> d!2203482 (= res!2878941 (noDuplicate!2674 lt!2529889))))

(declare-fun choose!53706 ((Set Context!13088)) List!68172)

(assert (=> d!2203482 (= lt!2529889 (choose!53706 lt!2529861))))

(assert (=> d!2203482 (= (toList!10889 lt!2529861) lt!2529889)))

(declare-fun b!7051892 () Bool)

(declare-fun content!13653 (List!68172) (Set Context!13088))

(assert (=> b!7051892 (= e!4239434 (= (content!13653 lt!2529889) lt!2529861))))

(assert (= (and d!2203482 res!2878941) b!7051892))

(declare-fun m!7768342 () Bool)

(assert (=> d!2203482 m!7768342))

(declare-fun m!7768344 () Bool)

(assert (=> d!2203482 m!7768344))

(declare-fun m!7768346 () Bool)

(assert (=> b!7051892 m!7768346))

(assert (=> b!7051857 d!2203482))

(declare-fun d!2203484 () Bool)

(declare-fun c!1313491 () Bool)

(declare-fun isEmpty!39694 (List!68171) Bool)

(assert (=> d!2203484 (= c!1313491 (isEmpty!39694 s!7408))))

(declare-fun e!4239437 () Bool)

(assert (=> d!2203484 (= (matchZipper!3088 (set.insert lt!2529863 (as set.empty (Set Context!13088))) s!7408) e!4239437)))

(declare-fun b!7051897 () Bool)

(declare-fun nullableZipper!2639 ((Set Context!13088)) Bool)

(assert (=> b!7051897 (= e!4239437 (nullableZipper!2639 (set.insert lt!2529863 (as set.empty (Set Context!13088)))))))

(declare-fun b!7051898 () Bool)

(declare-fun derivationStepZipper!2999 ((Set Context!13088) C!35366) (Set Context!13088))

(declare-fun head!14339 (List!68171) C!35366)

(declare-fun tail!13668 (List!68171) List!68171)

(assert (=> b!7051898 (= e!4239437 (matchZipper!3088 (derivationStepZipper!2999 (set.insert lt!2529863 (as set.empty (Set Context!13088))) (head!14339 s!7408)) (tail!13668 s!7408)))))

(assert (= (and d!2203484 c!1313491) b!7051897))

(assert (= (and d!2203484 (not c!1313491)) b!7051898))

(declare-fun m!7768348 () Bool)

(assert (=> d!2203484 m!7768348))

(assert (=> b!7051897 m!7768292))

(declare-fun m!7768350 () Bool)

(assert (=> b!7051897 m!7768350))

(declare-fun m!7768352 () Bool)

(assert (=> b!7051898 m!7768352))

(assert (=> b!7051898 m!7768292))

(assert (=> b!7051898 m!7768352))

(declare-fun m!7768354 () Bool)

(assert (=> b!7051898 m!7768354))

(declare-fun m!7768356 () Bool)

(assert (=> b!7051898 m!7768356))

(assert (=> b!7051898 m!7768354))

(assert (=> b!7051898 m!7768356))

(declare-fun m!7768358 () Bool)

(assert (=> b!7051898 m!7768358))

(assert (=> b!7051857 d!2203484))

(declare-fun d!2203486 () Bool)

(declare-fun e!4239440 () Bool)

(assert (=> d!2203486 e!4239440))

(declare-fun res!2878944 () Bool)

(assert (=> d!2203486 (=> (not res!2878944) (not e!4239440))))

(declare-fun lt!2529892 () Context!13088)

(declare-fun dynLambda!27576 (Int Context!13088) Bool)

(assert (=> d!2203486 (= res!2878944 (dynLambda!27576 lambda!419184 lt!2529892))))

(declare-fun getWitness!1598 (List!68172 Int) Context!13088)

(assert (=> d!2203486 (= lt!2529892 (getWitness!1598 (toList!10889 lt!2529861) lambda!419184))))

(declare-fun exists!3524 ((Set Context!13088) Int) Bool)

(assert (=> d!2203486 (exists!3524 lt!2529861 lambda!419184)))

(assert (=> d!2203486 (= (getWitness!1596 lt!2529861 lambda!419184) lt!2529892)))

(declare-fun b!7051901 () Bool)

(assert (=> b!7051901 (= e!4239440 (set.member lt!2529892 lt!2529861))))

(assert (= (and d!2203486 res!2878944) b!7051901))

(declare-fun b_lambda!268343 () Bool)

(assert (=> (not b_lambda!268343) (not d!2203486)))

(declare-fun m!7768360 () Bool)

(assert (=> d!2203486 m!7768360))

(assert (=> d!2203486 m!7768298))

(assert (=> d!2203486 m!7768298))

(declare-fun m!7768362 () Bool)

(assert (=> d!2203486 m!7768362))

(declare-fun m!7768364 () Bool)

(assert (=> d!2203486 m!7768364))

(declare-fun m!7768366 () Bool)

(assert (=> b!7051901 m!7768366))

(assert (=> b!7051857 d!2203486))

(declare-fun bs!1876321 () Bool)

(declare-fun d!2203488 () Bool)

(assert (= bs!1876321 (and d!2203488 b!7051857)))

(declare-fun lambda!419202 () Int)

(assert (=> bs!1876321 (= lambda!419202 lambda!419184)))

(assert (=> d!2203488 true))

(assert (=> d!2203488 (exists!3522 lt!2529862 lambda!419202)))

(declare-fun lt!2529895 () Unit!161768)

(declare-fun choose!53707 (List!68172 List!68171) Unit!161768)

(assert (=> d!2203488 (= lt!2529895 (choose!53707 lt!2529862 s!7408))))

(assert (=> d!2203488 (matchZipper!3088 (content!13653 lt!2529862) s!7408)))

(assert (=> d!2203488 (= (lemmaZipperMatchesExistsMatchingContext!469 lt!2529862 s!7408) lt!2529895)))

(declare-fun bs!1876322 () Bool)

(assert (= bs!1876322 d!2203488))

(declare-fun m!7768368 () Bool)

(assert (=> bs!1876322 m!7768368))

(declare-fun m!7768370 () Bool)

(assert (=> bs!1876322 m!7768370))

(declare-fun m!7768372 () Bool)

(assert (=> bs!1876322 m!7768372))

(assert (=> bs!1876322 m!7768372))

(declare-fun m!7768374 () Bool)

(assert (=> bs!1876322 m!7768374))

(assert (=> b!7051857 d!2203488))

(declare-fun bs!1876323 () Bool)

(declare-fun d!2203490 () Bool)

(assert (= bs!1876323 (and d!2203490 b!7051857)))

(declare-fun lambda!419205 () Int)

(assert (=> bs!1876323 (not (= lambda!419205 lambda!419184))))

(declare-fun bs!1876324 () Bool)

(assert (= bs!1876324 (and d!2203490 d!2203488)))

(assert (=> bs!1876324 (not (= lambda!419205 lambda!419202))))

(assert (=> d!2203490 true))

(declare-fun order!28273 () Int)

(declare-fun dynLambda!27577 (Int Int) Int)

(assert (=> d!2203490 (< (dynLambda!27577 order!28273 lambda!419184) (dynLambda!27577 order!28273 lambda!419205))))

(declare-fun forall!16481 (List!68172 Int) Bool)

(assert (=> d!2203490 (= (exists!3522 lt!2529862 lambda!419184) (not (forall!16481 lt!2529862 lambda!419205)))))

(declare-fun bs!1876325 () Bool)

(assert (= bs!1876325 d!2203490))

(declare-fun m!7768376 () Bool)

(assert (=> bs!1876325 m!7768376))

(assert (=> b!7051857 d!2203490))

(declare-fun d!2203492 () Bool)

(declare-fun c!1313494 () Bool)

(assert (=> d!2203492 (= c!1313494 (isEmpty!39694 s!7408))))

(declare-fun e!4239441 () Bool)

(assert (=> d!2203492 (= (matchZipper!3088 lt!2529861 s!7408) e!4239441)))

(declare-fun b!7051904 () Bool)

(assert (=> b!7051904 (= e!4239441 (nullableZipper!2639 lt!2529861))))

(declare-fun b!7051905 () Bool)

(assert (=> b!7051905 (= e!4239441 (matchZipper!3088 (derivationStepZipper!2999 lt!2529861 (head!14339 s!7408)) (tail!13668 s!7408)))))

(assert (= (and d!2203492 c!1313494) b!7051904))

(assert (= (and d!2203492 (not c!1313494)) b!7051905))

(assert (=> d!2203492 m!7768348))

(declare-fun m!7768378 () Bool)

(assert (=> b!7051904 m!7768378))

(assert (=> b!7051905 m!7768352))

(assert (=> b!7051905 m!7768352))

(declare-fun m!7768380 () Bool)

(assert (=> b!7051905 m!7768380))

(assert (=> b!7051905 m!7768356))

(assert (=> b!7051905 m!7768380))

(assert (=> b!7051905 m!7768356))

(declare-fun m!7768382 () Bool)

(assert (=> b!7051905 m!7768382))

(assert (=> start!683378 d!2203492))

(declare-fun bs!1876326 () Bool)

(declare-fun d!2203494 () Bool)

(assert (= bs!1876326 (and d!2203494 b!7051855)))

(declare-fun lambda!419210 () Int)

(assert (=> bs!1876326 (= lambda!419210 lambda!419185)))

(assert (=> d!2203494 true))

(declare-fun map!15864 ((Set Context!13088) Int) (Set Context!13088))

(assert (=> d!2203494 (= (appendTo!669 z1!570 ct2!306) (map!15864 z1!570 lambda!419210))))

(declare-fun bs!1876327 () Bool)

(assert (= bs!1876327 d!2203494))

(declare-fun m!7768384 () Bool)

(assert (=> bs!1876327 m!7768384))

(assert (=> start!683378 d!2203494))

(declare-fun bs!1876328 () Bool)

(declare-fun d!2203496 () Bool)

(assert (= bs!1876328 (and d!2203496 b!7051855)))

(declare-fun lambda!419213 () Int)

(assert (=> bs!1876328 (= lambda!419213 lambda!419186)))

(declare-fun forall!16482 (List!68170 Int) Bool)

(assert (=> d!2203496 (= (inv!86730 ct2!306) (forall!16482 (exprs!7044 ct2!306) lambda!419213))))

(declare-fun bs!1876329 () Bool)

(assert (= bs!1876329 d!2203496))

(declare-fun m!7768386 () Bool)

(assert (=> bs!1876329 m!7768386))

(assert (=> start!683378 d!2203496))

(declare-fun bs!1876330 () Bool)

(declare-fun d!2203500 () Bool)

(assert (= bs!1876330 (and d!2203500 b!7051855)))

(declare-fun lambda!419214 () Int)

(assert (=> bs!1876330 (= lambda!419214 lambda!419186)))

(declare-fun bs!1876331 () Bool)

(assert (= bs!1876331 (and d!2203500 d!2203496)))

(assert (=> bs!1876331 (= lambda!419214 lambda!419213)))

(assert (=> d!2203500 (= (inv!86730 (Context!13089 (++!15631 (exprs!7044 lt!2529865) (exprs!7044 ct2!306)))) (forall!16482 (exprs!7044 (Context!13089 (++!15631 (exprs!7044 lt!2529865) (exprs!7044 ct2!306)))) lambda!419214))))

(declare-fun bs!1876332 () Bool)

(assert (= bs!1876332 d!2203500))

(declare-fun m!7768388 () Bool)

(assert (=> bs!1876332 m!7768388))

(assert (=> b!7051855 d!2203500))

(declare-fun b!7051914 () Bool)

(declare-fun e!4239447 () List!68170)

(assert (=> b!7051914 (= e!4239447 (exprs!7044 ct2!306))))

(declare-fun b!7051916 () Bool)

(declare-fun res!2878950 () Bool)

(declare-fun e!4239446 () Bool)

(assert (=> b!7051916 (=> (not res!2878950) (not e!4239446))))

(declare-fun lt!2529900 () List!68170)

(declare-fun size!41135 (List!68170) Int)

(assert (=> b!7051916 (= res!2878950 (= (size!41135 lt!2529900) (+ (size!41135 (exprs!7044 lt!2529865)) (size!41135 (exprs!7044 ct2!306)))))))

(declare-fun b!7051917 () Bool)

(assert (=> b!7051917 (= e!4239446 (or (not (= (exprs!7044 ct2!306) Nil!68046)) (= lt!2529900 (exprs!7044 lt!2529865))))))

(declare-fun d!2203502 () Bool)

(assert (=> d!2203502 e!4239446))

(declare-fun res!2878949 () Bool)

(assert (=> d!2203502 (=> (not res!2878949) (not e!4239446))))

(declare-fun content!13654 (List!68170) (Set Regex!17548))

(assert (=> d!2203502 (= res!2878949 (= (content!13654 lt!2529900) (set.union (content!13654 (exprs!7044 lt!2529865)) (content!13654 (exprs!7044 ct2!306)))))))

(assert (=> d!2203502 (= lt!2529900 e!4239447)))

(declare-fun c!1313498 () Bool)

(assert (=> d!2203502 (= c!1313498 (is-Nil!68046 (exprs!7044 lt!2529865)))))

(assert (=> d!2203502 (= (++!15631 (exprs!7044 lt!2529865) (exprs!7044 ct2!306)) lt!2529900)))

(declare-fun b!7051915 () Bool)

(assert (=> b!7051915 (= e!4239447 (Cons!68046 (h!74494 (exprs!7044 lt!2529865)) (++!15631 (t!381949 (exprs!7044 lt!2529865)) (exprs!7044 ct2!306))))))

(assert (= (and d!2203502 c!1313498) b!7051914))

(assert (= (and d!2203502 (not c!1313498)) b!7051915))

(assert (= (and d!2203502 res!2878949) b!7051916))

(assert (= (and b!7051916 res!2878950) b!7051917))

(declare-fun m!7768390 () Bool)

(assert (=> b!7051916 m!7768390))

(declare-fun m!7768392 () Bool)

(assert (=> b!7051916 m!7768392))

(declare-fun m!7768394 () Bool)

(assert (=> b!7051916 m!7768394))

(declare-fun m!7768396 () Bool)

(assert (=> d!2203502 m!7768396))

(declare-fun m!7768398 () Bool)

(assert (=> d!2203502 m!7768398))

(declare-fun m!7768400 () Bool)

(assert (=> d!2203502 m!7768400))

(declare-fun m!7768402 () Bool)

(assert (=> b!7051915 m!7768402))

(assert (=> b!7051855 d!2203502))

(declare-fun d!2203504 () Bool)

(assert (=> d!2203504 (forall!16482 (++!15631 (exprs!7044 lt!2529865) (exprs!7044 ct2!306)) lambda!419186)))

(declare-fun lt!2529903 () Unit!161768)

(declare-fun choose!53708 (List!68170 List!68170 Int) Unit!161768)

(assert (=> d!2203504 (= lt!2529903 (choose!53708 (exprs!7044 lt!2529865) (exprs!7044 ct2!306) lambda!419186))))

(assert (=> d!2203504 (forall!16482 (exprs!7044 lt!2529865) lambda!419186)))

(assert (=> d!2203504 (= (lemmaConcatPreservesForall!859 (exprs!7044 lt!2529865) (exprs!7044 ct2!306) lambda!419186) lt!2529903)))

(declare-fun bs!1876335 () Bool)

(assert (= bs!1876335 d!2203504))

(assert (=> bs!1876335 m!7768302))

(assert (=> bs!1876335 m!7768302))

(declare-fun m!7768406 () Bool)

(assert (=> bs!1876335 m!7768406))

(declare-fun m!7768408 () Bool)

(assert (=> bs!1876335 m!7768408))

(declare-fun m!7768410 () Bool)

(assert (=> bs!1876335 m!7768410))

(assert (=> b!7051855 d!2203504))

(declare-fun d!2203508 () Bool)

(declare-fun e!4239450 () Bool)

(assert (=> d!2203508 e!4239450))

(declare-fun res!2878953 () Bool)

(assert (=> d!2203508 (=> (not res!2878953) (not e!4239450))))

(declare-fun lt!2529906 () Context!13088)

(declare-fun dynLambda!27578 (Int Context!13088) Context!13088)

(assert (=> d!2203508 (= res!2878953 (= lt!2529863 (dynLambda!27578 lambda!419185 lt!2529906)))))

(declare-fun choose!53709 ((Set Context!13088) Int Context!13088) Context!13088)

(assert (=> d!2203508 (= lt!2529906 (choose!53709 z1!570 lambda!419185 lt!2529863))))

(assert (=> d!2203508 (set.member lt!2529863 (map!15864 z1!570 lambda!419185))))

(assert (=> d!2203508 (= (mapPost2!377 z1!570 lambda!419185 lt!2529863) lt!2529906)))

(declare-fun b!7051921 () Bool)

(assert (=> b!7051921 (= e!4239450 (set.member lt!2529906 z1!570))))

(assert (= (and d!2203508 res!2878953) b!7051921))

(declare-fun b_lambda!268345 () Bool)

(assert (=> (not b_lambda!268345) (not d!2203508)))

(declare-fun m!7768412 () Bool)

(assert (=> d!2203508 m!7768412))

(declare-fun m!7768414 () Bool)

(assert (=> d!2203508 m!7768414))

(declare-fun m!7768416 () Bool)

(assert (=> d!2203508 m!7768416))

(declare-fun m!7768418 () Bool)

(assert (=> d!2203508 m!7768418))

(declare-fun m!7768420 () Bool)

(assert (=> b!7051921 m!7768420))

(assert (=> b!7051855 d!2203508))

(declare-fun bs!1876336 () Bool)

(declare-fun d!2203510 () Bool)

(assert (= bs!1876336 (and d!2203510 b!7051855)))

(declare-fun lambda!419218 () Int)

(assert (=> bs!1876336 (= lambda!419218 lambda!419186)))

(declare-fun bs!1876337 () Bool)

(assert (= bs!1876337 (and d!2203510 d!2203496)))

(assert (=> bs!1876337 (= lambda!419218 lambda!419213)))

(declare-fun bs!1876338 () Bool)

(assert (= bs!1876338 (and d!2203510 d!2203500)))

(assert (=> bs!1876338 (= lambda!419218 lambda!419214)))

(assert (=> d!2203510 (= (inv!86730 setElem!49700) (forall!16482 (exprs!7044 setElem!49700) lambda!419218))))

(declare-fun bs!1876339 () Bool)

(assert (= bs!1876339 d!2203510))

(declare-fun m!7768422 () Bool)

(assert (=> bs!1876339 m!7768422))

(assert (=> setNonEmpty!49700 d!2203510))

(declare-fun b!7051926 () Bool)

(declare-fun e!4239453 () Bool)

(declare-fun tp!1939415 () Bool)

(declare-fun tp!1939416 () Bool)

(assert (=> b!7051926 (= e!4239453 (and tp!1939415 tp!1939416))))

(assert (=> b!7051854 (= tp!1939397 e!4239453)))

(assert (= (and b!7051854 (is-Cons!68046 (exprs!7044 setElem!49700))) b!7051926))

(declare-fun condSetEmpty!49706 () Bool)

(assert (=> setNonEmpty!49700 (= condSetEmpty!49706 (= setRest!49700 (as set.empty (Set Context!13088))))))

(declare-fun setRes!49706 () Bool)

(assert (=> setNonEmpty!49700 (= tp!1939395 setRes!49706)))

(declare-fun setIsEmpty!49706 () Bool)

(assert (=> setIsEmpty!49706 setRes!49706))

(declare-fun e!4239456 () Bool)

(declare-fun tp!1939421 () Bool)

(declare-fun setNonEmpty!49706 () Bool)

(declare-fun setElem!49706 () Context!13088)

(assert (=> setNonEmpty!49706 (= setRes!49706 (and tp!1939421 (inv!86730 setElem!49706) e!4239456))))

(declare-fun setRest!49706 () (Set Context!13088))

(assert (=> setNonEmpty!49706 (= setRest!49700 (set.union (set.insert setElem!49706 (as set.empty (Set Context!13088))) setRest!49706))))

(declare-fun b!7051931 () Bool)

(declare-fun tp!1939422 () Bool)

(assert (=> b!7051931 (= e!4239456 tp!1939422)))

(assert (= (and setNonEmpty!49700 condSetEmpty!49706) setIsEmpty!49706))

(assert (= (and setNonEmpty!49700 (not condSetEmpty!49706)) setNonEmpty!49706))

(assert (= setNonEmpty!49706 b!7051931))

(declare-fun m!7768424 () Bool)

(assert (=> setNonEmpty!49706 m!7768424))

(declare-fun b!7051932 () Bool)

(declare-fun e!4239457 () Bool)

(declare-fun tp!1939423 () Bool)

(declare-fun tp!1939424 () Bool)

(assert (=> b!7051932 (= e!4239457 (and tp!1939423 tp!1939424))))

(assert (=> b!7051856 (= tp!1939398 e!4239457)))

(assert (= (and b!7051856 (is-Cons!68046 (exprs!7044 ct2!306))) b!7051932))

(declare-fun b!7051937 () Bool)

(declare-fun e!4239460 () Bool)

(declare-fun tp!1939427 () Bool)

(assert (=> b!7051937 (= e!4239460 (and tp_is_empty!44321 tp!1939427))))

(assert (=> b!7051860 (= tp!1939396 e!4239460)))

(assert (= (and b!7051860 (is-Cons!68047 (t!381950 s!7408))) b!7051937))

(declare-fun b_lambda!268347 () Bool)

(assert (= b_lambda!268343 (or b!7051857 b_lambda!268347)))

(declare-fun bs!1876340 () Bool)

(declare-fun d!2203512 () Bool)

(assert (= bs!1876340 (and d!2203512 b!7051857)))

(assert (=> bs!1876340 (= (dynLambda!27576 lambda!419184 lt!2529892) (matchZipper!3088 (set.insert lt!2529892 (as set.empty (Set Context!13088))) s!7408))))

(declare-fun m!7768426 () Bool)

(assert (=> bs!1876340 m!7768426))

(assert (=> bs!1876340 m!7768426))

(declare-fun m!7768428 () Bool)

(assert (=> bs!1876340 m!7768428))

(assert (=> d!2203486 d!2203512))

(declare-fun b_lambda!268349 () Bool)

(assert (= b_lambda!268345 (or b!7051855 b_lambda!268349)))

(declare-fun bs!1876341 () Bool)

(declare-fun d!2203514 () Bool)

(assert (= bs!1876341 (and d!2203514 b!7051855)))

(declare-fun lt!2529907 () Unit!161768)

(assert (=> bs!1876341 (= lt!2529907 (lemmaConcatPreservesForall!859 (exprs!7044 lt!2529906) (exprs!7044 ct2!306) lambda!419186))))

(assert (=> bs!1876341 (= (dynLambda!27578 lambda!419185 lt!2529906) (Context!13089 (++!15631 (exprs!7044 lt!2529906) (exprs!7044 ct2!306))))))

(declare-fun m!7768430 () Bool)

(assert (=> bs!1876341 m!7768430))

(declare-fun m!7768432 () Bool)

(assert (=> bs!1876341 m!7768432))

(assert (=> d!2203508 d!2203514))

(push 1)

(assert (not b!7051916))

(assert (not d!2203488))

(assert (not b!7051898))

(assert (not b!7051931))

(assert (not b_lambda!268349))

(assert (not b!7051904))

(assert (not d!2203502))

(assert (not d!2203504))

(assert (not b!7051932))

(assert (not setNonEmpty!49706))

(assert tp_is_empty!44321)

(assert (not bs!1876340))

(assert (not d!2203494))

(assert (not b!7051915))

(assert (not d!2203500))

(assert (not d!2203492))

(assert (not b!7051937))

(assert (not d!2203482))

(assert (not d!2203496))

(assert (not bs!1876341))

(assert (not b!7051926))

(assert (not d!2203484))

(assert (not d!2203508))

(assert (not b!7051892))

(assert (not b!7051897))

(assert (not d!2203486))

(assert (not b!7051905))

(assert (not b_lambda!268347))

(assert (not d!2203510))

(assert (not d!2203490))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


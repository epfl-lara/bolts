; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!677922 () Bool)

(assert start!677922)

(declare-fun b!7023970 () Bool)

(assert (=> b!7023970 true))

(declare-fun b!7023972 () Bool)

(assert (=> b!7023972 true))

(declare-fun b!7023971 () Bool)

(assert (=> b!7023971 true))

(declare-fun b!7023968 () Bool)

(declare-fun res!2867334 () Bool)

(declare-fun e!4222383 () Bool)

(assert (=> b!7023968 (=> res!2867334 e!4222383)))

(declare-datatypes ((C!35138 0))(
  ( (C!35139 (val!27271 Int)) )
))
(declare-datatypes ((Regex!17434 0))(
  ( (ElementMatch!17434 (c!1305487 C!35138)) (Concat!26279 (regOne!35380 Regex!17434) (regTwo!35380 Regex!17434)) (EmptyExpr!17434) (Star!17434 (reg!17763 Regex!17434)) (EmptyLang!17434) (Union!17434 (regOne!35381 Regex!17434) (regTwo!35381 Regex!17434)) )
))
(declare-datatypes ((List!67830 0))(
  ( (Nil!67706) (Cons!67706 (h!74154 Regex!17434) (t!381585 List!67830)) )
))
(declare-datatypes ((Context!12860 0))(
  ( (Context!12861 (exprs!6930 List!67830)) )
))
(declare-fun lt!2513492 () Context!12860)

(declare-fun isEmpty!39478 (List!67830) Bool)

(assert (=> b!7023968 (= res!2867334 (isEmpty!39478 (exprs!6930 lt!2513492)))))

(declare-fun b!7023969 () Bool)

(declare-fun e!4222382 () Bool)

(declare-fun tp_is_empty!44093 () Bool)

(declare-fun tp!1935146 () Bool)

(assert (=> b!7023969 (= e!4222382 (and tp_is_empty!44093 tp!1935146))))

(declare-fun e!4222381 () Bool)

(declare-fun e!4222387 () Bool)

(assert (=> b!7023970 (= e!4222381 (not e!4222387))))

(declare-fun res!2867336 () Bool)

(assert (=> b!7023970 (=> res!2867336 e!4222387)))

(declare-fun lt!2513498 () (Set Context!12860))

(declare-datatypes ((List!67831 0))(
  ( (Nil!67707) (Cons!67707 (h!74155 C!35138) (t!381586 List!67831)) )
))
(declare-fun s!7408 () List!67831)

(declare-fun matchZipper!2974 ((Set Context!12860) List!67831) Bool)

(assert (=> b!7023970 (= res!2867336 (not (matchZipper!2974 lt!2513498 s!7408)))))

(declare-fun lt!2513490 () Context!12860)

(assert (=> b!7023970 (= lt!2513498 (set.insert lt!2513490 (as set.empty (Set Context!12860))))))

(declare-fun lt!2513499 () (Set Context!12860))

(declare-fun lambda!412474 () Int)

(declare-fun getWitness!1419 ((Set Context!12860) Int) Context!12860)

(assert (=> b!7023970 (= lt!2513490 (getWitness!1419 lt!2513499 lambda!412474))))

(declare-datatypes ((List!67832 0))(
  ( (Nil!67708) (Cons!67708 (h!74156 Context!12860) (t!381587 List!67832)) )
))
(declare-fun lt!2513489 () List!67832)

(declare-fun exists!3338 (List!67832 Int) Bool)

(assert (=> b!7023970 (exists!3338 lt!2513489 lambda!412474)))

(declare-datatypes ((Unit!161530 0))(
  ( (Unit!161531) )
))
(declare-fun lt!2513484 () Unit!161530)

(declare-fun lemmaZipperMatchesExistsMatchingContext!373 (List!67832 List!67831) Unit!161530)

(assert (=> b!7023970 (= lt!2513484 (lemmaZipperMatchesExistsMatchingContext!373 lt!2513489 s!7408))))

(declare-fun toList!10777 ((Set Context!12860)) List!67832)

(assert (=> b!7023970 (= lt!2513489 (toList!10777 lt!2513499))))

(declare-fun e!4222385 () Bool)

(assert (=> b!7023971 (= e!4222385 e!4222383)))

(declare-fun res!2867329 () Bool)

(assert (=> b!7023971 (=> res!2867329 e!4222383)))

(declare-fun lt!2513500 () (Set Context!12860))

(declare-fun lt!2513497 () (Set Context!12860))

(declare-fun derivationStepZipper!2890 ((Set Context!12860) C!35138) (Set Context!12860))

(assert (=> b!7023971 (= res!2867329 (not (= (derivationStepZipper!2890 lt!2513497 (h!74155 s!7408)) lt!2513500)))))

(declare-fun lambda!412477 () Int)

(declare-fun lt!2513486 () Context!12860)

(declare-fun flatMap!2381 ((Set Context!12860) Int) (Set Context!12860))

(declare-fun derivationStepZipperUp!2044 (Context!12860 C!35138) (Set Context!12860))

(assert (=> b!7023971 (= (flatMap!2381 lt!2513497 lambda!412477) (derivationStepZipperUp!2044 lt!2513486 (h!74155 s!7408)))))

(declare-fun lt!2513495 () Unit!161530)

(declare-fun lemmaFlatMapOnSingletonSet!1895 ((Set Context!12860) Context!12860 Int) Unit!161530)

(assert (=> b!7023971 (= lt!2513495 (lemmaFlatMapOnSingletonSet!1895 lt!2513497 lt!2513486 lambda!412477))))

(assert (=> b!7023971 (= lt!2513500 (derivationStepZipperUp!2044 lt!2513486 (h!74155 s!7408)))))

(declare-fun lt!2513493 () Unit!161530)

(declare-fun lambda!412476 () Int)

(declare-fun ct2!306 () Context!12860)

(declare-fun lemmaConcatPreservesForall!755 (List!67830 List!67830 Int) Unit!161530)

(assert (=> b!7023971 (= lt!2513493 (lemmaConcatPreservesForall!755 (exprs!6930 lt!2513492) (exprs!6930 ct2!306) lambda!412476))))

(declare-fun res!2867332 () Bool)

(assert (=> start!677922 (=> (not res!2867332) (not e!4222381))))

(assert (=> start!677922 (= res!2867332 (matchZipper!2974 lt!2513499 s!7408))))

(declare-fun z1!570 () (Set Context!12860))

(declare-fun appendTo!555 ((Set Context!12860) Context!12860) (Set Context!12860))

(assert (=> start!677922 (= lt!2513499 (appendTo!555 z1!570 ct2!306))))

(assert (=> start!677922 e!4222381))

(declare-fun condSetEmpty!48923 () Bool)

(assert (=> start!677922 (= condSetEmpty!48923 (= z1!570 (as set.empty (Set Context!12860))))))

(declare-fun setRes!48923 () Bool)

(assert (=> start!677922 setRes!48923))

(declare-fun e!4222386 () Bool)

(declare-fun inv!86445 (Context!12860) Bool)

(assert (=> start!677922 (and (inv!86445 ct2!306) e!4222386)))

(assert (=> start!677922 e!4222382))

(declare-fun e!4222384 () Bool)

(assert (=> b!7023972 (= e!4222387 e!4222384)))

(declare-fun res!2867333 () Bool)

(assert (=> b!7023972 (=> res!2867333 e!4222384)))

(assert (=> b!7023972 (= res!2867333 (or (not (= lt!2513486 lt!2513490)) (not (set.member lt!2513492 z1!570))))))

(declare-fun ++!15467 (List!67830 List!67830) List!67830)

(assert (=> b!7023972 (= lt!2513486 (Context!12861 (++!15467 (exprs!6930 lt!2513492) (exprs!6930 ct2!306))))))

(declare-fun lt!2513487 () Unit!161530)

(assert (=> b!7023972 (= lt!2513487 (lemmaConcatPreservesForall!755 (exprs!6930 lt!2513492) (exprs!6930 ct2!306) lambda!412476))))

(declare-fun lambda!412475 () Int)

(declare-fun mapPost2!275 ((Set Context!12860) Int Context!12860) Context!12860)

(assert (=> b!7023972 (= lt!2513492 (mapPost2!275 z1!570 lambda!412475 lt!2513490))))

(declare-fun b!7023973 () Bool)

(declare-fun res!2867335 () Bool)

(assert (=> b!7023973 (=> res!2867335 e!4222383)))

(assert (=> b!7023973 (= res!2867335 (not (is-Cons!67706 (exprs!6930 lt!2513492))))))

(declare-fun b!7023974 () Bool)

(declare-fun e!4222388 () Bool)

(assert (=> b!7023974 (= e!4222383 e!4222388)))

(declare-fun res!2867330 () Bool)

(assert (=> b!7023974 (=> res!2867330 e!4222388)))

(declare-fun nullable!7145 (Regex!17434) Bool)

(assert (=> b!7023974 (= res!2867330 (not (nullable!7145 (h!74154 (exprs!6930 lt!2513492)))))))

(declare-fun lt!2513488 () List!67830)

(declare-fun tail!13499 (List!67830) List!67830)

(assert (=> b!7023974 (= lt!2513488 (tail!13499 (exprs!6930 lt!2513492)))))

(declare-fun b!7023975 () Bool)

(declare-fun res!2867327 () Bool)

(assert (=> b!7023975 (=> (not res!2867327) (not e!4222381))))

(assert (=> b!7023975 (= res!2867327 (is-Cons!67707 s!7408))))

(declare-fun b!7023976 () Bool)

(declare-fun res!2867331 () Bool)

(assert (=> b!7023976 (=> res!2867331 e!4222387)))

(assert (=> b!7023976 (= res!2867331 (not (set.member lt!2513490 lt!2513499)))))

(declare-fun lt!2513494 () Context!12860)

(declare-fun b!7023977 () Bool)

(declare-fun derivationStepZipperDown!2098 (Regex!17434 Context!12860 C!35138) (Set Context!12860))

(assert (=> b!7023977 (= e!4222388 (= lt!2513500 (set.union (derivationStepZipperDown!2098 (h!74154 (exprs!6930 lt!2513492)) lt!2513494 (h!74155 s!7408)) (derivationStepZipperUp!2044 lt!2513494 (h!74155 s!7408)))))))

(assert (=> b!7023977 (= lt!2513494 (Context!12861 (++!15467 lt!2513488 (exprs!6930 ct2!306))))))

(declare-fun lt!2513496 () Unit!161530)

(assert (=> b!7023977 (= lt!2513496 (lemmaConcatPreservesForall!755 lt!2513488 (exprs!6930 ct2!306) lambda!412476))))

(declare-fun lt!2513485 () Unit!161530)

(assert (=> b!7023977 (= lt!2513485 (lemmaConcatPreservesForall!755 lt!2513488 (exprs!6930 ct2!306) lambda!412476))))

(declare-fun setNonEmpty!48923 () Bool)

(declare-fun e!4222380 () Bool)

(declare-fun tp!1935145 () Bool)

(declare-fun setElem!48923 () Context!12860)

(assert (=> setNonEmpty!48923 (= setRes!48923 (and tp!1935145 (inv!86445 setElem!48923) e!4222380))))

(declare-fun setRest!48923 () (Set Context!12860))

(assert (=> setNonEmpty!48923 (= z1!570 (set.union (set.insert setElem!48923 (as set.empty (Set Context!12860))) setRest!48923))))

(declare-fun setIsEmpty!48923 () Bool)

(assert (=> setIsEmpty!48923 setRes!48923))

(declare-fun b!7023978 () Bool)

(declare-fun tp!1935147 () Bool)

(assert (=> b!7023978 (= e!4222380 tp!1935147)))

(declare-fun b!7023979 () Bool)

(declare-fun tp!1935144 () Bool)

(assert (=> b!7023979 (= e!4222386 tp!1935144)))

(declare-fun b!7023980 () Bool)

(assert (=> b!7023980 (= e!4222384 e!4222385)))

(declare-fun res!2867328 () Bool)

(assert (=> b!7023980 (=> res!2867328 e!4222385)))

(assert (=> b!7023980 (= res!2867328 (not (= lt!2513497 lt!2513498)))))

(assert (=> b!7023980 (= lt!2513497 (set.insert lt!2513486 (as set.empty (Set Context!12860))))))

(declare-fun lt!2513491 () Unit!161530)

(assert (=> b!7023980 (= lt!2513491 (lemmaConcatPreservesForall!755 (exprs!6930 lt!2513492) (exprs!6930 ct2!306) lambda!412476))))

(assert (= (and start!677922 res!2867332) b!7023975))

(assert (= (and b!7023975 res!2867327) b!7023970))

(assert (= (and b!7023970 (not res!2867336)) b!7023976))

(assert (= (and b!7023976 (not res!2867331)) b!7023972))

(assert (= (and b!7023972 (not res!2867333)) b!7023980))

(assert (= (and b!7023980 (not res!2867328)) b!7023971))

(assert (= (and b!7023971 (not res!2867329)) b!7023973))

(assert (= (and b!7023973 (not res!2867335)) b!7023968))

(assert (= (and b!7023968 (not res!2867334)) b!7023974))

(assert (= (and b!7023974 (not res!2867330)) b!7023977))

(assert (= (and start!677922 condSetEmpty!48923) setIsEmpty!48923))

(assert (= (and start!677922 (not condSetEmpty!48923)) setNonEmpty!48923))

(assert (= setNonEmpty!48923 b!7023978))

(assert (= start!677922 b!7023979))

(assert (= (and start!677922 (is-Cons!67707 s!7408)) b!7023969))

(declare-fun m!7726616 () Bool)

(assert (=> b!7023977 m!7726616))

(declare-fun m!7726618 () Bool)

(assert (=> b!7023977 m!7726618))

(declare-fun m!7726620 () Bool)

(assert (=> b!7023977 m!7726620))

(declare-fun m!7726622 () Bool)

(assert (=> b!7023977 m!7726622))

(assert (=> b!7023977 m!7726618))

(declare-fun m!7726624 () Bool)

(assert (=> setNonEmpty!48923 m!7726624))

(declare-fun m!7726626 () Bool)

(assert (=> b!7023968 m!7726626))

(declare-fun m!7726628 () Bool)

(assert (=> b!7023970 m!7726628))

(declare-fun m!7726630 () Bool)

(assert (=> b!7023970 m!7726630))

(declare-fun m!7726632 () Bool)

(assert (=> b!7023970 m!7726632))

(declare-fun m!7726634 () Bool)

(assert (=> b!7023970 m!7726634))

(declare-fun m!7726636 () Bool)

(assert (=> b!7023970 m!7726636))

(declare-fun m!7726638 () Bool)

(assert (=> b!7023970 m!7726638))

(declare-fun m!7726640 () Bool)

(assert (=> b!7023974 m!7726640))

(declare-fun m!7726642 () Bool)

(assert (=> b!7023974 m!7726642))

(declare-fun m!7726644 () Bool)

(assert (=> start!677922 m!7726644))

(declare-fun m!7726646 () Bool)

(assert (=> start!677922 m!7726646))

(declare-fun m!7726648 () Bool)

(assert (=> start!677922 m!7726648))

(declare-fun m!7726650 () Bool)

(assert (=> b!7023972 m!7726650))

(declare-fun m!7726652 () Bool)

(assert (=> b!7023972 m!7726652))

(declare-fun m!7726654 () Bool)

(assert (=> b!7023972 m!7726654))

(declare-fun m!7726656 () Bool)

(assert (=> b!7023972 m!7726656))

(declare-fun m!7726658 () Bool)

(assert (=> b!7023980 m!7726658))

(assert (=> b!7023980 m!7726654))

(declare-fun m!7726660 () Bool)

(assert (=> b!7023976 m!7726660))

(assert (=> b!7023971 m!7726654))

(declare-fun m!7726662 () Bool)

(assert (=> b!7023971 m!7726662))

(declare-fun m!7726664 () Bool)

(assert (=> b!7023971 m!7726664))

(declare-fun m!7726666 () Bool)

(assert (=> b!7023971 m!7726666))

(declare-fun m!7726668 () Bool)

(assert (=> b!7023971 m!7726668))

(push 1)

(assert (not b!7023970))

(assert (not b!7023968))

(assert (not b!7023974))

(assert (not setNonEmpty!48923))

(assert (not b!7023971))

(assert (not b!7023979))

(assert (not start!677922))

(assert (not b!7023977))

(assert (not b!7023972))

(assert tp_is_empty!44093)

(assert (not b!7023980))

(assert (not b!7023978))

(assert (not b!7023969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2189537 () Bool)

(declare-fun forall!16334 (List!67830 Int) Bool)

(assert (=> d!2189537 (forall!16334 (++!15467 (exprs!6930 lt!2513492) (exprs!6930 ct2!306)) lambda!412476)))

(declare-fun lt!2513556 () Unit!161530)

(declare-fun choose!53037 (List!67830 List!67830 Int) Unit!161530)

(assert (=> d!2189537 (= lt!2513556 (choose!53037 (exprs!6930 lt!2513492) (exprs!6930 ct2!306) lambda!412476))))

(assert (=> d!2189537 (forall!16334 (exprs!6930 lt!2513492) lambda!412476)))

(assert (=> d!2189537 (= (lemmaConcatPreservesForall!755 (exprs!6930 lt!2513492) (exprs!6930 ct2!306) lambda!412476) lt!2513556)))

(declare-fun bs!1868192 () Bool)

(assert (= bs!1868192 d!2189537))

(assert (=> bs!1868192 m!7726652))

(assert (=> bs!1868192 m!7726652))

(declare-fun m!7726724 () Bool)

(assert (=> bs!1868192 m!7726724))

(declare-fun m!7726726 () Bool)

(assert (=> bs!1868192 m!7726726))

(declare-fun m!7726728 () Bool)

(assert (=> bs!1868192 m!7726728))

(assert (=> b!7023971 d!2189537))

(declare-fun e!4222422 () (Set Context!12860))

(declare-fun b!7024042 () Bool)

(declare-fun call!637655 () (Set Context!12860))

(assert (=> b!7024042 (= e!4222422 (set.union call!637655 (derivationStepZipperUp!2044 (Context!12861 (t!381585 (exprs!6930 lt!2513486))) (h!74155 s!7408))))))

(declare-fun b!7024043 () Bool)

(declare-fun e!4222423 () (Set Context!12860))

(assert (=> b!7024043 (= e!4222423 (as set.empty (Set Context!12860)))))

(declare-fun b!7024044 () Bool)

(assert (=> b!7024044 (= e!4222422 e!4222423)))

(declare-fun c!1305501 () Bool)

(assert (=> b!7024044 (= c!1305501 (is-Cons!67706 (exprs!6930 lt!2513486)))))

(declare-fun b!7024045 () Bool)

(assert (=> b!7024045 (= e!4222423 call!637655)))

(declare-fun d!2189539 () Bool)

(declare-fun c!1305502 () Bool)

(declare-fun e!4222424 () Bool)

(assert (=> d!2189539 (= c!1305502 e!4222424)))

(declare-fun res!2867370 () Bool)

(assert (=> d!2189539 (=> (not res!2867370) (not e!4222424))))

(assert (=> d!2189539 (= res!2867370 (is-Cons!67706 (exprs!6930 lt!2513486)))))

(assert (=> d!2189539 (= (derivationStepZipperUp!2044 lt!2513486 (h!74155 s!7408)) e!4222422)))

(declare-fun bm!637650 () Bool)

(assert (=> bm!637650 (= call!637655 (derivationStepZipperDown!2098 (h!74154 (exprs!6930 lt!2513486)) (Context!12861 (t!381585 (exprs!6930 lt!2513486))) (h!74155 s!7408)))))

(declare-fun b!7024046 () Bool)

(assert (=> b!7024046 (= e!4222424 (nullable!7145 (h!74154 (exprs!6930 lt!2513486))))))

(assert (= (and d!2189539 res!2867370) b!7024046))

(assert (= (and d!2189539 c!1305502) b!7024042))

(assert (= (and d!2189539 (not c!1305502)) b!7024044))

(assert (= (and b!7024044 c!1305501) b!7024045))

(assert (= (and b!7024044 (not c!1305501)) b!7024043))

(assert (= (or b!7024042 b!7024045) bm!637650))

(declare-fun m!7726730 () Bool)

(assert (=> b!7024042 m!7726730))

(declare-fun m!7726732 () Bool)

(assert (=> bm!637650 m!7726732))

(declare-fun m!7726734 () Bool)

(assert (=> b!7024046 m!7726734))

(assert (=> b!7023971 d!2189539))

(declare-fun d!2189541 () Bool)

(declare-fun dynLambda!27282 (Int Context!12860) (Set Context!12860))

(assert (=> d!2189541 (= (flatMap!2381 lt!2513497 lambda!412477) (dynLambda!27282 lambda!412477 lt!2513486))))

(declare-fun lt!2513559 () Unit!161530)

(declare-fun choose!53038 ((Set Context!12860) Context!12860 Int) Unit!161530)

(assert (=> d!2189541 (= lt!2513559 (choose!53038 lt!2513497 lt!2513486 lambda!412477))))

(assert (=> d!2189541 (= lt!2513497 (set.insert lt!2513486 (as set.empty (Set Context!12860))))))

(assert (=> d!2189541 (= (lemmaFlatMapOnSingletonSet!1895 lt!2513497 lt!2513486 lambda!412477) lt!2513559)))

(declare-fun b_lambda!265407 () Bool)

(assert (=> (not b_lambda!265407) (not d!2189541)))

(declare-fun bs!1868193 () Bool)

(assert (= bs!1868193 d!2189541))

(assert (=> bs!1868193 m!7726668))

(declare-fun m!7726736 () Bool)

(assert (=> bs!1868193 m!7726736))

(declare-fun m!7726738 () Bool)

(assert (=> bs!1868193 m!7726738))

(assert (=> bs!1868193 m!7726658))

(assert (=> b!7023971 d!2189541))

(declare-fun bs!1868194 () Bool)

(declare-fun d!2189543 () Bool)

(assert (= bs!1868194 (and d!2189543 b!7023971)))

(declare-fun lambda!412504 () Int)

(assert (=> bs!1868194 (= lambda!412504 lambda!412477)))

(assert (=> d!2189543 true))

(assert (=> d!2189543 (= (derivationStepZipper!2890 lt!2513497 (h!74155 s!7408)) (flatMap!2381 lt!2513497 lambda!412504))))

(declare-fun bs!1868195 () Bool)

(assert (= bs!1868195 d!2189543))

(declare-fun m!7726740 () Bool)

(assert (=> bs!1868195 m!7726740))

(assert (=> b!7023971 d!2189543))

(declare-fun d!2189545 () Bool)

(declare-fun choose!53039 ((Set Context!12860) Int) (Set Context!12860))

(assert (=> d!2189545 (= (flatMap!2381 lt!2513497 lambda!412477) (choose!53039 lt!2513497 lambda!412477))))

(declare-fun bs!1868196 () Bool)

(assert (= bs!1868196 d!2189545))

(declare-fun m!7726742 () Bool)

(assert (=> bs!1868196 m!7726742))

(assert (=> b!7023971 d!2189545))

(assert (=> b!7023980 d!2189537))

(declare-fun d!2189547 () Bool)

(declare-fun c!1305507 () Bool)

(declare-fun isEmpty!39480 (List!67831) Bool)

(assert (=> d!2189547 (= c!1305507 (isEmpty!39480 s!7408))))

(declare-fun e!4222427 () Bool)

(assert (=> d!2189547 (= (matchZipper!2974 lt!2513499 s!7408) e!4222427)))

(declare-fun b!7024053 () Bool)

(declare-fun nullableZipper!2557 ((Set Context!12860)) Bool)

(assert (=> b!7024053 (= e!4222427 (nullableZipper!2557 lt!2513499))))

(declare-fun b!7024054 () Bool)

(declare-fun head!14232 (List!67831) C!35138)

(declare-fun tail!13501 (List!67831) List!67831)

(assert (=> b!7024054 (= e!4222427 (matchZipper!2974 (derivationStepZipper!2890 lt!2513499 (head!14232 s!7408)) (tail!13501 s!7408)))))

(assert (= (and d!2189547 c!1305507) b!7024053))

(assert (= (and d!2189547 (not c!1305507)) b!7024054))

(declare-fun m!7726744 () Bool)

(assert (=> d!2189547 m!7726744))

(declare-fun m!7726746 () Bool)

(assert (=> b!7024053 m!7726746))

(declare-fun m!7726748 () Bool)

(assert (=> b!7024054 m!7726748))

(assert (=> b!7024054 m!7726748))

(declare-fun m!7726750 () Bool)

(assert (=> b!7024054 m!7726750))

(declare-fun m!7726752 () Bool)

(assert (=> b!7024054 m!7726752))

(assert (=> b!7024054 m!7726750))

(assert (=> b!7024054 m!7726752))

(declare-fun m!7726754 () Bool)

(assert (=> b!7024054 m!7726754))

(assert (=> start!677922 d!2189547))

(declare-fun bs!1868197 () Bool)

(declare-fun d!2189549 () Bool)

(assert (= bs!1868197 (and d!2189549 b!7023972)))

(declare-fun lambda!412509 () Int)

(assert (=> bs!1868197 (= lambda!412509 lambda!412475)))

(assert (=> d!2189549 true))

(declare-fun map!15721 ((Set Context!12860) Int) (Set Context!12860))

(assert (=> d!2189549 (= (appendTo!555 z1!570 ct2!306) (map!15721 z1!570 lambda!412509))))

(declare-fun bs!1868198 () Bool)

(assert (= bs!1868198 d!2189549))

(declare-fun m!7726756 () Bool)

(assert (=> bs!1868198 m!7726756))

(assert (=> start!677922 d!2189549))

(declare-fun bs!1868199 () Bool)

(declare-fun d!2189551 () Bool)

(assert (= bs!1868199 (and d!2189551 b!7023972)))

(declare-fun lambda!412512 () Int)

(assert (=> bs!1868199 (= lambda!412512 lambda!412476)))

(assert (=> d!2189551 (= (inv!86445 ct2!306) (forall!16334 (exprs!6930 ct2!306) lambda!412512))))

(declare-fun bs!1868200 () Bool)

(assert (= bs!1868200 d!2189551))

(declare-fun m!7726758 () Bool)

(assert (=> bs!1868200 m!7726758))

(assert (=> start!677922 d!2189551))

(declare-fun d!2189553 () Bool)

(declare-fun e!4222430 () Bool)

(assert (=> d!2189553 e!4222430))

(declare-fun res!2867374 () Bool)

(assert (=> d!2189553 (=> (not res!2867374) (not e!4222430))))

(declare-fun lt!2513564 () Context!12860)

(declare-fun dynLambda!27283 (Int Context!12860) Bool)

(assert (=> d!2189553 (= res!2867374 (dynLambda!27283 lambda!412474 lt!2513564))))

(declare-fun getWitness!1421 (List!67832 Int) Context!12860)

(assert (=> d!2189553 (= lt!2513564 (getWitness!1421 (toList!10777 lt!2513499) lambda!412474))))

(declare-fun exists!3340 ((Set Context!12860) Int) Bool)

(assert (=> d!2189553 (exists!3340 lt!2513499 lambda!412474)))

(assert (=> d!2189553 (= (getWitness!1419 lt!2513499 lambda!412474) lt!2513564)))

(declare-fun b!7024057 () Bool)

(assert (=> b!7024057 (= e!4222430 (set.member lt!2513564 lt!2513499))))

(assert (= (and d!2189553 res!2867374) b!7024057))

(declare-fun b_lambda!265409 () Bool)

(assert (=> (not b_lambda!265409) (not d!2189553)))

(declare-fun m!7726760 () Bool)

(assert (=> d!2189553 m!7726760))

(assert (=> d!2189553 m!7726638))

(assert (=> d!2189553 m!7726638))

(declare-fun m!7726762 () Bool)

(assert (=> d!2189553 m!7726762))

(declare-fun m!7726764 () Bool)

(assert (=> d!2189553 m!7726764))

(declare-fun m!7726766 () Bool)

(assert (=> b!7024057 m!7726766))

(assert (=> b!7023970 d!2189553))

(declare-fun d!2189555 () Bool)

(declare-fun e!4222433 () Bool)

(assert (=> d!2189555 e!4222433))

(declare-fun res!2867377 () Bool)

(assert (=> d!2189555 (=> (not res!2867377) (not e!4222433))))

(declare-fun lt!2513567 () List!67832)

(declare-fun noDuplicate!2606 (List!67832) Bool)

(assert (=> d!2189555 (= res!2867377 (noDuplicate!2606 lt!2513567))))

(declare-fun choose!53040 ((Set Context!12860)) List!67832)

(assert (=> d!2189555 (= lt!2513567 (choose!53040 lt!2513499))))

(assert (=> d!2189555 (= (toList!10777 lt!2513499) lt!2513567)))

(declare-fun b!7024060 () Bool)

(declare-fun content!13484 (List!67832) (Set Context!12860))

(assert (=> b!7024060 (= e!4222433 (= (content!13484 lt!2513567) lt!2513499))))

(assert (= (and d!2189555 res!2867377) b!7024060))

(declare-fun m!7726768 () Bool)

(assert (=> d!2189555 m!7726768))

(declare-fun m!7726770 () Bool)

(assert (=> d!2189555 m!7726770))

(declare-fun m!7726772 () Bool)

(assert (=> b!7024060 m!7726772))

(assert (=> b!7023970 d!2189555))

(declare-fun bs!1868201 () Bool)

(declare-fun d!2189557 () Bool)

(assert (= bs!1868201 (and d!2189557 b!7023970)))

(declare-fun lambda!412515 () Int)

(assert (=> bs!1868201 (= lambda!412515 lambda!412474)))

(assert (=> d!2189557 true))

(assert (=> d!2189557 (exists!3338 lt!2513489 lambda!412515)))

(declare-fun lt!2513570 () Unit!161530)

(declare-fun choose!53041 (List!67832 List!67831) Unit!161530)

(assert (=> d!2189557 (= lt!2513570 (choose!53041 lt!2513489 s!7408))))

(assert (=> d!2189557 (matchZipper!2974 (content!13484 lt!2513489) s!7408)))

(assert (=> d!2189557 (= (lemmaZipperMatchesExistsMatchingContext!373 lt!2513489 s!7408) lt!2513570)))

(declare-fun bs!1868202 () Bool)

(assert (= bs!1868202 d!2189557))

(declare-fun m!7726774 () Bool)

(assert (=> bs!1868202 m!7726774))

(declare-fun m!7726776 () Bool)

(assert (=> bs!1868202 m!7726776))

(declare-fun m!7726778 () Bool)

(assert (=> bs!1868202 m!7726778))

(assert (=> bs!1868202 m!7726778))

(declare-fun m!7726780 () Bool)

(assert (=> bs!1868202 m!7726780))

(assert (=> b!7023970 d!2189557))

(declare-fun d!2189559 () Bool)

(declare-fun c!1305511 () Bool)

(assert (=> d!2189559 (= c!1305511 (isEmpty!39480 s!7408))))

(declare-fun e!4222434 () Bool)

(assert (=> d!2189559 (= (matchZipper!2974 lt!2513498 s!7408) e!4222434)))

(declare-fun b!7024061 () Bool)

(assert (=> b!7024061 (= e!4222434 (nullableZipper!2557 lt!2513498))))

(declare-fun b!7024062 () Bool)

(assert (=> b!7024062 (= e!4222434 (matchZipper!2974 (derivationStepZipper!2890 lt!2513498 (head!14232 s!7408)) (tail!13501 s!7408)))))

(assert (= (and d!2189559 c!1305511) b!7024061))

(assert (= (and d!2189559 (not c!1305511)) b!7024062))

(assert (=> d!2189559 m!7726744))

(declare-fun m!7726782 () Bool)

(assert (=> b!7024061 m!7726782))

(assert (=> b!7024062 m!7726748))

(assert (=> b!7024062 m!7726748))

(declare-fun m!7726784 () Bool)

(assert (=> b!7024062 m!7726784))

(assert (=> b!7024062 m!7726752))

(assert (=> b!7024062 m!7726784))

(assert (=> b!7024062 m!7726752))

(declare-fun m!7726786 () Bool)

(assert (=> b!7024062 m!7726786))

(assert (=> b!7023970 d!2189559))

(declare-fun bs!1868203 () Bool)

(declare-fun d!2189561 () Bool)

(assert (= bs!1868203 (and d!2189561 b!7023970)))

(declare-fun lambda!412518 () Int)

(assert (=> bs!1868203 (not (= lambda!412518 lambda!412474))))

(declare-fun bs!1868204 () Bool)

(assert (= bs!1868204 (and d!2189561 d!2189557)))

(assert (=> bs!1868204 (not (= lambda!412518 lambda!412515))))

(assert (=> d!2189561 true))

(declare-fun order!28129 () Int)

(declare-fun dynLambda!27284 (Int Int) Int)

(assert (=> d!2189561 (< (dynLambda!27284 order!28129 lambda!412474) (dynLambda!27284 order!28129 lambda!412518))))

(declare-fun forall!16335 (List!67832 Int) Bool)

(assert (=> d!2189561 (= (exists!3338 lt!2513489 lambda!412474) (not (forall!16335 lt!2513489 lambda!412518)))))

(declare-fun bs!1868205 () Bool)

(assert (= bs!1868205 d!2189561))

(declare-fun m!7726788 () Bool)

(assert (=> bs!1868205 m!7726788))

(assert (=> b!7023970 d!2189561))

(declare-fun d!2189563 () Bool)

(declare-fun nullableFct!2706 (Regex!17434) Bool)

(assert (=> d!2189563 (= (nullable!7145 (h!74154 (exprs!6930 lt!2513492))) (nullableFct!2706 (h!74154 (exprs!6930 lt!2513492))))))

(declare-fun bs!1868206 () Bool)

(assert (= bs!1868206 d!2189563))

(declare-fun m!7726790 () Bool)

(assert (=> bs!1868206 m!7726790))

(assert (=> b!7023974 d!2189563))

(declare-fun d!2189565 () Bool)

(assert (=> d!2189565 (= (tail!13499 (exprs!6930 lt!2513492)) (t!381585 (exprs!6930 lt!2513492)))))

(assert (=> b!7023974 d!2189565))

(declare-fun d!2189567 () Bool)

(assert (=> d!2189567 (= (isEmpty!39478 (exprs!6930 lt!2513492)) (is-Nil!67706 (exprs!6930 lt!2513492)))))

(assert (=> b!7023968 d!2189567))

(declare-fun bs!1868207 () Bool)

(declare-fun d!2189569 () Bool)

(assert (= bs!1868207 (and d!2189569 b!7023972)))

(declare-fun lambda!412519 () Int)

(assert (=> bs!1868207 (= lambda!412519 lambda!412476)))

(declare-fun bs!1868208 () Bool)

(assert (= bs!1868208 (and d!2189569 d!2189551)))

(assert (=> bs!1868208 (= lambda!412519 lambda!412512)))

(assert (=> d!2189569 (= (inv!86445 setElem!48923) (forall!16334 (exprs!6930 setElem!48923) lambda!412519))))

(declare-fun bs!1868209 () Bool)

(assert (= bs!1868209 d!2189569))

(declare-fun m!7726792 () Bool)

(assert (=> bs!1868209 m!7726792))

(assert (=> setNonEmpty!48923 d!2189569))

(declare-fun d!2189571 () Bool)

(assert (=> d!2189571 (forall!16334 (++!15467 lt!2513488 (exprs!6930 ct2!306)) lambda!412476)))

(declare-fun lt!2513571 () Unit!161530)

(assert (=> d!2189571 (= lt!2513571 (choose!53037 lt!2513488 (exprs!6930 ct2!306) lambda!412476))))

(assert (=> d!2189571 (forall!16334 lt!2513488 lambda!412476)))

(assert (=> d!2189571 (= (lemmaConcatPreservesForall!755 lt!2513488 (exprs!6930 ct2!306) lambda!412476) lt!2513571)))

(declare-fun bs!1868210 () Bool)

(assert (= bs!1868210 d!2189571))

(assert (=> bs!1868210 m!7726622))

(assert (=> bs!1868210 m!7726622))

(declare-fun m!7726794 () Bool)

(assert (=> bs!1868210 m!7726794))

(declare-fun m!7726796 () Bool)

(assert (=> bs!1868210 m!7726796))

(declare-fun m!7726798 () Bool)

(assert (=> bs!1868210 m!7726798))

(assert (=> b!7023977 d!2189571))

(declare-fun bm!637663 () Bool)

(declare-fun call!637668 () (Set Context!12860))

(declare-fun call!637671 () (Set Context!12860))

(assert (=> bm!637663 (= call!637668 call!637671)))

(declare-fun b!7024087 () Bool)

(declare-fun e!4222451 () (Set Context!12860))

(assert (=> b!7024087 (= e!4222451 call!637668)))

(declare-fun b!7024088 () Bool)

(declare-fun e!4222452 () (Set Context!12860))

(declare-fun call!637673 () (Set Context!12860))

(declare-fun call!637670 () (Set Context!12860))

(assert (=> b!7024088 (= e!4222452 (set.union call!637673 call!637670))))

(declare-fun b!7024089 () Bool)

(declare-fun e!4222450 () (Set Context!12860))

(assert (=> b!7024089 (= e!4222450 e!4222452)))

(declare-fun c!1305524 () Bool)

(assert (=> b!7024089 (= c!1305524 (is-Union!17434 (h!74154 (exprs!6930 lt!2513492))))))

(declare-fun bm!637664 () Bool)

(declare-fun call!637672 () List!67830)

(declare-fun call!637669 () List!67830)

(assert (=> bm!637664 (= call!637672 call!637669)))

(declare-fun b!7024090 () Bool)

(declare-fun c!1305525 () Bool)

(declare-fun e!4222449 () Bool)

(assert (=> b!7024090 (= c!1305525 e!4222449)))

(declare-fun res!2867380 () Bool)

(assert (=> b!7024090 (=> (not res!2867380) (not e!4222449))))

(assert (=> b!7024090 (= res!2867380 (is-Concat!26279 (h!74154 (exprs!6930 lt!2513492))))))

(declare-fun e!4222447 () (Set Context!12860))

(assert (=> b!7024090 (= e!4222452 e!4222447)))

(declare-fun bm!637665 () Bool)

(declare-fun c!1305522 () Bool)

(assert (=> bm!637665 (= call!637670 (derivationStepZipperDown!2098 (ite c!1305524 (regTwo!35381 (h!74154 (exprs!6930 lt!2513492))) (ite c!1305525 (regTwo!35380 (h!74154 (exprs!6930 lt!2513492))) (ite c!1305522 (regOne!35380 (h!74154 (exprs!6930 lt!2513492))) (reg!17763 (h!74154 (exprs!6930 lt!2513492)))))) (ite (or c!1305524 c!1305525) lt!2513494 (Context!12861 call!637672)) (h!74155 s!7408)))))

(declare-fun b!7024091 () Bool)

(assert (=> b!7024091 (= e!4222447 (set.union call!637673 call!637671))))

(declare-fun bm!637666 () Bool)

(assert (=> bm!637666 (= call!637671 call!637670)))

(declare-fun bm!637667 () Bool)

(assert (=> bm!637667 (= call!637673 (derivationStepZipperDown!2098 (ite c!1305524 (regOne!35381 (h!74154 (exprs!6930 lt!2513492))) (regOne!35380 (h!74154 (exprs!6930 lt!2513492)))) (ite c!1305524 lt!2513494 (Context!12861 call!637669)) (h!74155 s!7408)))))

(declare-fun b!7024092 () Bool)

(assert (=> b!7024092 (= e!4222450 (set.insert lt!2513494 (as set.empty (Set Context!12860))))))

(declare-fun d!2189573 () Bool)

(declare-fun c!1305526 () Bool)

(assert (=> d!2189573 (= c!1305526 (and (is-ElementMatch!17434 (h!74154 (exprs!6930 lt!2513492))) (= (c!1305487 (h!74154 (exprs!6930 lt!2513492))) (h!74155 s!7408))))))

(assert (=> d!2189573 (= (derivationStepZipperDown!2098 (h!74154 (exprs!6930 lt!2513492)) lt!2513494 (h!74155 s!7408)) e!4222450)))

(declare-fun b!7024093 () Bool)

(assert (=> b!7024093 (= e!4222451 (as set.empty (Set Context!12860)))))

(declare-fun b!7024094 () Bool)

(declare-fun c!1305523 () Bool)

(assert (=> b!7024094 (= c!1305523 (is-Star!17434 (h!74154 (exprs!6930 lt!2513492))))))

(declare-fun e!4222448 () (Set Context!12860))

(assert (=> b!7024094 (= e!4222448 e!4222451)))

(declare-fun b!7024095 () Bool)

(assert (=> b!7024095 (= e!4222448 call!637668)))

(declare-fun bm!637668 () Bool)

(declare-fun $colon$colon!2553 (List!67830 Regex!17434) List!67830)

(assert (=> bm!637668 (= call!637669 ($colon$colon!2553 (exprs!6930 lt!2513494) (ite (or c!1305525 c!1305522) (regTwo!35380 (h!74154 (exprs!6930 lt!2513492))) (h!74154 (exprs!6930 lt!2513492)))))))

(declare-fun b!7024096 () Bool)

(assert (=> b!7024096 (= e!4222447 e!4222448)))

(assert (=> b!7024096 (= c!1305522 (is-Concat!26279 (h!74154 (exprs!6930 lt!2513492))))))

(declare-fun b!7024097 () Bool)

(assert (=> b!7024097 (= e!4222449 (nullable!7145 (regOne!35380 (h!74154 (exprs!6930 lt!2513492)))))))

(assert (= (and d!2189573 c!1305526) b!7024092))

(assert (= (and d!2189573 (not c!1305526)) b!7024089))

(assert (= (and b!7024089 c!1305524) b!7024088))

(assert (= (and b!7024089 (not c!1305524)) b!7024090))

(assert (= (and b!7024090 res!2867380) b!7024097))

(assert (= (and b!7024090 c!1305525) b!7024091))

(assert (= (and b!7024090 (not c!1305525)) b!7024096))

(assert (= (and b!7024096 c!1305522) b!7024095))

(assert (= (and b!7024096 (not c!1305522)) b!7024094))

(assert (= (and b!7024094 c!1305523) b!7024087))

(assert (= (and b!7024094 (not c!1305523)) b!7024093))

(assert (= (or b!7024095 b!7024087) bm!637664))

(assert (= (or b!7024095 b!7024087) bm!637663))

(assert (= (or b!7024091 bm!637663) bm!637666))

(assert (= (or b!7024091 bm!637664) bm!637668))

(assert (= (or b!7024088 b!7024091) bm!637667))

(assert (= (or b!7024088 bm!637666) bm!637665))

(declare-fun m!7726804 () Bool)

(assert (=> bm!637665 m!7726804))

(declare-fun m!7726806 () Bool)

(assert (=> bm!637668 m!7726806))

(declare-fun m!7726808 () Bool)

(assert (=> bm!637667 m!7726808))

(declare-fun m!7726810 () Bool)

(assert (=> b!7024097 m!7726810))

(declare-fun m!7726812 () Bool)

(assert (=> b!7024092 m!7726812))

(assert (=> b!7023977 d!2189573))

(declare-fun e!4222457 () Bool)

(declare-fun b!7024109 () Bool)

(declare-fun lt!2513574 () List!67830)

(assert (=> b!7024109 (= e!4222457 (or (not (= (exprs!6930 ct2!306) Nil!67706)) (= lt!2513574 lt!2513488)))))

(declare-fun b!7024108 () Bool)

(declare-fun res!2867385 () Bool)

(assert (=> b!7024108 (=> (not res!2867385) (not e!4222457))))

(declare-fun size!41035 (List!67830) Int)

(assert (=> b!7024108 (= res!2867385 (= (size!41035 lt!2513574) (+ (size!41035 lt!2513488) (size!41035 (exprs!6930 ct2!306)))))))

(declare-fun b!7024107 () Bool)

(declare-fun e!4222458 () List!67830)

(assert (=> b!7024107 (= e!4222458 (Cons!67706 (h!74154 lt!2513488) (++!15467 (t!381585 lt!2513488) (exprs!6930 ct2!306))))))

(declare-fun b!7024106 () Bool)

(assert (=> b!7024106 (= e!4222458 (exprs!6930 ct2!306))))

(declare-fun d!2189583 () Bool)

(assert (=> d!2189583 e!4222457))

(declare-fun res!2867386 () Bool)

(assert (=> d!2189583 (=> (not res!2867386) (not e!4222457))))

(declare-fun content!13485 (List!67830) (Set Regex!17434))

(assert (=> d!2189583 (= res!2867386 (= (content!13485 lt!2513574) (set.union (content!13485 lt!2513488) (content!13485 (exprs!6930 ct2!306)))))))

(assert (=> d!2189583 (= lt!2513574 e!4222458)))

(declare-fun c!1305531 () Bool)

(assert (=> d!2189583 (= c!1305531 (is-Nil!67706 lt!2513488))))

(assert (=> d!2189583 (= (++!15467 lt!2513488 (exprs!6930 ct2!306)) lt!2513574)))

(assert (= (and d!2189583 c!1305531) b!7024106))

(assert (= (and d!2189583 (not c!1305531)) b!7024107))

(assert (= (and d!2189583 res!2867386) b!7024108))

(assert (= (and b!7024108 res!2867385) b!7024109))

(declare-fun m!7726816 () Bool)

(assert (=> b!7024108 m!7726816))

(declare-fun m!7726818 () Bool)

(assert (=> b!7024108 m!7726818))

(declare-fun m!7726820 () Bool)

(assert (=> b!7024108 m!7726820))

(declare-fun m!7726822 () Bool)

(assert (=> b!7024107 m!7726822))

(declare-fun m!7726824 () Bool)

(assert (=> d!2189583 m!7726824))

(declare-fun m!7726826 () Bool)

(assert (=> d!2189583 m!7726826))

(declare-fun m!7726828 () Bool)

(assert (=> d!2189583 m!7726828))

(assert (=> b!7023977 d!2189583))

(declare-fun b!7024112 () Bool)

(declare-fun e!4222459 () (Set Context!12860))

(declare-fun call!637674 () (Set Context!12860))

(assert (=> b!7024112 (= e!4222459 (set.union call!637674 (derivationStepZipperUp!2044 (Context!12861 (t!381585 (exprs!6930 lt!2513494))) (h!74155 s!7408))))))

(declare-fun b!7024113 () Bool)

(declare-fun e!4222460 () (Set Context!12860))

(assert (=> b!7024113 (= e!4222460 (as set.empty (Set Context!12860)))))

(declare-fun b!7024114 () Bool)

(assert (=> b!7024114 (= e!4222459 e!4222460)))

(declare-fun c!1305532 () Bool)

(assert (=> b!7024114 (= c!1305532 (is-Cons!67706 (exprs!6930 lt!2513494)))))

(declare-fun b!7024115 () Bool)

(assert (=> b!7024115 (= e!4222460 call!637674)))

(declare-fun d!2189587 () Bool)

(declare-fun c!1305533 () Bool)

(declare-fun e!4222461 () Bool)

(assert (=> d!2189587 (= c!1305533 e!4222461)))

(declare-fun res!2867387 () Bool)

(assert (=> d!2189587 (=> (not res!2867387) (not e!4222461))))

(assert (=> d!2189587 (= res!2867387 (is-Cons!67706 (exprs!6930 lt!2513494)))))

(assert (=> d!2189587 (= (derivationStepZipperUp!2044 lt!2513494 (h!74155 s!7408)) e!4222459)))

(declare-fun bm!637669 () Bool)

(assert (=> bm!637669 (= call!637674 (derivationStepZipperDown!2098 (h!74154 (exprs!6930 lt!2513494)) (Context!12861 (t!381585 (exprs!6930 lt!2513494))) (h!74155 s!7408)))))

(declare-fun b!7024116 () Bool)

(assert (=> b!7024116 (= e!4222461 (nullable!7145 (h!74154 (exprs!6930 lt!2513494))))))

(assert (= (and d!2189587 res!2867387) b!7024116))

(assert (= (and d!2189587 c!1305533) b!7024112))

(assert (= (and d!2189587 (not c!1305533)) b!7024114))

(assert (= (and b!7024114 c!1305532) b!7024115))

(assert (= (and b!7024114 (not c!1305532)) b!7024113))

(assert (= (or b!7024112 b!7024115) bm!637669))

(declare-fun m!7726832 () Bool)

(assert (=> b!7024112 m!7726832))

(declare-fun m!7726834 () Bool)

(assert (=> bm!637669 m!7726834))

(declare-fun m!7726836 () Bool)

(assert (=> b!7024116 m!7726836))

(assert (=> b!7023977 d!2189587))

(declare-fun b!7024120 () Bool)

(declare-fun e!4222462 () Bool)

(declare-fun lt!2513575 () List!67830)

(assert (=> b!7024120 (= e!4222462 (or (not (= (exprs!6930 ct2!306) Nil!67706)) (= lt!2513575 (exprs!6930 lt!2513492))))))

(declare-fun b!7024119 () Bool)

(declare-fun res!2867388 () Bool)

(assert (=> b!7024119 (=> (not res!2867388) (not e!4222462))))

(assert (=> b!7024119 (= res!2867388 (= (size!41035 lt!2513575) (+ (size!41035 (exprs!6930 lt!2513492)) (size!41035 (exprs!6930 ct2!306)))))))

(declare-fun b!7024118 () Bool)

(declare-fun e!4222463 () List!67830)

(assert (=> b!7024118 (= e!4222463 (Cons!67706 (h!74154 (exprs!6930 lt!2513492)) (++!15467 (t!381585 (exprs!6930 lt!2513492)) (exprs!6930 ct2!306))))))

(declare-fun b!7024117 () Bool)

(assert (=> b!7024117 (= e!4222463 (exprs!6930 ct2!306))))

(declare-fun d!2189591 () Bool)

(assert (=> d!2189591 e!4222462))

(declare-fun res!2867389 () Bool)

(assert (=> d!2189591 (=> (not res!2867389) (not e!4222462))))

(assert (=> d!2189591 (= res!2867389 (= (content!13485 lt!2513575) (set.union (content!13485 (exprs!6930 lt!2513492)) (content!13485 (exprs!6930 ct2!306)))))))

(assert (=> d!2189591 (= lt!2513575 e!4222463)))

(declare-fun c!1305534 () Bool)

(assert (=> d!2189591 (= c!1305534 (is-Nil!67706 (exprs!6930 lt!2513492)))))

(assert (=> d!2189591 (= (++!15467 (exprs!6930 lt!2513492) (exprs!6930 ct2!306)) lt!2513575)))

(assert (= (and d!2189591 c!1305534) b!7024117))

(assert (= (and d!2189591 (not c!1305534)) b!7024118))

(assert (= (and d!2189591 res!2867389) b!7024119))

(assert (= (and b!7024119 res!2867388) b!7024120))

(declare-fun m!7726838 () Bool)

(assert (=> b!7024119 m!7726838))

(declare-fun m!7726840 () Bool)

(assert (=> b!7024119 m!7726840))

(assert (=> b!7024119 m!7726820))

(declare-fun m!7726842 () Bool)

(assert (=> b!7024118 m!7726842))

(declare-fun m!7726844 () Bool)

(assert (=> d!2189591 m!7726844))

(declare-fun m!7726846 () Bool)

(assert (=> d!2189591 m!7726846))

(assert (=> d!2189591 m!7726828))

(assert (=> b!7023972 d!2189591))

(assert (=> b!7023972 d!2189537))

(declare-fun d!2189593 () Bool)

(declare-fun e!4222466 () Bool)

(assert (=> d!2189593 e!4222466))

(declare-fun res!2867392 () Bool)

(assert (=> d!2189593 (=> (not res!2867392) (not e!4222466))))

(declare-fun lt!2513580 () Context!12860)

(declare-fun dynLambda!27285 (Int Context!12860) Context!12860)

(assert (=> d!2189593 (= res!2867392 (= lt!2513490 (dynLambda!27285 lambda!412475 lt!2513580)))))

(declare-fun choose!53042 ((Set Context!12860) Int Context!12860) Context!12860)

(assert (=> d!2189593 (= lt!2513580 (choose!53042 z1!570 lambda!412475 lt!2513490))))

(assert (=> d!2189593 (set.member lt!2513490 (map!15721 z1!570 lambda!412475))))

(assert (=> d!2189593 (= (mapPost2!275 z1!570 lambda!412475 lt!2513490) lt!2513580)))

(declare-fun b!7024124 () Bool)

(assert (=> b!7024124 (= e!4222466 (set.member lt!2513580 z1!570))))

(assert (= (and d!2189593 res!2867392) b!7024124))

(declare-fun b_lambda!265411 () Bool)

(assert (=> (not b_lambda!265411) (not d!2189593)))

(declare-fun m!7726848 () Bool)

(assert (=> d!2189593 m!7726848))

(declare-fun m!7726850 () Bool)

(assert (=> d!2189593 m!7726850))

(declare-fun m!7726852 () Bool)

(assert (=> d!2189593 m!7726852))

(declare-fun m!7726854 () Bool)

(assert (=> d!2189593 m!7726854))

(declare-fun m!7726856 () Bool)

(assert (=> b!7024124 m!7726856))

(assert (=> b!7023972 d!2189593))

(declare-fun b!7024129 () Bool)

(declare-fun e!4222469 () Bool)

(declare-fun tp!1935164 () Bool)

(declare-fun tp!1935165 () Bool)

(assert (=> b!7024129 (= e!4222469 (and tp!1935164 tp!1935165))))

(assert (=> b!7023979 (= tp!1935144 e!4222469)))

(assert (= (and b!7023979 (is-Cons!67706 (exprs!6930 ct2!306))) b!7024129))

(declare-fun b!7024134 () Bool)

(declare-fun e!4222472 () Bool)

(declare-fun tp!1935168 () Bool)

(assert (=> b!7024134 (= e!4222472 (and tp_is_empty!44093 tp!1935168))))

(assert (=> b!7023969 (= tp!1935146 e!4222472)))

(assert (= (and b!7023969 (is-Cons!67707 (t!381586 s!7408))) b!7024134))

(declare-fun b!7024135 () Bool)

(declare-fun e!4222473 () Bool)

(declare-fun tp!1935169 () Bool)

(declare-fun tp!1935170 () Bool)

(assert (=> b!7024135 (= e!4222473 (and tp!1935169 tp!1935170))))

(assert (=> b!7023978 (= tp!1935147 e!4222473)))

(assert (= (and b!7023978 (is-Cons!67706 (exprs!6930 setElem!48923))) b!7024135))

(declare-fun condSetEmpty!48929 () Bool)

(assert (=> setNonEmpty!48923 (= condSetEmpty!48929 (= setRest!48923 (as set.empty (Set Context!12860))))))

(declare-fun setRes!48929 () Bool)

(assert (=> setNonEmpty!48923 (= tp!1935145 setRes!48929)))

(declare-fun setIsEmpty!48929 () Bool)

(assert (=> setIsEmpty!48929 setRes!48929))

(declare-fun e!4222476 () Bool)

(declare-fun tp!1935176 () Bool)

(declare-fun setElem!48929 () Context!12860)

(declare-fun setNonEmpty!48929 () Bool)

(assert (=> setNonEmpty!48929 (= setRes!48929 (and tp!1935176 (inv!86445 setElem!48929) e!4222476))))

(declare-fun setRest!48929 () (Set Context!12860))

(assert (=> setNonEmpty!48929 (= setRest!48923 (set.union (set.insert setElem!48929 (as set.empty (Set Context!12860))) setRest!48929))))

(declare-fun b!7024140 () Bool)

(declare-fun tp!1935175 () Bool)

(assert (=> b!7024140 (= e!4222476 tp!1935175)))

(assert (= (and setNonEmpty!48923 condSetEmpty!48929) setIsEmpty!48929))

(assert (= (and setNonEmpty!48923 (not condSetEmpty!48929)) setNonEmpty!48929))

(assert (= setNonEmpty!48929 b!7024140))

(declare-fun m!7726862 () Bool)

(assert (=> setNonEmpty!48929 m!7726862))

(declare-fun b_lambda!265415 () Bool)

(assert (= b_lambda!265409 (or b!7023970 b_lambda!265415)))

(declare-fun bs!1868218 () Bool)

(declare-fun d!2189597 () Bool)

(assert (= bs!1868218 (and d!2189597 b!7023970)))

(assert (=> bs!1868218 (= (dynLambda!27283 lambda!412474 lt!2513564) (matchZipper!2974 (set.insert lt!2513564 (as set.empty (Set Context!12860))) s!7408))))

(declare-fun m!7726864 () Bool)

(assert (=> bs!1868218 m!7726864))

(assert (=> bs!1868218 m!7726864))

(declare-fun m!7726866 () Bool)

(assert (=> bs!1868218 m!7726866))

(assert (=> d!2189553 d!2189597))

(declare-fun b_lambda!265417 () Bool)

(assert (= b_lambda!265407 (or b!7023971 b_lambda!265417)))

(declare-fun bs!1868219 () Bool)

(declare-fun d!2189599 () Bool)

(assert (= bs!1868219 (and d!2189599 b!7023971)))

(assert (=> bs!1868219 (= (dynLambda!27282 lambda!412477 lt!2513486) (derivationStepZipperUp!2044 lt!2513486 (h!74155 s!7408)))))

(assert (=> bs!1868219 m!7726666))

(assert (=> d!2189541 d!2189599))

(declare-fun b_lambda!265419 () Bool)

(assert (= b_lambda!265411 (or b!7023972 b_lambda!265419)))

(declare-fun bs!1868220 () Bool)

(declare-fun d!2189601 () Bool)

(assert (= bs!1868220 (and d!2189601 b!7023972)))

(declare-fun lt!2513582 () Unit!161530)

(assert (=> bs!1868220 (= lt!2513582 (lemmaConcatPreservesForall!755 (exprs!6930 lt!2513580) (exprs!6930 ct2!306) lambda!412476))))

(assert (=> bs!1868220 (= (dynLambda!27285 lambda!412475 lt!2513580) (Context!12861 (++!15467 (exprs!6930 lt!2513580) (exprs!6930 ct2!306))))))

(declare-fun m!7726868 () Bool)

(assert (=> bs!1868220 m!7726868))

(declare-fun m!7726870 () Bool)

(assert (=> bs!1868220 m!7726870))

(assert (=> d!2189593 d!2189601))

(push 1)

(assert (not b!7024116))

(assert (not b!7024062))

(assert (not bs!1868219))

(assert (not d!2189547))

(assert (not b!7024046))

(assert (not b!7024097))

(assert (not d!2189551))

(assert (not b!7024042))

(assert (not d!2189541))

(assert (not b!7024119))

(assert (not d!2189557))

(assert (not b_lambda!265415))

(assert (not b!7024129))

(assert (not b!7024061))

(assert (not b!7024135))

(assert (not d!2189571))

(assert tp_is_empty!44093)

(assert (not b!7024140))

(assert (not d!2189553))

(assert (not b!7024054))

(assert (not b_lambda!265417))

(assert (not bs!1868220))

(assert (not b!7024060))

(assert (not d!2189593))

(assert (not bm!637667))

(assert (not d!2189549))

(assert (not b!7024134))

(assert (not bm!637650))

(assert (not d!2189591))

(assert (not d!2189545))

(assert (not setNonEmpty!48929))

(assert (not d!2189559))

(assert (not d!2189583))

(assert (not bm!637665))

(assert (not b!7024118))

(assert (not bs!1868218))

(assert (not d!2189537))

(assert (not b!7024053))

(assert (not b_lambda!265419))

(assert (not bm!637669))

(assert (not b!7024108))

(assert (not d!2189569))

(assert (not d!2189543))

(assert (not d!2189555))

(assert (not d!2189561))

(assert (not d!2189563))

(assert (not b!7024107))

(assert (not bm!637668))

(assert (not b!7024112))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

